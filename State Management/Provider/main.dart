
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return Provider(
        create:(context){
          return Company(name:"Google",empCount:500);
        },
        child:const MaterialApp(
          debugShowCheckedModeBanner:false,
          home:MyHomePage(),
        ),
      );
  }
}
 

class MyHomePage extends StatefulWidget{

  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState(){
    return _HomePage();

  }


}

class _HomePage extends State<MyHomePage>{

@override
Widget build(BuildContext context){
  return Scaffold(
    appBar:AppBar(
      title:const Text("Provider "),
      centerTitle:true,


    ),
    body:Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.blueAccent,
                alignment:Alignment.center ,
                child:
                  Text(Provider.of<Company>(context).name),
              ),
            ],
        ),
        const SizedBox(
          height: 30,
        ),
         Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.pinkAccent,
                 alignment:Alignment.center ,
                child:
                  Text("${Provider.of<Company>(context).empCount}"),
              ),
            ],
        ),
       
      ],


    ),
    drawer:const Drawer(),
    );


  }

}
class Company {
  final String name;
  final int empCount;

  const Company({required this.name,required this.empCount});
  
}