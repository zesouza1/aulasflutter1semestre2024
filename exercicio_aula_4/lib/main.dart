import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Center(child: MyHomePage(title: 'MEU APP')),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(       
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,       
        title: Text(widget.title),
      ),
      body:  Center(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Row(
               children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ElevatedButton(
                    onPressed:(){
                      print('Indo');
                      }, child: const Text('Botão 1', style: TextStyle(fontSize: 30),)
                  ),
                ),
                Image.network('https://img.freepik.com/fotos-premium/melhor-foto-aleatoria_865967-90776.jpg',
                width: 200, height: 200,)
               ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.network('https://img.quizur.com/f/img5f0c80e0bd9d08.31973740.jpg?lastEdited=1594654954',
                    width: 200, height: 200,),
                  ),
                  Container(
                    width:150,
                    child: const Text(
                      'Lorem ...asdasd asdasdasasdasdasdasdad',
                      overflow: TextOverflow.visible,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 150,
                    child: const Text(
                      'Lorem AKSPOAKSPOKAPOSKAPOSKPAOKSPOAKPOSKAPOKSPODKPOASKDPOASKDPOAKSDPOAs',
                      overflow: TextOverflow.visible,
                    ),
                  ),
                  OutlinedButton(onPressed:(){}, child:const Text('Bota 2')
              ),
              Image.network('https://img.freepik.com/fotos-premium/melhor-foto-aleatoria_865967-169321.jpg',
              width: 150,)
                ],
              ), 
           ],
          ),
        ),
      ),
    );
  }
}
