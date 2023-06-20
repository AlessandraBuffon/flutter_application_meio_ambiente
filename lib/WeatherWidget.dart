import 'package:flutter/material.dart';

class WeatherWidget extends StatelessWidget {
  final String location;
  final String temperature;
  final String weatherType;

  const WeatherWidget({
    Key? key,
    required this.location,
    required this.temperature,
    required this.weatherType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 124, 174, 31),
        title: Text('Voltar'),
      ),
      body: Container(
        color: Color.fromARGB(255, 49, 105, 95), // Define a cor de fundo do corpo como verde claro pastel
        child: Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 2 / 3,
            child: Card(
              elevation: 4.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      location,
                      style: const TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      temperature,
                      style: const TextStyle(
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      weatherType,
                      style: const TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
