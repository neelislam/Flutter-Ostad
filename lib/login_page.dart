import 'package:flutter/material.dart';
import 'package:ostadflutter/Flutter_Class_1.dart';
import 'package:ostadflutter/navi.dart';

import 'listview.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
    body: Container(
    color: Colors.blue,  // Set black background for the whole body
    child: Center(
    child: SingleChildScrollView(
    padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

              Image.network('https://images7.alphacoders.com/653/thumb-1920-653326.jpg'),
              Text('Login with your phone and password'),
              SizedBox(
                height: 20,
              ),
              Form(
                  key: _formKey,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Phone number'),
                        TextFormField(
                          controller: phoneController,
                          decoration: InputDecoration(
                              hintText: 'Phone Number',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                              )
                          ),
                          validator: (value){
                            if(value == null  || value.isEmpty){
                              return 'Please Enter your phone number';
                            } else{
                              return null;
                            }
                          },
                        ), SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          controller: passwordController,
                          obscureText: true,
                          decoration: InputDecoration(
                              hintText: 'Password',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                              )
                          ),
                          validator: (value){
                            if(value == null  || value.isEmpty){
                              return 'Please Enter your password';
                            } else if(value.length<=6){
                              print('Password must be 6 character minimum!');
                            }

                            else{
                              return null;
                            }
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                            width: 300,
                            child: ElevatedButton(onPressed: (){
                              if(_formKey.currentState!.validate()){
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text('Login Successful')),
                                  

                                );
                                // Navigator.push(context,
                                //     MaterialPageRoute(builder:
                                //         (context)=>Navi(name: phoneController.text,)));
                              }
                            }, child: Text('Login'))
                        ),
                          ElevatedButton(onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context)=>ListV())
                            );
                          }, child: Text('List')),


                      ]
                  ))
            ],
          ),
        ),
      ),
    )
    );

  }
}