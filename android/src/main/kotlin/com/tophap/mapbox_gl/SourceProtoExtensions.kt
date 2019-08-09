package com.tophap.mapbox_gl

import android.graphics.Bitmap
import android.graphics.BitmapFactory
import com.mapbox.mapboxsdk.style.sources.*
import com.tophap.mapbox_gl.proto.Sources
import java.io.ByteArrayOutputStream
import java.net.URI


fun Sources.Source.fieldValue(): Source {
    return when (typeCase!!) {
        Sources.Source.TypeCase.GEOJSON -> geoJson.fieldValue()
        Sources.Source.TypeCase.IMAGE -> image.fieldValue()
        Sources.Source.TypeCase.VECTOR -> vector.fieldValue()
        Sources.Source.TypeCase.RASTER -> raster.fieldValue()
        Sources.Source.TypeCase.RASTER_DEM -> rasterDem.fieldValue()
        Sources.Source.TypeCase.UNKNOWN,
        Sources.Source.TypeCase.TYPE_NOT_SET -> throw IllegalArgumentException("Unknown source type $this")
    }
}


fun Sources.Source.GeoJson.fieldValue(): GeoJsonSource {
    return when (sourceCase!!) {
        Sources.Source.GeoJson.SourceCase.URI -> if (hasOptions()) GeoJsonSource(id, URI(uri), options.fieldValue()) else GeoJsonSource(id, URI(uri))
        Sources.Source.GeoJson.SourceCase.GEO_JSON -> if (hasOptions()) GeoJsonSource(id, geoJson, options.fieldValue()) else GeoJsonSource(id, geoJson)
        else -> throw IllegalArgumentException("Unknown case $sourceCase")
    }
}

fun Sources.Source.GeoJson.Options.fieldValue(): GeoJsonOptions = GeoJsonOptions()
        .withMinZoom(minZoom)
        .withMaxZoom(maxZoom)
        .withBuffer(buffer)
        .withLineMetrics(lineMetrics)
        .withTolerance(tolerance)
        .withCluster(cluster)
        .withClusterMaxZoom(clusterMaxZoom)
        .withClusterRadius(clusterRadius)

fun Sources.Source.Image.fieldValue(): ImageSource {
    return when (sourceCase!!) {
        Sources.Source.Image.SourceCase.URI -> ImageSource(id, coordinates.fieldValue(), URI(uri))
        Sources.Source.Image.SourceCase.IMAGE -> {
            val bytes = image.toByteArray()
            val bmp = BitmapFactory.decodeByteArray(bytes, 0, bytes.size)
            ImageSource(id, coordinates.fieldValue(), bmp)
        }
        Sources.Source.Image.SourceCase.SOURCE_NOT_SET -> throw IllegalArgumentException("Unknown source $sourceCase")
    }
}

fun Sources.Source.Vector.fieldValue(): VectorSource {
    return when (sourceCase!!) {
        Sources.Source.Vector.SourceCase.URI -> VectorSource(id, uri)
        Sources.Source.Vector.SourceCase.TILE_SET -> VectorSource(id, tileSet.fieldValue())
        Sources.Source.Vector.SourceCase.SOURCE_NOT_SET -> throw IllegalArgumentException("Unknown source $sourceCase")
    }
}

fun Sources.Source.RasterDem.fieldValue(): RasterDemSource {
    return when (sourceCase!!) {
        Sources.Source.RasterDem.SourceCase.URI -> RasterDemSource(id, uri, tileSize)
        Sources.Source.RasterDem.SourceCase.TILE_SET -> RasterDemSource(id, tileSet.fieldValue(), tileSize)
        Sources.Source.RasterDem.SourceCase.SOURCE_NOT_SET -> throw IllegalArgumentException("Unknown source $sourceCase")
    }
}

fun Sources.Source.Raster.fieldValue(): RasterSource {
    return when (sourceCase!!) {
        Sources.Source.Raster.SourceCase.URI -> RasterSource(id, uri, tileSize)
        Sources.Source.Raster.SourceCase.TILE_SET -> RasterSource(id, tileSet.fieldValue(), tileSize)
        Sources.Source.Raster.SourceCase.SOURCE_NOT_SET -> throw IllegalArgumentException("Unknown source $sourceCase")
    }
}

fun Sources.Source.TileSet.fieldValue(): TileSet {
    val set = TileSet(tileJson, *tilesList.toTypedArray())
    set.scheme = scheme
    set.setGrids(*gridsList.toTypedArray())
    set.setData(*dataList.toTypedArray())
    set.minZoom = minZoom
    set.maxZoom = maxZoom
    set.setBounds(*boundsList.toTypedArray())

    if (name.isNotEmpty()) set.name = name
    if (description.isNotEmpty()) set.description = description
    if (version.isNotEmpty()) set.version = version
    if (attribution.isNotEmpty()) set.attribution = attribution
    if (template.isNotEmpty()) set.template = template
    if (legend.isNotEmpty()) set.legend = legend
    if (centerList.isNotEmpty()) set.setCenter(*centerList.toTypedArray())
    if (encoding.isNotEmpty()) set.encoding = encoding

    return set
}

fun Source.update(source: Sources.Source) {
    when {
        this is GeoJsonSource -> {
            when (source.geoJson.sourceCase!!) {
                Sources.Source.GeoJson.SourceCase.URI -> uri = source.geoJson.uri
                Sources.Source.GeoJson.SourceCase.GEO_JSON -> setGeoJson(source.geoJson.geoJson)
                Sources.Source.GeoJson.SourceCase.SOURCE_NOT_SET -> {
                }
            }
        }
        this is RasterSource -> {
        }
        this is RasterDemSource -> {
        }
        this is ImageSource -> {
            if (source.image.hasCoordinates()) setCoordinates(source.image.coordinates.fieldValue())
            when (source.image.sourceCase!!) {
                Sources.Source.Image.SourceCase.URI -> uri = source.image.uri
                Sources.Source.Image.SourceCase.IMAGE -> setImage(source.image.image.toByteArray().bitmap())
                Sources.Source.Image.SourceCase.SOURCE_NOT_SET -> {
                }
            }
        }
        this is VectorSource -> {
        }
        else -> throw IllegalArgumentException("Unknown source type $this")
    }
}


fun Bitmap.data(): ByteArray {
    val stream = ByteArrayOutputStream()
    compress(Bitmap.CompressFormat.PNG, 100, stream)
    val byteArray = stream.toByteArray()
    recycle()
    return byteArray
}

fun ByteArray.bitmap(): Bitmap = BitmapFactory.decodeByteArray(this, 0, size)
