import '../database.dart';

class OrderItemsTable extends SupabaseTable<OrderItemsRow> {
  @override
  String get tableName => 'order_items';

  @override
  OrderItemsRow createRow(Map<String, dynamic> data) => OrderItemsRow(data);
}

class OrderItemsRow extends SupabaseDataRow {
  OrderItemsRow(super.data);

  @override
  SupabaseTable get table => OrderItemsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get orderId => getField<int>('order_id');
  set orderId(int? value) => setField<int>('order_id', value);

  int? get productId => getField<int>('product_id');
  set productId(int? value) => setField<int>('product_id', value);

  double? get quanity => getField<double>('quanity');
  set quanity(double? value) => setField<double>('quanity', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get notes => getField<String>('notes');
  set notes(String? value) => setField<String>('notes', value);

  double? get phone => getField<double>('phone');
  set phone(double? value) => setField<double>('phone', value);

  String? get city => getField<String>('city');
  set city(String? value) => setField<String>('city', value);

  String? get userName => getField<String>('userName');
  set userName(String? value) => setField<String>('userName', value);

  double? get price => getField<double>('price');
  set price(double? value) => setField<double>('price', value);

  double? get sumPrice => getField<double>('sumPrice');
  set sumPrice(double? value) => setField<double>('sumPrice', value);

  String? get productName => getField<String>('productName');
  set productName(String? value) => setField<String>('productName', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get emaill => getField<String>('emaill');
  set emaill(String? value) => setField<String>('emaill', value);
}
