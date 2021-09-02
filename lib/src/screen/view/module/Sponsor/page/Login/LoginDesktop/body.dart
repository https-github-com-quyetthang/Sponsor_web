import 'package:flutter/material.dart';
import 'package:flutter_request_ver2/src/utils/color.dart';
import 'package:flutter_request_ver2/src/utils/icons.dart';

class SponsorLoginDesktop extends StatefulWidget {
  const SponsorLoginDesktop({Key key}) : super(key: key);

  @override
  _SponsorLoginDesktopState createState() => _SponsorLoginDesktopState();
}

class _SponsorLoginDesktopState extends State<SponsorLoginDesktop> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromRGBO(86, 204, 242, 1),
          Color.fromRGBO(47, 128, 237, 1),
        ], begin: Alignment.centerLeft, end: Alignment.centerRight)),
        child: ContainerLogin(size: size),
      ),
    );
  }
}

class ContainerLogin extends StatelessWidget {
  const ContainerLogin({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 200, vertical: 100),
      decoration: BoxDecoration(color: colorBodySponsor, boxShadow: [
        BoxShadow(
            offset: Offset(0, 1),
            blurRadius: 1,
            color: Color.fromRGBO(255, 255, 255, 0.1)),
        BoxShadow(
            offset: Offset(0, 50),
            blurRadius: 100,
            spreadRadius: -20,
            color: Color.fromRGBO(50, 50, 93, 0.25)),
        BoxShadow(
            offset: Offset(0, 30),
            blurRadius: 60,
            spreadRadius: -30,
            color: Color.fromRGBO(0, 0, 0, 0.3))
      ]),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              height: 400,
              child: Image.asset(
                loginImage,
              ),
            ),
          ),
          ContainerScreenLogin(size: size)
        ],
      ),
    );
  }
}

class ContainerScreenLogin extends StatelessWidget {
  const ContainerScreenLogin({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: SingleChildScrollView(
        child: Container(
          // color: Colors.amber,
          height: size.height,
          margin: EdgeInsets.symmetric(vertical: 150),
          child: Column(
            children: [
              Text(
                'SIGN IN',
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(
                height: 70,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 100),
                child: TextField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.account_circle),
                    labelText: 'PHONE',
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              GestureDetector(
                onTap: () {
                  //    /LOGIN
                },
                child: Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                        color: colorAppBarSponsor,
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                        child: Text(
                      'LOGIN',
                      style: TextStyle(fontSize: 15, color: colorBodySponsor),
                    ))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
