import 'package:airbnb_app/styles.dart';
import 'package:flutter/material.dart';

class CommonFormField extends StatelessWidget {
  final prefixText;
  final hintText;

  const CommonFormField({Key? key, this.prefixText, this.hintText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        TextFormField(
          //사용자에게 텍스트를 입력 받을 수 있는 입력 필드로 위젯이다.
          textAlignVertical: TextAlignVertical.bottom, // 2. TextFormField
          decoration: InputDecoration(
            // 3. TextFormField 내부에 패딩을 줄 수 있다
            contentPadding: EdgeInsets.only(top: 30, left: 20, bottom: 10),
            hintText: hintText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: Colors.black,
                  width: 2,
                )),
          ),
        ),
        // 4. Positioned를 사용한 이유는 TextFormField 공간에 글자를 삽입하기 위해서 입니다.
        Positioned(
          top: 8,
          left: 20,
          child: Text(
            prefixText,
            style: overLine(),
          ),
        ),
      ],
    );
  }
}
