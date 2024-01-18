import '../database.dart';

class OrderViewTable extends SupabaseTable<OrderViewRow> {
  @override
  String get tableName => 'order_view';

  @override
  OrderViewRow createRow(Map<String, dynamic> data) => OrderViewRow(data);
}

class OrderViewRow extends SupabaseDataRow {
  OrderViewRow(super.data);

  @override
  SupabaseTable get table => OrderViewTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get createdAt => getField<String>('created_at');
  set createdAt(String? value) => setField<String>('created_at', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get notes => getField<String>('notes');
  set notes(String? value) => setField<String>('notes', value);
}
