import 'dart:html';
import 'package:flutter/material.dart';
List<String> tasks = ['task one', 'task two', "task three",];

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({super.key});
  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  
String email = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo App'),
         actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
             print("create new todo button");
            },
          ),
        ],     
      ),
body: Container(
padding: const EdgeInsets.all(05.0),
child: Column(
children: [
Row(
  children: [
   const Expanded(
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Enter a task...',
          contentPadding: EdgeInsets.all(10),
        ),
          // onChanged: (){
              // setState(() {
              //   email = value;
              // });
      ),
    ),

    SizedBox(width: 10),
    ElevatedButton(
      onPressed: () {
       
      },
      child: Text('Add'),
    ),
  ],
),

SizedBox(height: 20), 
// Other widgets can be added after the space
Expanded(
  child: ListView.builder(
  itemCount: tasks.length,
  itemBuilder: (BuildContext context, int index){
  return ListTile(
          title:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:[
           Text(tasks[index]),
     ElevatedButton(
      
      onPressed: () {
      
      },
      child: Text('done'),
    ),
    ]
    )
        );
 }))
],
),
),
);
  }
}
