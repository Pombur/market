import '../database.dart';

class UserInfoTable extends SupabaseTable<UserInfoRow> {
  @override
  String get tableName => 'user_info';

  @override
  UserInfoRow createRow(Map<String, dynamic> data) => UserInfoRow(data);
}

class UserInfoRow extends SupabaseDataRow {
  UserInfoRow(super.data);

  @override
  SupabaseTable get table => UserInfoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get city => getField<String>('city');
  set city(String? value) => setField<String>('city', value);

  String? get image => getField<String>('image');
  set image(String? value) => setField<String>('image', value);

  String? get country => getField<String>('country');
  set country(String? value) => setField<String>('country', value);

  String? get type => getField<String>('type');
  set type(String? value) => setField<String>('type', value);

  String? get team => getField<String>('team');
  set team(String? value) => setField<String>('team', value);

  bool? get saler => getField<bool>('saler');
  set saler(bool? value) => setField<bool>('saler', value);

  double get phoneNum => getField<double>('phoneNum')!;
  set phoneNum(double value) => setField<double>('phoneNum', value);

  String? get about => getField<String>('about');
  set about(String? value) => setField<String>('about', value);

  bool get active => getField<bool>('active')!;
  set active(bool value) => setField<bool>('active', value);

  double? get rating => getField<double>('rating');
  set rating(double? value) => setField<double>('rating', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String get type2 => getField<String>('type2')!;
  set type2(String value) => setField<String>('type2', value);

  bool get map => getField<bool>('map')!;
  set map(bool value) => setField<bool>('map', value);

  bool? get notification => getField<bool>('notification');
  set notification(bool? value) => setField<bool>('notification', value);

  bool? get mapVip => getField<bool>('mapVip');
  set mapVip(bool? value) => setField<bool>('mapVip', value);

  bool get mapForAll => getField<bool>('mapForAll')!;
  set mapForAll(bool value) => setField<bool>('mapForAll', value);

  bool get printing => getField<bool>('printing')!;
  set printing(bool value) => setField<bool>('printing', value);

  bool? get promtStopWhath => getField<bool>('promtStopWhath');
  set promtStopWhath(bool? value) => setField<bool>('promtStopWhath', value);
}
