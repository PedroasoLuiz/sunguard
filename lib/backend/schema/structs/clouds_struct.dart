// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CloudsStruct extends BaseStruct {
  CloudsStruct({
    int? all,
  }) : _all = all;

  // "all" field.
  int? _all;
  int get all => _all ?? 0;
  set all(int? val) => _all = val;

  void incrementAll(int amount) => all = all + amount;

  bool hasAll() => _all != null;

  static CloudsStruct fromMap(Map<String, dynamic> data) => CloudsStruct(
        all: castToType<int>(data['all']),
      );

  static CloudsStruct? maybeFromMap(dynamic data) =>
      data is Map ? CloudsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'all': _all,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'all': serializeParam(
          _all,
          ParamType.int,
        ),
      }.withoutNulls;

  static CloudsStruct fromSerializableMap(Map<String, dynamic> data) =>
      CloudsStruct(
        all: deserializeParam(
          data['all'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'CloudsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CloudsStruct && all == other.all;
  }

  @override
  int get hashCode => const ListEquality().hash([all]);
}

CloudsStruct createCloudsStruct({
  int? all,
}) =>
    CloudsStruct(
      all: all,
    );
