import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'whatson_record.g.dart';

abstract class WhatsonRecord
    implements Built<WhatsonRecord, WhatsonRecordBuilder> {
  static Serializer<WhatsonRecord> get serializer => _$whatsonRecordSerializer;

  String? get image;

  DateTime? get date;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(WhatsonRecordBuilder builder) =>
      builder..image = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('whatson');

  static Stream<WhatsonRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<WhatsonRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  WhatsonRecord._();
  factory WhatsonRecord([void Function(WhatsonRecordBuilder) updates]) =
      _$WhatsonRecord;

  static WhatsonRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createWhatsonRecordData({
  String? image,
  DateTime? date,
}) {
  final firestoreData = serializers.toFirestore(
    WhatsonRecord.serializer,
    WhatsonRecord(
      (w) => w
        ..image = image
        ..date = date,
    ),
  );

  return firestoreData;
}
