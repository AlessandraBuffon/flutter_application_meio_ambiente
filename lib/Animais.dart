import 'package:flutter/material.dart';

class Animais extends StatelessWidget {
  final List<String> nomes = [
    '🐱', '🐶', '🐘', '🐭', '🐯', '🐒',
    '🐼', '🐰', '🐴', '🐫', '🐍', '🐺', '🐳','🐙','🐡'
  ];

  final List<String> imagens = [
    'https://cdn.pixabay.com/photo/2012/11/26/13/58/cat-67345_1280.jpg',
    'https://cdn.pixabay.com/photo/2022/04/15/11/23/dog-7134183_1280.jpg',
    'https://cdn.pixabay.com/photo/2013/05/17/07/12/elephant-111695_1280.jpg',
    'https://cdn.pixabay.com/photo/2016/10/01/19/20/mouse-1708177_1280.jpg',
    'https://cdn.pixabay.com/photo/2016/11/29/10/07/tiger-1868911_1280.jpg',
    'https://cdn.pixabay.com/photo/2018/09/25/21/32/monkey-3703230_1280.jpg',
    'https://cdn.pixabay.com/photo/2016/03/04/22/54/animal-1236875_1280.jpg',
    'https://cdn.pixabay.com/photo/2020/02/29/18/59/rabbit-4890861_1280.jpg',
    'https://cdn.pixabay.com/photo/2017/02/13/20/21/horse-2063672_1280.jpg',
    'https://cdn.pixabay.com/photo/2021/11/06/22/05/camels-6774540_1280.jpg',
    'https://cdn.pixabay.com/photo/2019/02/06/17/09/snake-3979601_1280.jpg',
    'https://cdn.pixabay.com/photo/2017/01/19/16/15/wolf-1992716_1280.jpg',
    'https://cdn.pixabay.com/photo/2016/11/22/19/33/whale-1850235_1280.jpg',
    'https://cdn.pixabay.com/photo/2018/03/26/13/40/nature-3262715_1280.jpg',
    'https://cdn.pixabay.com/photo/2016/01/03/00/06/fish-1118874_1280.jpg',

  ];

  final List<String> curiosidades = [
    '✅ Os bigodes dos gatos são tão largos quanto o corpo deles e ajudam a medir espaços estreitos.\n✅ Os gatos têm a capacidade de pular até seis vezes a altura de seu próprio corpo.\n✅ Os gatos passam cerca de 70% de suas vidas dormindo. Eles adoram tirar cochilos!',
    '✅ Os cachorros possuem um olfato incrivelmente apurado. Eles podem farejar substâncias, detectar doenças e até mesmo encontrar pessoas perdidas.\n✅Eles podem ouvir sons em frequências muito mais altas do que os humanos.\n✅ Existem mais de 340 raças de cachorros reconhecidas pelo mundo.',
    '✅ Os elefantes são os maiores mamíferos terrestres do mundo. Eles podem atingir alturas de até 3 metros e pesar até 7 toneladas.\n✅ Os elefantes são animais extremamente inteligentes. Eles têm um cérebro altamente desenvolvido e demonstram habilidades de aprendizado, memória e resolução de problemas',
    '✅ Os ratos têm dentes incisivos afiados que crescem continuamente. Eles roem objetos para desgastar seus dentes e mantê-los em um comprimento adequado.\n✅ Os ratos são criaturas noturnas. Eles têm uma excelente visão noturna e um senso de olfato aguçado, o que os ajuda a encontrar comida e detectar perigos.',
    '✅ Os tigres são os maiores felinos do mundo, tigres machos podem atingir um comprimento de até 3,3 metros, e pesar cerca de 200 a 300 quilos.\n✅ Os tigres têm um padrão único de listras em sua pele, semelhante a uma impressão digital.\n✅ Os tigres são excelentes nadadores e podem percorrer grandes distâncias na água.',
    '✅ Existem mais de 260 espécies de macacos, variando em tamanho, aparência e hábitos.\n✅ A maioria dos macacos é arbórea, o que significa que eles passam a maior parte do tempo nas árvores.\n✅ Os macacos são animais altamente inteligentes e demonstram habilidades de aprendizado.',
    '✅ Os pandas são mamíferos nativos da região central da China.\n          ✅ Os pandas se alimentam quase exclusivamente de bambu. Eles podem consumir até 14 kg de bambu em um único dia.\n         ✅ Os pandas são animais solitários e têm uma taxa de reprodução relativamente baixa.',
    '✅ Os coelhos são pequenos mamíferos herbívoros encontrados em todo o mundo.\n          ✅ Os coelhos têm dentes incisivos que crescem continuamente ao longo de suas vidas. Eles roem objetos duros para desgastar seus dentes e mantê-los em um tamanho adequado.\n          ✅ Os coelhos são animais noturnos e têm excelente visão noturna.',
    '✅ Os cavalos são animais domesticados da família dos equídeos.\n           ✅ Os cavalos são herbívoros e têm um sistema digestivo especializado que lhes permite extrair nutrientes de alimentos fibrosos, como grama e feno.\n',
    '✅ Os camelos são animais adaptados a ambientes desérticos e são encontrados principalmente no norte da África e no Oriente Médio.\n         ✅ Os camelos são capazes de sobreviver por longos períodos sem água, graças à sua capacidade de reter água em seus corpos.',
    '✅ As cobras são répteis sem pernas encontrados em todo o mundo, exceto nas regiões polares.\n         ✅ Existem mais de 3.000 espécies de cobras, variando em tamanho, aparência e hábitos.\n      ✅ Algumas cobras venenosas têm presas ocas e venenosas que usam para imobilizar e matar suas presas.',
    '✅ Os lobos são mamíferos carnívoros e são parentes próximos dos cães domésticos.\n          ✅ Eles são conhecidos por sua capacidade de comunicação vocal, usando uivos para se comunicar com outros lobos em sua matilha.\n       ✅ Os lobos têm uma excelente habilidade de caça e são conhecidos por trabalhar em equipe.',
    '✅ As baleias são os maiores animais vivos na Terra. A baleia-azul, por exemplo, pode atingir até 30 metros de comprimento e pesar mais de 180 toneladas.\n          ✅ Longevidade surpreendente: As baleias têm uma vida longa. Algumas espécies podem viver mais de 100 anos.\n          ✅Muitas espécies de baleias estão ameaçadas ou em perigo de extinção devido à caça ilegal,',
    '✅ Os polvos são conhecidos por sua incrível capacidade de camuflagem e mudança de cor. Eles têm células especiais chamadas cromatóforos em sua pele, que podem se expandir e contrair, exibindo diferentes padrões e cores\n           ✅ os polvos também usam sua camuflagem para se comunicar e exibir emoções, como medo, agressão ou excitação',
    '✅O baiacu é um peixe conhecido por sua habilidade única de inflar seu corpo quando se sente ameaçado.\n          ✅ Ele possui um órgão interno chamado vesícula gasosa, que pode bombear água ou ar para expandir seu corpo em uma forma esférica\n          ✅Quando inflado, o baiacu apresenta espinhos venenosos que se projetam em sua pele, tornando-o mais difícil de ser engolido ou atacado.',
    
  ];

  void exibirCuriosidades(BuildContext context, int index) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog( 
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Curiosidades sobre ${nomes[index]}',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
           Align(
  alignment: Alignment.topCenter,
  child: Container(
    constraints: BoxConstraints(
      maxWidth: 500, // Largura máxima da imagem
    ),
    child: Image.network(
      imagens[index],
      fit: BoxFit.contain, // Manter proporção da imagem
    ),
  ),
),

            SizedBox(height: 16),
            Text(
              curiosidades[index],
              style: TextStyle(
                fontSize: 22,
                color: Color.fromARGB(255, 145, 68, 32),
              ),
            ),
          ],
        ),
        actions: <Widget>[
          ElevatedButton(
            child: Text('Fechar'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}


@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Color.fromARGB(255, 240, 158, 59),
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () => Navigator.pop(context),
      ),
      title: Text(
        'Escolha um animal para\nsaber suas curiosidades 😄',
        style: TextStyle(fontSize: 24),
      ),
      toolbarHeight: 93,
    ),
    body: Padding(
      padding: EdgeInsets.only(top: 20),
      child: GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
        childAspectRatio: 1.0,
        children: List.generate(nomes.length, (index) {
          return GestureDetector(
            onTap: () {
              exibirCuriosidades(context, index);
            },
            child: Container(
              color: Color.fromARGB(255, 207, 153, 44),
              child: Center(
                child: Text(
                  nomes[index],
                  style: TextStyle(fontSize: 40),
                ),
              ),
            ),
          );
        }),
      ),
    ),
  );
}


void main() {
  runApp(MaterialApp(
    home: Animais(),
  ));
}
}