import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

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
  
  Map<String,double> data={"Food":40,"Fuel":30,"entertainment":10,"Shopping":10};
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Colors.blue,
        title: const Text("Graphs"),
        
      ),

      body:
          
          Center(
            child:PieChart(
            dataMap:data,
            chartType:ChartType.ring,
            chartRadius: 200,
            ringStrokeWidth: 35,
            legendOptions:const LegendOptions(
              //legendPosition:LegendPosition.bottom,
              legendShape: BoxShape.rectangle,
              //showLegends:false,

            ),
            chartValuesOptions:const ChartValuesOptions(
            //showChartValues: false,
            //showChartValuesOutside: true,
            //showChartValueBackground: true,
            showChartValuesInPercentage: true,
            
            

            ),
            centerText:"Total",
          ),
        ),
        drawer:Drawer(
          child:Column(
            children:[
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
               icon:const Icon(Icons.close),
               ),

            ],

          ),
        ),
        
      
    );
  }
}
