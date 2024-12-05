// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WindStruct extends BaseStruct {
  WindStruct({
    double? speed,
    int? deg,
    double? gust,
  })  : _speed = speed,
        _deg = deg,
        _gust = gust;

  // "speed" field.
  double? _speed;
  double get speed => _speed ?? 0.0;
  set speed(double? val) => _speed = val;

  void incrementSpeed(double amount) => speed = speed + amount;

  bool hasSpeed() => _speed != null;

  // "deg" field.
  int? _deg;
  int get deg => _deg ?? 0;
  set deg(int? val) => _deg = val;

  void incrementDeg(int amount) => deg = deg + amount;

  bool hasDeg() => _deg != null;

  // "gust" field.
  double? _gust;
  double get gust => _gust ?? 0.0;
  set gust(double? val) => _gust = val;

  void incrementGust(double amount) => gust = gust + amount;

  bool hasGust() => _gust != null;

  static WindStruct fromMap(Map<String, dynamic> data) => WindStruct(
        speed: castToType<double>(data['speed']),
        deg: castToType<int>(data['deg']),
        gust: castToType<double>(data['gust']),
      );

  static WindStruct? maybeFromMap(dynamic data) =>
      data is Map ? WindStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'speed': _speed,
        'deg': _deg,
        'gust': _gust,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'speed': serializeParam(
          _speed,
          ParamType.double,
        ),
        'deg': serializeParam(
          _deg,
          ParamType.int,
        ),
        'gust': serializeParam(
          _gust,
          ParamType.double,
        ),
      }.withoutNulls;

  static WindStruct fromSerializableMap(Map<String, dynamic> data) =>
      WindStruct(
        speed: deserializeParam(
          data['speed'],
          ParamType.double,
          false,
        ),
        deg: deserializeParam(
          data['deg'],
          ParamType.int,
          false,
        ),
        gust: deserializeParam(
          data['gust'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'WindStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is WindStruct &&
        speed == other.speed &&
        deg == other.deg &&
        gust == other.gust;
  }

  @override
  int get hashCode => const ListEquality().hash([speed, deg, gust]);
}

WindStruct createWindStruct({
  double? speed,
  int? deg,
  double? gust,
}) =>
    WindStruct(
      speed: speed,
      deg: deg,
      gust: gust,
    );
