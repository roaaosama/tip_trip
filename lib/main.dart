import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage() : super();

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[900],
        /* title: Text(
          'Choose your destination',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),*/
        actions: [
          Container(
            width: 300,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(25.0)),
                    labelText: 'search',
                    labelStyle: TextStyle(
                      fontSize: 20,
                    ),
                    suffixIcon: Icon(
                      Icons.search,
                      color: Colors.orange,
                    ),
                    fillColor: Colors.white,
                    filled: true),
              ),
            ),
          )
        ],
        elevation: 10,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 15, 8.0, 0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(35.0),
              child: Card(
                elevation: 20,
                child: Wrap(
                  children: [
                    Container(
                      width: double.infinity,
                      child: Image.network(
                        "https://www.bing.com/images/search?view=detailV2&ccid=KTkqMZXQ&id=D99896622104FB1B5C3DB1620C7C7EF3846665D6&thid=OIP.KTkqMZXQLfiJrXfbGipxpgHaE8&mediaurl=https%3a%2f%2fwww.regent-holidays.co.uk%2fupload-files%2fproduct-tours-gallery%2fcultural-landscapes-of-albania_2_monument-of-agonothetes-apollonia.jpg&cdnurl=https%3a%2f%2fth.bing.com%2fth%2fid%2fR.29392a3195d02df889ad77db1a2a71a6%3frik%3d1mVmhPN%252bfAxisQ%26pid%3dImgRaw%26r%3d0&exph=665&expw=997&q=image+for+albanya&simid=607989926974486502&FORM=IRPRST&ck=EB392863D2C9BBDF6C4F5CFD1EF365CD&selectedIndex=8",
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                      width: 10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 18,
                        ),
                        Text(
                          'Albanya',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 25,
                        ),
                        Text(
                          '3.000 LE',
                          style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
