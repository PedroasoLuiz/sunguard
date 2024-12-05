// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TempoStruct extends BaseStruct {
  TempoStruct({
    CoordStruct? coord,
    List<WeatherStruct>? weather,
    String? base,
    MainStruct? main,
    int? visibility,
    WindStruct? wind,
    RainStruct? rain,
    CloudsStruct? clouds,
    int? dt,
    SysStruct? sys,
    int? timezone,
    int? id,
    String? name,
    int? cod,
  })  : _coord = coord,
        _weather = weather,
        _base = base,
        _main = main,
        _visibility = visibility,
        _wind = wind,
        _rain = rain,
        _clouds = clouds,
        _dt = dt,
        _sys = sys,
        _timezone = timezone,
        _id = id,
        _name = name,
        _cod = cod;

  // "coord" field.
  CoordStruct? _coord;
  CoordStruct get coord => _coord ?? CoordStruct();
  set coord(CoordStruct? val) => _coord = val;

  void updateCoord(Function(CoordStruct) updateFn) {
    updateFn(_coord ??= CoordStruct());
  }

  bool hasCoord() => _coord != null;

  // "weather" field.
  List<WeatherStruct>? _weather;
  List<WeatherStruct> get weather => _weather ?? const [];
  set weather(List<WeatherStruct>? val) => _weather = val;

  void updateWeather(Function(List<WeatherStruct>) updateFn) {
    updateFn(_weather ??= []);
  }

  bool hasWeather() => _weather != null;

  // "base" field.
  String? _base;
  String get base => _base ?? '';
  set base(String? val) => _base = val;

  bool hasBase() => _base != null;

  // "main" field.
  MainStruct? _main;
  MainStruct get main => _main ?? MainStruct();
  set main(MainStruct? val) => _main = val;

  void updateMain(Function(MainStruct) updateFn) {
    updateFn(_main ??= MainStruct());
  }

  bool hasMain() => _main != null;

  // "visibility" field.
  int? _visibility;
  int get visibility => _visibility ?? 0;
  set visibility(int? val) => _visibility = val;

  void incrementVisibility(int amount) => visibility = visibility + amount;

  bool hasVisibility() => _visibility != null;

  // "wind" field.
  WindStruct? _wind;
  WindStruct get wind => _wind ?? WindStruct();
  set wind(WindStruct? val) => _wind = val;

  void updateWind(Function(WindStruct) updateFn) {
    updateFn(_wind ??= WindStruct());
  }

  bool hasWind() => _wind != null;

  // "rain" field.
  RainStruct? _rain;
  RainStruct get rain => _rain ?? RainStruct();
  set rain(RainStruct? val) => _rain = val;

  void updateRain(Function(RainStruct) updateFn) {
    updateFn(_rain ??= RainStruct());
  }

  bool hasRain() => _rain != null;

  // "clouds" field.
  CloudsStruct? _clouds;
  CloudsStruct get clouds => _clouds ?? CloudsStruct();
  set clouds(CloudsStruct? val) => _clouds = val;

  void updateClouds(Function(CloudsStruct) updateFn) {
    updateFn(_clouds ??= CloudsStruct());
  }

  bool hasClouds() => _clouds != null;

  // "dt" field.
  int? _dt;
  int get dt => _dt ?? 0;
  set dt(int? val) => _dt = val;

  void incrementDt(int amount) => dt = dt + amount;

  bool hasDt() => _dt != null;

  // "sys" field.
  SysStruct? _sys;
  SysStruct get sys => _sys ?? SysStruct();
  set sys(SysStruct? val) => _sys = val;

  void updateSys(Function(SysStruct) updateFn) {
    updateFn(_sys ??= SysStruct());
  }

  bool hasSys() => _sys != null;

  // "timezone" field.
  int? _timezone;
  int get timezone => _timezone ?? 0;
  set timezone(int? val) => _timezone = val;

  void incrementTimezone(int amount) => timezone = timezone + amount;

  bool hasTimezone() => _timezone != null;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "cod" field.
  int? _cod;
  int get cod => _cod ?? 0;
  set cod(int? val) => _cod = val;

  void incrementCod(int amount) => cod = cod + amount;

  bool hasCod() => _cod != null;

  static TempoStruct fromMap(Map<String, dynamic> data) => TempoStruct(
        coord: CoordStruct.maybeFromMap(data['coord']),
        weather: getStructList(
          data['weather'],
          WeatherStruct.fromMap,
        ),
        base: data['base'] as String?,
        main: MainStruct.maybeFromMap(data['main']),
        visibility: castToType<int>(data['visibility']),
        wind: WindStruct.maybeFromMap(data['wind']),
        rain: RainStruct.maybeFromMap(data['rain']),
        clouds: CloudsStruct.maybeFromMap(data['clouds']),
        dt: castToType<int>(data['dt']),
        sys: SysStruct.maybeFromMap(data['sys']),
        timezone: castToType<int>(data['timezone']),
        id: castToType<int>(data['id']),
        name: data['name'] as String?,
        cod: castToType<int>(data['cod']),
      );

  static TempoStruct? maybeFromMap(dynamic data) =>
      data is Map ? TempoStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'coord': _coord?.toMap(),
        'weather': _weather?.map((e) => e.toMap()).toList(),
        'base': _base,
        'main': _main?.toMap(),
        'visibility': _visibility,
        'wind': _wind?.toMap(),
        'rain': _rain?.toMap(),
        'clouds': _clouds?.toMap(),
        'dt': _dt,
        'sys': _sys?.toMap(),
        'timezone': _timezone,
        'id': _id,
        'name': _name,
        'cod': _cod,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'coord': serializeParam(
          _coord,
          ParamType.DataStruct,
        ),
        'weather': serializeParam(
          _weather,
          ParamType.DataStruct,
          isList: true,
        ),
        'base': serializeParam(
          _base,
          ParamType.String,
        ),
        'main': serializeParam(
          _main,
          ParamType.DataStruct,
        ),
        'visibility': serializeParam(
          _visibility,
          ParamType.int,
        ),
        'wind': serializeParam(
          _wind,
          ParamType.DataStruct,
        ),
        'rain': serializeParam(
          _rain,
          ParamType.DataStruct,
        ),
        'clouds': serializeParam(
          _clouds,
          ParamType.DataStruct,
        ),
        'dt': serializeParam(
          _dt,
          ParamType.int,
        ),
        'sys': serializeParam(
          _sys,
          ParamType.DataStruct,
        ),
        'timezone': serializeParam(
          _timezone,
          ParamType.int,
        ),
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'cod': serializeParam(
          _cod,
          ParamType.int,
        ),
      }.withoutNulls;

  static TempoStruct fromSerializableMap(Map<String, dynamic> data) =>
      TempoStruct(
        coord: deserializeStructParam(
          data['coord'],
          ParamType.DataStruct,
          false,
          structBuilder: CoordStruct.fromSerializableMap,
        ),
        weather: deserializeStructParam<WeatherStruct>(
          data['weather'],
          ParamType.DataStruct,
          true,
          structBuilder: WeatherStruct.fromSerializableMap,
        ),
        base: deserializeParam(
          data['base'],
          ParamType.String,
          false,
        ),
        main: deserializeStructParam(
          data['main'],
          ParamType.DataStruct,
          false,
          structBuilder: MainStruct.fromSerializableMap,
        ),
        visibility: deserializeParam(
          data['visibility'],
          ParamType.int,
          false,
        ),
        wind: deserializeStructParam(
          data['wind'],
          ParamType.DataStruct,
          false,
          structBuilder: WindStruct.fromSerializableMap,
        ),
        rain: deserializeStructParam(
          data['rain'],
          ParamType.DataStruct,
          false,
          structBuilder: RainStruct.fromSerializableMap,
        ),
        clouds: deserializeStructParam(
          data['clouds'],
          ParamType.DataStruct,
          false,
          structBuilder: CloudsStruct.fromSerializableMap,
        ),
        dt: deserializeParam(
          data['dt'],
          ParamType.int,
          false,
        ),
        sys: deserializeStructParam(
          data['sys'],
          ParamType.DataStruct,
          false,
          structBuilder: SysStruct.fromSerializableMap,
        ),
        timezone: deserializeParam(
          data['timezone'],
          ParamType.int,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        cod: deserializeParam(
          data['cod'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'TempoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is TempoStruct &&
        coord == other.coord &&
        listEquality.equals(weather, other.weather) &&
        base == other.base &&
        main == other.main &&
        visibility == other.visibility &&
        wind == other.wind &&
        rain == other.rain &&
        clouds == other.clouds &&
        dt == other.dt &&
        sys == other.sys &&
        timezone == other.timezone &&
        id == other.id &&
        name == other.name &&
        cod == other.cod;
  }

  @override
  int get hashCode => const ListEquality().hash([
        coord,
        weather,
        base,
        main,
        visibility,
        wind,
        rain,
        clouds,
        dt,
        sys,
        timezone,
        id,
        name,
        cod
      ]);
}

TempoStruct createTempoStruct({
  CoordStruct? coord,
  String? base,
  MainStruct? main,
  int? visibility,
  WindStruct? wind,
  RainStruct? rain,
  CloudsStruct? clouds,
  int? dt,
  SysStruct? sys,
  int? timezone,
  int? id,
  String? name,
  int? cod,
}) =>
    TempoStruct(
      coord: coord ?? CoordStruct(),
      base: base,
      main: main ?? MainStruct(),
      visibility: visibility,
      wind: wind ?? WindStruct(),
      rain: rain ?? RainStruct(),
      clouds: clouds ?? CloudsStruct(),
      dt: dt,
      sys: sys ?? SysStruct(),
      timezone: timezone,
      id: id,
      name: name,
      cod: cod,
    );
