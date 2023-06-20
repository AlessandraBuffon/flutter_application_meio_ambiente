import 'package:flutter/material.dart';

class DicasDePreservacao extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 20, 172, 111),
        title: Text('Dicas de Preservação'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildDicaDePreservacao(
              'Reduza o uso de plásticos',
              'O plástico é um dos principais poluentes do meio ambiente, levando centenas de anos para se decompor. Tente evitar o uso de sacolas plásticas, canudos e utensílios descartáveis.',
              context,
            ),
            _buildDicaDePreservacao(
              'Economize água',
              'A água é um recurso precioso e escasso em muitas regiões do mundo. Faça a sua parte economizando água em casa, consertando vazamentos e utilizando equipamentos mais eficientes.',
              context,
            ),
            _buildDicaDePreservacao(
              'Prefira alimentos orgânicos',
              'Os alimentos orgânicos são produzidos sem o uso de agrotóxicos, que podem contaminar o solo e a água. Além disso, eles são mais saudáveis e saborosos.',
              context,
            ),
            _buildDicaDePreservacao(
              'Utilize transporte sustentável',
              'O transporte é responsável por grande parte das emissões de gases poluentes na atmosfera. Opte por caminhar, pedalar ou utilizar transporte público em vez de carro particular.',
              context,
            ),
            _buildDicaDePreservacao(
              'Faça a separação correta do lixo',
              'A separação correta do lixo é importante para o processo de reciclagem e para evitar a contaminação do meio ambiente. Separe os materiais recicláveis dos não recicláveis e destine cada um deles ao local correto.',
              context,
            ),
            _buildDicaDePreservacao(
              'Plante árvores',
              'As árvores são essenciais para a manutenção do equilíbrio do ecossistema, pois produzem oxigênio, absorvem dióxido de carbono e oferecem sombra e abrigo para os animais. Plante árvores em seu quintal ou participe de ações de reflorestamento.',
              context,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDicaDePreservacao(String titulo, String descricao, BuildContext context) {
  return Container(
    padding: EdgeInsets.all(16),
    margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 2,
          blurRadius: 5,
          offset: Offset(0, 2),
        ),
      ],
      color: Colors.white,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          titulo,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        SizedBox(height: 10),
        Text(
          descricao,
          style: TextStyle(
            fontSize: 16,
          ),
        ),
      ],
    ),
  );
}
}