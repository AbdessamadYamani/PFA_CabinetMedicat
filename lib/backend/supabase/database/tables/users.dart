import '../database.dart';

class UsersTable extends SupabaseTable<UsersRow> {
  @override
  String get tableName => 'users';

  @override
  UsersRow createRow(Map<String, dynamic> data) => UsersRow(data);
}

class UsersRow extends SupabaseDataRow {
  UsersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UsersTable();

  int get userid => getField<int>('userid')!;
  set userid(int value) => setField<int>('userid', value);

  String get username => getField<String>('username')!;
  set username(String value) => setField<String>('username', value);

  String get password => getField<String>('password')!;
  set password(String value) => setField<String>('password', value);

  String get role => getField<String>('role')!;
  set role(String value) => setField<String>('role', value);
}
