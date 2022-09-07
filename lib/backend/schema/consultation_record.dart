import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'consultation_record.g.dart';

abstract class ConsultationRecord
    implements Built<ConsultationRecord, ConsultationRecordBuilder> {
  static Serializer<ConsultationRecord> get serializer =>
      _$consultationRecordSerializer;

  int? get id;

  @BuiltValueField(wireName: 'Time')
  String? get time;

  String? get date;

  String? get type;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ConsultationRecordBuilder builder) => builder
    ..id = 0
    ..time = ''
    ..date = ''
    ..type = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('consultation');

  static Stream<ConsultationRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ConsultationRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ConsultationRecord._();
  factory ConsultationRecord(
          [void Function(ConsultationRecordBuilder) updates]) =
      _$ConsultationRecord;

  static ConsultationRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createConsultationRecordData({
  int? id,
  String? time,
  String? date,
  String? type,
}) {
  final firestoreData = serializers.toFirestore(
    ConsultationRecord.serializer,
    ConsultationRecord(
      (c) => c
        ..id = id
        ..time = time
        ..date = date
        ..type = type,
    ),
  );

  return firestoreData;
}
