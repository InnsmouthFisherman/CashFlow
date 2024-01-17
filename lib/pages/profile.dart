import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF293936),
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildInputContainer('Доход в месяц'),
              buildInputContainer('Средние траты'),
              buildInputContainer('Город'),
              buildInputContainer('Возраст'),
              buildInputContainer('Готовность к риску'),
            ],
          ),
        ],
      ),
    );
  }

  // занести в один контейнер SDELANO
  Padding buildInputContainer(String hintText) {
    return Padding(
      padding: const EdgeInsets.all(10),
        child: Column (
            children: [ 
            Align(
              alignment: const FractionalOffset(0.06, 0.0),
              child: Text(hintText)
            ),
            SizedBox(
              width: 340.0,
              child: TextField( 
              style: const TextStyle(color: Color(0xFF293936)),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.amber[50],
                contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          )
        ]
      )
    );
  }
}
