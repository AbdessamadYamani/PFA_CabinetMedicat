import '../database.dart';

class MedicalrecordTable extends SupabaseTable<MedicalrecordRow> {
  @override
  String get tableName => 'medicalrecord';

  @override
  MedicalrecordRow createRow(Map<String, dynamic> data) =>
      MedicalrecordRow(data);
}

class MedicalrecordRow extends SupabaseDataRow {
  MedicalrecordRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MedicalrecordTable();

  int get recordid => getField<int>('recordid')!;
  set recordid(int value) => setField<int>('recordid', value);

  int get patientid => getField<int>('patientid')!;
  set patientid(int value) => setField<int>('patientid', value);

  int get doctorid => getField<int>('doctorid')!;
  set doctorid(int value) => setField<int>('doctorid', value);

  String get recorddate => getField<String>('recorddate')!;
  set recorddate(String value) => setField<String>('recorddate', value);

  String? get testresults => getField<String>('testresults');
  set testresults(String? value) => setField<String>('testresults', value);

  String? get diagnosis => getField<String>('diagnosis');
  set diagnosis(String? value) => setField<String>('diagnosis', value);

  String? get treatmentplan => getField<String>('treatmentplan');
  set treatmentplan(String? value) => setField<String>('treatmentplan', value);

  String? get prescriptioninfo => getField<String>('prescriptioninfo');
  set prescriptioninfo(String? value) =>
      setField<String>('prescriptioninfo', value);
}
