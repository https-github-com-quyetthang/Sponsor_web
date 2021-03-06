import 'package:flutter/material.dart';
import 'package:flutter_request_ver2/src/utils/color.dart';

class ListCaNhan extends StatelessWidget {
  final String name, phoneNumber, money;
  final int stt;
  const ListCaNhan({Key key, this.name, this.phoneNumber, this.money, this.stt})
      : super(key: key);

  dynamic funcHiddenPhone(String newphone) {
    for (int j = 0; j < phoneNumber.length; j++) {
      newphone = phoneNumber.replaceRange(3, 7, 'xxxx');
    }
    return newphone;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
//Container Chứa ListView
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
          color: colorAppBarSponsor,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
                offset: Offset(5, 5),
                blurRadius: 15,
                color: Colors.blue.withOpacity(0.2))
          ]),
//Định dạng ListView và lấy giá trị giả
      child: Row(
        children: [
          SizedBox(
            width: 10,
          ),
          Text(
            '$stt',
            style: TextStyle(color: colorBodySponsor, fontSize: 12),
          ),
          SizedBox(
            width: 15,
          ),
          Container(
            padding: EdgeInsets.only(left: 20),
            decoration: BoxDecoration(
                border: Border(
                    left: BorderSide(color: colorBodySponsor, width: 1))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$name',
                  style: TextStyle(fontSize: 16, color: colorBodySponsor),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  funcHiddenPhone('$phoneNumber'),
                  style: TextStyle(
                      fontSize: 14,
                      color: colorBodySponsor,
                      letterSpacing: 1.5),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  '${money}đ',
                  style: TextStyle(
                    color: Colors.yellow[700],
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
