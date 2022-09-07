import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'volunteer_record.g.dart';

abstract class VolunteerRecord
    implements Built<VolunteerRecord, VolunteerRecordBuilder> {
  static Serializer<VolunteerRecord> get serializer =>
      _$volunteerRecordSerializer;

  String? get name;

  String? get email;

  String? get phone;

  DateTime? get date;

  @BuiltValueField(wireName: 'is_Member')
  bool? get isMember;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(VolunteerRecordBuilder builder) => builder
    ..name = ''
    ..email = ''
    ..phone = ''
    ..isMember = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('volunteer');

  static Stream<VolunteerRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<VolunteerRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  VolunteerRecord._();
  factory VolunteerRecord([void Function(VolunteerRecordBuilder) updates]) =
      _$VolunteerRecord;

  static VolunteerRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createVolunteerRecordData({
  String? name,
  String? email,
  String? phone,
  DateTime? date,
  bool? isMember,
}) {
  final firestoreData = serializers.toFirestore(
    VolunteerRecord.serializer,
    VolunteerRecord(
      (v) => v
        ..name = name
        ..email = email
        ..phone = phone
        ..date = date
        ..isMember = isMember,
    ),
  );

  return firestoreData;
}
