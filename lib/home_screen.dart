import 'package:flutter/material.dart';
import 'Animais.dart';
import 'DicasDePreservacao.dart';
import 'WeatherWidget.dart';

class HomeScreen extends StatelessWidget {
  final List<String> imagens = [
    'https://cdn.pixabay.com/photo/2016/05/24/16/48/mountains-1412683_960_720.png',
    'https://cdn.pixabay.com/photo/2016/05/05/02/37/sunset-1373171_960_720.jpg',
    'https://pixabay.com/pt/photos/raposa-adormecido-em-repouso-1284512/',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 20, 172, 111),
        title: const Text('Bem vindo ao EcoWorld!'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://cdn.pixabay.com/photo/2021/07/22/01/01/parrot-6484206_1280.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        padding: EdgeInsets.only(top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 11, 117, 57),
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
              ),
              child: Text(
                'Curiosidades',
                style: TextStyle(fontSize: 24),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Animais()),
                );
              },
            ),
            SizedBox(height: 16),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 11, 117, 57),
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
              ),
              child: Text(
                'Dicas de preservação',
                style: TextStyle(fontSize: 24),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DicasDePreservacao()),
                );
              },
            ),
            SizedBox(height: 16),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 11, 117, 57),
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
              ),
              child: Text(
                'Clima',
                style: TextStyle(fontSize: 24),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WeatherWidget(
                      location: 'Cascavel 🗺️',
                      temperature: '25ºC 🌡️',
                      weatherType: 'Ensolarado☀️',
                    ),
                  ),
                );
              },
            ),
            SizedBox(height: 16),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 11, 117, 57),
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
              ),
              child: Text(
                'Denúncias ⚠️',
                style: TextStyle(fontSize: 24),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DenunciasScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class DenunciasScreen extends StatelessWidget {
  final TextEditingController _denunciaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Denúncias'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'A denúncia será anônima.',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 16),
            TextField(
              controller: _denunciaController,
              maxLines: 4,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Denúncia',
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text('Denúncia enviada'),
                    content: Text('A denúncia foi efetuada com sucesso.'),
                    actions: [
                      TextButton(
                        child: Text('OK'),
                        onPressed: () {
                          Navigator.pop(context);
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                );
              },
              child: Text('Enviar'),
            ),
          ],
        ),
      ),
    );
  }
}
