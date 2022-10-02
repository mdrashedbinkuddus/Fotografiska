// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_details_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ImageDetailsStruct> _$imageDetailsStructSerializer =
    new _$ImageDetailsStructSerializer();

class _$ImageDetailsStructSerializer
    implements StructuredSerializer<ImageDetailsStruct> {
  @override
  final Iterable<Type> types = const [ImageDetailsStruct, _$ImageDetailsStruct];
  @override
  final String wireName = 'ImageDetailsStruct';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ImageDetailsStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.imageName;
    if (value != null) {
      result
        ..add('imageName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.imageCreationDate;
    if (value != null) {
      result
        ..add('imageCreationDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.imageAuthor;
    if (value != null) {
      result
        ..add('imageAuthor')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ImageDetailsStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ImageDetailsStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'imageName':
          result.imageName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'imageCreationDate':
          result.imageCreationDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'imageAuthor':
          result.imageAuthor = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'firestoreUtilData':
          result.firestoreUtilData = serializers.deserialize(value,
                  specifiedType: const FullType(FirestoreUtilData))!
              as FirestoreUtilData;
          break;
      }
    }

    return result.build();
  }
}

class _$ImageDetailsStruct extends ImageDetailsStruct {
  @override
  final String? imageName;
  @override
  final DateTime? imageCreationDate;
  @override
  final String? imageAuthor;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$ImageDetailsStruct(
          [void Function(ImageDetailsStructBuilder)? updates]) =>
      (new ImageDetailsStructBuilder()..update(updates))._build();

  _$ImageDetailsStruct._(
      {this.imageName,
      this.imageCreationDate,
      this.imageAuthor,
      required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'ImageDetailsStruct', 'firestoreUtilData');
  }

  @override
  ImageDetailsStruct rebuild(
          void Function(ImageDetailsStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImageDetailsStructBuilder toBuilder() =>
      new ImageDetailsStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImageDetailsStruct &&
        imageName == other.imageName &&
        imageCreationDate == other.imageCreationDate &&
        imageAuthor == other.imageAuthor &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, imageName.hashCode), imageCreationDate.hashCode),
            imageAuthor.hashCode),
        firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ImageDetailsStruct')
          ..add('imageName', imageName)
          ..add('imageCreationDate', imageCreationDate)
          ..add('imageAuthor', imageAuthor)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class ImageDetailsStructBuilder
    implements Builder<ImageDetailsStruct, ImageDetailsStructBuilder> {
  _$ImageDetailsStruct? _$v;

  String? _imageName;
  String? get imageName => _$this._imageName;
  set imageName(String? imageName) => _$this._imageName = imageName;

  DateTime? _imageCreationDate;
  DateTime? get imageCreationDate => _$this._imageCreationDate;
  set imageCreationDate(DateTime? imageCreationDate) =>
      _$this._imageCreationDate = imageCreationDate;

  String? _imageAuthor;
  String? get imageAuthor => _$this._imageAuthor;
  set imageAuthor(String? imageAuthor) => _$this._imageAuthor = imageAuthor;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  ImageDetailsStructBuilder() {
    ImageDetailsStruct._initializeBuilder(this);
  }

  ImageDetailsStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _imageName = $v.imageName;
      _imageCreationDate = $v.imageCreationDate;
      _imageAuthor = $v.imageAuthor;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImageDetailsStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ImageDetailsStruct;
  }

  @override
  void update(void Function(ImageDetailsStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ImageDetailsStruct build() => _build();

  _$ImageDetailsStruct _build() {
    final _$result = _$v ??
        new _$ImageDetailsStruct._(
            imageName: imageName,
            imageCreationDate: imageCreationDate,
            imageAuthor: imageAuthor,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData, r'ImageDetailsStruct', 'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
