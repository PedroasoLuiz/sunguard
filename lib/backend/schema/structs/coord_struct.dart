// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CoordStruct extends BaseStruct {
  CoordStruct({
    double? lon,
    double? lat,
  })  : _lon = lon,
        _lat = lat;

  // "lon" field.
  double? _lon;
  double get lon => _lon ?? 0.0;
  set lon(double? val) => _lon = val;

  void incrementLon(double amount) => lon = lon + amount;

  bool hasLon() => _lon != null;

  // "lat" field.
  double? _lat;
  double get lat => _lat ?? 0.0;
  set lat(double? val) => _lat = val;

  void incrementLat(double amount) => lat = lat + amount;

  bool hasLat() => _lat != null;

  static CoordStruct fromMap(Map<String, dynamic> data) => CoordStruct(
        lon: castToType<double>(data['lon']),
        lat: castToType<double>(data['lat']),
      );

  static CoordStruct? maybeFromMap(dynamic data) =>
      data is Map ? CoordStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'lon': _lon,
        'lat': _lat,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'lon': serializeParam(
          _lon,
          ParamType.double,
        ),
        'lat': serializeParam(
          _lat,
          ParamType.double,
        ),
      }.withoutNulls;

  static CoordStruct fromSerializableMap(Map<String, dynamic> data) =>
      CoordStruct(
        lon: deserializeParam(
          data['lon'],
          ParamType.double,
          false,
        ),
        lat: deserializeParam(
          data['lat'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'CoordStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CoordStruct && lon == other.lon && lat == other.lat;
  }

  @override
  int get hashCode => const ListEquality().hash([lon, lat]);
}

CoordStruct createCoordStruct({
  double? lon,
  double? lat,
}) =>
    CoordStruct(
      lon: lon,
      lat: lat,
    );
