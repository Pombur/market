import '../database.dart';

class OrderTable extends SupabaseTable<OrderRow> {
  @override
  String get tableName => 'order';

  @override
  OrderRow createRow(Map<String, dynamic> data) => OrderRow(data);
}

class OrderRow extends SupabaseDataRow {
  OrderRow(super.data);

  @override
  SupabaseTable get table => OrderTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get userId => getField<int>('user_id');
  set userId(int? value) => setField<int>('user_id', value);

  String? get notes => getField<String>('notes');
  set notes(String? value) => setField<String>('notes', value);

  String? get userId1 => getField<String>('user_id1');
  set userId1(String? value) => setField<String>('user_id1', value);

  String? get emailSaler => getField<String>('emailSaler');
  set emailSaler(String? value) => setField<String>('emailSaler', value);
}
