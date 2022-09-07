import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'members_record.g.dart';

abstract class MembersRecord
    implements Built<MembersRecord, MembersRecordBuilder> {
  static Serializer<MembersRecord> get serializer => _$membersRecordSerializer;

  String? get name;

  String? get email;

  String? get phone;

  DateTime? get date;

  @BuiltValueField(wireName: 'is_Member')
  bool? get isMember;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(MembersRecordBuilder builder) => builder
    ..name = ''
    ..email = ''
    ..phone = ''
    ..isMember = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('members');

  static Stream<MembersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<MembersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  MembersRecord._();
  factory MembersRecord([void Function(MembersRecordBuilder) updates]) =
      _$MembersRecord;

  static MembersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createMembersRecordData({
  String? name,
  String? email,
  String? phone,
  DateTime? date,
  bool? isMember,
}) {
  final firestoreData = serializers.toFirestore(
    MembersRecord.serializer,
    MembersRecord(
      (m) => m
        ..name = name
        ..email = email
        ..phone = phone
        ..date = date
        ..isMember = isMember,
    ),
  );

  return firestoreData;
}
