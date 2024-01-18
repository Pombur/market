import '../database.dart';

class CategoriesTable extends SupabaseTable<CategoriesRow> {
  @override
  String get tableName => 'categories';

  @override
  CategoriesRow createRow(Map<String, dynamic> data) => CategoriesRow(data);
}

class CategoriesRow extends SupabaseDataRow {
  CategoriesRow(super.data);

  @override
  SupabaseTable get table => CategoriesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get desc => getField<String>('desc');
  set desc(String? value) => setField<String>('desc', value);

  String? get images => getField<String>('images');
  set images(String? value) => setField<String>('images', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);
}
