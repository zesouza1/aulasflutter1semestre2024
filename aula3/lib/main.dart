import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'IBAGENS'),
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
      body: SingleChildScrollView( //Para rolar a tela
        child: Center(
          
          child: Column(            
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
                Image.network("https://cdn.pixabay.com/photo/2024/04/04/03/08/ai-generated-8674235_960_720.png"),
                CircleAvatar(
                  child:Image.network("https://cdn.pixabay.com/photo/2024/04/04/03/08/ai-generated-8674235_960_720.png",),
                ),
                Image.asset(
                 'assets/aaaaa.jpg',
                 width:150,
                 height: 150,
                ),
                Image.asset(
                  'assets/bbbbb.jpg',
                  width:150,
                  height:150,
                ),
                Icon(
                  Icons.access_alarm,
                  size:200,
                ),
                Icon(
                  Icons.account_balance_wallet_outlined,
                  size:200,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
