import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: imageDemo(),
    );

  }
}

 class imageDemo extends StatelessWidget {
  const imageDemo({super.key});

   Widget build(BuildContext context) {
  return Scaffold(
          appBar: AppBar(
  ),
     body: Center(
      child: Column(
        //criando a imagem e colocando no app
        children: [Image.asset('asset/kantomap.jpg', width: 500,),
          //criando uma caixa
          SizedBox(height: 10,),
          //cria uma linha para colocar palavas ou icones
          Row(
            children: [
              Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(bottom: 8),
                      child: Text('Kanto Region Map',
                      style: TextStyle(fontWeight: FontWeight.bold,
                      ),
                        ),
                        ),
                      Text('kanto, Japan',
                      style: TextStyle(color: Colors.grey,
                      ),
                      )
                    ],
                  )),
              Icon(
              Icons.star,
              color: Colors.red,
              ),
              Text('41')
            ],
          ),

          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Icon(
                      Icons.call,
                      color: Colors.amber
                  ),
                  Text('call',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.black
                    ),
                  )
                ]
              ),

              Column(
                  children: [
                    Icon(
                        Icons.cabin,
                        color: Colors.amber
                    ),
                    Text('Cabin',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.black
                      ),
                    )
                  ]
              ),

              Column(
                  children: [
                    Icon(
                        Icons.dangerous,
                        color: Colors.amber
                    ),
                    Text('Danger',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.black
                      ),
                    )
                  ]
              )

            ],
          ),
          Padding(padding: EdgeInsets.all(65),
          child: Text('The Kanto region (Japanese: カントー地方 Kanto region) is a region of the Pokémon world. '
              'Kanto is located east of Johto, which together form a joint landmass that is south of Sinnoh.'
              'Kanto is the setting of the first generation of games and can be explored in Generations II, III, IV, and VII.',
            softWrap: true,
          ),
          )



     ],
     ),
     ),
  );
 }
 }


