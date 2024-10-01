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
  
  var arr=["Sanskruti","Aditya","Vedika","Ishwari","Prithvi","Titiksha","Arnav","Rishabh","Abhinav","Aditte"];
    
 @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor:const Color.fromARGB(255, 77, 151, 212),
        title: const Text("ListTile"),
        centerTitle: true,
      ),

      body:ListView.builder(
        padding: const EdgeInsets.all(30.0),
        scrollDirection: Axis.vertical,
        
        itemBuilder:(context,index){
          return Column(
            children: [
              Container(
                alignment: Alignment.center,
                height: 100,
                
                decoration:BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.lightBlueAccent,
                ),
                child:ListTile(
                leading: const Icon(Icons.list),
                trailing: const Text(
                          "Sinhgad",
                          style:TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight:FontWeight.w500, 
                          ),
                       ),
                title:Text(arr[index],style:const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight:FontWeight.w500, 
                          ),),
              ),),
              Container(
                height: 30,
                
              ),

            ],
            );
         
        },
        itemCount:arr.length,
        
        )
        
        

    );
  }
}
