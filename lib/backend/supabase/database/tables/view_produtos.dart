import '../database.dart';

class ViewProdutosTable extends SupabaseTable<ViewProdutosRow> {
  @override
  String get tableName => 'view_produtos';

  @override
  ViewProdutosRow createRow(Map<String, dynamic> data) => ViewProdutosRow(data);
}

class ViewProdutosRow extends SupabaseDataRow {
  ViewProdutosRow(super.data);

  @override
  SupabaseTable get table => ViewProdutosTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  double? get price => getField<double>('price');
  set price(double? value) => setField<double>('price', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
