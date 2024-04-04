

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NewTextFormFieldPractise extends StatefulWidget {
  const NewTextFormFieldPractise({super.key});

  @override
  State<NewTextFormFieldPractise> createState() => _NewTextFormFieldPractiseState();
}
TextEditingController phonenumbercon = TextEditingController();
TextEditingController emailcon = TextEditingController();
TextEditingController passwordcon = TextEditingController();
bool valid = false;
bool valid1 = false;
bool valide2 = false;
String msg='';
String msg1='';
String msg2 = '';
class _NewTextFormFieldPractiseState extends State<NewTextFormFieldPractise> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(),
body: Form(
  child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 5,
        ),
            Text('Phone Number : '),
            TextFormField(
              controller: phonenumbercon,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              keyboardType: TextInputType.phone,
              maxLength: 10,
              onChanged: (text) {
                if(phonenumbercon.text.isEmpty){
                  setState(() {
                    msg = 'please enter Number';
                  });
                }else if(text.characters.length >=10){
                  setState(() {
                    valid =  false;
                    msg = '';
                  });
                }else{
                  setState(() {
                    msg = 'Please Enter  10 digit Number';
                  });
                }
                print('First text field: $text (${text.characters.length})');
              },
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(),
                focusColor: Colors.lightGreenAccent,
                border: OutlineInputBorder(),
                hintText: 'Enter Phone Number',
              ),
            ),
            Text('$msg',style: TextStyle(color: Colors.red,fontSize: 11)),
            SizedBox(
              height: 5,
            ),
            Text('Password : '),
            SizedBox(
              height: 5,
            ),
            TextFormField(
              keyboardType: TextInputType.visiblePassword,
              maxLength: 12,
              controller: passwordcon,
              obscureText: true,
              obscuringCharacter: '*',
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'password',
              ),
              onChanged: (text) {
        if(passwordcon.text.isEmpty){
        setState(() {
        msg1 = 'please enter Number';
        });
        }
              else  if (text.characters.length >=8 ){
                setState(() {
                  valid1 = false;
                  msg1 = '';
                });

                }
                else{
                  setState(() {
                    msg1 =  'please enter atleast 8 charctor';
                  });

                }

                print('First text field: $text (${text.characters.length})');
              },
              // validator: (value) {
              //   if (value!.length >=8 ){
              //     valid = false;
              //     return null;
              //
              //   }
              //   else{
              //     return 'please enter atleast 8 charctor';
              //   }
              //   // if (value!.length < 8) {
              //   //   return 'please enter atleast 8 charctor';
              //   // }else{
              //   //   valid1 == false;
              //   //   return null;
              //   // }
              //
              // },
            ),
            Text('$msg1',style: TextStyle(color: Colors.red,fontSize: 11)),
        Text('Email : '),
        SizedBox(
          height: 5,
        ),
        TextFormField(
          keyboardType: TextInputType.emailAddress,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'email',
          ),
          onChanged: (text) {
            if(text.isEmpty){
              setState(() {
                msg2 = 'Please enter Email';
              });
            }
     else if(RegExp(
                r"^([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})$")
                .hasMatch(text) ){
      setState(() {
        msg2 = '';
        valide2 = false;

      });
     }

    else {
      setState(() {
        msg2 = 'Please enter a valid Email';
      });
    }
    emailcon.text = text;
    print('First text field email: $text (${text.length})');
          },
          // validator: (value) {
          //   if (!RegExp(
          //       r"^([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})$")
          //       .hasMatch(value!)) {
          //     return 'Please enter a valid Email';
          //   }
          //   return null;
          // },
        ),
        Text('$msg2',style: TextStyle(color: Colors.red,fontSize: 11)),

        ElevatedButton(
            onPressed: (){
          setState(() {
            if(phonenumbercon.text.isEmpty){
              valid = true;
              msg = 'please enter Number';
            }else{
              valid = false;
              msg = '';
            }
            if(passwordcon.text.isEmpty && phonenumbercon.text.isNotEmpty){
              valid1 = true;
              msg1 = 'please enter password';
            }else{
              valid1 = false;
              msg1 = '';
            }
           if(emailcon.text.isEmpty && passwordcon.text.isNotEmpty && phonenumbercon.text.isNotEmpty){

             valide2 = true;
              msg2 = 'please enter Email';
              print("emal is :  ${emailcon.text}");
            }
           else{
             valide2 = false;
             msg2 = '';
             print("emal is :  ${emailcon.text}");
           }

          });
        }, child: Text('submit'))
      ],
    ),
  ),
),
    );
  }
}
