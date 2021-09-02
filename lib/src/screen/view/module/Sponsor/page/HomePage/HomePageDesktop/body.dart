import 'package:flutter/material.dart';
import 'package:flutter_request_ver2/src/controller/SponsorController/body.dart';
import 'package:flutter_request_ver2/src/utils/color.dart';
import 'package:flutter_request_ver2/src/utils/icons.dart';

class HomePageDesktop extends StatefulWidget {
  const HomePageDesktop({Key key}) : super(key: key);

  @override
  _HomePageDesktopState createState() => _HomePageDesktopState();
}

class _HomePageDesktopState extends State<HomePageDesktop> {
  SponsorController sponsorController;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    sponsorController = SponsorController(context: context);
    return Container(
        height: size.height,
        width: size.width,
        child: Row(
          children: [
            Container(
              height: size.height * 0.3,
              width: size.width * 0.25,
              child: Image.asset(homeImage),
            ),
            Expanded(
              child: Container(
                height: size.height,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: size.width * 0.4,
                      child: Text(
                        'TỔNG GIÁ TRỊ QUỸ ĐÃ NHẬN',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w500,
                          color: colorAppBarSponsor,
                        ),
                      ),
                    ),
                    Container(
                      width: size.width * 0.4,
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Từ các mạnh thường quân',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: colorAppBarSponsor,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: size.height * 0.2,
                      width: size.width * 0.4,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                              color: colorAppBarSponsor,
                              style: BorderStyle.solid,
                              width: 1.0)),
                    ),
                    SizedBox(
                      height: 70,
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: ContainerHome(
                            press: () {
                              sponsorController.changeInitPageHome(1);
                              sponsorController
                                  .changInitListDoanhNghiepVaCaNhan(0);
                              print('cllick');
                            },
                            size: size,
                            text: 'THÔNG TIN QUỸ',
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          flex: 1,
                          child: ContainerHome(
                            size: size,
                            text: 'DOANH NGHIỆP',
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          flex: 1,
                          child: ContainerHome(
                            size: size,
                            text: 'TÀI NĂNG ƯƠM MẦM',
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: size.height * 0.3,
              width: size.width * 0.25,
              child: Image.asset(homeImage),
            ),
          ],
        ));
  }
}

class ContainerHome extends StatelessWidget {
  final String text;
  final Function press;
  const ContainerHome({Key key, @required this.size, this.press, this.text})
      : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        height: size.height * 0.08,
        color: colorAppBarSponsor,
        child: Center(
            child: Text(
          '$text',
          style: TextStyle(
              fontSize: 18,
              color: colorBodySponsor,
              fontWeight: FontWeight.w300),
        )),
      ),
    );
  }
}
