String criarAppenLine(String sql) {
  List<String> sqlLista = [];
  sqlLista.add('var sql = new StringBuilder(); ');
  final textoComQuebra = sql.replaceAll('"', '""').split('\n');
  for (var i = 0; i < textoComQuebra.length; i++) {
    var valor = textoComQuebra[i];
    sqlLista.add(' sql.AppendLine("$valor");');
  }
  return sqlLista.join('\n');
}
