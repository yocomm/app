import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'dishes_record.g.dart';

abstract class DishesRecord
    implements Built<DishesRecord, DishesRecordBuilder> {
  static Serializer<DishesRecord> get serializer => _$dishesRecordSerializer;

  String? get name;

  String? get desc;

  String? get img;

  double? get price;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(DishesRecordBuilder builder) => builder
    ..name = ''
    ..desc = ''
    ..img = ''
    ..price = 0.0;

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('dishes')
          : FirebaseFirestore.instance.collectionGroup('dishes');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('dishes').doc();

  static Stream<DishesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<DishesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  DishesRecord._();
  factory DishesRecord([void Function(DishesRecordBuilder) updates]) =
      _$DishesRecord;

  static DishesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createDishesRecordData({
  String? name,
  String? desc,
  String? img,
  double? price,
}) {
  final firestoreData = serializers.toFirestore(
    DishesRecord.serializer,
    DishesRecord(
      (d) => d
        ..name = name
        ..desc = desc
        ..img = img
        ..price = price,
    ),
  );

  return firestoreData;
}
