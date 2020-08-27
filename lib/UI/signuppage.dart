import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:merupastore_app/UI/loginpage.dart';
import 'package:merupastore_app/UI/splashscreen.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController cUsername = TextEditingController();
  TextEditingController cFullName = TextEditingController();
  TextEditingController cEmail = TextEditingController();
  TextEditingController cPassword = TextEditingController();
  TextEditingController cAlamat = TextEditingController();
//deklarasi untuk masing-masing widget
  String nUsername, nFullName, nEmail, nPassword, nAlamat;

//menambahkan key form
  final _keyForm = GlobalKey<FormState>();
  

  checkForm() {
    final form = _keyForm.currentState;
    if (form.validate()) {
      form.save();
      submitDataRegister();
    }
  }

// submit data register
  submitDataRegister() async {
    final responseData =
        await http.post("http://10.0.2.2/merupa-server/register.php", body: {
      "username": nUsername,
      "full_name": nFullName,
      "email": nEmail,
      "password": nPassword,
      "alamat": nAlamat
    });
    final data = jsonDecode(responseData.body);
    int value = data['value'];
    String pesan = data['message'];
//cek value 1 atau 0
    if (value == 1) {
      setState(() {
         Navigator.push(
            context, MaterialPageRoute(builder: (context) => SplashScreen()));
      });
    } else if (value == 2) {
      print(pesan);
    } else {
      print(pesan);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE9E7DA),
      body: Form(
        key: _keyForm,
        child: ListView(
          children: <Widget>[
            Center(
              child: Stack(
                        children: <Widget>[
                          Align(
                              alignment: Alignment.centerLeft,
                              child: GestureDetector(
                                onTap: () {
                           Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => SplashScreen()));
                                },
                                child: Icon(
                                  Icons.arrow_back,
                                  color: Colors.black,
                                ),
                              )),
                          Center(
                              child: Text(
                            "Create New \n Account",
                            style: TextStyle(color: Colors.brown, fontSize: 30, fontWeight:FontWeight.w700),
                            textAlign: TextAlign.center,
                          ))
                        ],
                      ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              height: 60,
              decoration: BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage("assets/merupa2.png"))),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: TextFormField(
                controller: cUsername,
               
                onSaved: (value) => nUsername = cUsername.text,
                decoration: InputDecoration(
                    hintText: 'username',
                    labelText: 'Input usermame',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    )),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: TextFormField(
                controller: cFullName,
                
                onSaved: (value) => nFullName = cFullName.text,
                decoration: InputDecoration(
                    hintText: 'Fullname',
                    labelText: 'Input Full Name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    )),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: TextFormField(
                controller: cEmail,
               
                onSaved: (value) => nEmail = cEmail.text,
                decoration: InputDecoration(
                    hintText: 'Email',
                    labelText: 'Input Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    )),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextFormField(
                controller: cPassword,
                
                onSaved: (value) => nPassword = cPassword.text,
                obscureText: true,
                decoration: InputDecoration(
                    hintText: 'Password',
                    labelText: 'Input Password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0))),
              ),
            ),
//radio button
            Padding(
              padding: EdgeInsets.all(10.0),
              child: TextFormField(
                controller: cAlamat,
               
                maxLines: 3,
                onSaved: (value) => nAlamat = cAlamat.text,
                decoration: InputDecoration(
                    hintText: 'Alamat',
                    labelText: 'Input Alamat',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    )),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10.0, 40.0, 10.0, 0),
              child: MaterialButton(
                color: Colors.blueGrey,
                textColor: Colors.white,
                child: Text('Register'),
                onPressed: () {
                  setState(() {
                    checkForm();
                  });
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0),
              child: MaterialButton(
                textColor: Colors.blueGrey,
                child: Text('Sudah Punya Akun ? Silahkan Login'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PageLogin()));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
