import '../database.dart';

class ScheduleTable extends SupabaseTable<ScheduleRow> {
  @override
  String get tableName => 'schedule';

  @override
  ScheduleRow createRow(Map<String, dynamic> data) => ScheduleRow(data);
}

class ScheduleRow extends SupabaseDataRow {
  ScheduleRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ScheduleTable();

  int get scheduleid => getField<int>('scheduleid')!;
  set scheduleid(int value) => setField<int>('scheduleid', value);

  int get doctorid => getField<int>('doctorid')!;
  set doctorid(int value) => setField<int>('doctorid', value);

  String get datetimeslot => getField<String>('datetimeslot')!;
  set datetimeslot(String value) => setField<String>('datetimeslot', value);

  String get availability => getField<String>('availability')!;
  set availability(String value) => setField<String>('availability', value);
}
