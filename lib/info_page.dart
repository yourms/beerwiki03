import 'dart:io';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'main.dart';
import 'package:flutter/cupertino.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({
    Key? key,
  }) : super(key: key);

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.black,
            Colors.deepOrange,
            Colors.yellow,
          ],
        )),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            resizeToAvoidBottomInset: false,
            //추가하고 body를 SingleChildScrollView로 감싼다.
            appBar: AppBar(
                title: Text('Beer Wiki?',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 26)),
                centerTitle: true,
                backgroundColor: Colors.deepOrangeAccent),
            body: SingleChildScrollView(
              child: Center(
                  child: Column(
                children: [
                  Text(''),
                  Text(
                    ' BeerWiki는 멀티캠퍼스 AI 6차 교육과정의\n 두번째 프로젝트인 머신러닝 프로젝트로\n 개발된 App입니다. \n BeerWiki는 카메라에 찍힌 맥주이미지를\n 딥러닝(CNN)을 사용하여 웹상의 리뷰를\n 크롤링, Word Cloud 형식으로 보여주는\n 맥주정보 App입니다.',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Text(''),
                  Text(''),
                  Text(
                    '만든사람',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  Text(''),
                  DataTable(
                    columns: [
                      DataColumn(
                          label: Text('팀원',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 18))),
                      DataColumn(
                          label: Text('역할',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 18))),
                    ],
                    rows: [
                      DataRow(cells: [
                        DataCell(Text('박보현',
                            style:
                                TextStyle(color: Colors.white, fontSize: 16))),
                        DataCell(Text('데이터수집(이미지, 리뷰), 워드클라우드, 분석(Data, Model)',
                            style:
                                TextStyle(color: Colors.white, fontSize: 14))),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('손현진',
                            style:
                                TextStyle(color: Colors.white, fontSize: 16))),
                        DataCell(Text(
                            '모델생성, 데이터가공, 데이터수집(리뷰), 워드클라우드, 분석(Data, Model)',
                            style:
                                TextStyle(color: Colors.white, fontSize: 14))),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('전기성',
                            style:
                                TextStyle(color: Colors.white, fontSize: 16))),
                        DataCell(Text(
                            '모델생성, 데이터가공, 성능개선 및 시각화, 분석(Data, Model)',
                            style:
                                TextStyle(color: Colors.white, fontSize: 14))),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('변윤섭',
                            style:
                                TextStyle(color: Colors.white, fontSize: 16))),
                        DataCell(Text('데이터수집(이미지), 성능개선 및 시각화, 분석(Data, Model)',
                            style:
                                TextStyle(color: Colors.white, fontSize: 14))),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('정민수',
                            style:
                                TextStyle(color: Colors.white, fontSize: 16))),
                        DataCell(Text('APP 개발, 분석(Data, Model)',
                            style:
                                TextStyle(color: Colors.white, fontSize: 14))),
                      ]),
                    ],
                  ),
                ],
              )),
            )));
  }
}
