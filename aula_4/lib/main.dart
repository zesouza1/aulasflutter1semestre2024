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
      debugShowCheckedModeBanner:false,      
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Botão'),
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget> [
            ElevatedButton(
              onPressed:(){
                  print('DEU CERTO');
              },
               child:const Text ('Elevated Button', style:TextStyle(fontSize: 25)),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Theme.of(context).colorScheme.onPrimary,
                backgroundColor: Theme.of(context).colorScheme.primary,
              ).copyWith(elevation: ButtonStyleButton.allOrNull(0.0)),
              onPressed: (){
                //ação vazia
              },
              child: const Text ('Filled', style:TextStyle(fontSize: 25)),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Theme.of(context).colorScheme.onSecondaryContainer,
                backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
              ).copyWith( elevation: ButtonStyleButton.allOrNull(0.0)),
              onPressed: (){
                //ação vazia
              },
              child: const Text ('Filled Tonal', style:TextStyle(fontSize: 25)),
            ),
            OutlinedButton(onPressed:(){
              //ação vazia
            }, child:const Text('Outlined Button', style:TextStyle(fontSize: 25))
            ),
            TextButton(onPressed:(){
              //ação vazia
            }, 
            child: const Text('Text Button', style:TextStyle(fontSize: 25))
            ),
          ],
        ),
      ),
    );
  }
}
