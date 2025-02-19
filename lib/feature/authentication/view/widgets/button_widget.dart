import 'package:flutter/material.dart';

class CommonButtonWidget extends StatelessWidget {
  const CommonButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
     width: double.infinity,
     decoration: BoxDecoration(color: Colors.indigo),
     child: Center(child: Padding(
       padding: const EdgeInsets.only(top: 18,bottom: 18 ),
       child: Text("CONTINUE",style: TextStyle(color: Colors.white),),
     )),
    );
  }
}