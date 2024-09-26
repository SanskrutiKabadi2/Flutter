import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      
      home: MyHomePage(),
      debugShowCheckedModeBanner:false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

   @override
   State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Colors.blue,
        title: const Text("Drawer"),
        centerTitle: true,
      ),

      body: const Center(
        child:Text("Hello World"),
        
        ),

        drawer:Drawer(
          child:Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
              ),
              const Center(
                child:Text("Transaction",style:TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )
                )
              ),
              const SizedBox(
                height: 50,
              ),
              const Center(
                child:Text("Category",style:TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )
                )
              ),
              const SizedBox(
                height: 50,
              ),
              const Center(
                child:Text("Profile",style:TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )
                )
              ),
              const SizedBox(
                height: 50,
              ),
              const Center(
                child:Text("About Us",style:TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )
                )
              ),
              const SizedBox(
                height: 50,
              ),
              const Center(
                child:Text("Logout",style:TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )
                )
              ),
              const SizedBox(
                height: 50,
              ),
              IconButton(onPressed: (){
                Navigator.of(context).pop(Route);
              },
               icon:const Icon(Icons.close))
            ],
        ) ,
        ),
    );
  }
}
