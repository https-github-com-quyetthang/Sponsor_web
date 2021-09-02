import 'package:flutter/material.dart';
import 'package:flutter_request_ver2/src/controller/SponsorController/body.dart';
import 'package:flutter_request_ver2/src/screen/view/module/Sponsor/component/indexpage/component/TextFieldSearch/SearchDesktop/body.dart';
import 'package:flutter_request_ver2/src/screen/view/module/Sponsor/component/indexpage/component/TextFieldSearch/SearchMobile/body.dart';
import 'package:flutter_request_ver2/src/screen/view/module/Sponsor/page/ThongTinQuy/ThongTinQuyDesktop/conponent/hoverAnimated.dart';
import 'package:flutter_request_ver2/src/screen/view/module/Sponsor/page/ThongTinQuy/ThongTinQuyMobile/component/ListView.dart';
import 'package:flutter_request_ver2/src/utils/color.dart';

class ThongTinQuyDeskTop extends StatefulWidget {
  const ThongTinQuyDeskTop({Key key}) : super(key: key);

  @override
  _ThongTinQuyDeskTopState createState() => _ThongTinQuyDeskTopState();
}

class _ThongTinQuyDeskTopState extends State<ThongTinQuyDeskTop> {
  SponsorController sponsorController;
  Color borderColor;
  @override
  void initState() {
    super.initState();
    borderColor = colorAppBarSponsor;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    sponsorController = SponsorController(context: context);
    return Container(
      child: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.symmetric(vertical: 50)),
              Text(
                'BẢNG VINH DANH ĐÓNG GÓP',
                style: TextStyle(fontSize: size.height * 0.05),
              ),
              SizedBox(height: 50),
              Container(
                padding: EdgeInsets.symmetric(vertical: 30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.amber,
                ),
                height: size.height * 1,
                width: size.width * 0.5,
                //Container Button Cá Nhân và Doanh Nghiệp
                child: Container(
                  width: size.width * 0.45,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          HoverAnimated(
                            height: 40,
                            width: size.width * 0.1,
                            thinkness: 1.2,
                            millisecons: 500,
                            curve: Curves.easeIn,
                            child: Center(
                              child: Text(
                                'Cá Nhân',
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          HoverAnimated(
                            height: 40,
                            width: size.width * 0.1,
                            thinkness: 1.2,
                            millisecons: 500,
                            curve: Curves.easeIn,
                            child: Center(
                              child: Text(
                                'Doanh Nghiệp',
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          TextFieldSearchDesktop(
                            search: (value) {
                              //sponsorController.changInitTextFieldSearch(value);
                            },
                          )
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      // container List Các Cột Danh Sách
                      Container(
                        color: colorAppBarSponsor,
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: SingleChildScrollView(
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Text(
                                  'STT',
                                  style:
                                      TextStyle(fontSize: size.height * 0.02),
                                ),
                              ),
                              SizedBox(
                                width: size.width * 0.03,
                              ),
                              Expanded(
                                flex: 2,
                                child: Text(
                                  'Thành Viên',
                                  style:
                                      TextStyle(fontSize: size.height * 0.02),
                                ),
                              ),
                              SizedBox(
                                width: size.width * 0.1,
                              ),
                              Expanded(
                                flex: 1,
                                child: Text(
                                  'SĐT',
                                  style:
                                      TextStyle(fontSize: size.height * 0.02),
                                ),
                              ),
                              SizedBox(
                                width: size.width * 0.09,
                              ),
                              Expanded(
                                flex: 3,
                                child: Text(
                                  'Số tiền đóng góp',
                                  style:
                                      TextStyle(fontSize: size.height * 0.02),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 300,
                        width: size.width,
                        color: Colors.grey,
                        // padding:
                        //     EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                        // margin:
                        //     EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                        child: ListBuilderViewThongTinQuy(),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
