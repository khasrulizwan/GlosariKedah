import 'package:flutter/material.dart';
import 'package:ggdk/pages/Hasil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GGDK',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  final TextEditingController _cariEditingController = TextEditingController();
  var scaffoldKey = GlobalKey<ScaffoldState>();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'GGDK',
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontFamily: 'Inika',
          ),
        ),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(
          size: 40,
          color: Colors.black,
        ),
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.green,
          child: ListView(
            padding: const EdgeInsets.fromLTRB(0, 30, 50, 60),
            children: <Widget>[
              ListTile(
                title: const Text(
                  'Kata Nama',
                  style: TextStyle(fontSize: 25, fontFamily: 'Inaka'),
                ),
                onTap: () {
                  // Action for Option 1
                },
              ),
              ListTile(
                title: const Text('Option 2'),
                onTap: () {
                  // Action for Option 2
                },
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/Logo.png',
                      height: 300,
                      width: 300,
                    ),
                    Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          TextFormField(
                            controller: _cariEditingController,
                            decoration: InputDecoration(
                              labelText: 'Cari perkataan',
                              prefixIcon: const Icon(Icons.search),
                              border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  width: 3,
                                  color: Colors.greenAccent,
                                ),
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              // Access the entered text using _cariEditingController.text
                              print(
                                  'Search Text: ${_cariEditingController.text}');

                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Hasil(),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 39, 147, 91),
                            ),
                            child: const Text(
                              'Cari',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class kataKedah {
  int? id;
  String? kata;
  String? transkripsi;
  String? makna;
  String? ayat;

  kataKedah(
      {required this.id,
      required this.kata,
      required this.transkripsi,
      required this.makna,
      required this.ayat});

  kataKedah.fromJSON(Map<String, dynamic> json) {
    id = json['id'];
    kata = json['kata'];
    transkripsi = json['transkripsi'];
    makna = json['makna'];
    ayat = json['ayat'];
  }
}
