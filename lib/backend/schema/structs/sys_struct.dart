// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SysStruct extends BaseStruct {
  SysStruct({
    String? country,
    int? sunrise,
    int? sunset,
  })  : _country = country,
        _sunrise = sunrise,
        _sunset = sunset;

  // "country" field.
  String? _country;
  String get country => _country ?? '';
  set country(String? val) => _country = val;

  bool hasCountry() => _country != null;

  // "sunrise" field.
  int? _sunrise;
  int get sunrise => _sunrise ?? 0;
  set sunrise(int? val) => _sunrise = val;

  void incrementSunrise(int amount) => sunrise = sunrise + amount;

  bool hasSunrise() => _sunrise != null;

  // "sunset" field.
  int? _sunset;
  int get sunset => _sunset ?? 0;
  set sunset(int? val) => _sunset = val;

  void incrementSunset(int amount) => sunset = sunset + amount;

  bool hasSunset() => _sunset != null;

  static SysStruct fromMap(Map<String, dynamic> data) => SysStruct(
        country: data['country'] as String?,
        sunrise: castToType<int>(data['sunrise']),
        sunset: castToType<int>(data['sunset']),
      );

  static SysStruct? maybeFromMap(dynamic data) =>
      data is Map ? SysStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'country': _country,
        'sunrise': _sunrise,
        'sunset': _sunset,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'country': serializeParam(
          _country,
          ParamType.String,
        ),
        'sunrise': serializeParam(
          _sunrise,
          ParamType.int,
        ),
        'sunset': serializeParam(
          _sunset,
          ParamType.int,
        ),
      }.withoutNulls;

  static SysStruct fromSerializableMap(Map<String, dynamic> data) => SysStruct(
        country: deserializeParam(
          data['country'],
          ParamType.String,
          false,
        ),
        sunrise: deserializeParam(
          data['sunrise'],
          ParamType.int,
          false,
        ),
        sunset: deserializeParam(
          data['sunset'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'SysStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SysStruct &&
        country == other.country &&
        sunrise == other.sunrise &&
        sunset == other.sunset;
  }

  @override
  int get hashCode => const ListEquality().hash([country, sunrise, sunset]);
}

SysStruct createSysStruct({
  String? country,
  int? sunrise,
  int? sunset,
}) =>
    SysStruct(
      country: country,
      sunrise: sunrise,
      sunset: sunset,
    );
