import '../database.dart';

class AppointmentTable extends SupabaseTable<AppointmentRow> {
  @override
  String get tableName => 'appointment';

  @override
  AppointmentRow createRow(Map<String, dynamic> data) => AppointmentRow(data);
}

class AppointmentRow extends SupabaseDataRow {
  AppointmentRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AppointmentTable();

  int get appointmentid => getField<int>('appointmentid')!;
  set appointmentid(int value) => setField<int>('appointmentid', value);

  int get patientid => getField<int>('patientid')!;
  set patientid(int value) => setField<int>('patientid', value);

  int get doctorid => getField<int>('doctorid')!;
  set doctorid(int value) => setField<int>('doctorid', value);

  String get appointmentdatetime => getField<String>('appointmentdatetime')!;
  set appointmentdatetime(String value) =>
      setField<String>('appointmentdatetime', value);

  String get status => getField<String>('status')!;
  set status(String value) => setField<String>('status', value);

  String? get reason => getField<String>('reason');
  set reason(String? value) => setField<String>('reason', value);

  String? get notes => getField<String>('notes');
  set notes(String? value) => setField<String>('notes', value);
}
