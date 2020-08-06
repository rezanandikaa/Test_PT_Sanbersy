import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test_sanbersy/page/loginpage.dart';
import 'package:test_sanbersy/utils/onboarding_utils.dart';

import 'daftarpage.dart';

class OnBoardingPage extends StatefulWidget {
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  int _currentPage = 0;
  PageController _controller = PageController();

  List<Widget> _pages = [
    OnboardingUtils(
      image: "images/ob1.png",
      title: "Topup Sekali Banyak Untungnya",
      deskripsi: "Topup ke wallet bikin transaksi cepet dan lancar",
    ),
    OnboardingUtils(
      image: "images/ob2.png",
      title: "Bayar Tagihan Tanpa Antri",
      deskripsi: "Kamu ga perlu cape ngantri buat bayar tagihan bulanan",
    ),
    OnboardingUtils(
      image: "images/ob3.png",
      title: "Transfer Uang ke Bank Mana Aja",
      deskripsi:
          "Sekarang kamu bisa transfer uang ke Bank mana aja tanpa perlu ke ATM",
    ),
    OnboardingUtils(
      image: "images/ob4.png",
      title: "Jadiin Asisten Supaya Ga Telat",
      deskripsi:
          "Sekarang Kamu bisa Transfer uang ke Bank mana aja tanpa perlu ke ATM",
    )
  ];

  _onChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            scrollDirection: Axis.horizontal,
            onPageChanged: _onChanged,
            controller: _controller,
            itemCount: _pages.length,
            itemBuilder: (context, int index) {
              return _pages[index];
            },
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List<Widget>.generate(_pages.length, (index) {
                  return AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    height: 10,
                    width: (index == _currentPage) ? 20 : 10,
                    margin: EdgeInsets.symmetric(horizontal: 5, vertical: 30),
                    decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: (index == _currentPage)
                            ? Colors.blue
                            : Colors.blue.withOpacity(0.5)),
                  );
                }),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.fromLTRB(20, 0, 0, 50),
                      child: RaisedButton(
                        color: Colors.blue,
                        elevation: 5.0,
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()));
                        },
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.blue),
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
                    ),
                  ),
                  SizedBox(width: 30),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.fromLTRB(0, 0, 20, 50),
                      child: RaisedButton(
                        color: Colors.white,
                        elevation: 5.0,
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DaftarPage()));
                        },
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.blue),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Text(
                          "Daftar",
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
