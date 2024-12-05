// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MainStruct extends BaseStruct {
  MainStruct({
    double? temp,
    double? feelsLike,
    double? tempMin,
    double? tempMax,
    int? pressure,
    int? humidity,
    int? seaLevel,
    int? grndLevel,
  })  : _temp = temp,
        _feelsLike = feelsLike,
        _tempMin = tempMin,
        _tempMax = tempMax,
        _pressure = pressure,
        _humidity = humidity,
        _seaLevel = seaLevel,
        _grndLevel = grndLevel;

  // "temp" field.
  double? _temp;
  double get temp => _temp ?? 0.0;
  set temp(double? val) => _temp = val;

  void incrementTemp(double amount) => temp = temp + amount;

  bool hasTemp() => _temp != null;

  // "feels_like" field.
  double? _feelsLike;
  double get feelsLike => _feelsLike ?? 0.0;
  set feelsLike(double? val) => _feelsLike = val;

  void incrementFeelsLike(double amount) => feelsLike = feelsLike + amount;

  bool hasFeelsLike() => _feelsLike != null;

  // "temp_min" field.
  double? _tempMin;
  double get tempMin => _tempMin ?? 0.0;
  set tempMin(double? val) => _tempMin = val;

  void incrementTempMin(double amount) => tempMin = tempMin + amount;

  bool hasTempMin() => _tempMin != null;

  // "temp_max" field.
  double? _tempMax;
  double get tempMax => _tempMax ?? 0.0;
  set tempMax(double? val) => _tempMax = val;

  void incrementTempMax(double amount) => tempMax = tempMax + amount;

  bool hasTempMax() => _tempMax != null;

  // "pressure" field.
  int? _pressure;
  int get pressure => _pressure ?? 0;
  set pressure(int? val) => _pressure = val;

  void incrementPressure(int amount) => pressure = pressure + amount;

  bool hasPressure() => _pressure != null;

  // "humidity" field.
  int? _humidity;
  int get humidity => _humidity ?? 0;
  set humidity(int? val) => _humidity = val;

  void incrementHumidity(int amount) => humidity = humidity + amount;

  bool hasHumidity() => _humidity != null;

  // "sea_level" field.
  int? _seaLevel;
  int get seaLevel => _seaLevel ?? 0;
  set seaLevel(int? val) => _seaLevel = val;

  void incrementSeaLevel(int amount) => seaLevel = seaLevel + amount;

  bool hasSeaLevel() => _seaLevel != null;

  // "grnd_level" field.
  int? _grndLevel;
  int get grndLevel => _grndLevel ?? 0;
  set grndLevel(int? val) => _grndLevel = val;

  void incrementGrndLevel(int amount) => grndLevel = grndLevel + amount;

  bool hasGrndLevel() => _grndLevel != null;

  static MainStruct fromMap(Map<String, dynamic> data) => MainStruct(
        temp: castToType<double>(data['temp']),
        feelsLike: castToType<double>(data['feels_like']),
        tempMin: castToType<double>(data['temp_min']),
        tempMax: castToType<double>(data['temp_max']),
        pressure: castToType<int>(data['pressure']),
        humidity: castToType<int>(data['humidity']),
        seaLevel: castToType<int>(data['sea_level']),
        grndLevel: castToType<int>(data['grnd_level']),
      );

  static MainStruct? maybeFromMap(dynamic data) =>
      data is Map ? MainStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'temp': _temp,
        'feels_like': _feelsLike,
        'temp_min': _tempMin,
        'temp_max': _tempMax,
        'pressure': _pressure,
        'humidity': _humidity,
        'sea_level': _seaLevel,
        'grnd_level': _grndLevel,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'temp': serializeParam(
          _temp,
          ParamType.double,
        ),
        'feels_like': serializeParam(
          _feelsLike,
          ParamType.double,
        ),
        'temp_min': serializeParam(
          _tempMin,
          ParamType.double,
        ),
        'temp_max': serializeParam(
          _tempMax,
          ParamType.double,
        ),
        'pressure': serializeParam(
          _pressure,
          ParamType.int,
        ),
        'humidity': serializeParam(
          _humidity,
          ParamType.int,
        ),
        'sea_level': serializeParam(
          _seaLevel,
          ParamType.int,
        ),
        'grnd_level': serializeParam(
          _grndLevel,
          ParamType.int,
        ),
      }.withoutNulls;

  static MainStruct fromSerializableMap(Map<String, dynamic> data) =>
      MainStruct(
        temp: deserializeParam(
          data['temp'],
          ParamType.double,
          false,
        ),
        feelsLike: deserializeParam(
          data['feels_like'],
          ParamType.double,
          false,
        ),
        tempMin: deserializeParam(
          data['temp_min'],
          ParamType.double,
          false,
        ),
        tempMax: deserializeParam(
          data['temp_max'],
          ParamType.double,
          false,
        ),
        pressure: deserializeParam(
          data['pressure'],
          ParamType.int,
          false,
        ),
        humidity: deserializeParam(
          data['humidity'],
          ParamType.int,
          false,
        ),
        seaLevel: deserializeParam(
          data['sea_level'],
          ParamType.int,
          false,
        ),
        grndLevel: deserializeParam(
          data['grnd_level'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'MainStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MainStruct &&
        temp == other.temp &&
        feelsLike == other.feelsLike &&
        tempMin == other.tempMin &&
        tempMax == other.tempMax &&
        pressure == other.pressure &&
        humidity == other.humidity &&
        seaLevel == other.seaLevel &&
        grndLevel == other.grndLevel;
  }

  @override
  int get hashCode => const ListEquality().hash([
        temp,
        feelsLike,
        tempMin,
        tempMax,
        pressure,
        humidity,
        seaLevel,
        grndLevel
      ]);
}

MainStruct createMainStruct({
  double? temp,
  double? feelsLike,
  double? tempMin,
  double? tempMax,
  int? pressure,
  int? humidity,
  int? seaLevel,
  int? grndLevel,
}) =>
    MainStruct(
      temp: temp,
      feelsLike: feelsLike,
      tempMin: tempMin,
      tempMax: tempMax,
      pressure: pressure,
      humidity: humidity,
      seaLevel: seaLevel,
      grndLevel: grndLevel,
    );
