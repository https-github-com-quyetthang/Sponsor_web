import 'package:flutter/material.dart';
import 'package:flutter_request_ver2/src/model/Sponsor/OTD/CaNhanOTD.dart';
import 'package:flutter_request_ver2/src/model/Sponsor/OTD/ChiTietOTD.dart';
import 'package:flutter_request_ver2/src/model/Sponsor/OTD/DoanhNghiepOTD.dart';
import 'package:flutter_request_ver2/src/model/Sponsor/OTD/SumSponsorOTD.dart';

class SponsorModel extends ChangeNotifier {
  List<SumSponsorOTD> listSumSponsor = [];

  List<CaNhanOTD> listCaNhan = [];
  CaNhanOTD indexCaNhan = CaNhanOTD();

  List<DoanhNghiepOTD> listDoanhNghiep = [];
  DoanhNghiepOTD indexDoanhNghiep = DoanhNghiepOTD();

  List<ChiTietOTD> listChiTiet = [];

  int initSponsor = 0;
  int initSceen = 0;
  int initScreenDesktop = 0;
  int initPageQuy = 0;
  dynamic listQuy = [];
  CaNhanOTD loginCaNhan = null;
  DoanhNghiepOTD loginDoanhNghiep = null;
  void changeInitSponsor(int i) {
    initSponsor = i;
    notifyListeners(); // Thân hàm gây ra sự thay đổi khi muốn UI update những thay đổi đó
  }

  void addCaNhanIndex(CaNhanOTD data) {
    indexCaNhan = data;
    notifyListeners();
  }

  void addDoanhNghiepIndex(DoanhNghiepOTD data) {
    indexDoanhNghiep = data;
    notifyListeners();
  }

  void changeInitSceen(int i) {
    initSceen = i;
    notifyListeners();
  }

  void initDataCaNhan(List<CaNhanOTD> data) {
    listCaNhan = data;
    notifyListeners();
  }

  void initDataDoanhNghiep(List<DoanhNghiepOTD> data) {
    listDoanhNghiep = data;
    notifyListeners();
  }

  void initDataChiTiet(List<ChiTietOTD> data) {
    listChiTiet = data;
    notifyListeners();
  }

  void initDataSumSponsor(List<SumSponsorOTD> data) {
    listSumSponsor = data;
    notifyListeners();
  }

// login CÁ NHÂN
  void loginPhoneCaNhan(CaNhanOTD dataCaNhan) {
    loginCaNhan = dataCaNhan;
    notifyListeners();
  }

  void exitLogin() {
    loginCaNhan = null;
    loginDoanhNghiep = null;
    notifyListeners();
  }

// login Cửa Hàng
  void loginPhoneDoanhNghiep(DoanhNghiepOTD dataDoanhNghiep) {
    loginDoanhNghiep = dataDoanhNghiep;
    notifyListeners();
  }

  void changeListQuy(String value) {
    listQuy = [];
    dynamic listAll = initPageQuy == 0 ? listCaNhan : listDoanhNghiep;
    for (int i = 0; i < listAll.length; i++) {
      if (listAll[i].name.contains(value)) {
        listQuy.add(listAll[i]);
      }
    }
    notifyListeners();
  }

  void changeInitPageQuy(int i) {
    if (i == 0) {
      listQuy = listCaNhan;
    } else {
      listQuy = listDoanhNghiep;
    }
    initPageQuy = i;
    notifyListeners();
  }
}
