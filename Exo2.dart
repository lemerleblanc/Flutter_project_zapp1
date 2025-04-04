import 'package:flutter/material.dart';

void main(){
  runApp(MainExo2());
} 

class MainExo2 extends StatelessWidget{
  Widget build(BuildContext cnt1){
    return MaterialApp(
      home: Screens(),
      debugShowCheckedModeBanner: false
    );
  }
}

class Screens extends StatefulWidget{
  @override
  State<Screens> createState() => etaEkran();
}

class etaEkran extends State<Screens>{
  int SelectedIndex = 0;
  final List<String> screenLetter = ["Screen A", "Screen B", "Screen C"];

  Widget build(BuildContext cont3){
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen State App'),
        actions: [
          IconButton(
            icon: Icon(Icons.heart_broken),
            onPressed: (){},
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: (){},
          )
        ],
        leading: GestureDetector(
          child: Icon(Icons.menu),
          onTap: (){},
        )
      ),

      body: Center(
      child: Text(screenLetter [SelectedIndex]),
      ),

      bottomNavigationBar: BottomNavigationBar(

        currentIndex: SelectedIndex,

        onTap: (idx){
          setState(() {
                      SelectedIndex = idx;
                    });
      }, 

      items: [
        BottomNavigationBarItem(
                icon:Icon(Icons.folder),
                label:"Folder"
              ),
              BottomNavigationBarItem(
                icon:Icon(Icons.home),
                label:"home"
              ),
              BottomNavigationBarItem(
                icon:Icon(Icons.business),
                label:"Business"
              )
      ],
      )

    );
  }
}

