import '../database.dart';

class ProductTable extends SupabaseTable<ProductRow> {
  @override
  String get tableName => 'product';

  @override
  ProductRow createRow(Map<String, dynamic> data) => ProductRow(data);
}

class ProductRow extends SupabaseDataRow {
  ProductRow(super.data);

  @override
  SupabaseTable get table => ProductTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get categoryId => getField<int>('category_id');
  set categoryId(int? value) => setField<int>('category_id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get desc => getField<String>('desc');
  set desc(String? value) => setField<String>('desc', value);

  double? get price => getField<double>('price');
  set price(double? value) => setField<double>('price', value);

  String? get image => getField<String>('image');
  set image(String? value) => setField<String>('image', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get image1 => getField<String>('image1');
  set image1(String? value) => setField<String>('image1', value);

  String? get image2 => getField<String>('image2');
  set image2(String? value) => setField<String>('image2', value);

  String? get image3 => getField<String>('image3');
  set image3(String? value) => setField<String>('image3', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  bool get active => getField<bool>('active')!;
  set active(bool value) => setField<bool>('active', value);

  double? get rating => getField<double>('rating');
  set rating(double? value) => setField<double>('rating', value);
}
