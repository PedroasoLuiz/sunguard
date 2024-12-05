import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

String _kSupabaseUrl = 'https://moadhexswymltqnffoer.supabase.co';
String _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1vYWRoZXhzd3ltbHRxbmZmb2VyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3Mjc0NDQyNjUsImV4cCI6MjA0MzAyMDI2NX0.oHKVOkSK2MQi0iPzHJHvbD9HxcH6_LiTGcOkJhymwhM';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
