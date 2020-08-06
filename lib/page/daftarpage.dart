import 'package:flutter/material.dart';
import 'package:international_phone_input/international_phone_input.dart';

class DaftarPage extends StatefulWidget {
  @override
  _DaftarPageState createState() => _DaftarPageState();
}

class _DaftarPageState extends State<DaftarPage> {
  String phoneNumber;
  String phoneIsCode;
  bool visible = false;
  bool _obscureText = true;
  bool _ketentuan = true;
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
        hintText: "Masukan Nomer Telephone",
        prefixIcon: Icon(
          Icons.phone,
          color: Colors.blue,
        ),
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
  Widget NamaLengkap() {
    return TextFormField(
      keyboardType: TextInputType.text,
      // ignore: missing_return
      validator: (val) {
        if (val.isEmpty) {
          return "";
        }
      },
      textAlign: TextAlign.left,
      decoration: new InputDecoration(
        prefixIcon: Icon(Icons.person, color: Colors.blue),
        hintText: "Masukan Nama Lengkap",
        labelText: "Nama Lengkap",
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
  Widget Email() {
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
  Widget PasswordDaftar() {
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
        hintText: "Masukan Password",
        labelText: "Password",
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
  Widget KonfirmasiPassword() {
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
        prefixIcon: Icon(Icons.verified_user, color: Colors.blue),
        hintText: "Masukan Konfirmasi Password",
        labelText: "Konfirmasi Password",
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
  Widget KodeReferal() {
    return TextFormField(
      keyboardType: TextInputType.number,
      // ignore: missing_return
      validator: (val) {
        if (val.isEmpty) {
          return "";
        }
      },
      textAlign: TextAlign.left,
      decoration: new InputDecoration(
        prefixIcon: Icon(Icons.card_membership, color: Colors.blue),
        hintText: "Masukan Kode Referal (Optional)",
        labelText: "Kode Referal (Optional)",
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
  Widget SyaratKetentuan() {
    return Container(
      alignment: Alignment.topCenter,
      child: Row(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 0.0),
            child: Theme(
                data: ThemeData(unselectedWidgetColor: Colors.black),
                child: Checkbox(
                    value: _ketentuan,
                    activeColor: Colors.blue,
                    onChanged: (value) {
                      setState(() {
                        _ketentuan = value;
                      });
                    })),
          ),
          RichText(
              text: TextSpan(
            children: <TextSpan>[
              TextSpan(
                  text: "Saya setuju dengan ",
                  style: TextStyle(color: Colors.black, fontSize: 14)),
              TextSpan(
                  text: "Syarat dan Ketentuan\n",
                  style: TextStyle(color: Colors.red, fontSize: 14)),
              TextSpan(
                  text: "dan ",
                  style: TextStyle(color: Colors.black, fontSize: 14)),
              TextSpan(
                  text: "Kebijakan Privasi",
                  style: TextStyle(color: Colors.red, fontSize: 14)),
            ],
          ))
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget ButtonDaftar() {
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
          "Daftar",
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
    return Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title:
            new Text("Daftar Autopay", style: TextStyle(color: Colors.white)),
        flexibleSpace: new Image(
          image: AssetImage('images/vector.png'),
          fit: BoxFit.cover,
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          new Container(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PhoneNum(),
                SizedBox(height: 15),
                NamaLengkap(),
                SizedBox(height: 15),
                Email(),
                SizedBox(height: 15),
                PasswordDaftar(),
                SizedBox(height: 15),
                KonfirmasiPassword(),
                SizedBox(height: 15),
                KodeReferal(),
                SizedBox(height: 15),
                SyaratKetentuan(),
                ButtonDaftar(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
