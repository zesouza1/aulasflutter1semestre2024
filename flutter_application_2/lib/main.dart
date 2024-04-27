
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
      home: const MyHomePage(title:'Teste'),
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
      appBar: AppBar(        
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,        
        title: Text(widget.title),
      ),
      body: Center(       
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(40),
              child: Container(
                height:50,
                width:double.infinity,
                decoration: const BoxDecoration(
                  color:Colors.red,
                  borderRadius: BorderRadius.all(
                    Radius.circular(100),
                ),
                ),
                child: const Center(child: Text('teste'))
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:[
                Text('UM', style:TextStyle(fontSize: 30, color: Colors.blue),),
                Text('DOIS', style:TextStyle(fontSize: 30, color: Colors.green),),
                Text('TRES', style:TextStyle(fontSize: 30, color: Colors.red),)
              ]
            ),
            Container(
                color:Colors.orange,
                child:const Row(
                  children: [
                      Icon(
                        Icons.access_time_rounded,
                      color:Colors.white,
                      size:50,
                      ),
                      Text('So um Teste')
                ]),
            ),
            const Divider(
              height: 10,
              color: Colors.red,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Text('UM', 
                style:TextStyle(
                  fontSize: 30, 
                  color: Colors.blue,
                  backgroundColor: Colors.red
                )),
                SizedBox(
                  width:50
                ),
                Text('DOIS',
                style:TextStyle(fontSize: 30, 
                color: Colors.green)),
              ]
            ),
            const Divider(
              height: 20,
              color: Colors.blue,
            ),            
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Text('Text1', style:TextStyle(fontSize: 30, color: Colors.blue),),
                SizedBox(width:50),
                Text('Text2', style:TextStyle(fontSize: 30, color: Colors.green),),
                SizedBox(width:100),
                Text('Text3', style:TextStyle(fontSize: 30, color: Colors.red),)
              ]
            ),
            const Divider(
              height: 100,
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
