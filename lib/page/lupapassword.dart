import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:international_phone_input/international_phone_input.dart';

import 'package:test_sanbersy/utils/otp_utils.dart';

class LupaPasswordPage extends StatefulWidget {
  @override
  _LupaPasswordPageState createState() => _LupaPasswordPageState();
}

class _LupaPasswordPageState extends State<LupaPasswordPage> {
  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    Widget PhoneNumVerifikasi() {
      return InternationalPhoneInput(
        decoration: InputDecoration(
          hintText: "Masukan Nomor Handphone",
          prefixIcon: Icon(
            Icons.phone_android,
            color: Colors.blue,
          ),
          labelText: "Nomor Handphone",
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
    Widget EmailVerifikasi() {
      return TextFormField(
        keyboardType: TextInputType.emailAddress,
        // ignore: missing_return
        validator: (val) {
          if (val.isEmpty) {
            return "";
          }
        },
        textAlign: TextAlign.left,
        decoration: new InputDecoration(
          prefixIcon: Icon(Icons.mail, color: Colors.blue),
          hintText: "Masukan E-Mail",
          labelText: "E-mail",
          labelStyle: new TextStyle(color: Colors.black),
          focusedBorder: new OutlineInputBorder(
            borderRadius: new BorderRadius.circular(10.0),
            borderSide: const BorderSide(),
          ),
          border: OutlineInputBorder(),
        ),
      );
    }

    // ignore: non_constant_identifier_names
    Widget ButtonVerifikasi() {
      return Container(
        padding: EdgeInsets.symmetric(vertical: 15.0),
        width: double.infinity,
        child: RaisedButton(
          color: Colors.blue,
          elevation: 5.0,
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => VerifikasiPassword()));
          },
          padding: EdgeInsets.all(10.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Text(
            "Verifikasi",
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.white,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: new Text("Lupa Password", style: TextStyle(color: Colors.white)),
        flexibleSpace: new Image(
          image: AssetImage('images/vector.png'),
          fit: BoxFit.cover,
        ),
      ),
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(20, 50, 20, 0),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  PhoneNumVerifikasi(),
                  SizedBox(height: 30.0),
                  EmailVerifikasi(),
                  SizedBox(height: 100),
                  ButtonVerifikasi()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class VerifikasiPassword extends StatelessWidget {
  // ignore: non_constant_identifier_names

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    Widget PasswordBaru() {
      return TextFormField(
        obscureText: true,
        keyboardType: TextInputType.text,
        // ignore: missing_return
        validator: (val) {
          if (val.isEmpty) {
            return "";
          }
        },
        textAlign: TextAlign.left,
        decoration: new InputDecoration(
          prefixIcon: Icon(Icons.lock, color: Colors.blue),
          hintText: "Masukan Password Baru",
          labelText: "Password Baru",
          labelStyle: new TextStyle(color: Colors.black),
          focusedBorder: new OutlineInputBorder(
            borderRadius: new BorderRadius.circular(10.0),
            borderSide: const BorderSide(),
          ),
          border: OutlineInputBorder(),
        ),
      );
    }

    // ignore: non_constant_identifier_names
    Widget VerifikasiPasswordBaru() {
      return TextFormField(
        obscureText: true,
        keyboardType: TextInputType.text,
        // ignore: missing_return
        validator: (val) {
          if (val.isEmpty) {
            return "";
          }
        },
        textAlign: TextAlign.left,
        decoration: new InputDecoration(
          prefixIcon: Icon(Icons.lock, color: Colors.blue),
          hintText: "Masukan Konfirmasi Password Baru",
          labelText: "Konfirmasi Password Baru",
          labelStyle: new TextStyle(color: Colors.black),
          focusedBorder: new OutlineInputBorder(
            borderRadius: new BorderRadius.circular(10.0),
            borderSide: const BorderSide(),
          ),
          border: OutlineInputBorder(),
        ),
      );
    }

    // ignore: non_constant_identifier_names
    Widget ButtonVerifikasiPassword() {
      return Container(
        padding: EdgeInsets.symmetric(vertical: 15.0),
        width: double.infinity,
        child: RaisedButton(
          color: Colors.blue,
          elevation: 5.0,
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => VerifikasiOTP()));
          },
          padding: EdgeInsets.all(10.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Text(
            "Verifikasi",
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.white,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: new Text("Buat Password Baru",
            style: TextStyle(color: Colors.white)),
        flexibleSpace: new Image(
          image: AssetImage('images/vector.png'),
          fit: BoxFit.cover,
        ),
      ),
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(20, 50, 20, 0),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  PasswordBaru(),
                  SizedBox(height: 30.0),
                  VerifikasiPasswordBaru(),
                  SizedBox(height: 100),
                  ButtonVerifikasiPassword(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class VerifikasiOTP extends StatelessWidget {
  TextEditingController _pinEditingController = TextEditingController();

  PinDecoration _pinDecoration = BoxLooseDecoration(enteredColor: Colors.black);

  void showToast(message, Color color) {
    print(message);
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 2,
        backgroundColor: color,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    Widget OTPTextField() {
      return Padding(
        padding: const EdgeInsets.all(2.0),
        child: PinInputTextField(
          pinLength: 4,
          decoration: _pinDecoration,
          controller: _pinEditingController,
          autoFocus: true,
          textInputAction: TextInputAction.done,
          onSubmit: (pin) {
            if (pin.length == 4) {
              showToast("Berhasil", Colors.green);
            } else {
              showToast("Gagal", Colors.red);
            }
          },
        ),
      );
    }

    Widget Textverifikasi() {
      return Text(
        "Masukan Code Verifikasi yang telah dikirimkan melalui SMS ke Nomor Handphone Anda",
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.red),
      );
    }

    Widget ButtonVerifikasiOTP() {
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
            "Verifikasi",
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.white,
            ),
          ),
        ),
      );
    }

    return Scaffold(
        appBar: new AppBar(
          centerTitle: true,
          title: new Text("Verifikasi", style: TextStyle(color: Colors.white)),
          flexibleSpace: new Image(
            image: AssetImage('images/vector.png'),
            fit: BoxFit.cover,
          ),
        ),
        body: Container(
          padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
          child: SingleChildScrollView(
            physics: AlwaysScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'images/logoverifikasi.png',
                  width: 250,
                  height: 250,
                ),
                SizedBox(height: 10),
                OTPTextField(),
                SizedBox(height: 30),
                Textverifikasi(),
                SizedBox(height: 20),
                ButtonVerifikasiOTP()
              ],
            ),
          ),
        ));
  }
}
