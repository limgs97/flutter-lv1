import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Container(
          color: Colors.black,
          // width: MediaQuery.of(context).size.width,
          // height: MediaQuery.of(context).size.height,
          child: Column(
            // MainAxisAlignment - 주축 정렬
            // start - 시작, end - 끝, center - 가운데
            // spaceBetween - 위젯과 위젯의 사이가 동일하게 배치된다.
            // spaceEvenly - 위젯을 같은 간격으로 배치하지만, 끝과 끝에도 위젯이 아닌 빈 간격으로 시작한다.
            // spaceAround - spaceEvenly +끝과 끝의 간격은 1/2
            mainAxisAlignment: MainAxisAlignment.start,
            // CrossAxisAlignment - 반대축 정렬
            // start - 시작, end - 끝, center - 가운데
            // stretch - 최대한으로 늘린다
            crossAxisAlignment: CrossAxisAlignment.start,
            // MainAxisSize - 주축 크기
            // max - 최대, min - 최소
            mainAxisSize: MainAxisSize.max,
            children: [
              // Expanded / Flexible
              // Expanded와 Flexible은 Row나 Column안에서만 사용 가능함. 아니면 에러남.
              // Expanded 위젯은 남아있는 공간을 Expanded 위젯끼리 공간을 나눠먹음
              // flex 값은 나머지 값을 나누먹는 비율 ex) flex 3 => 3:1:1:1
              // Flexible 일단은 그 비율만큼 크기를 차지 하되, 만약에 child안에 위젯이 그 공간을 차지하지 않을 시 남는 공간 버림
              Flexible(
                child: Container(
                  color: Colors.red,
                  width: 50.0,
                  height: 50.0,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.orange,
                  width: 50.0,
                  height: 50.0,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.yellow,
                  width: 50.0,
                  height: 50.0,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.green,
                  width: 50.0,
                  height: 50.0,
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
