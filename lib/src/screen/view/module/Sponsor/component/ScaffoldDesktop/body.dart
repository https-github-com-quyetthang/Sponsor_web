import 'package:flutter/material.dart';
import 'package:flutter_request_ver2/src/controller/SponsorController/body.dart';
import 'package:flutter_request_ver2/src/utils/color.dart';

class SponsorScaffoldDesktop extends StatefulWidget {
  final Widget child;
  SponsorScaffoldDesktop({this.child});

  @override
  _SponsorScaffoldDesktopState createState() => _SponsorScaffoldDesktopState();
}

class _SponsorScaffoldDesktopState extends State<SponsorScaffoldDesktop> {
  SponsorController sponsorController = SponsorController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    sponsorController = SponsorController(context: context);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(size.width, 1000),
        child: Container(
          color: colorAppBarSponsor,
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(padding: EdgeInsets.only(right: 50)),
                Container(
                  decoration: BoxDecoration(),
                  child: Text(
                    'Sponsor',
                    style: TextStyle(
                      color: colorBodySponsor,
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Tài Năng Ươm Mầm',
                        style: TextStyle(
                            color: colorBodySponsor,
                            fontSize: 15,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    sponsorController.checkLoginPhoneCaNhan();
                  },
                  child: Container(
                    padding: EdgeInsets.only(right: 50),
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                        color: colorBodySponsor,
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        child: widget.child,
        height: size.height,
        width: size.width,
        color: colorBodySponsor,
      ),
    );
  }
}
