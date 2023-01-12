import 'package:flutter/material.dart';
class random extends StatelessWidget {
  const random({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.green,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          width: 60,
                          height: 50,
                          color: Colors.white,
                          child:
                              Image(image: AssetImage('assets/img/air-c.png'))),
                      Text(
                        'Ac Services',
                        style: TextStyle(color: Colors.white, fontSize: 22),
                      ),
                    ],
                  ),
                ),
              ),
            
             
             
    );
  }
}