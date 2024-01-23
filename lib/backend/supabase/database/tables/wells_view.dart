import '../database.dart';

class WellsViewTable extends SupabaseTable<WellsViewRow> {
  @override
  String get tableName => 'wells_view';

  @override
  WellsViewRow createRow(Map<String, dynamic> data) => WellsViewRow(data);
}

class WellsViewRow extends SupabaseDataRow {
  WellsViewRow(super.data);

  @override
  SupabaseTable get table => WellsViewTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get descript => getField<String>('descript');
  set descript(String? value) => setField<String>('descript', value);

  String? get location => getField<String>('location');
  set location(String? value) => setField<String>('location', value);

  String? get type => getField<String>('type');
  set type(String? value) => setField<String>('type', value);

  String? get user => getField<String>('user');
  set user(String? value) => setField<String>('user', value);

  String? get debit => getField<String>('debit');
  set debit(String? value) => setField<String>('debit', value);

  String? get adres => getField<String>('adres');
  set adres(String? value) => setField<String>('adres', value);

  String? get fltr => getField<String>('fltr');
  set fltr(String? value) => setField<String>('fltr', value);

  double? get dinamicLvL => getField<double>('dinamicLvL');
  set dinamicLvL(double? value) => setField<double>('dinamicLvL', value);

  double? get statk => getField<double>('statk');
  set statk(double? value) => setField<double>('statk', value);

  String? get userName => getField<String>('userName');
  set userName(String? value) => setField<String>('userName', value);

  String? get poi => getField<String>('poi');
  set poi(String? value) => setField<String>('poi', value);

  double? get idWell => getField<double>('id_well');
  set idWell(double? value) => setField<double>('id_well', value);
}
