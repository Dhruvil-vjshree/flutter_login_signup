import 'package:flutter/material.dart';
import 'signup.dart';

void main() {
  runApp( Main());
}


class Main extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyApp(),
    );
  }
}

class  MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber,
        body: SafeArea(
          child: Center(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Text(
                      'Login',
                  style: TextStyle(fontSize: 48),
                  ),
                  CircleAvatar(
                    radius: 80.00,
                    backgroundImage: AssetImage('asset/image/dr.jpg'),),




                  Container(
                    margin: EdgeInsets.all(20),

                    child: TextFormField(
                      validator: (value){
                        print(value);
                        print('Hello validation');
                      },
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                          filled: true,
                          hintText:'Number',
                        labelText:'enter number'),

                        controller: TextEditingController(),
                        keyboardType: TextInputType.number
                    ),
                  ),
                  ElevatedButton(

                      style: ElevatedButton.styleFrom(
                        primary: Colors.red
                      ),
                      onPressed: ()=>{}, child: Text('Login')),

                InkWell(
                  onTap: (){ // navigator pus ma new screen main upper aave pachi back button press krie to main pachi aavi jay
                    Navigator.push(
                      context,
                    MaterialPageRoute(builder: (context) => SignUp()) ,
                    );// ahiya class nu name aavse file nu nai
                  },

                  child: Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                ],
              ),
            ),
          ),

      ),
    );
  }
}
