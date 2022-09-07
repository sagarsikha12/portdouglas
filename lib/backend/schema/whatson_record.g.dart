// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'whatson_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WhatsonRecord> _$whatsonRecordSerializer =
    new _$WhatsonRecordSerializer();

class _$WhatsonRecordSerializer implements StructuredSerializer<WhatsonRecord> {
  @override
  final Iterable<Type> types = const [WhatsonRecord, _$WhatsonRecord];
  @override
  final String wireName = 'WhatsonRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, WhatsonRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.date;
    if (value != null) {
      result
        ..add('date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
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
  WhatsonRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WhatsonRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
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

class _$WhatsonRecord extends WhatsonRecord {
  @override
  final String? image;
  @override
  final DateTime? date;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$WhatsonRecord([void Function(WhatsonRecordBuilder)? updates]) =>
      (new WhatsonRecordBuilder()..update(updates))._build();

  _$WhatsonRecord._({this.image, this.date, this.ffRef}) : super._();

  @override
  WhatsonRecord rebuild(void Function(WhatsonRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WhatsonRecordBuilder toBuilder() => new WhatsonRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WhatsonRecord &&
        image == other.image &&
        date == other.date &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, image.hashCode), date.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WhatsonRecord')
          ..add('image', image)
          ..add('date', date)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class WhatsonRecordBuilder
    implements Builder<WhatsonRecord, WhatsonRecordBuilder> {
  _$WhatsonRecord? _$v;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  DateTime? _date;
  DateTime? get date => _$this._date;
  set date(DateTime? date) => _$this._date = date;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  WhatsonRecordBuilder() {
    WhatsonRecord._initializeBuilder(this);
  }

  WhatsonRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _image = $v.image;
      _date = $v.date;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WhatsonRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WhatsonRecord;
  }

  @override
  void update(void Function(WhatsonRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WhatsonRecord build() => _build();

  _$WhatsonRecord _build() {
    final _$result =
        _$v ?? new _$WhatsonRecord._(image: image, date: date, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
