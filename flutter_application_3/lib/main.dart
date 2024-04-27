import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner:false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title}); 

  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();}

class _MyHomePageState extends State<MyHomePage> {
  void _incrementCounter() {
    setState(() {
      
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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(top:8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height:200,
                    width:200,
                    decoration: const BoxDecoration(                      
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
           /*--adicionar imagem--*/ image:DecorationImage(fit:BoxFit.fill, image:NetworkImage('https://i1.wp.com/safesea.com.br/wp-content/uploads/2021/10/marenatureza-1.jpg')),
                        color: Color.fromARGB(255, 161, 110, 107),
                    ),            
                  ),
                Container(
                height:200,
                width:250,
                decoration: const BoxDecoration(
                    color:Colors.blue,
                    borderRadius: BorderRadius.all(
                      Radius.circular(30)
                    ),image:DecorationImage(fit:BoxFit.fill, image:NetworkImage('https://i1.wp.com/safesea.com.br/wp-content/uploads/2021/10/marenatureza-1.jpg')),
                ),
              ),
              ]),
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children:[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(                      
                      height:400,
                      width:200,
                      decoration: const BoxDecoration(
                        color:Colors.green,
                        borderRadius: BorderRadius.all(
                          Radius.circular(30)
                        ),image:DecorationImage(fit:BoxFit.fill, image:NetworkImage('https://i1.wp.com/safesea.com.br/wp-content/uploads/2021/10/marenatureza-1.jpg')),
                                      ),
                                    ),
                    ),
                                  Container(
              height:200,
              width:200,
              decoration: const BoxDecoration(
                  color:Colors.pink,
                  borderRadius: BorderRadius.all(
                    Radius.circular(30)
                  ),image:DecorationImage(fit:BoxFit.fill, image:NetworkImage('https://i1.wp.com/safesea.com.br/wp-content/uploads/2021/10/marenatureza-1.jpg')),
              ),
            )
                  ],
                ),
            Column(
              children: [
                Row(
                  children: [                    
                    Container(
                      height:200,
                      width:130,
                      decoration: const BoxDecoration(
                          color:Colors.black,
                          borderRadius: BorderRadius.all(
                            Radius.circular(30)
                          ),image:DecorationImage(fit:BoxFit.fill, image:NetworkImage('https://i1.wp.com/safesea.com.br/wp-content/uploads/2021/10/marenatureza-1.jpg')),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:8),
                      child: Container(
                                    height:200,
                                    width:130,
                                    decoration: const BoxDecoration(
                                        color:Colors.red,
                                        borderRadius: BorderRadius.all(
                      Radius.circular(30)
                                        ),image:DecorationImage(fit:BoxFit.fill, image:NetworkImage('https://i1.wp.com/safesea.com.br/wp-content/uploads/2021/10/marenatureza-1.jpg')),
                                    ),
                                  ),
                    )],
            ),
            Row(
              children:[
                Padding(
                  padding: const EdgeInsets.only(top:8),
                  child: Container(
                                height:400,
                                width:260,
                                decoration: const BoxDecoration(
                    color:Colors.grey,
                    borderRadius: BorderRadius.all(
                      Radius.circular(30)
                    ),image:DecorationImage(fit:BoxFit.fill, image:NetworkImage('https://i1.wp.com/safesea.com.br/wp-content/uploads/2021/10/marenatureza-1.jpg')),
                                ),
                              ),
                )
              ]
            ),
            ],
              ),
           ]),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
                Padding(
                  padding: const EdgeInsets.only(top:8),
                  child: Container(
                  height: 150,
                  width:300,
                  decoration: const BoxDecoration(
                    color:Colors.orange,borderRadius: BorderRadius.all(Radius.circular(30),
                    ),image:DecorationImage(fit:BoxFit.fill, image:NetworkImage('https://i1.wp.com/safesea.com.br/wp-content/uploads/2021/10/marenatureza-1.jpg')),
                  ),
                  ),
                ),
                Container(
                height: 150,
                width:150,
                decoration: const BoxDecoration(
                  color:Colors.yellow,borderRadius: BorderRadius.all(Radius.circular(30),
                  ),image:DecorationImage(fit:BoxFit.fill, image:NetworkImage('https://i1.wp.com/safesea.com.br/wp-content/uploads/2021/10/marenatureza-1.jpg')),
                ),
                ),
                
                 ],),             
          ]),


      ),
    );
  }
}
