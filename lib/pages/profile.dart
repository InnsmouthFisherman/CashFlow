import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF293936),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: 
          Column(
            children: [
              parameter('Доход в месяц'),
              parameter('Средние траты'),
              parameter('Город'),
              parameter('Возраст'),
              parameter('Готовность к риску'),
              const SizedBox(height: 20,),
              SizedBox(
                width: 340,
                // поменять на Text чтобы по дефолту нельзя было ниче тут писать
                child: TextField( 
                  readOnly: true,
                  
                  keyboardType: TextInputType.multiline,
                  maxLines: 10,
                  style: const TextStyle(color: Color(0xFF293936)),
                  decoration: InputDecoration(
                    hintText: 'Краткая информация про капитал ляляля',
                    filled: true,
                    fillColor: Colors.amber[50],
                    contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              )
            ],
          ),
      ),
    );
  }

  Padding parameter(String text){
    return Padding(
      padding: const EdgeInsets.all(10),
        child: Column (
            children: [ 
            Align(
              alignment: const FractionalOffset(0.06, 0.0),
              child: Text(text)
            ),
            ]
        )
    );
  }
}
