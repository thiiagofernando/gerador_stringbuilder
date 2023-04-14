String criarAppenLine(String sql) {
  List<String> sqlFinal = [];
  sqlFinal.add('var sql = new StringBuilder(); ');
  final textoComQuebra = sql.split('\n');
  for (var i = 0; i < textoComQuebra.length; i++) {
    sqlFinal.add('sql.AppendLine(@"${textoComQuebra[i].replaceAll('"', '""')}");');
  }
  return sqlFinal.join('\n');
}
