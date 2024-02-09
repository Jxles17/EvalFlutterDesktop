import 'package:flutter/material.dart';

import '/navigationBar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Dashboard'),
      debugShowCheckedModeBanner: false,
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
      body: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 24, 24, 34),
        ),
        child: Row(
          children: [
            const MyNavigationBar(),
            Expanded(
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin: new EdgeInsets.only(left: 30, right: 280),
                        child: Text(
                          'Dashboard',
                          textAlign: TextAlign.center,
                          style: const TextStyle(fontSize: 30, color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: new EdgeInsets.symmetric(horizontal: 20.0),
                        child: SizedBox(
                          width: 200,
                          child: TextField(
                            style: TextStyle(color: Colors.white),
                            decoration: const InputDecoration(
                                suffixIcon: Icon(Icons.search, color: Colors.blue),
                                labelText: 'Search',
                                labelStyle: TextStyle(fontSize: 13, color: Colors.white),
                                filled: true,
                                fillColor: Color.fromARGB(255, 34, 34, 46),
                                border: OutlineInputBorder(),
                                focusColor: Colors.black,
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white)
                                )
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: new EdgeInsets.symmetric(horizontal: 20.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color.fromARGB(255, 34, 34, 46),
                        ),
                        width: MediaQuery.of(context).size.width / 6,
                        height: MediaQuery.of(context).size.height / 12,
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.person, // Remplacez cette icône par celle de votre choix
                              color: Colors.white,
                              size: 24.0,
                            ),
                            Text(
                              'Angelina Joli', // Remplacez ce texte par celui de votre choix
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                              ),
                            ),
                            Icon(
                              Icons.arrow_downward, // Remplacez cette icône par celle de votre choix
                              color: Colors.white,
                              size: 24.0,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 50,),
                  Row(
                    children: [
                      Column(
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  margin: new EdgeInsets.only(left: 0, right: 390),
                                  child: Text(
                                    'My Files',
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(fontSize: 30, color: Colors.white),
                                  ),
                                ),
                                Container(
                                  padding: new EdgeInsets.symmetric(horizontal: 20.0),
                                  margin: new EdgeInsets.only(bottom: 20),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.blue,
                                  ),
                                  width: MediaQuery.of(context).size.width / 8,
                                  height: MediaQuery.of(context).size.height / 14,
                                  child: const Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(
                                        Icons.plus_one, // Remplacez cette icône par celle de votre choix
                                        color: Colors.white,
                                        size: 24.0,
                                      ),
                                      Text(
                                        'Add New', // Remplacez ce texte par celui de votre choix
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ]
                          ),
                          Row(
                            children: [
                              SizedBox(width: 30),
                              Container(
                                padding: new EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Color.fromARGB(255, 34, 34, 46),
                                ),
                                width: MediaQuery.of(context).size.width / 8,
                                height: MediaQuery.of(context).size.height / 4,
                                child: const Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Icon(
                                          Icons.document_scanner, // Remplacez cette icône par celle de votre choix
                                          color: Colors.blue,
                                          size: 24.0,
                                        ),
                                        Icon(
                                          Icons.more_vert, // Remplacez cette icône par celle de votre choix
                                          color: Colors.grey,
                                          size: 24.0,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Documents', // Remplacez ce texte par celui de votre choix
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      child: LinearProgressIndicator(
                                        value: 0.3,
                                        backgroundColor: Colors.blueGrey,
                                        valueColor: AlwaysStoppedAnimation<Color>(Colors.blue), // Couleur de la barre de progression
                                      ),
                                      width: 150,
                                    ),
                                    Text(
                                      '1328 files       1.9GB', // Remplacez ce texte par celui de votre choix
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 10),
                              Container(
                                padding: new EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Color.fromARGB(255, 34, 34, 46),
                                ),
                                width: MediaQuery.of(context).size.width / 8,
                                height: MediaQuery.of(context).size.height / 4,
                                child: const Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Icon(
                                          Icons.cloud, // Remplacez cette icône par celle de votre choix
                                          color: Colors.orange,
                                          size: 24.0,
                                        ),
                                        Icon(
                                          Icons.more_vert, // Remplacez cette icône par celle de votre choix
                                          color: Colors.grey,
                                          size: 24.0,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Google Drive', // Remplacez ce texte par celui de votre choix
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      child: LinearProgressIndicator(
                                        value: 0.3,
                                        backgroundColor: Colors.orangeAccent,
                                        valueColor: AlwaysStoppedAnimation<Color>(Colors.orange), // Couleur de la barre de progression
                                      ),
                                      width: 150,
                                    ),
                                    Text(
                                      '1328 files       2.9GB', // Remplacez ce texte par celui de votre choix
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 10),
                              Container(
                                padding: new EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Color.fromARGB(255, 34, 34, 46),
                                ),
                                width: MediaQuery.of(context).size.width / 8,
                                height: MediaQuery.of(context).size.height / 4,
                                child: const Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Icon(
                                          Icons.cloud_circle, // Remplacez cette icône par celle de votre choix
                                          color: Colors.grey,
                                          size: 24.0,
                                        ),
                                        Icon(
                                          Icons.more_vert, // Remplacez cette icône par celle de votre choix
                                          color: Colors.grey,
                                          size: 24.0,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          'One Drive', // Remplacez ce texte par celui de votre choix
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      child: LinearProgressIndicator(
                                        value: 0.3,
                                        backgroundColor: Colors.blueGrey,
                                        valueColor: AlwaysStoppedAnimation<Color>(Colors.grey), // Couleur de la barre de progression
                                      ),
                                      width: 150,
                                    ),
                                    Text(
                                      '1328 files       1GB', // Remplacez ce texte par celui de votre choix
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 10),
                              Container(
                                padding: new EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Color.fromARGB(255, 34, 34, 46),
                                ),
                                width: MediaQuery.of(context).size.width / 8,
                                height: MediaQuery.of(context).size.height / 4,
                                child: const Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Icon(
                                          Icons.document_scanner, // Remplacez cette icône par celle de votre choix
                                          color: Colors.blue,
                                          size: 24.0,
                                        ),
                                        Icon(
                                          Icons.more_vert, // Remplacez cette icône par celle de votre choix
                                          color: Colors.grey,
                                          size: 24.0,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Documents', // Remplacez ce texte par celui de votre choix
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      child: LinearProgressIndicator(
                                        value: 0.8,
                                        backgroundColor: Colors.blueGrey,
                                        valueColor: AlwaysStoppedAnimation<Color>(Colors.blue), // Couleur de la barre de progression
                                      ),
                                      width: 150,
                                    ),
                                    Text(
                                      '1328 files       7.3GB', // Remplacez ce texte par celui de votre choix
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 30),

                            ],
                          ),
                          Container(
                            padding: new EdgeInsets.all(20),
                            margin: new EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Color.fromARGB(255, 34, 34, 46),
                            ),
                            width: MediaQuery.of(context).size.width / 1.9,
                            height: MediaQuery.of(context).size.height / 2.4,
                            child: const Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Recent files', // Remplacez ce texte par celui de votre choix
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20.0,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'File Name', // Remplacez ce texte par celui de votre choix
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16.0,
                                      ),
                                    ),
                                    Text(
                                      'Date', // Remplacez ce texte par celui de votre choix
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16.0,
                                      ),
                                    ),
                                    Text(
                                      'Size', // Remplacez ce texte par celui de votre choix
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16.0,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'XD File', // Remplacez ce texte par celui de votre choix
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16.0,
                                      ),
                                    ),
                                    Text(
                                      '01-02-2021', // Remplacez ce texte par celui de votre choix
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16.0,
                                      ),
                                    ),
                                    Text(
                                      '3.5mb', // Remplacez ce texte par celui de votre choix
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        padding: new EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color.fromARGB(255, 34, 34, 46),
                        ),
                        width: MediaQuery.of(context).size.width / 6,
                        height: MediaQuery.of(context).size.height / 1.25,
                        child: const Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Storage details', // Remplacez ce texte par celui de votre choix
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
