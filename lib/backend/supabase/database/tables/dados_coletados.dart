import '../database.dart';

class DadosColetadosTable extends SupabaseTable<DadosColetadosRow> {
  @override
  String get tableName => 'dadosColetados';

  @override
  DadosColetadosRow createRow(Map<String, dynamic> data) =>
      DadosColetadosRow(data);
}

class DadosColetadosRow extends SupabaseDataRow {
  DadosColetadosRow(super.data);

  @override
  SupabaseTable get table => DadosColetadosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get voltagem => getField<int>('voltagem');
  set voltagem(int? value) => setField<int>('voltagem', value);

  int? get amperagem => getField<int>('amperagem');
  set amperagem(int? value) => setField<int>('amperagem', value);
}
