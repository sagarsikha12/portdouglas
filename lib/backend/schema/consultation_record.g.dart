// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consultation_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ConsultationRecord> _$consultationRecordSerializer =
    new _$ConsultationRecordSerializer();

class _$ConsultationRecordSerializer
    implements StructuredSerializer<ConsultationRecord> {
  @override
  final Iterable<Type> types = const [ConsultationRecord, _$ConsultationRecord];
  @override
  final String wireName = 'ConsultationRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ConsultationRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.time;
    if (value != null) {
      result
        ..add('Time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.date;
    if (value != null) {
      result
        ..add('date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  ConsultationRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ConsultationRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Time':
          result.time = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$ConsultationRecord extends ConsultationRecord {
  @override
  final int? id;
  @override
  final String? time;
  @override
  final String? date;
  @override
  final String? type;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ConsultationRecord(
          [void Function(ConsultationRecordBuilder)? updates]) =>
      (new ConsultationRecordBuilder()..update(updates))._build();

  _$ConsultationRecord._({this.id, this.time, this.date, this.type, this.ffRef})
      : super._();

  @override
  ConsultationRecord rebuild(
          void Function(ConsultationRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsultationRecordBuilder toBuilder() =>
      new ConsultationRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsultationRecord &&
        id == other.id &&
        time == other.time &&
        date == other.date &&
        type == other.type &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, id.hashCode), time.hashCode), date.hashCode),
            type.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ConsultationRecord')
          ..add('id', id)
          ..add('time', time)
          ..add('date', date)
          ..add('type', type)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ConsultationRecordBuilder
    implements Builder<ConsultationRecord, ConsultationRecordBuilder> {
  _$ConsultationRecord? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _time;
  String? get time => _$this._time;
  set time(String? time) => _$this._time = time;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ConsultationRecordBuilder() {
    ConsultationRecord._initializeBuilder(this);
  }

  ConsultationRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _time = $v.time;
      _date = $v.date;
      _type = $v.type;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConsultationRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ConsultationRecord;
  }

  @override
  void update(void Function(ConsultationRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConsultationRecord build() => _build();

  _$ConsultationRecord _build() {
    final _$result = _$v ??
        new _$ConsultationRecord._(
            id: id, time: time, date: date, type: type, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
