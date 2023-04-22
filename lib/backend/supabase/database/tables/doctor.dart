import '../database.dart';

class DoctorTable extends SupabaseTable<DoctorRow> {
  @override
  String get tableName => 'doctor';

  @override
  DoctorRow createRow(Map<String, dynamic> data) => DoctorRow(data);
}

class DoctorRow extends SupabaseDataRow {
  DoctorRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DoctorTable();

  int get doctorid => getField<int>('doctorid')!;
  set doctorid(int value) => setField<int>('doctorid', value);

  String get firstname => getField<String>('firstname')!;
  set firstname(String value) => setField<String>('firstname', value);

  String get lastname => getField<String>('lastname')!;
  set lastname(String value) => setField<String>('lastname', value);

  String get specialty => getField<String>('specialty')!;
  set specialty(String value) => setField<String>('specialty', value);

  String get phonenumber => getField<String>('phonenumber')!;
  set phonenumber(String value) => setField<String>('phonenumber', value);

  String get email => getField<String>('email')!;
  set email(String value) => setField<String>('email', value);

  String? get availability => getField<String>('availability');
  set availability(String? value) => setField<String>('availability', value);
}
