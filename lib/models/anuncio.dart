class Anuncio {
  int? id;
  final int usuarioID;
  final String tipoAnuncio;
  final String descricao;
  final String descricaoAdicional;
  final String descricaoComplementar;
  final String expectativa;
  final String expectativaAdicional;
  final String expectativaComplementar;
  final String estado;
  final String cidade;
  final String bairro;
  final bool exibirContato;
  final String dataAnuncio;
  final String status;

  Anuncio(
      {this.id,
      required this.usuarioID,
      required this.tipoAnuncio,
      required this.descricao,
      required this.descricaoAdicional,
      required this.descricaoComplementar,
      required this.expectativa,
      required this.expectativaAdicional,
      required this.expectativaComplementar,
      required this.estado,
      required this.cidade,
      required this.bairro,
      required this.exibirContato,
      required this.dataAnuncio,
      required this.status});

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "usuarioID": usuarioID,
      "tipoAnuncio": tipoAnuncio,
      "descricao": descricao,
      "descricaoAdicional": descricaoAdicional,
      "descricaoComplementar": descricaoComplementar,
      "expectativa": expectativa,
      "expectativaAdicional": expectativaAdicional,
      "expectativaComplementar": expectativaComplementar,
      "estado": estado,
      "cidade": cidade,
      "bairro": bairro,
      "exibirContato": exibirContato,
      "dataAnuncio": dataAnuncio,
      "status": status,
    };
  }
}
