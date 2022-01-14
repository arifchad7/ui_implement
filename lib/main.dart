import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image(
                image: NetworkImage('https://cdn.pixabay.com/photo/2016/08/09/21/54/lake-1581879_960_720.jpg'),
              height: double.infinity,
              fit:BoxFit.cover,
            ),
            Positioned(
              bottom: 20,left: 20,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.orange,
                      Colors.purple,
                      Colors.blue,
                      Colors.pink,
                      Colors.black,
                    ]
                  ),
                ),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Text('চিত্রশালা',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 27,
                    ),
                    ),

                    ActionChip(
                        onPressed: (){},
                      label: Text('Photography'),
                      backgroundColor: Colors.red,
                    ),
                    SizedBox(width: 10,),
                    ActionChip(
                        onPressed: (){},
                      label: Text('colors'),
                      backgroundColor: Colors.blue,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
