import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Booking Hotel',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Pesan Hotelmu Sekarang'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Card(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding:
                          const EdgeInsets.only(left: 10, top: 10, right: 10),
                      child: const Text(
                        'Pilih Tujuan',
                        style: TextStyle(color: Colors.black54),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                          left: 10, bottom: 10, right: 10),
                      child: const TextField(
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          prefixIcon: Icon(
                            Icons.location_on_outlined,
                            color: Colors.blue,
                          ),
                          hintText: "Mau pesen hotel dimana?",
                        ),
                      ),
                    ),
                    Container(
                      padding:
                          const EdgeInsets.only(left: 10, top: 10, right: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                              flex: 6,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text("Check In",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(color: Colors.black54)),
                                  Container(
                                    padding: const EdgeInsets.only(
                                        bottom: 10, right: 20),
                                    child: const TextField(
                                      decoration: InputDecoration(
                                        border: UnderlineInputBorder(),
                                        prefixIcon: Icon(
                                          Icons.calendar_month,
                                          color: Colors.blue,
                                        ),
                                        hintText: "Sabtu, 03 Sep 2022",
                                        hintStyle: TextStyle(
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                          Expanded(
                              flex: 4,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text("Durasi",
                                      style: TextStyle(color: Colors.black54)),
                                  TextField(
                                    decoration: InputDecoration(
                                      border: UnderlineInputBorder(),
                                      hintText: "1 malam",
                                      hintStyle: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                        ],
                      ),
                    ),
                    Container(
                      padding:
                          const EdgeInsets.only(left: 10, top: 10, right: 10),
                      child: const Text('Kamar & Tamu',
                          style: TextStyle(color: Colors.black54)),
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                          left: 10, bottom: 10, right: 10),
                      child: const TextField(
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          prefixIcon: Icon(
                            Icons.person_add_alt_1,
                            color: Colors.blue,
                          ),
                          hintText: "1 Kamar, 1 Tamu",
                          hintStyle: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                        width: double.infinity,
                        child: Container(
                            padding: const EdgeInsets.all(10),
                            child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.all(20),
                                  primary: Colors.orange[900],
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                ),
                                child: const Text('CARI HOTEL',
                                    style: TextStyle(fontSize: 15)))))
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
