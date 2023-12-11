import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("IEEE",
          style: TextStyle(
            fontSize: 36,
          ),
        ),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 40),
          child: Column(
            children: [
              CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage("assets/images/ieee.png"),
              ),
              SizedBox(height: 40),
              Container(
                height: 120,
                child: Expanded(
                  child: Text(
                    "IEEE mobil uygulaması, günümüz şartlarında iyi para kazanabilmen için seni eğitecek ve iyi bir mobil uygulama geliştirici olmanı sağlayacak olan uygulamadır.",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                  hintText: "İsim",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.lightBlue,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  )
                ),
              ),
              SizedBox(height: 40),
              TextField(
                controller: numberController,
                decoration: InputDecoration(
                  hintText: "Öğrenci No",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.lightBlue,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              SizedBox(height: 60),
              Container(
                height:100,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(50)
                ),
                child: Icon(Icons.arrow_forward,
                  size: 56,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
