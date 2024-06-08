import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner:false,
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {    
    return Scaffold(
      backgroundColor: Colors.orange,
      body:  Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,            
              children:[
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.blue,
                      ),
                      width: 270,
                      height: 150,
                      child: const Column( 
                        mainAxisAlignment: MainAxisAlignment.spaceAround,                 
                        children: [
                          Text('12/12/23 - RS 12,00', style: TextStyle(color: Colors.white, fontSize: 20)),
                          Text('12/09/23 - RS 42,00', style: TextStyle(color: Colors.white, fontSize: 20)),
                          Text('20/05/23 - RS 7,00', style: TextStyle(color: Colors.white, fontSize: 20)),
                          Text('25/12/23 - RS 82,00', style: TextStyle(color: Colors.white, fontSize: 20)),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      color: Colors.blue,
                        child: const Icon(
                           Icons.bar_chart,
                           color: Colors.white,
                           size: 150,
                        ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.blue,
                      ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children :[
                        Icon(Icons.check, color: Colors.white, size:70 ),
                        Icon(Icons.warning, color: Colors.white, size:70 ),
                        Icon(Icons.change_circle_outlined, color: Colors.white, size:70 ),
                        Icon(Icons.close, color: Colors.white, size:70 ),
                      ],   
                        ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                      CircleAvatar(
                        radius: 180,
                        backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2024/04/04/03/08/ai-generated-8674235_960_720.png"),                        
                      ),
                    
                  ]
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,               
                   children: [
                    ElevatedButton(onPressed:(){},                    
                    child: Text('Meus Dados', style: TextStyle(fontSize: 30,color: Colors.white)),
                    style: ElevatedButton.styleFrom(
                    backgroundColor:Colors.blue),
                    )
                  ],
                ),
              ),
            ],),
          )
      ),
     
    );
  }
}
