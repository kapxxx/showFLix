import 'package:update_showflix/screen/home.dart';
import 'package:update_showflix/screen/registration.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class rag extends StatelessWidget {
  const rag({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double bottomInsets = MediaQuery.of(context).viewInsets.bottom;

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:100),
                child: Image.asset("assets/image/logo3.png",scale: 3,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                "Registration",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: TextField(
                    scrollPadding: EdgeInsets.only(bottom:bottomInsets + 40.0),
                    decoration: InputDecoration(

                      prefixIcon: Icon(Icons.person),
                      focusColor: Colors.amber,
                      labelText: "Username or Email",
                      hintText: "Username or Email",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: Colors.amber)
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 30.0, right: 30,top: 10),
                  child: TextField(
                    scrollPadding: EdgeInsets.only(bottom:bottomInsets + 40.0),
                    //obscureText: true,
                    decoration: InputDecoration(
                        labelText: "Email",
                        hintText: "Email",
                        prefixIcon: Icon(Icons.mail),
                        border: OutlineInputBorder(

                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(color: Colors.amber)
                        )
                    ),
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 30.0, right: 30,top: 40),
                  child: TextField(
                    scrollPadding: EdgeInsets.only(bottom:bottomInsets + 40.0),
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: "Password",
                        hintText: "Password",
                        prefixIcon: Icon(Icons.lock),
                        border: OutlineInputBorder(

                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(color: Colors.amber)
                        )
                    ),
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 30.0, right: 30,top: 40),
                  child: TextField(
                    scrollPadding: EdgeInsets.only(bottom:bottomInsets + 40.0),
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: "Conform Password",
                        hintText: "Conform Password",
                        prefixIcon: Icon(Icons.lock),
                        border: OutlineInputBorder(

                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(color: Colors.amber)
                        )
                    ),
                  ),
                ),
              ),


              SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 335.0,
                height: 50,
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.amber)
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Home()),
                    );
                  },

                  child: Text("Register",style: TextStyle(fontSize: 20),),
                ),
              ),


              SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.only(left: 30,right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/image/Google.png", scale: 20,),
                    SizedBox(width: 40,),
                    Image.asset("assets/image/facebook.png", scale: 39,),
                  ],
                ),
              )





            ],
          ),
        ),
      ),
    );
  }
}



