

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../screens/drawer_demo.dart';

class TextFieldScreen extends StatefulWidget {
  const TextFieldScreen({super.key});

  @override
  State<TextFieldScreen> createState() => _TextFieldScreenState();
}

class _TextFieldScreenState extends State<TextFieldScreen> {
  bool isshow = true;
  TextEditingController _passwordcontroll = TextEditingController();
  TextEditingController phonenumbercon = TextEditingController();
  TextEditingController passwordcon = TextEditingController();
  TextEditingController emailcon = TextEditingController();


  // TextEditingController usernamecontroller = TextEditingController();
  //var forkey = GlobalKey();
  String emptyString ='';
  final GlobalKey<FormState> formkey = GlobalKey();
  bool _validate = false;
  bool valid = false;
  bool valid1 = false;
  bool valid2 = false;
  final focus = FocusNode();
  final focus1 = FocusNode();
  final focus2 = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Text('Phone Number : '),
            // SizedBox(height: 5,),
            //TextField(
            // autocorrect: true,
            //
            //       keyboardType: TextInputType.phone,
            //       decoration: InputDecoration(
            //         border: OutlineInputBorder(),
            //         hintText: 'Enter phone number',
            //       ),
            //     ),
            SizedBox(
              height: 100,
            ),
            Text('Password : '),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: _passwordcontroll,
              // maxLines: 3,
              //autocorrect: false,
              obscureText: isshow,
              decoration: InputDecoration(
                errorText: _validate
                    ? "Value Can't Be Empty or at last 5 charactor enter"
                    : null,
                hintText: 'Please Enter Password',
                suffixIcon: IconButton(
                  icon: Icon(isshow
                      ? Icons.remove_red_eye
                      : Icons.account_circle_sharp),
                  onPressed: () {
                    setState(() {
                      isshow = !isshow;
                    });
                  },
                ),
                // filled: false,
                //             fillColor: Colors.pinkAccent,
                border: OutlineInputBorder(),
              ),
              // keyboardType: TextInputType.visiblePassword,
            ),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: () {
                  print('password : ${_passwordcontroll.text}');
                  setState(() {
                    if (_passwordcontroll.text.isEmpty ||
                        _passwordcontroll.text.length < 5) {
                      _validate = true;
                    } else {
                      _validate = false;
                    }
                  });
                },
                child: Text('save'),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'TextFormField',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 10,
            ),

            Form(
              //autovalidateMode: AutovalidateMode.onUserInteraction,
              key: formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Phone Number : '),
                  SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    //focusNode: focus,
                    controller: phonenumbercon,
               //  autofocus: true,

                   // textInputAction: TextInputAction.go,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    keyboardType: TextInputType.phone,
                    maxLength: 10,
                    onChanged: (text) {
                      print('First text field: $text (${text.characters.length})');
                    },
            //         onFieldSubmitted: (v){
            // FocusScope.of(context).requestFocus(focus1);
            // },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter Phone Number',
                      errorText: valid == true ?  "Please Enter Number" : null,
                      // valid
                      //     ? "Please Enter Number"
                      //     : null,
                    ),
                    validator: (value) {
                      if (value!.length >=10 ){

                        valid = false;
                        print(" number length greater than 10 $valid");
                        return null;
                      }
                      else{
                        print('else');
                        return 'Enter Valid Phone Number';
                      }
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Password : '),
                  SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                  //  focusNode: focus1,
                   // autofocus: true,
                    //enableInteractiveSelection: true,
                    // onFieldSubmitted: (v){
                    //   FocusScope.of(context).requestFocus(focus2);
                    // },
                   //textInputAction: TextInputAction.go,

                    keyboardType: TextInputType.visiblePassword,
                    maxLength: 12,
                    controller: passwordcon,
                   obscureText: true,
                    obscuringCharacter: '*',
                   autovalidateMode: AutovalidateMode.onUserInteraction,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'password',
                      errorText: valid1
                          ? "Please Enter Password"
                          : null,
                    ),
                    validator: (value) {
                      if (value!.length >=8 ){
                        valid = false;
                        return null;

                      }
                      else{
                        return 'please enter atleast 8 charctor';
                      }
                      // if (value!.length < 8) {
                      //   return 'please enter atleast 8 charctor';
                      // }else{
                      //   valid1 == false;
                      //   return null;
                      // }

                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Email : '),
                  SizedBox(
                    height: 5,
                  ),
                  TextFormField(
//autofocus: true,
//focusNode: focus2,
keyboardType: TextInputType.emailAddress,
                    controller: emailcon,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    // onFieldSubmitted: (v){
                    //   FocusScope.of(context).requestFocus(focus2);
                    // },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'email',
                      errorText: valid2
                          ? "Please Enter Email"
                          : null,
                    ),
                    validator: (value) {
                      if (!RegExp(
                          r"^([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})$")
                          .hasMatch(value!)) {

                        return 'Please enter a valid Email';
                      }
                      valid1 = false;
                      return null;
                      //return (!regex.hasMatch(value)) ? false : true;
                      // bool emailValid = RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$');
                      //  if(!emailValid.hasMatch(value)) {
                      //
                      //  }
                      // if(value == null || value.isEmpty || !value.contains('@') || !value.contains('.')){
                      //   return 'Invalid Email';
                      // }
                      // return null;
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: ElevatedButton(
                        onPressed: () {
                          final snackBar = SnackBar(
                            content: const Text('submitted'),
                            action: SnackBarAction(
                              label: 'Undo',
                              onPressed: () {
                                // Some code to undo the change.
                              },
                            ),
                          );

                          setState(() {
                            if (phonenumbercon.text.isEmpty && passwordcon.text.isEmpty && emailcon.text.isEmpty) {
                          valid = true;
                          print(' if valid value starting $valid');
                            }
                           else if(phonenumbercon.text.length == 10){
                              valid = false;
                              print(' else valid value starting $valid');
                            }
                           if(passwordcon.text.isEmpty && phonenumbercon.text.length == 10){
                            valid1 = true;
                          }else{
                             valid1 = false;
                           }
                         if(emailcon.text.isEmpty && passwordcon.text.isNotEmpty && phonenumbercon.text.isNotEmpty ){
                              valid2 = true;
                         }
                         else{
                           valid2 = false;
                         }
                          });
// if(valid == false && valid1 == false && valid2 == false){
//   ScaffoldMessenger.of(context).showSnackBar(snackBar);
//
// }
                         // if (formkey.currentState!.validate()) {}
                        },

                        child: Text('save data')),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                      alignment: Alignment.center,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DrawerDemo(),
                                ));
                          },
                          child: Text('drawer screen')))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
