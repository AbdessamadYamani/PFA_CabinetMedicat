import '../database.dart';

class PatientTable extends SupabaseTable<PatientRow> {
  @override
  String get tableName => 'patient';

  @override
  PatientRow createRow(Map<String, dynamic> data) => PatientRow(data);
}

class PatientRow extends SupabaseDataRow {
  PatientRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PatientTable();

  int get patientid => getField<int>('patientid')!;
  set patientid(int value) => setField<int>('patientid', value);

  String? get firstname => getField<String>('firstname');
  set firstname(String? value) => setField<String>('firstname', value);

  String? get lastname => getField<String>('lastname');
  set lastname(String? value) => setField<String>('lastname', value);

  DateTime? get dateofbirth => getField<DateTime>('dateofbirth');
  set dateofbirth(DateTime? value) => setField<DateTime>('dateofbirth', value);

  String? get gender => getField<String>('gender');
  set gender(String? value) => setField<String>('gender', value);

  String? get phonenumber => getField<String>('phonenumber');
  set phonenumber(String? value) => setField<String>('phonenumber', value);

  String? get emailaddress => getField<String>('emailaddress');
  set emailaddress(String? value) => setField<String>('emailaddress', value);

  String? get medicalhistory => getField<String>('medicalhistory');
  set medicalhistory(String? value) =>
      setField<String>('medicalhistory', value);

  String? get insuranceinformation => getField<String>('insuranceinformation');
  set insuranceinformation(String? value) =>
      setField<String>('insuranceinformation', value);

  String? get password => getField<String>('Password');
  set password(String? value) => setField<String>('Password', value);
}
