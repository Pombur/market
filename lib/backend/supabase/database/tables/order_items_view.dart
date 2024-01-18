import '../database.dart';

class OrderItemsViewTable extends SupabaseTable<OrderItemsViewRow> {
  @override
  String get tableName => 'order_items_view';

  @override
  OrderItemsViewRow createRow(Map<String, dynamic> data) =>
      OrderItemsViewRow(data);
}

class OrderItemsViewRow extends SupabaseDataRow {
  OrderItemsViewRow(super.data);

  @override
  SupabaseTable get table => OrderItemsViewTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  int? get orderId => getField<int>('order_id');
  set orderId(int? value) => setField<int>('order_id', value);

  int? get productId => getField<int>('product_id');
  set productId(int? value) => setField<int>('product_id', value);

  double? get quanity => getField<double>('quanity');
  set quanity(double? value) => setField<double>('quanity', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get productName => getField<String>('product_name');
  set productName(String? value) => setField<String>('product_name', value);

  double? get productPrice => getField<double>('product_price');
  set productPrice(double? value) => setField<double>('product_price', value);

  String? get productImage => getField<String>('product_image');
  set productImage(String? value) => setField<String>('product_image', value);

  double? get rating => getField<double>('rating');
  set rating(double? value) => setField<double>('rating', value);
}
