import '../database.dart';

class MessageTable extends SupabaseTable<MessageRow> {
  @override
  String get tableName => 'message';

  @override
  MessageRow createRow(Map<String, dynamic> data) => MessageRow(data);
}

class MessageRow extends SupabaseDataRow {
  MessageRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MessageTable();

  int get messageid => getField<int>('messageid')!;
  set messageid(int value) => setField<int>('messageid', value);

  int get senderid => getField<int>('senderid')!;
  set senderid(int value) => setField<int>('senderid', value);

  int get receiverid => getField<int>('receiverid')!;
  set receiverid(int value) => setField<int>('receiverid', value);

  String get timestamp => getField<String>('timestamp')!;
  set timestamp(String value) => setField<String>('timestamp', value);

  String? get content => getField<String>('content');
  set content(String? value) => setField<String>('content', value);
}
