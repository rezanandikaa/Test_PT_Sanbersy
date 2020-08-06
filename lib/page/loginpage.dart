import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:international_phone_input/international_phone_input.dart';
import 'package:test_sanbersy/page/daftarpage.dart';
import 'package:test_sanbersy/page/lupapassword.dart';

class AutopayLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage("images/logo.png");
    Image image = Image(
      image: assetImage,
      width: 250.0,
      height: 250.0,
    );
    return Container(
      child: image,
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String phoneNumber;
  String phoneIsCode;
  bool visible = false;
  bool _obscureText = true;
  String confirmedNumber = '';

  // ignore: non_constant_identifier_names
  void Toogle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  void onPhoneNumberChange(
      String number, String internationalizedPhoneNumber, String isCode) {
    print(number);
    setState(() {
      phoneNumber = number;
      phoneIsCode = isCode;
    });
  }

  onValidPhoneNumber(
      String number, String internationalizedPhoneNumber, String isCode) {
    setState(() {
      visible = true;
      confirmedNumber = internationalizedPhoneNumber;
    });
  }

  // ignore: non_constant_identifier_names
  Widget PhoneNum() {
    return InternationalPhoneInput(
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.phone_android, color: Colors.blue),
        hintText: "Masukan Nomer Telephone",
        labelText: "Telephone",
        labelStyle: new TextStyle(color: Colors.black),
        focusedBorder: new OutlineInputBorder(
          borderRadius: new BorderRadius.circular(10.0),
          borderSide: const BorderSide(),
        ),
        border: OutlineInputBorder(),
      ),
      initialSelection: 'ID',
    );
  }

  // ignore: non_constant_identifier_names
  Widget Password() {
    return TextFormField(
      // ignore: missing_return
      validator: (val) {
        if (val.isEmpty) {
          return "Password Kosong! Isi dengan baik dan benar";
        }
      },
      obscureText: true,
      textAlign: TextAlign.left,
      decoration: new InputDecoration(
        prefixIcon: Icon(Icons.lock, color: Colors.blue),
        hintText: "Password",
        labelText: "Password",
        labelStyle: new TextStyle(color: Colors.black),
        focusedBorder: new OutlineInputBorder(
          borderRadius: new BorderRadius.circular(10.0),
          borderSide: const BorderSide(),
        ),
        border: OutlineInputBorder(),
        suffixIcon: GestureDetector(
          onTap: () {
            Toogle();
          },
          child: Icon(
            _obscureText ? Icons.visibility_off : Icons.visibility,
            color: Colors.black,
          ),
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget ButtonLogin() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15.0),
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        elevation: 5.0,
        onPressed: () {},
        padding: EdgeInsets.all(10.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Text(
          "Login",
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget ButtonLupaPass() {
    return Container(
      alignment: Alignment.topCenter,
      child: FlatButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => LupaPasswordPage()));
          },
          child: Text("Lupa Password?",
              style: TextStyle(fontSize: 13.0, color: Colors.red))),
    );
  }

  // ignore: non_constant_identifier_names
  Widget ButtonBantuan() {
    return Container(
      alignment: Alignment.topCenter,
      child: FlatButton(
        onPressed: null,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.live_help, color: Colors.black),
            SizedBox(width: 10.0),
            Text(
              "Butuh Bantuan?",
              style: TextStyle(color: Colors.black),
            )
          ],
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget Grid() {
    return Container(
        child: new Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        new Image.asset(
          "images/grid.png",
          width: 80,
          height: 10,
        ),
        SizedBox(width: 10),
        new Text(
          "Belum Punya Akun?",
          style: TextStyle(color: Colors.black),
        ),
        SizedBox(width: 10),
        new Image.asset(
          "images/grid.png",
          width: 80,
          height: 10,
        ),
      ],
    ));
  }

  // ignore: non_constant_identifier_names
  Widget ButtonDaftar() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15.0),
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        elevation: 5.0,
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => DaftarPage()));
        },
        padding: EdgeInsets.all(10.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Text(
          "Daftar Sekarang",
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () =>
          SystemChannels.platform.invokeMethod('SystemNavigator.pop'),
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              decoration: new BoxDecoration(
                  image: new DecorationImage(
                      image: new AssetImage("images/background.png"),
                      fit: BoxFit.cover)),
            ),
            Container(
              child: SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'images/logo.png',
                      width: 295.97,
                      height: 209,
                    ),
                    SizedBox(height: 20.0),
                    PhoneNum(),
                    SizedBox(
                      height: 10.0,
                    ),
                    Password(),
                    SizedBox(height: 10.0),
                    ButtonLogin(),
                    SizedBox(height: 5.0),
                    ButtonLupaPass(),
                    SizedBox(height: 10.0),
                    Grid(),
                    SizedBox(height: 10.0),
                    ButtonDaftar(),
                    SizedBox(height: 5.0),
                    ButtonBantuan(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
