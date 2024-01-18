import '../database.dart';

class TextContentTable extends SupabaseTable<TextContentRow> {
  @override
  String get tableName => 'Text content';

  @override
  TextContentRow createRow(Map<String, dynamic> data) => TextContentRow(data);
}

class TextContentRow extends SupabaseDataRow {
  TextContentRow(super.data);

  @override
  SupabaseTable get table => TextContentTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get login => getField<String>('login')!;
  set login(String value) => setField<String>('login', value);

  String get home => getField<String>('home')!;
  set home(String value) => setField<String>('home', value);

  String get login2 => getField<String>('login2')!;
  set login2(String value) => setField<String>('login2', value);

  String get stopWathTitul => getField<String>('stopWathTitul')!;
  set stopWathTitul(String value) => setField<String>('stopWathTitul', value);

  String get stopWatchText => getField<String>('stopWatchText')!;
  set stopWatchText(String value) => setField<String>('stopWatchText', value);

  String get cart => getField<String>('Cart')!;
  set cart(String value) => setField<String>('Cart', value);

  String? get fish => getField<String>('fish');
  set fish(String? value) => setField<String>('fish', value);

  String? get imageFisfFalse => getField<String>('imageFisfFalse');
  set imageFisfFalse(String? value) =>
      setField<String>('imageFisfFalse', value);

  String? get splash => getField<String>('Splash');
  set splash(String? value) => setField<String>('Splash', value);

  String? get productActive => getField<String>('productActive');
  set productActive(String? value) => setField<String>('productActive', value);
}
