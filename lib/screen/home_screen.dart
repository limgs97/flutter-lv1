import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Timer? timer;
  PageController controller = PageController(
    initialPage: 0,
  );
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    
    timer = Timer.periodic(
      Duration(seconds: 3),
      (timer) {
        print('Timer!');
        int currentPage = controller.page!.toInt();
        int nextPage = currentPage + 1;
        
        if(nextPage > 4) {
          nextPage = 0;
        }
        
        controller.animateToPage(
          nextPage,
          duration: Duration(microseconds: 400),
          // 애니메이션이 어떤식으로 실행이 되는지 지정 할 수 있음. 인터넷 검색 하는게 좋음
          curve: Curves.linear,
        );
      }
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    if(timer != null) {
      timer!.cancel();
    }

    //모든 컨트롤러들도 dispose 해줘야됨. 안그러면 메모리에 좋지 않음.
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // 시스템 변경
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);

    return Scaffold(
      body: PageView(
        controller: controller,
        children: [1, 2, 3, 4, 5].map(
          (e) => Image.asset(
            'asset/img/image_$e.jpeg',
            fit: BoxFit.cover,
          )
        ).toList(),
      ),
    );
  }
}
