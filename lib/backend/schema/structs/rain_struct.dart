// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RainStruct extends BaseStruct {
  RainStruct({
    int? oneh,
  }) : _oneh = oneh;

  // "oneh" field.
  int? _oneh;
  int get oneh => _oneh ?? 0;
  set oneh(int? val) => _oneh = val;

  void incrementOneh(int amount) => oneh = oneh + amount;

  bool hasOneh() => _oneh != null;

  static RainStruct fromMap(Map<String, dynamic> data) => RainStruct(
        oneh: castToType<int>(data['oneh']),
      );

  static RainStruct? maybeFromMap(dynamic data) =>
      data is Map ? RainStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'oneh': _oneh,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'oneh': serializeParam(
          _oneh,
          ParamType.int,
        ),
      }.withoutNulls;

  static RainStruct fromSerializableMap(Map<String, dynamic> data) =>
      RainStruct(
        oneh: deserializeParam(
          data['oneh'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'RainStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RainStruct && oneh == other.oneh;
  }

  @override
  int get hashCode => const ListEquality().hash([oneh]);
}

RainStruct createRainStruct({
  int? oneh,
}) =>
    RainStruct(
      oneh: oneh,
    );
