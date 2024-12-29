import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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

    var myPlaceArr = ["Ranchi", "Delhi", "Bangalore", "Mumbai", "Chennai", "Ranchi", "Delhi", "Bangalore", "Mumbai", "Odisa"];

    return Scaffold(
      appBar: AppBar(

        title: Text("Places"),
      ),
      body:ListView.separated(itemBuilder: (context,index) {

         return ListTile(
           leading: Container(
             width: 50,
             height: 100,
               child: CircleAvatar(
                  backgroundImage: AssetImage("assets/Images/image1.jpeg"),
               )
               //Image.asset("assets/Images/image1.jpeg"),
           ),
           title: Text(myPlaceArr[index]),
           subtitle: Text("Place name"),
           trailing: Icon(Icons.add),
         );
            },
          itemCount: myPlaceArr.length,
          separatorBuilder: (context, index) {
          return Divider(height: 50, thickness: 1,);
          },
        ),
      );
  }
}
