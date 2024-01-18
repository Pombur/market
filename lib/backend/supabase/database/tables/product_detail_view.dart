import '../database.dart';

class ProductDetailViewTable extends SupabaseTable<ProductDetailViewRow> {
  @override
  String get tableName => 'product_detail_view';

  @override
  ProductDetailViewRow createRow(Map<String, dynamic> data) =>
      ProductDetailViewRow(data);
}

class ProductDetailViewRow extends SupabaseDataRow {
  ProductDetailViewRow(super.data);

  @override
  SupabaseTable get table => ProductDetailViewTable();

  int? get productId => getField<int>('product_id');
  set productId(int? value) => setField<int>('product_id', value);

  String? get productName => getField<String>('product_name');
  set productName(String? value) => setField<String>('product_name', value);

  String? get productDesc => getField<String>('product_desc');
  set productDesc(String? value) => setField<String>('product_desc', value);

  double? get productPrice => getField<double>('product_price');
  set productPrice(double? value) => setField<double>('product_price', value);

  String? get productImage => getField<String>('product_image');
  set productImage(String? value) => setField<String>('product_image', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get productImage1 => getField<String>('product_image1');
  set productImage1(String? value) => setField<String>('product_image1', value);

  String? get productImage2 => getField<String>('product_image2');
  set productImage2(String? value) => setField<String>('product_image2', value);

  String? get productImage3 => getField<String>('product_image3');
  set productImage3(String? value) => setField<String>('product_image3', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  bool? get active => getField<bool>('active');
  set active(bool? value) => setField<bool>('active', value);

  int? get reviewCount => getField<int>('review_count');
  set reviewCount(int? value) => setField<int>('review_count', value);

  double? get averageRating => getField<double>('average_rating');
  set averageRating(double? value) => setField<double>('average_rating', value);
}
