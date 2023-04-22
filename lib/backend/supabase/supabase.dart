import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://dyraradogfehglmizmig.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImR5cmFyYWRvZ2ZlaGdsbWl6bWlnIiwicm9sZSI6ImFub24iLCJpYXQiOjE2ODIxNzg4MTQsImV4cCI6MTk5Nzc1NDgxNH0.W8ydQ5uclVcIB2Sh0UOp-4NNP5p6EpKnWjOKgwjS5v0';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
      );
}
