// GENERATED CODE - DO NOT MODIFY BY HAND

part of symbol_layer;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SymbolLayerModel> _$symbolLayerModelSerializer =
    new _$SymbolLayerModelSerializer();

class _$SymbolLayerModelSerializer
    implements StructuredSerializer<SymbolLayerModel> {
  @override
  final Iterable<Type> types = const [SymbolLayerModel, _$SymbolLayerModel];
  @override
  final String wireName = 'SymbolLayerModel';

  @override
  Iterable<Object> serialize(Serializers serializers, SymbolLayerModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'sourceId',
      serializers.serialize(object.sourceId,
          specifiedType: const FullType(String)),
      'iconOpacityTransition',
      serializers.serialize(object.iconOpacityTransition,
          specifiedType: const FullType(TransitionOptions)),
      'iconColorTransition',
      serializers.serialize(object.iconColorTransition,
          specifiedType: const FullType(TransitionOptions)),
      'iconHaloColorTransition',
      serializers.serialize(object.iconHaloColorTransition,
          specifiedType: const FullType(TransitionOptions)),
      'iconHaloWidthTransition',
      serializers.serialize(object.iconHaloWidthTransition,
          specifiedType: const FullType(TransitionOptions)),
      'iconHaloBlurTransition',
      serializers.serialize(object.iconHaloBlurTransition,
          specifiedType: const FullType(TransitionOptions)),
      'iconTranslateTransition',
      serializers.serialize(object.iconTranslateTransition,
          specifiedType: const FullType(TransitionOptions)),
      'textOpacityTransition',
      serializers.serialize(object.textOpacityTransition,
          specifiedType: const FullType(TransitionOptions)),
      'textColorTransition',
      serializers.serialize(object.textColorTransition,
          specifiedType: const FullType(TransitionOptions)),
      'textHaloColorTransition',
      serializers.serialize(object.textHaloColorTransition,
          specifiedType: const FullType(TransitionOptions)),
      'textHaloWidthTransition',
      serializers.serialize(object.textHaloWidthTransition,
          specifiedType: const FullType(TransitionOptions)),
      'textHaloBlurTransition',
      serializers.serialize(object.textHaloBlurTransition,
          specifiedType: const FullType(TransitionOptions)),
      'textTranslateTransition',
      serializers.serialize(object.textTranslateTransition,
          specifiedType: const FullType(TransitionOptions)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'visible',
      serializers.serialize(object.visible,
          specifiedType: const FullType(bool)),
      'minZoom',
      serializers.serialize(object.minZoom,
          specifiedType: const FullType(double)),
      'maxZoom',
      serializers.serialize(object.maxZoom,
          specifiedType: const FullType(double)),
    ];
    if (object.symbolPlacement != null) {
      result
        ..add('symbolPlacement')
        ..add(serializers.serialize(object.symbolPlacement,
            specifiedType: const FullType(SymbolPlacement)));
    }
    if (object.symbolSpacing != null) {
      result
        ..add('symbolSpacing')
        ..add(serializers.serialize(object.symbolSpacing,
            specifiedType: const FullType(double)));
    }
    if (object.symbolAvoidEdges != null) {
      result
        ..add('symbolAvoidEdges')
        ..add(serializers.serialize(object.symbolAvoidEdges,
            specifiedType: const FullType(bool)));
    }
    if (object.symbolZOrder != null) {
      result
        ..add('symbolZOrder')
        ..add(serializers.serialize(object.symbolZOrder,
            specifiedType: const FullType(SymbolZOrder)));
    }
    if (object.iconAllowOverlap != null) {
      result
        ..add('iconAllowOverlap')
        ..add(serializers.serialize(object.iconAllowOverlap,
            specifiedType: const FullType(bool)));
    }
    if (object.iconIgnorePlacement != null) {
      result
        ..add('iconIgnorePlacement')
        ..add(serializers.serialize(object.iconIgnorePlacement,
            specifiedType: const FullType(bool)));
    }
    if (object.iconOptional != null) {
      result
        ..add('iconOptional')
        ..add(serializers.serialize(object.iconOptional,
            specifiedType: const FullType(bool)));
    }
    if (object.iconRotationAlignment != null) {
      result
        ..add('iconRotationAlignment')
        ..add(serializers.serialize(object.iconRotationAlignment,
            specifiedType: const FullType(SymbolAlignment)));
    }
    if (object.iconSize != null) {
      result
        ..add('iconSize')
        ..add(serializers.serialize(object.iconSize,
            specifiedType: const FullType(double)));
    }
    if (object.iconTextFit != null) {
      result
        ..add('iconTextFit')
        ..add(serializers.serialize(object.iconTextFit,
            specifiedType: const FullType(SymbolTextFit)));
    }
    if (object.iconTextFitPadding != null) {
      result
        ..add('iconTextFitPadding')
        ..add(serializers.serialize(object.iconTextFitPadding,
            specifiedType:
                const FullType(BuiltList, const [const FullType(double)])));
    }
    if (object.iconImage != null) {
      result
        ..add('iconImage')
        ..add(serializers.serialize(object.iconImage,
            specifiedType: const FullType(String)));
    }
    if (object.iconRotate != null) {
      result
        ..add('iconRotate')
        ..add(serializers.serialize(object.iconRotate,
            specifiedType: const FullType(double)));
    }
    if (object.iconPadding != null) {
      result
        ..add('iconPadding')
        ..add(serializers.serialize(object.iconPadding,
            specifiedType: const FullType(double)));
    }
    if (object.iconKeepUpright != null) {
      result
        ..add('iconKeepUpright')
        ..add(serializers.serialize(object.iconKeepUpright,
            specifiedType: const FullType(bool)));
    }
    if (object.iconOffset != null) {
      result
        ..add('iconOffset')
        ..add(serializers.serialize(object.iconOffset,
            specifiedType:
                const FullType(BuiltList, const [const FullType(double)])));
    }
    if (object.iconAnchor != null) {
      result
        ..add('iconAnchor')
        ..add(serializers.serialize(object.iconAnchor,
            specifiedType: const FullType(PositionAnchor)));
    }
    if (object.iconPitchAlignment != null) {
      result
        ..add('iconPitchAlignment')
        ..add(serializers.serialize(object.iconPitchAlignment,
            specifiedType: const FullType(SymbolAlignment)));
    }
    if (object.textPitchAlignment != null) {
      result
        ..add('textPitchAlignment')
        ..add(serializers.serialize(object.textPitchAlignment,
            specifiedType: const FullType(SymbolAlignment)));
    }
    if (object.textRotationAlignment != null) {
      result
        ..add('textRotationAlignment')
        ..add(serializers.serialize(object.textRotationAlignment,
            specifiedType: const FullType(SymbolAlignment)));
    }
    if (object.textField != null) {
      result
        ..add('textField')
        ..add(serializers.serialize(object.textField,
            specifiedType: const FullType(
                BuiltList, const [const FullType(FormattedSection)])));
    }
    if (object.textFont != null) {
      result
        ..add('textFont')
        ..add(serializers.serialize(object.textFont,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.textSize != null) {
      result
        ..add('textSize')
        ..add(serializers.serialize(object.textSize,
            specifiedType: const FullType(double)));
    }
    if (object.textMaxWidth != null) {
      result
        ..add('textMaxWidth')
        ..add(serializers.serialize(object.textMaxWidth,
            specifiedType: const FullType(double)));
    }
    if (object.textLineHeight != null) {
      result
        ..add('textLineHeight')
        ..add(serializers.serialize(object.textLineHeight,
            specifiedType: const FullType(double)));
    }
    if (object.textLetterSpacing != null) {
      result
        ..add('textLetterSpacing')
        ..add(serializers.serialize(object.textLetterSpacing,
            specifiedType: const FullType(double)));
    }
    if (object.textJustify != null) {
      result
        ..add('textJustify')
        ..add(serializers.serialize(object.textJustify,
            specifiedType: const FullType(SymbolTextJustify)));
    }
    if (object.textRadialOffset != null) {
      result
        ..add('textRadialOffset')
        ..add(serializers.serialize(object.textRadialOffset,
            specifiedType: const FullType(double)));
    }
    if (object.textVariableAnchor != null) {
      result
        ..add('textVariableAnchor')
        ..add(serializers.serialize(object.textVariableAnchor,
            specifiedType: const FullType(
                BuiltList, const [const FullType(PositionAnchor)])));
    }
    if (object.textAnchor != null) {
      result
        ..add('textAnchor')
        ..add(serializers.serialize(object.textAnchor,
            specifiedType: const FullType(PositionAnchor)));
    }
    if (object.textMaxAngle != null) {
      result
        ..add('textMaxAngle')
        ..add(serializers.serialize(object.textMaxAngle,
            specifiedType: const FullType(double)));
    }
    if (object.textRotate != null) {
      result
        ..add('textRotate')
        ..add(serializers.serialize(object.textRotate,
            specifiedType: const FullType(double)));
    }
    if (object.textPadding != null) {
      result
        ..add('textPadding')
        ..add(serializers.serialize(object.textPadding,
            specifiedType: const FullType(double)));
    }
    if (object.textKeepUpright != null) {
      result
        ..add('textKeepUpright')
        ..add(serializers.serialize(object.textKeepUpright,
            specifiedType: const FullType(bool)));
    }
    if (object.textTransform != null) {
      result
        ..add('textTransform')
        ..add(serializers.serialize(object.textTransform,
            specifiedType: const FullType(SymbolTextTransform)));
    }
    if (object.textOffset != null) {
      result
        ..add('textOffset')
        ..add(serializers.serialize(object.textOffset,
            specifiedType:
                const FullType(BuiltList, const [const FullType(double)])));
    }
    if (object.textAllowOverlap != null) {
      result
        ..add('textAllowOverlap')
        ..add(serializers.serialize(object.textAllowOverlap,
            specifiedType: const FullType(bool)));
    }
    if (object.textIgnorePlacement != null) {
      result
        ..add('textIgnorePlacement')
        ..add(serializers.serialize(object.textIgnorePlacement,
            specifiedType: const FullType(bool)));
    }
    if (object.textOptional != null) {
      result
        ..add('textOptional')
        ..add(serializers.serialize(object.textOptional,
            specifiedType: const FullType(bool)));
    }
    if (object.iconOpacity != null) {
      result
        ..add('iconOpacity')
        ..add(serializers.serialize(object.iconOpacity,
            specifiedType: const FullType(double)));
    }
    if (object.iconColor != null) {
      result
        ..add('iconColor')
        ..add(serializers.serialize(object.iconColor,
            specifiedType: const FullType(int)));
    }
    if (object.iconHaloColor != null) {
      result
        ..add('iconHaloColor')
        ..add(serializers.serialize(object.iconHaloColor,
            specifiedType: const FullType(int)));
    }
    if (object.iconHaloWidth != null) {
      result
        ..add('iconHaloWidth')
        ..add(serializers.serialize(object.iconHaloWidth,
            specifiedType: const FullType(double)));
    }
    if (object.iconHaloBlur != null) {
      result
        ..add('iconHaloBlur')
        ..add(serializers.serialize(object.iconHaloBlur,
            specifiedType: const FullType(double)));
    }
    if (object.iconTranslate != null) {
      result
        ..add('iconTranslate')
        ..add(serializers.serialize(object.iconTranslate,
            specifiedType:
                const FullType(BuiltList, const [const FullType(double)])));
    }
    if (object.iconTranslateAnchor != null) {
      result
        ..add('iconTranslateAnchor')
        ..add(serializers.serialize(object.iconTranslateAnchor,
            specifiedType: const FullType(TranslateAnchor)));
    }
    if (object.textOpacity != null) {
      result
        ..add('textOpacity')
        ..add(serializers.serialize(object.textOpacity,
            specifiedType: const FullType(double)));
    }
    if (object.textColor != null) {
      result
        ..add('textColor')
        ..add(serializers.serialize(object.textColor,
            specifiedType: const FullType(int)));
    }
    if (object.textHaloColor != null) {
      result
        ..add('textHaloColor')
        ..add(serializers.serialize(object.textHaloColor,
            specifiedType: const FullType(int)));
    }
    if (object.textHaloWidth != null) {
      result
        ..add('textHaloWidth')
        ..add(serializers.serialize(object.textHaloWidth,
            specifiedType: const FullType(double)));
    }
    if (object.textHaloBlur != null) {
      result
        ..add('textHaloBlur')
        ..add(serializers.serialize(object.textHaloBlur,
            specifiedType: const FullType(double)));
    }
    if (object.textTranslate != null) {
      result
        ..add('textTranslate')
        ..add(serializers.serialize(object.textTranslate,
            specifiedType:
                const FullType(BuiltList, const [const FullType(double)])));
    }
    if (object.textTranslateAnchor != null) {
      result
        ..add('textTranslateAnchor')
        ..add(serializers.serialize(object.textTranslateAnchor,
            specifiedType: const FullType(TranslateAnchor)));
    }
    return result;
  }

  @override
  SymbolLayerModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SymbolLayerModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'sourceId':
          result.sourceId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'symbolPlacement':
          result.symbolPlacement = serializers.deserialize(value,
                  specifiedType: const FullType(SymbolPlacement))
              as SymbolPlacement;
          break;
        case 'symbolSpacing':
          result.symbolSpacing = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'symbolAvoidEdges':
          result.symbolAvoidEdges = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'symbolZOrder':
          result.symbolZOrder = serializers.deserialize(value,
              specifiedType: const FullType(SymbolZOrder)) as SymbolZOrder;
          break;
        case 'iconAllowOverlap':
          result.iconAllowOverlap = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'iconIgnorePlacement':
          result.iconIgnorePlacement = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'iconOptional':
          result.iconOptional = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'iconRotationAlignment':
          result.iconRotationAlignment = serializers.deserialize(value,
                  specifiedType: const FullType(SymbolAlignment))
              as SymbolAlignment;
          break;
        case 'iconSize':
          result.iconSize = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'iconTextFit':
          result.iconTextFit = serializers.deserialize(value,
              specifiedType: const FullType(SymbolTextFit)) as SymbolTextFit;
          break;
        case 'iconTextFitPadding':
          result.iconTextFitPadding.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(double)]))
              as BuiltList<dynamic>);
          break;
        case 'iconImage':
          result.iconImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'iconRotate':
          result.iconRotate = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'iconPadding':
          result.iconPadding = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'iconKeepUpright':
          result.iconKeepUpright = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'iconOffset':
          result.iconOffset.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(double)]))
              as BuiltList<dynamic>);
          break;
        case 'iconAnchor':
          result.iconAnchor = serializers.deserialize(value,
              specifiedType: const FullType(PositionAnchor)) as PositionAnchor;
          break;
        case 'iconPitchAlignment':
          result.iconPitchAlignment = serializers.deserialize(value,
                  specifiedType: const FullType(SymbolAlignment))
              as SymbolAlignment;
          break;
        case 'textPitchAlignment':
          result.textPitchAlignment = serializers.deserialize(value,
                  specifiedType: const FullType(SymbolAlignment))
              as SymbolAlignment;
          break;
        case 'textRotationAlignment':
          result.textRotationAlignment = serializers.deserialize(value,
                  specifiedType: const FullType(SymbolAlignment))
              as SymbolAlignment;
          break;
        case 'textField':
          result.textField.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(FormattedSection)]))
              as BuiltList<dynamic>);
          break;
        case 'textFont':
          result.textFont.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<dynamic>);
          break;
        case 'textSize':
          result.textSize = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'textMaxWidth':
          result.textMaxWidth = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'textLineHeight':
          result.textLineHeight = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'textLetterSpacing':
          result.textLetterSpacing = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'textJustify':
          result.textJustify = serializers.deserialize(value,
                  specifiedType: const FullType(SymbolTextJustify))
              as SymbolTextJustify;
          break;
        case 'textRadialOffset':
          result.textRadialOffset = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'textVariableAnchor':
          result.textVariableAnchor.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(PositionAnchor)]))
              as BuiltList<dynamic>);
          break;
        case 'textAnchor':
          result.textAnchor = serializers.deserialize(value,
              specifiedType: const FullType(PositionAnchor)) as PositionAnchor;
          break;
        case 'textMaxAngle':
          result.textMaxAngle = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'textRotate':
          result.textRotate = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'textPadding':
          result.textPadding = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'textKeepUpright':
          result.textKeepUpright = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'textTransform':
          result.textTransform = serializers.deserialize(value,
                  specifiedType: const FullType(SymbolTextTransform))
              as SymbolTextTransform;
          break;
        case 'textOffset':
          result.textOffset.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(double)]))
              as BuiltList<dynamic>);
          break;
        case 'textAllowOverlap':
          result.textAllowOverlap = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'textIgnorePlacement':
          result.textIgnorePlacement = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'textOptional':
          result.textOptional = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'iconOpacity':
          result.iconOpacity = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'iconColor':
          result.iconColor = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'iconHaloColor':
          result.iconHaloColor = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'iconHaloWidth':
          result.iconHaloWidth = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'iconHaloBlur':
          result.iconHaloBlur = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'iconTranslate':
          result.iconTranslate.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(double)]))
              as BuiltList<dynamic>);
          break;
        case 'iconTranslateAnchor':
          result.iconTranslateAnchor = serializers.deserialize(value,
                  specifiedType: const FullType(TranslateAnchor))
              as TranslateAnchor;
          break;
        case 'textOpacity':
          result.textOpacity = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'textColor':
          result.textColor = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'textHaloColor':
          result.textHaloColor = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'textHaloWidth':
          result.textHaloWidth = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'textHaloBlur':
          result.textHaloBlur = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'textTranslate':
          result.textTranslate.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(double)]))
              as BuiltList<dynamic>);
          break;
        case 'textTranslateAnchor':
          result.textTranslateAnchor = serializers.deserialize(value,
                  specifiedType: const FullType(TranslateAnchor))
              as TranslateAnchor;
          break;
        case 'iconOpacityTransition':
          result.iconOpacityTransition.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TransitionOptions))
              as TransitionOptions);
          break;
        case 'iconColorTransition':
          result.iconColorTransition.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TransitionOptions))
              as TransitionOptions);
          break;
        case 'iconHaloColorTransition':
          result.iconHaloColorTransition.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TransitionOptions))
              as TransitionOptions);
          break;
        case 'iconHaloWidthTransition':
          result.iconHaloWidthTransition.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TransitionOptions))
              as TransitionOptions);
          break;
        case 'iconHaloBlurTransition':
          result.iconHaloBlurTransition.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TransitionOptions))
              as TransitionOptions);
          break;
        case 'iconTranslateTransition':
          result.iconTranslateTransition.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TransitionOptions))
              as TransitionOptions);
          break;
        case 'textOpacityTransition':
          result.textOpacityTransition.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TransitionOptions))
              as TransitionOptions);
          break;
        case 'textColorTransition':
          result.textColorTransition.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TransitionOptions))
              as TransitionOptions);
          break;
        case 'textHaloColorTransition':
          result.textHaloColorTransition.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TransitionOptions))
              as TransitionOptions);
          break;
        case 'textHaloWidthTransition':
          result.textHaloWidthTransition.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TransitionOptions))
              as TransitionOptions);
          break;
        case 'textHaloBlurTransition':
          result.textHaloBlurTransition.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TransitionOptions))
              as TransitionOptions);
          break;
        case 'textTranslateTransition':
          result.textTranslateTransition.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TransitionOptions))
              as TransitionOptions);
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'visible':
          result.visible = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'minZoom':
          result.minZoom = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'maxZoom':
          result.maxZoom = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$SymbolLayerModel extends SymbolLayerModel {
  @override
  final String sourceId;
  @override
  final SymbolPlacement symbolPlacement;
  @override
  final double symbolSpacing;
  @override
  final bool symbolAvoidEdges;
  @override
  final SymbolZOrder symbolZOrder;
  @override
  final bool iconAllowOverlap;
  @override
  final bool iconIgnorePlacement;
  @override
  final bool iconOptional;
  @override
  final SymbolAlignment iconRotationAlignment;
  @override
  final double iconSize;
  @override
  final SymbolTextFit iconTextFit;
  @override
  final BuiltList<double> iconTextFitPadding;
  @override
  final String iconImage;
  @override
  final double iconRotate;
  @override
  final double iconPadding;
  @override
  final bool iconKeepUpright;
  @override
  final BuiltList<double> iconOffset;
  @override
  final PositionAnchor iconAnchor;
  @override
  final SymbolAlignment iconPitchAlignment;
  @override
  final SymbolAlignment textPitchAlignment;
  @override
  final SymbolAlignment textRotationAlignment;
  @override
  final BuiltList<FormattedSection> textField;
  @override
  final BuiltList<String> textFont;
  @override
  final double textSize;
  @override
  final double textMaxWidth;
  @override
  final double textLineHeight;
  @override
  final double textLetterSpacing;
  @override
  final SymbolTextJustify textJustify;
  @override
  final double textRadialOffset;
  @override
  final BuiltList<PositionAnchor> textVariableAnchor;
  @override
  final PositionAnchor textAnchor;
  @override
  final double textMaxAngle;
  @override
  final double textRotate;
  @override
  final double textPadding;
  @override
  final bool textKeepUpright;
  @override
  final SymbolTextTransform textTransform;
  @override
  final BuiltList<double> textOffset;
  @override
  final bool textAllowOverlap;
  @override
  final bool textIgnorePlacement;
  @override
  final bool textOptional;
  @override
  final double iconOpacity;
  @override
  final int iconColor;
  @override
  final int iconHaloColor;
  @override
  final double iconHaloWidth;
  @override
  final double iconHaloBlur;
  @override
  final BuiltList<double> iconTranslate;
  @override
  final TranslateAnchor iconTranslateAnchor;
  @override
  final double textOpacity;
  @override
  final int textColor;
  @override
  final int textHaloColor;
  @override
  final double textHaloWidth;
  @override
  final double textHaloBlur;
  @override
  final BuiltList<double> textTranslate;
  @override
  final TranslateAnchor textTranslateAnchor;
  @override
  final TransitionOptions iconOpacityTransition;
  @override
  final TransitionOptions iconColorTransition;
  @override
  final TransitionOptions iconHaloColorTransition;
  @override
  final TransitionOptions iconHaloWidthTransition;
  @override
  final TransitionOptions iconHaloBlurTransition;
  @override
  final TransitionOptions iconTranslateTransition;
  @override
  final TransitionOptions textOpacityTransition;
  @override
  final TransitionOptions textColorTransition;
  @override
  final TransitionOptions textHaloColorTransition;
  @override
  final TransitionOptions textHaloWidthTransition;
  @override
  final TransitionOptions textHaloBlurTransition;
  @override
  final TransitionOptions textTranslateTransition;
  @override
  final String id;
  @override
  final bool visible;
  @override
  final double minZoom;
  @override
  final double maxZoom;
  Uint8List __data;
  Uint8List __sourceData;

  factory _$SymbolLayerModel(
          [void Function(SymbolLayerModelBuilder) updates]) =>
      (new SymbolLayerModelBuilder()..update(updates)).build();

  _$SymbolLayerModel._(
      {this.sourceId,
      this.symbolPlacement,
      this.symbolSpacing,
      this.symbolAvoidEdges,
      this.symbolZOrder,
      this.iconAllowOverlap,
      this.iconIgnorePlacement,
      this.iconOptional,
      this.iconRotationAlignment,
      this.iconSize,
      this.iconTextFit,
      this.iconTextFitPadding,
      this.iconImage,
      this.iconRotate,
      this.iconPadding,
      this.iconKeepUpright,
      this.iconOffset,
      this.iconAnchor,
      this.iconPitchAlignment,
      this.textPitchAlignment,
      this.textRotationAlignment,
      this.textField,
      this.textFont,
      this.textSize,
      this.textMaxWidth,
      this.textLineHeight,
      this.textLetterSpacing,
      this.textJustify,
      this.textRadialOffset,
      this.textVariableAnchor,
      this.textAnchor,
      this.textMaxAngle,
      this.textRotate,
      this.textPadding,
      this.textKeepUpright,
      this.textTransform,
      this.textOffset,
      this.textAllowOverlap,
      this.textIgnorePlacement,
      this.textOptional,
      this.iconOpacity,
      this.iconColor,
      this.iconHaloColor,
      this.iconHaloWidth,
      this.iconHaloBlur,
      this.iconTranslate,
      this.iconTranslateAnchor,
      this.textOpacity,
      this.textColor,
      this.textHaloColor,
      this.textHaloWidth,
      this.textHaloBlur,
      this.textTranslate,
      this.textTranslateAnchor,
      this.iconOpacityTransition,
      this.iconColorTransition,
      this.iconHaloColorTransition,
      this.iconHaloWidthTransition,
      this.iconHaloBlurTransition,
      this.iconTranslateTransition,
      this.textOpacityTransition,
      this.textColorTransition,
      this.textHaloColorTransition,
      this.textHaloWidthTransition,
      this.textHaloBlurTransition,
      this.textTranslateTransition,
      this.id,
      this.visible,
      this.minZoom,
      this.maxZoom})
      : super._() {
    if (sourceId == null) {
      throw new BuiltValueNullFieldError('SymbolLayerModel', 'sourceId');
    }
    if (iconOpacityTransition == null) {
      throw new BuiltValueNullFieldError(
          'SymbolLayerModel', 'iconOpacityTransition');
    }
    if (iconColorTransition == null) {
      throw new BuiltValueNullFieldError(
          'SymbolLayerModel', 'iconColorTransition');
    }
    if (iconHaloColorTransition == null) {
      throw new BuiltValueNullFieldError(
          'SymbolLayerModel', 'iconHaloColorTransition');
    }
    if (iconHaloWidthTransition == null) {
      throw new BuiltValueNullFieldError(
          'SymbolLayerModel', 'iconHaloWidthTransition');
    }
    if (iconHaloBlurTransition == null) {
      throw new BuiltValueNullFieldError(
          'SymbolLayerModel', 'iconHaloBlurTransition');
    }
    if (iconTranslateTransition == null) {
      throw new BuiltValueNullFieldError(
          'SymbolLayerModel', 'iconTranslateTransition');
    }
    if (textOpacityTransition == null) {
      throw new BuiltValueNullFieldError(
          'SymbolLayerModel', 'textOpacityTransition');
    }
    if (textColorTransition == null) {
      throw new BuiltValueNullFieldError(
          'SymbolLayerModel', 'textColorTransition');
    }
    if (textHaloColorTransition == null) {
      throw new BuiltValueNullFieldError(
          'SymbolLayerModel', 'textHaloColorTransition');
    }
    if (textHaloWidthTransition == null) {
      throw new BuiltValueNullFieldError(
          'SymbolLayerModel', 'textHaloWidthTransition');
    }
    if (textHaloBlurTransition == null) {
      throw new BuiltValueNullFieldError(
          'SymbolLayerModel', 'textHaloBlurTransition');
    }
    if (textTranslateTransition == null) {
      throw new BuiltValueNullFieldError(
          'SymbolLayerModel', 'textTranslateTransition');
    }
    if (id == null) {
      throw new BuiltValueNullFieldError('SymbolLayerModel', 'id');
    }
    if (visible == null) {
      throw new BuiltValueNullFieldError('SymbolLayerModel', 'visible');
    }
    if (minZoom == null) {
      throw new BuiltValueNullFieldError('SymbolLayerModel', 'minZoom');
    }
    if (maxZoom == null) {
      throw new BuiltValueNullFieldError('SymbolLayerModel', 'maxZoom');
    }
  }

  @override
  Uint8List get data => __data ??= super.data;

  @override
  Uint8List get sourceData => __sourceData ??= super.sourceData;

  @override
  SymbolLayerModel rebuild(void Function(SymbolLayerModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SymbolLayerModelBuilder toBuilder() =>
      new SymbolLayerModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SymbolLayerModel &&
        sourceId == other.sourceId &&
        symbolPlacement == other.symbolPlacement &&
        symbolSpacing == other.symbolSpacing &&
        symbolAvoidEdges == other.symbolAvoidEdges &&
        symbolZOrder == other.symbolZOrder &&
        iconAllowOverlap == other.iconAllowOverlap &&
        iconIgnorePlacement == other.iconIgnorePlacement &&
        iconOptional == other.iconOptional &&
        iconRotationAlignment == other.iconRotationAlignment &&
        iconSize == other.iconSize &&
        iconTextFit == other.iconTextFit &&
        iconTextFitPadding == other.iconTextFitPadding &&
        iconImage == other.iconImage &&
        iconRotate == other.iconRotate &&
        iconPadding == other.iconPadding &&
        iconKeepUpright == other.iconKeepUpright &&
        iconOffset == other.iconOffset &&
        iconAnchor == other.iconAnchor &&
        iconPitchAlignment == other.iconPitchAlignment &&
        textPitchAlignment == other.textPitchAlignment &&
        textRotationAlignment == other.textRotationAlignment &&
        textField == other.textField &&
        textFont == other.textFont &&
        textSize == other.textSize &&
        textMaxWidth == other.textMaxWidth &&
        textLineHeight == other.textLineHeight &&
        textLetterSpacing == other.textLetterSpacing &&
        textJustify == other.textJustify &&
        textRadialOffset == other.textRadialOffset &&
        textVariableAnchor == other.textVariableAnchor &&
        textAnchor == other.textAnchor &&
        textMaxAngle == other.textMaxAngle &&
        textRotate == other.textRotate &&
        textPadding == other.textPadding &&
        textKeepUpright == other.textKeepUpright &&
        textTransform == other.textTransform &&
        textOffset == other.textOffset &&
        textAllowOverlap == other.textAllowOverlap &&
        textIgnorePlacement == other.textIgnorePlacement &&
        textOptional == other.textOptional &&
        iconOpacity == other.iconOpacity &&
        iconColor == other.iconColor &&
        iconHaloColor == other.iconHaloColor &&
        iconHaloWidth == other.iconHaloWidth &&
        iconHaloBlur == other.iconHaloBlur &&
        iconTranslate == other.iconTranslate &&
        iconTranslateAnchor == other.iconTranslateAnchor &&
        textOpacity == other.textOpacity &&
        textColor == other.textColor &&
        textHaloColor == other.textHaloColor &&
        textHaloWidth == other.textHaloWidth &&
        textHaloBlur == other.textHaloBlur &&
        textTranslate == other.textTranslate &&
        textTranslateAnchor == other.textTranslateAnchor &&
        iconOpacityTransition == other.iconOpacityTransition &&
        iconColorTransition == other.iconColorTransition &&
        iconHaloColorTransition == other.iconHaloColorTransition &&
        iconHaloWidthTransition == other.iconHaloWidthTransition &&
        iconHaloBlurTransition == other.iconHaloBlurTransition &&
        iconTranslateTransition == other.iconTranslateTransition &&
        textOpacityTransition == other.textOpacityTransition &&
        textColorTransition == other.textColorTransition &&
        textHaloColorTransition == other.textHaloColorTransition &&
        textHaloWidthTransition == other.textHaloWidthTransition &&
        textHaloBlurTransition == other.textHaloBlurTransition &&
        textTranslateTransition == other.textTranslateTransition &&
        id == other.id &&
        visible == other.visible &&
        minZoom == other.minZoom &&
        maxZoom == other.maxZoom;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, sourceId.hashCode), symbolPlacement.hashCode), symbolSpacing.hashCode), symbolAvoidEdges.hashCode), symbolZOrder.hashCode), iconAllowOverlap.hashCode), iconIgnorePlacement.hashCode), iconOptional.hashCode), iconRotationAlignment.hashCode), iconSize.hashCode), iconTextFit.hashCode), iconTextFitPadding.hashCode), iconImage.hashCode), iconRotate.hashCode), iconPadding.hashCode), iconKeepUpright.hashCode), iconOffset.hashCode), iconAnchor.hashCode), iconPitchAlignment.hashCode), textPitchAlignment.hashCode), textRotationAlignment.hashCode), textField.hashCode), textFont.hashCode), textSize.hashCode), textMaxWidth.hashCode), textLineHeight.hashCode), textLetterSpacing.hashCode), textJustify.hashCode), textRadialOffset.hashCode), textVariableAnchor.hashCode), textAnchor.hashCode), textMaxAngle.hashCode), textRotate.hashCode), textPadding.hashCode), textKeepUpright.hashCode), textTransform.hashCode), textOffset.hashCode), textAllowOverlap.hashCode), textIgnorePlacement.hashCode), textOptional.hashCode), iconOpacity.hashCode), iconColor.hashCode), iconHaloColor.hashCode), iconHaloWidth.hashCode), iconHaloBlur.hashCode), iconTranslate.hashCode), iconTranslateAnchor.hashCode), textOpacity.hashCode), textColor.hashCode), textHaloColor.hashCode), textHaloWidth.hashCode),
                                                                                textHaloBlur.hashCode),
                                                                            textTranslate.hashCode),
                                                                        textTranslateAnchor.hashCode),
                                                                    iconOpacityTransition.hashCode),
                                                                iconColorTransition.hashCode),
                                                            iconHaloColorTransition.hashCode),
                                                        iconHaloWidthTransition.hashCode),
                                                    iconHaloBlurTransition.hashCode),
                                                iconTranslateTransition.hashCode),
                                            textOpacityTransition.hashCode),
                                        textColorTransition.hashCode),
                                    textHaloColorTransition.hashCode),
                                textHaloWidthTransition.hashCode),
                            textHaloBlurTransition.hashCode),
                        textTranslateTransition.hashCode),
                    id.hashCode),
                visible.hashCode),
            minZoom.hashCode),
        maxZoom.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SymbolLayerModel')
          ..add('sourceId', sourceId)
          ..add('symbolPlacement', symbolPlacement)
          ..add('symbolSpacing', symbolSpacing)
          ..add('symbolAvoidEdges', symbolAvoidEdges)
          ..add('symbolZOrder', symbolZOrder)
          ..add('iconAllowOverlap', iconAllowOverlap)
          ..add('iconIgnorePlacement', iconIgnorePlacement)
          ..add('iconOptional', iconOptional)
          ..add('iconRotationAlignment', iconRotationAlignment)
          ..add('iconSize', iconSize)
          ..add('iconTextFit', iconTextFit)
          ..add('iconTextFitPadding', iconTextFitPadding)
          ..add('iconImage', iconImage)
          ..add('iconRotate', iconRotate)
          ..add('iconPadding', iconPadding)
          ..add('iconKeepUpright', iconKeepUpright)
          ..add('iconOffset', iconOffset)
          ..add('iconAnchor', iconAnchor)
          ..add('iconPitchAlignment', iconPitchAlignment)
          ..add('textPitchAlignment', textPitchAlignment)
          ..add('textRotationAlignment', textRotationAlignment)
          ..add('textField', textField)
          ..add('textFont', textFont)
          ..add('textSize', textSize)
          ..add('textMaxWidth', textMaxWidth)
          ..add('textLineHeight', textLineHeight)
          ..add('textLetterSpacing', textLetterSpacing)
          ..add('textJustify', textJustify)
          ..add('textRadialOffset', textRadialOffset)
          ..add('textVariableAnchor', textVariableAnchor)
          ..add('textAnchor', textAnchor)
          ..add('textMaxAngle', textMaxAngle)
          ..add('textRotate', textRotate)
          ..add('textPadding', textPadding)
          ..add('textKeepUpright', textKeepUpright)
          ..add('textTransform', textTransform)
          ..add('textOffset', textOffset)
          ..add('textAllowOverlap', textAllowOverlap)
          ..add('textIgnorePlacement', textIgnorePlacement)
          ..add('textOptional', textOptional)
          ..add('iconOpacity', iconOpacity)
          ..add('iconColor', iconColor)
          ..add('iconHaloColor', iconHaloColor)
          ..add('iconHaloWidth', iconHaloWidth)
          ..add('iconHaloBlur', iconHaloBlur)
          ..add('iconTranslate', iconTranslate)
          ..add('iconTranslateAnchor', iconTranslateAnchor)
          ..add('textOpacity', textOpacity)
          ..add('textColor', textColor)
          ..add('textHaloColor', textHaloColor)
          ..add('textHaloWidth', textHaloWidth)
          ..add('textHaloBlur', textHaloBlur)
          ..add('textTranslate', textTranslate)
          ..add('textTranslateAnchor', textTranslateAnchor)
          ..add('iconOpacityTransition', iconOpacityTransition)
          ..add('iconColorTransition', iconColorTransition)
          ..add('iconHaloColorTransition', iconHaloColorTransition)
          ..add('iconHaloWidthTransition', iconHaloWidthTransition)
          ..add('iconHaloBlurTransition', iconHaloBlurTransition)
          ..add('iconTranslateTransition', iconTranslateTransition)
          ..add('textOpacityTransition', textOpacityTransition)
          ..add('textColorTransition', textColorTransition)
          ..add('textHaloColorTransition', textHaloColorTransition)
          ..add('textHaloWidthTransition', textHaloWidthTransition)
          ..add('textHaloBlurTransition', textHaloBlurTransition)
          ..add('textTranslateTransition', textTranslateTransition)
          ..add('id', id)
          ..add('visible', visible)
          ..add('minZoom', minZoom)
          ..add('maxZoom', maxZoom))
        .toString();
  }
}

class SymbolLayerModelBuilder
    implements
        Builder<SymbolLayerModel, SymbolLayerModelBuilder>,
        LayerModelBuilder {
  _$SymbolLayerModel _$v;

  String _sourceId;
  String get sourceId => _$this._sourceId;
  set sourceId(String sourceId) => _$this._sourceId = sourceId;

  SymbolPlacement _symbolPlacement;
  SymbolPlacement get symbolPlacement => _$this._symbolPlacement;
  set symbolPlacement(SymbolPlacement symbolPlacement) =>
      _$this._symbolPlacement = symbolPlacement;

  double _symbolSpacing;
  double get symbolSpacing => _$this._symbolSpacing;
  set symbolSpacing(double symbolSpacing) =>
      _$this._symbolSpacing = symbolSpacing;

  bool _symbolAvoidEdges;
  bool get symbolAvoidEdges => _$this._symbolAvoidEdges;
  set symbolAvoidEdges(bool symbolAvoidEdges) =>
      _$this._symbolAvoidEdges = symbolAvoidEdges;

  SymbolZOrder _symbolZOrder;
  SymbolZOrder get symbolZOrder => _$this._symbolZOrder;
  set symbolZOrder(SymbolZOrder symbolZOrder) =>
      _$this._symbolZOrder = symbolZOrder;

  bool _iconAllowOverlap;
  bool get iconAllowOverlap => _$this._iconAllowOverlap;
  set iconAllowOverlap(bool iconAllowOverlap) =>
      _$this._iconAllowOverlap = iconAllowOverlap;

  bool _iconIgnorePlacement;
  bool get iconIgnorePlacement => _$this._iconIgnorePlacement;
  set iconIgnorePlacement(bool iconIgnorePlacement) =>
      _$this._iconIgnorePlacement = iconIgnorePlacement;

  bool _iconOptional;
  bool get iconOptional => _$this._iconOptional;
  set iconOptional(bool iconOptional) => _$this._iconOptional = iconOptional;

  SymbolAlignment _iconRotationAlignment;
  SymbolAlignment get iconRotationAlignment => _$this._iconRotationAlignment;
  set iconRotationAlignment(SymbolAlignment iconRotationAlignment) =>
      _$this._iconRotationAlignment = iconRotationAlignment;

  double _iconSize;
  double get iconSize => _$this._iconSize;
  set iconSize(double iconSize) => _$this._iconSize = iconSize;

  SymbolTextFit _iconTextFit;
  SymbolTextFit get iconTextFit => _$this._iconTextFit;
  set iconTextFit(SymbolTextFit iconTextFit) =>
      _$this._iconTextFit = iconTextFit;

  ListBuilder<double> _iconTextFitPadding;
  ListBuilder<double> get iconTextFitPadding =>
      _$this._iconTextFitPadding ??= new ListBuilder<double>();
  set iconTextFitPadding(ListBuilder<double> iconTextFitPadding) =>
      _$this._iconTextFitPadding = iconTextFitPadding;

  String _iconImage;
  String get iconImage => _$this._iconImage;
  set iconImage(String iconImage) => _$this._iconImage = iconImage;

  double _iconRotate;
  double get iconRotate => _$this._iconRotate;
  set iconRotate(double iconRotate) => _$this._iconRotate = iconRotate;

  double _iconPadding;
  double get iconPadding => _$this._iconPadding;
  set iconPadding(double iconPadding) => _$this._iconPadding = iconPadding;

  bool _iconKeepUpright;
  bool get iconKeepUpright => _$this._iconKeepUpright;
  set iconKeepUpright(bool iconKeepUpright) =>
      _$this._iconKeepUpright = iconKeepUpright;

  ListBuilder<double> _iconOffset;
  ListBuilder<double> get iconOffset =>
      _$this._iconOffset ??= new ListBuilder<double>();
  set iconOffset(ListBuilder<double> iconOffset) =>
      _$this._iconOffset = iconOffset;

  PositionAnchor _iconAnchor;
  PositionAnchor get iconAnchor => _$this._iconAnchor;
  set iconAnchor(PositionAnchor iconAnchor) => _$this._iconAnchor = iconAnchor;

  SymbolAlignment _iconPitchAlignment;
  SymbolAlignment get iconPitchAlignment => _$this._iconPitchAlignment;
  set iconPitchAlignment(SymbolAlignment iconPitchAlignment) =>
      _$this._iconPitchAlignment = iconPitchAlignment;

  SymbolAlignment _textPitchAlignment;
  SymbolAlignment get textPitchAlignment => _$this._textPitchAlignment;
  set textPitchAlignment(SymbolAlignment textPitchAlignment) =>
      _$this._textPitchAlignment = textPitchAlignment;

  SymbolAlignment _textRotationAlignment;
  SymbolAlignment get textRotationAlignment => _$this._textRotationAlignment;
  set textRotationAlignment(SymbolAlignment textRotationAlignment) =>
      _$this._textRotationAlignment = textRotationAlignment;

  ListBuilder<FormattedSection> _textField;
  ListBuilder<FormattedSection> get textField =>
      _$this._textField ??= new ListBuilder<FormattedSection>();
  set textField(ListBuilder<FormattedSection> textField) =>
      _$this._textField = textField;

  ListBuilder<String> _textFont;
  ListBuilder<String> get textFont =>
      _$this._textFont ??= new ListBuilder<String>();
  set textFont(ListBuilder<String> textFont) => _$this._textFont = textFont;

  double _textSize;
  double get textSize => _$this._textSize;
  set textSize(double textSize) => _$this._textSize = textSize;

  double _textMaxWidth;
  double get textMaxWidth => _$this._textMaxWidth;
  set textMaxWidth(double textMaxWidth) => _$this._textMaxWidth = textMaxWidth;

  double _textLineHeight;
  double get textLineHeight => _$this._textLineHeight;
  set textLineHeight(double textLineHeight) =>
      _$this._textLineHeight = textLineHeight;

  double _textLetterSpacing;
  double get textLetterSpacing => _$this._textLetterSpacing;
  set textLetterSpacing(double textLetterSpacing) =>
      _$this._textLetterSpacing = textLetterSpacing;

  SymbolTextJustify _textJustify;
  SymbolTextJustify get textJustify => _$this._textJustify;
  set textJustify(SymbolTextJustify textJustify) =>
      _$this._textJustify = textJustify;

  double _textRadialOffset;
  double get textRadialOffset => _$this._textRadialOffset;
  set textRadialOffset(double textRadialOffset) =>
      _$this._textRadialOffset = textRadialOffset;

  ListBuilder<PositionAnchor> _textVariableAnchor;
  ListBuilder<PositionAnchor> get textVariableAnchor =>
      _$this._textVariableAnchor ??= new ListBuilder<PositionAnchor>();
  set textVariableAnchor(ListBuilder<PositionAnchor> textVariableAnchor) =>
      _$this._textVariableAnchor = textVariableAnchor;

  PositionAnchor _textAnchor;
  PositionAnchor get textAnchor => _$this._textAnchor;
  set textAnchor(PositionAnchor textAnchor) => _$this._textAnchor = textAnchor;

  double _textMaxAngle;
  double get textMaxAngle => _$this._textMaxAngle;
  set textMaxAngle(double textMaxAngle) => _$this._textMaxAngle = textMaxAngle;

  double _textRotate;
  double get textRotate => _$this._textRotate;
  set textRotate(double textRotate) => _$this._textRotate = textRotate;

  double _textPadding;
  double get textPadding => _$this._textPadding;
  set textPadding(double textPadding) => _$this._textPadding = textPadding;

  bool _textKeepUpright;
  bool get textKeepUpright => _$this._textKeepUpright;
  set textKeepUpright(bool textKeepUpright) =>
      _$this._textKeepUpright = textKeepUpright;

  SymbolTextTransform _textTransform;
  SymbolTextTransform get textTransform => _$this._textTransform;
  set textTransform(SymbolTextTransform textTransform) =>
      _$this._textTransform = textTransform;

  ListBuilder<double> _textOffset;
  ListBuilder<double> get textOffset =>
      _$this._textOffset ??= new ListBuilder<double>();
  set textOffset(ListBuilder<double> textOffset) =>
      _$this._textOffset = textOffset;

  bool _textAllowOverlap;
  bool get textAllowOverlap => _$this._textAllowOverlap;
  set textAllowOverlap(bool textAllowOverlap) =>
      _$this._textAllowOverlap = textAllowOverlap;

  bool _textIgnorePlacement;
  bool get textIgnorePlacement => _$this._textIgnorePlacement;
  set textIgnorePlacement(bool textIgnorePlacement) =>
      _$this._textIgnorePlacement = textIgnorePlacement;

  bool _textOptional;
  bool get textOptional => _$this._textOptional;
  set textOptional(bool textOptional) => _$this._textOptional = textOptional;

  double _iconOpacity;
  double get iconOpacity => _$this._iconOpacity;
  set iconOpacity(double iconOpacity) => _$this._iconOpacity = iconOpacity;

  int _iconColor;
  int get iconColor => _$this._iconColor;
  set iconColor(int iconColor) => _$this._iconColor = iconColor;

  int _iconHaloColor;
  int get iconHaloColor => _$this._iconHaloColor;
  set iconHaloColor(int iconHaloColor) => _$this._iconHaloColor = iconHaloColor;

  double _iconHaloWidth;
  double get iconHaloWidth => _$this._iconHaloWidth;
  set iconHaloWidth(double iconHaloWidth) =>
      _$this._iconHaloWidth = iconHaloWidth;

  double _iconHaloBlur;
  double get iconHaloBlur => _$this._iconHaloBlur;
  set iconHaloBlur(double iconHaloBlur) => _$this._iconHaloBlur = iconHaloBlur;

  ListBuilder<double> _iconTranslate;
  ListBuilder<double> get iconTranslate =>
      _$this._iconTranslate ??= new ListBuilder<double>();
  set iconTranslate(ListBuilder<double> iconTranslate) =>
      _$this._iconTranslate = iconTranslate;

  TranslateAnchor _iconTranslateAnchor;
  TranslateAnchor get iconTranslateAnchor => _$this._iconTranslateAnchor;
  set iconTranslateAnchor(TranslateAnchor iconTranslateAnchor) =>
      _$this._iconTranslateAnchor = iconTranslateAnchor;

  double _textOpacity;
  double get textOpacity => _$this._textOpacity;
  set textOpacity(double textOpacity) => _$this._textOpacity = textOpacity;

  int _textColor;
  int get textColor => _$this._textColor;
  set textColor(int textColor) => _$this._textColor = textColor;

  int _textHaloColor;
  int get textHaloColor => _$this._textHaloColor;
  set textHaloColor(int textHaloColor) => _$this._textHaloColor = textHaloColor;

  double _textHaloWidth;
  double get textHaloWidth => _$this._textHaloWidth;
  set textHaloWidth(double textHaloWidth) =>
      _$this._textHaloWidth = textHaloWidth;

  double _textHaloBlur;
  double get textHaloBlur => _$this._textHaloBlur;
  set textHaloBlur(double textHaloBlur) => _$this._textHaloBlur = textHaloBlur;

  ListBuilder<double> _textTranslate;
  ListBuilder<double> get textTranslate =>
      _$this._textTranslate ??= new ListBuilder<double>();
  set textTranslate(ListBuilder<double> textTranslate) =>
      _$this._textTranslate = textTranslate;

  TranslateAnchor _textTranslateAnchor;
  TranslateAnchor get textTranslateAnchor => _$this._textTranslateAnchor;
  set textTranslateAnchor(TranslateAnchor textTranslateAnchor) =>
      _$this._textTranslateAnchor = textTranslateAnchor;

  TransitionOptionsBuilder _iconOpacityTransition;
  TransitionOptionsBuilder get iconOpacityTransition =>
      _$this._iconOpacityTransition ??= new TransitionOptionsBuilder();
  set iconOpacityTransition(TransitionOptionsBuilder iconOpacityTransition) =>
      _$this._iconOpacityTransition = iconOpacityTransition;

  TransitionOptionsBuilder _iconColorTransition;
  TransitionOptionsBuilder get iconColorTransition =>
      _$this._iconColorTransition ??= new TransitionOptionsBuilder();
  set iconColorTransition(TransitionOptionsBuilder iconColorTransition) =>
      _$this._iconColorTransition = iconColorTransition;

  TransitionOptionsBuilder _iconHaloColorTransition;
  TransitionOptionsBuilder get iconHaloColorTransition =>
      _$this._iconHaloColorTransition ??= new TransitionOptionsBuilder();
  set iconHaloColorTransition(
          TransitionOptionsBuilder iconHaloColorTransition) =>
      _$this._iconHaloColorTransition = iconHaloColorTransition;

  TransitionOptionsBuilder _iconHaloWidthTransition;
  TransitionOptionsBuilder get iconHaloWidthTransition =>
      _$this._iconHaloWidthTransition ??= new TransitionOptionsBuilder();
  set iconHaloWidthTransition(
          TransitionOptionsBuilder iconHaloWidthTransition) =>
      _$this._iconHaloWidthTransition = iconHaloWidthTransition;

  TransitionOptionsBuilder _iconHaloBlurTransition;
  TransitionOptionsBuilder get iconHaloBlurTransition =>
      _$this._iconHaloBlurTransition ??= new TransitionOptionsBuilder();
  set iconHaloBlurTransition(TransitionOptionsBuilder iconHaloBlurTransition) =>
      _$this._iconHaloBlurTransition = iconHaloBlurTransition;

  TransitionOptionsBuilder _iconTranslateTransition;
  TransitionOptionsBuilder get iconTranslateTransition =>
      _$this._iconTranslateTransition ??= new TransitionOptionsBuilder();
  set iconTranslateTransition(
          TransitionOptionsBuilder iconTranslateTransition) =>
      _$this._iconTranslateTransition = iconTranslateTransition;

  TransitionOptionsBuilder _textOpacityTransition;
  TransitionOptionsBuilder get textOpacityTransition =>
      _$this._textOpacityTransition ??= new TransitionOptionsBuilder();
  set textOpacityTransition(TransitionOptionsBuilder textOpacityTransition) =>
      _$this._textOpacityTransition = textOpacityTransition;

  TransitionOptionsBuilder _textColorTransition;
  TransitionOptionsBuilder get textColorTransition =>
      _$this._textColorTransition ??= new TransitionOptionsBuilder();
  set textColorTransition(TransitionOptionsBuilder textColorTransition) =>
      _$this._textColorTransition = textColorTransition;

  TransitionOptionsBuilder _textHaloColorTransition;
  TransitionOptionsBuilder get textHaloColorTransition =>
      _$this._textHaloColorTransition ??= new TransitionOptionsBuilder();
  set textHaloColorTransition(
          TransitionOptionsBuilder textHaloColorTransition) =>
      _$this._textHaloColorTransition = textHaloColorTransition;

  TransitionOptionsBuilder _textHaloWidthTransition;
  TransitionOptionsBuilder get textHaloWidthTransition =>
      _$this._textHaloWidthTransition ??= new TransitionOptionsBuilder();
  set textHaloWidthTransition(
          TransitionOptionsBuilder textHaloWidthTransition) =>
      _$this._textHaloWidthTransition = textHaloWidthTransition;

  TransitionOptionsBuilder _textHaloBlurTransition;
  TransitionOptionsBuilder get textHaloBlurTransition =>
      _$this._textHaloBlurTransition ??= new TransitionOptionsBuilder();
  set textHaloBlurTransition(TransitionOptionsBuilder textHaloBlurTransition) =>
      _$this._textHaloBlurTransition = textHaloBlurTransition;

  TransitionOptionsBuilder _textTranslateTransition;
  TransitionOptionsBuilder get textTranslateTransition =>
      _$this._textTranslateTransition ??= new TransitionOptionsBuilder();
  set textTranslateTransition(
          TransitionOptionsBuilder textTranslateTransition) =>
      _$this._textTranslateTransition = textTranslateTransition;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  bool _visible;
  bool get visible => _$this._visible;
  set visible(bool visible) => _$this._visible = visible;

  double _minZoom;
  double get minZoom => _$this._minZoom;
  set minZoom(double minZoom) => _$this._minZoom = minZoom;

  double _maxZoom;
  double get maxZoom => _$this._maxZoom;
  set maxZoom(double maxZoom) => _$this._maxZoom = maxZoom;

  SymbolLayerModelBuilder();

  SymbolLayerModelBuilder get _$this {
    if (_$v != null) {
      _sourceId = _$v.sourceId;
      _symbolPlacement = _$v.symbolPlacement;
      _symbolSpacing = _$v.symbolSpacing;
      _symbolAvoidEdges = _$v.symbolAvoidEdges;
      _symbolZOrder = _$v.symbolZOrder;
      _iconAllowOverlap = _$v.iconAllowOverlap;
      _iconIgnorePlacement = _$v.iconIgnorePlacement;
      _iconOptional = _$v.iconOptional;
      _iconRotationAlignment = _$v.iconRotationAlignment;
      _iconSize = _$v.iconSize;
      _iconTextFit = _$v.iconTextFit;
      _iconTextFitPadding = _$v.iconTextFitPadding?.toBuilder();
      _iconImage = _$v.iconImage;
      _iconRotate = _$v.iconRotate;
      _iconPadding = _$v.iconPadding;
      _iconKeepUpright = _$v.iconKeepUpright;
      _iconOffset = _$v.iconOffset?.toBuilder();
      _iconAnchor = _$v.iconAnchor;
      _iconPitchAlignment = _$v.iconPitchAlignment;
      _textPitchAlignment = _$v.textPitchAlignment;
      _textRotationAlignment = _$v.textRotationAlignment;
      _textField = _$v.textField?.toBuilder();
      _textFont = _$v.textFont?.toBuilder();
      _textSize = _$v.textSize;
      _textMaxWidth = _$v.textMaxWidth;
      _textLineHeight = _$v.textLineHeight;
      _textLetterSpacing = _$v.textLetterSpacing;
      _textJustify = _$v.textJustify;
      _textRadialOffset = _$v.textRadialOffset;
      _textVariableAnchor = _$v.textVariableAnchor?.toBuilder();
      _textAnchor = _$v.textAnchor;
      _textMaxAngle = _$v.textMaxAngle;
      _textRotate = _$v.textRotate;
      _textPadding = _$v.textPadding;
      _textKeepUpright = _$v.textKeepUpright;
      _textTransform = _$v.textTransform;
      _textOffset = _$v.textOffset?.toBuilder();
      _textAllowOverlap = _$v.textAllowOverlap;
      _textIgnorePlacement = _$v.textIgnorePlacement;
      _textOptional = _$v.textOptional;
      _iconOpacity = _$v.iconOpacity;
      _iconColor = _$v.iconColor;
      _iconHaloColor = _$v.iconHaloColor;
      _iconHaloWidth = _$v.iconHaloWidth;
      _iconHaloBlur = _$v.iconHaloBlur;
      _iconTranslate = _$v.iconTranslate?.toBuilder();
      _iconTranslateAnchor = _$v.iconTranslateAnchor;
      _textOpacity = _$v.textOpacity;
      _textColor = _$v.textColor;
      _textHaloColor = _$v.textHaloColor;
      _textHaloWidth = _$v.textHaloWidth;
      _textHaloBlur = _$v.textHaloBlur;
      _textTranslate = _$v.textTranslate?.toBuilder();
      _textTranslateAnchor = _$v.textTranslateAnchor;
      _iconOpacityTransition = _$v.iconOpacityTransition?.toBuilder();
      _iconColorTransition = _$v.iconColorTransition?.toBuilder();
      _iconHaloColorTransition = _$v.iconHaloColorTransition?.toBuilder();
      _iconHaloWidthTransition = _$v.iconHaloWidthTransition?.toBuilder();
      _iconHaloBlurTransition = _$v.iconHaloBlurTransition?.toBuilder();
      _iconTranslateTransition = _$v.iconTranslateTransition?.toBuilder();
      _textOpacityTransition = _$v.textOpacityTransition?.toBuilder();
      _textColorTransition = _$v.textColorTransition?.toBuilder();
      _textHaloColorTransition = _$v.textHaloColorTransition?.toBuilder();
      _textHaloWidthTransition = _$v.textHaloWidthTransition?.toBuilder();
      _textHaloBlurTransition = _$v.textHaloBlurTransition?.toBuilder();
      _textTranslateTransition = _$v.textTranslateTransition?.toBuilder();
      _id = _$v.id;
      _visible = _$v.visible;
      _minZoom = _$v.minZoom;
      _maxZoom = _$v.maxZoom;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant SymbolLayerModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SymbolLayerModel;
  }

  @override
  void update(void Function(SymbolLayerModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SymbolLayerModel build() {
    _$SymbolLayerModel _$result;
    try {
      _$result = _$v ??
          new _$SymbolLayerModel._(
              sourceId: sourceId,
              symbolPlacement: symbolPlacement,
              symbolSpacing: symbolSpacing,
              symbolAvoidEdges: symbolAvoidEdges,
              symbolZOrder: symbolZOrder,
              iconAllowOverlap: iconAllowOverlap,
              iconIgnorePlacement: iconIgnorePlacement,
              iconOptional: iconOptional,
              iconRotationAlignment: iconRotationAlignment,
              iconSize: iconSize,
              iconTextFit: iconTextFit,
              iconTextFitPadding: _iconTextFitPadding?.build(),
              iconImage: iconImage,
              iconRotate: iconRotate,
              iconPadding: iconPadding,
              iconKeepUpright: iconKeepUpright,
              iconOffset: _iconOffset?.build(),
              iconAnchor: iconAnchor,
              iconPitchAlignment: iconPitchAlignment,
              textPitchAlignment: textPitchAlignment,
              textRotationAlignment: textRotationAlignment,
              textField: _textField?.build(),
              textFont: _textFont?.build(),
              textSize: textSize,
              textMaxWidth: textMaxWidth,
              textLineHeight: textLineHeight,
              textLetterSpacing: textLetterSpacing,
              textJustify: textJustify,
              textRadialOffset: textRadialOffset,
              textVariableAnchor: _textVariableAnchor?.build(),
              textAnchor: textAnchor,
              textMaxAngle: textMaxAngle,
              textRotate: textRotate,
              textPadding: textPadding,
              textKeepUpright: textKeepUpright,
              textTransform: textTransform,
              textOffset: _textOffset?.build(),
              textAllowOverlap: textAllowOverlap,
              textIgnorePlacement: textIgnorePlacement,
              textOptional: textOptional,
              iconOpacity: iconOpacity,
              iconColor: iconColor,
              iconHaloColor: iconHaloColor,
              iconHaloWidth: iconHaloWidth,
              iconHaloBlur: iconHaloBlur,
              iconTranslate: _iconTranslate?.build(),
              iconTranslateAnchor: iconTranslateAnchor,
              textOpacity: textOpacity,
              textColor: textColor,
              textHaloColor: textHaloColor,
              textHaloWidth: textHaloWidth,
              textHaloBlur: textHaloBlur,
              textTranslate: _textTranslate?.build(),
              textTranslateAnchor: textTranslateAnchor,
              iconOpacityTransition: iconOpacityTransition.build(),
              iconColorTransition: iconColorTransition.build(),
              iconHaloColorTransition: iconHaloColorTransition.build(),
              iconHaloWidthTransition: iconHaloWidthTransition.build(),
              iconHaloBlurTransition: iconHaloBlurTransition.build(),
              iconTranslateTransition: iconTranslateTransition.build(),
              textOpacityTransition: textOpacityTransition.build(),
              textColorTransition: textColorTransition.build(),
              textHaloColorTransition: textHaloColorTransition.build(),
              textHaloWidthTransition: textHaloWidthTransition.build(),
              textHaloBlurTransition: textHaloBlurTransition.build(),
              textTranslateTransition: textTranslateTransition.build(),
              id: id,
              visible: visible,
              minZoom: minZoom,
              maxZoom: maxZoom);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'iconTextFitPadding';
        _iconTextFitPadding?.build();

        _$failedField = 'iconOffset';
        _iconOffset?.build();

        _$failedField = 'textField';
        _textField?.build();
        _$failedField = 'textFont';
        _textFont?.build();

        _$failedField = 'textVariableAnchor';
        _textVariableAnchor?.build();

        _$failedField = 'textOffset';
        _textOffset?.build();

        _$failedField = 'iconTranslate';
        _iconTranslate?.build();

        _$failedField = 'textTranslate';
        _textTranslate?.build();

        _$failedField = 'iconOpacityTransition';
        iconOpacityTransition.build();
        _$failedField = 'iconColorTransition';
        iconColorTransition.build();
        _$failedField = 'iconHaloColorTransition';
        iconHaloColorTransition.build();
        _$failedField = 'iconHaloWidthTransition';
        iconHaloWidthTransition.build();
        _$failedField = 'iconHaloBlurTransition';
        iconHaloBlurTransition.build();
        _$failedField = 'iconTranslateTransition';
        iconTranslateTransition.build();
        _$failedField = 'textOpacityTransition';
        textOpacityTransition.build();
        _$failedField = 'textColorTransition';
        textColorTransition.build();
        _$failedField = 'textHaloColorTransition';
        textHaloColorTransition.build();
        _$failedField = 'textHaloWidthTransition';
        textHaloWidthTransition.build();
        _$failedField = 'textHaloBlurTransition';
        textHaloBlurTransition.build();
        _$failedField = 'textTranslateTransition';
        textTranslateTransition.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SymbolLayerModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
