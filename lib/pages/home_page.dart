import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int cont =0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Juanita Rubi Becerra Guevara"),
        backgroundColor: const Color.fromARGB(255, 125, 25, 240),
      ),
      body: Center(
        child: 
          Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
            const Text("Numero de click"),
            Text("$cont"),
            ],)
        
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: _crearBotones(),
       
    );
  }
  
  Widget _crearBotones() {
    return Padding(padding: const EdgeInsets.symmetric(horizontal: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          // ignore: sort_child_properties_last
          child: const Icon(Icons.add),
          onPressed: ()=> _sumar(),
           backgroundColor: Colors.green,
           ),

        const SizedBox(width: 8,),  
        FloatingActionButton(
          // ignore: sort_child_properties_last
          child: const Icon(Icons.remove),
          onPressed: ()=> _restar(),
          backgroundColor: Colors.green,
          ),

        const SizedBox(width: 8,),
        FloatingActionButton(
          // ignore: sort_child_properties_last
          child: const Icon(Icons.exposure_zero),
          onPressed: ()=> _restaurar(),
          backgroundColor: const Color.fromARGB(255, 216, 175, 130),
          )
      ],

    ),
    );
  }
  
  void _sumar() {
    setState(() {
      cont++;
    });
  }
  
  void _restar() {
    setState(() {
      if (cont>0){
        cont--;
      }
      
    });
  }
  
  void _restaurar() {
    setState(() {
      cont=0;
    });
  }
}

