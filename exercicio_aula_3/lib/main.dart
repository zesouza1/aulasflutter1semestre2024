import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Exercicio Aula 3'),
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
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 197, 211, 197),
                  ),
                  child: Row(
                    children: [
                      Image.network("https://st2.depositphotos.com/2124563/11842/i/600/depositphotos_118424838-stock-photo-flag-of-sao-paulo-brazil.jpg",width: 100,),        
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(
                              'Estado de São Paulo',
                              style:TextStyle(
                                fontSize: 30,
                              ),
                            ),
                            Text(
                          '44.420.459 de habitantes',
                          style:TextStyle(
                            fontSize:20,
                          ),
                        ),
                          ],
                        ),
                      ),                
                      ],              
                  ),
                ),
                Row(
                  children: [
                    Image.network("https://static4.depositphotos.com/1009841/285/i/600/depositphotos_2859435-stock-photo-flag-of-goias-brazil.jpg",width: 100,),        
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Text(
                            'Estado de Góias',
                            style:TextStyle(
                              fontSize: 30,
                            ),
                          ),
                          Text(
                        '7.055.228 de habitantes',
                        style:TextStyle(
                          fontSize:20,
                        ),
                      ),
                        ],
                      ),
                    ),                
                    ],              
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 197, 211, 197),
                  ),
                  child: Row(
                    children: [
                      Image.network("https://st2.depositphotos.com/2124563/11837/i/600/depositphotos_118370198-stock-photo-flag-of-tocantins-brazil.jpg",width: 100,),        
                      const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Text(
                              'Estado de Tocantins',
                              style:TextStyle(
                                fontSize: 30,
                              ),
                            ),
                            Text(
                          '1.511.459 de habitantes',
                          style:TextStyle(
                            fontSize:20,
                          ),
                        ),
                          ],
                        ),
                      ),                
                      ],              
                  ),
                ),
                Row(
                  children: [
                    Image.network("https://static4.depositphotos.com/1009841/285/i/600/depositphotos_2859328-stock-photo-flag-of-pernambuco-brazil.jpg",width: 100,),        
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Text(
                            'Estado de Pernambuco',
                            style:TextStyle(
                              fontSize: 30,
                            ),
                          ),
                          Text(
                        '9.058.155 de habitantes',
                        style:TextStyle(
                          fontSize:20,
                        ),
                      ),
                        ],
                      ),
                    ),                
                    ],              
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 197, 211, 197),
                  ),
                  child: Row(
                    children: [
                      Image.network("https://st3.depositphotos.com/1011646/37466/i/600/depositphotos_374663256-stock-photo-illustration-brazilian-state-flag-acre.jpg",width: 100,),        
                      const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Text(
                              'Estado do Acre',
                              style:TextStyle(
                                fontSize: 30,
                              ),
                            ),
                            Text(
                          '830.026 de habitantes',
                          style:TextStyle(
                            fontSize:20,
                          ),
                        ),
                          ],
                        ),
                      ),                
                      ],              
                  ),
                ),
                Row(
                  children: [
                    Image.network("https://st.depositphotos.com/1220104/4832/i/600/depositphotos_48324195-stock-photo-rio-de-janeiro-flag-of.jpg",width: 100,),        
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Text(
                            'Estado do Rio de Janeiro',
                            style:TextStyle(
                              fontSize: 28,
                            ),
                          ),
                          Text(
                        '16.054.524 de habitantes',
                        style:TextStyle(
                          fontSize:20,
                        ),
                      ),
                        ],
                      ),
                    ),                
                    ],              
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 197, 211, 197),
                  ),
                  child: Row(
                    children: [
                      Image.network("https://st2.depositphotos.com/1482106/12327/i/600/depositphotos_123270174-stock-photo-waving-flag-of-roraima-state.jpg",width: 100,),        
                      const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Text(
                              'Estado de Roraima',
                              style:TextStyle(
                                fontSize: 30,
                              ),
                            ),
                            Text(
                          '636.303 de habitantes',
                          style:TextStyle(
                            fontSize:20,
                          ),
                        ),
                          ],
                        ),
                      ),                
                      ],              
                  ),
                ),
                Row(
                  children: [
                    Image.network("https://st4.depositphotos.com/10839834/21081/i/600/depositphotos_210810320-stock-photo-beautiful-colorful-waving-flag-parana.jpg",width: 100,),        
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Text(
                            'Estado do Paraná',
                            style:TextStyle(
                              fontSize: 30,
                            ),
                          ),
                          Text(
                        '11.443.208 de habitantes',
                        style:TextStyle(
                          fontSize:20,
                        ),
                      ),
                        ],
                      ),
                    ),                
                    ],              
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 197, 211, 197),
                  ),
                  child: Row(
                    children: [
                      Image.network("https://st.depositphotos.com/1004691/1883/i/600/depositphotos_18839049-stock-photo-flag-of-maranhao.jpg",width: 100,),        
                      const Padding(
                        padding:EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Text(
                              'Estado do Maranhão',
                              style:TextStyle(
                                fontSize: 30,
                              ),
                            ),
                            Text(
                          '6.775.152 de habitantes',
                          style:TextStyle(
                            fontSize:20,
                          ),
                        ),
                          ],
                        ),
                      ),                
                      ],              
                  ),
                ),
                Row(
                  children: [
                    Image.network("https://st2.depositphotos.com/5440924/8253/i/600/depositphotos_82535122-stock-photo-corrugated-brazilian-state-amazonas-flag.jpg",width: 100,),        
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Text(
                            'Estado do Amazonas',
                            style:TextStyle(
                              fontSize: 30,
                            ),
                          ),
                          Text(
                        '3.941.175 de habitantes',
                        style:TextStyle(
                          fontSize:20,
                        ),
                      ),
                        ],
                      ),
                    ),                
                    ],              
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
