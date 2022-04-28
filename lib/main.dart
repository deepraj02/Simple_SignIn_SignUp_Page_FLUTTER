import 'package:flutter/material.dart';

void main() => runApp(MyApp());

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
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              "assets/bg.jpg",
              fit: BoxFit.cover,
              color: Colors.black38,
              colorBlendMode: BlendMode.darken,
            ),
          ),
          Positioned(
            top: 60,
            left: 15,
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_back_ios_new,
                color: Colors.white,
              ),
            ),
          ),
          Positioned.fill(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 150,
                  ),
                  Text(
                    "Welcome Back!",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Sign into your account",
                    style: TextStyle(color: Colors.white, fontSize: 26),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 7, horizontal: 10),
                      decoration: BoxDecoration(color: Colors.black54),
                      child: TextField(
                        style: TextStyle(fontSize: 20, color: Colors.grey),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Email",
                            icon: Icon(
                              Icons.mail_outline,
                              color: Colors.grey,
                            ),
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            )),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 7, horizontal: 10),
                    decoration: BoxDecoration(color: Colors.black54),
                    child: TextField(
                      style: TextStyle(fontSize: 20, color: Colors.grey),
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Password",
                          icon: Icon(
                            Icons.lock_outline,
                            color: Colors.grey,
                          ),
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 10,
                  ),
                  MaterialButton(
                    onPressed: () {},
                    minWidth: double.maxFinite,
                    color: Colors.red[700],
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Text("LOGIN"),
                    ),
                  ),
                  
                  // Container
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
