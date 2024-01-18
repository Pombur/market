import '../database.dart';

class WellsSummaryTable extends SupabaseTable<WellsSummaryRow> {
  @override
  String get tableName => 'wells_summary';

  @override
  WellsSummaryRow createRow(Map<String, dynamic> data) => WellsSummaryRow(data);
}

class WellsSummaryRow extends SupabaseDataRow {
  WellsSummaryRow(super.data);

  @override
  SupabaseTable get table => WellsSummaryTable();

  String? get user => getField<String>('user');
  set user(String? value) => setField<String>('user', value);

  int? get userRowCount => getField<int>('user_row_count');
  set userRowCount(int? value) => setField<int>('user_row_count', value);

  double? get totalDinamiclvl => getField<double>('total_dinamiclvl');
  set totalDinamiclvl(double? value) =>
      setField<double>('total_dinamiclvl', value);

  double? get totalDebit => getField<double>('total_debit');
  set totalDebit(double? value) => setField<double>('total_debit', value);
}
