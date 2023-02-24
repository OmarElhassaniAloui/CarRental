import 'package:flutter/material.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomSheet(
      onClosing:(){},
      builder: (conatext) {
        return Container( 
          child: Column(

          ),
        ); 
      },
    );
  }
}
