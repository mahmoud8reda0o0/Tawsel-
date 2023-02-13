import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class OTP extends StatelessWidget {
  const OTP({
    Key? key, this.first, this.last,
  }) : super(key: key);
final bool ?first;
final bool ?last;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      width: 71,
      child: AspectRatio(
        aspectRatio: 1.0,
        child: TextFormField(
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(
                    color: Colors.deepOrange,
                    width: 1.0,
                    style: BorderStyle.solid)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(
                    color: Colors.grey,
                    width: 1.0,
                    style: BorderStyle.solid)),
            fillColor: Colors.white,
            filled: true,
            hintText: '_',
            hintStyle: TextStyle(fontSize: 40, color: Colors.grey),
          ),
          autofocus: true,
          style: Theme.of(context).textTheme.headline6,
          keyboardType: TextInputType.number,
          textAlign: TextAlign.center,
          inputFormatters: [
            LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly
          ],
          onChanged: (value) {
            if (value.length == 1 && last==false) {
              FocusScope.of(context).nextFocus();
            }else if(value.length == 0 && first==false){
              FocusScope.of(context).previousFocus();
            }

          },
        ),
      ),
    );
  }
}
