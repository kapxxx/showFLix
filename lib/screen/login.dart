import 'package:update_showflix/screen/home.dart';
import 'package:update_showflix/screen/registration.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class login extends StatelessWidget {
  const login({Key? key}) : super(key: key);

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
                child: Image.asset("assets/image/logo3.png",scale: 2,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                "Login",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: TextField(
                    scrollPadding: EdgeInsets.only(bottom:bottomInsets + 40.0),
                    decoration: InputDecoration(

                      prefixIcon: Icon(Icons.person),
                      focusColor: Colors.amber,
                      labelText: "Username",
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
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 300),
                child: Text("Forgot Password?",style: TextStyle(
                    color: Colors.amber
                ),),
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

                  child: Text("Login",style: TextStyle(fontSize: 20),),
                ),
              ),
              SizedBox(height: 25),
              InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const rag()),);
                },
                child: RichText(
                  text: const TextSpan(
                    children: <TextSpan>[
                      TextSpan(text: "You Don't Have an Account?  ", style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                      TextSpan(text: 'Sign Up Here', style: TextStyle(
                          color: Colors.amber,
                          fontWeight: FontWeight.bold)),

                    ],
                  ),
                ),
              ),
              SizedBox(height: 70),
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
