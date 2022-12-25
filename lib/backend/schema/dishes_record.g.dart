// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dishes_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DishesRecord> _$dishesRecordSerializer =
    new _$DishesRecordSerializer();

class _$DishesRecordSerializer implements StructuredSerializer<DishesRecord> {
  @override
  final Iterable<Type> types = const [DishesRecord, _$DishesRecord];
  @override
  final String wireName = 'DishesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, DishesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.desc;
    if (value != null) {
      result
        ..add('desc')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.img;
    if (value != null) {
      result
        ..add('img')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.price;
    if (value != null) {
      result
        ..add('price')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  DishesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DishesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'desc':
          result.desc = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'img':
          result.img = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$DishesRecord extends DishesRecord {
  @override
  final String? name;
  @override
  final String? desc;
  @override
  final String? img;
  @override
  final double? price;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$DishesRecord([void Function(DishesRecordBuilder)? updates]) =>
      (new DishesRecordBuilder()..update(updates))._build();

  _$DishesRecord._({this.name, this.desc, this.img, this.price, this.ffRef})
      : super._();

  @override
  DishesRecord rebuild(void Function(DishesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DishesRecordBuilder toBuilder() => new DishesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DishesRecord &&
        name == other.name &&
        desc == other.desc &&
        img == other.img &&
        price == other.price &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, name.hashCode), desc.hashCode), img.hashCode),
            price.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DishesRecord')
          ..add('name', name)
          ..add('desc', desc)
          ..add('img', img)
          ..add('price', price)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class DishesRecordBuilder
    implements Builder<DishesRecord, DishesRecordBuilder> {
  _$DishesRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _desc;
  String? get desc => _$this._desc;
  set desc(String? desc) => _$this._desc = desc;

  String? _img;
  String? get img => _$this._img;
  set img(String? img) => _$this._img = img;

  double? _price;
  double? get price => _$this._price;
  set price(double? price) => _$this._price = price;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  DishesRecordBuilder() {
    DishesRecord._initializeBuilder(this);
  }

  DishesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _desc = $v.desc;
      _img = $v.img;
      _price = $v.price;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DishesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DishesRecord;
  }

  @override
  void update(void Function(DishesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DishesRecord build() => _build();

  _$DishesRecord _build() {
    final _$result = _$v ??
        new _$DishesRecord._(
            name: name, desc: desc, img: img, price: price, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
