import 'package:flutter/material.dart';
import 'package:tawssel/features/rest%20password/presentation/views/newpassword.dart';
import 'package:tawssel/features/rest%20password/presentation/views/widgets/Elevetdbottomsheet.dart';

class sucssessheetcontainer extends StatelessWidget {
  const sucssessheetcontainer({
    Key? key,
    required this.height,
  }) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: Container(
          height: height * .34,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20,5,20,0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    width: 80,

                    child: Divider(
                      color: Colors.grey,
                      thickness: 4,

                    ),
                  ),
                  SizedBox(height: 10,),
                  // Container(
                  //     child:Image.asset('images/icons8.png',fit: BoxFit.fitWidth,width: 60,)
                  // ),
                  Container(
                    //height: 25.0,
                    // width: 25.0,
                      child: CircleAvatar(
                        child: Icon(Icons.check_outlined,color: Colors.white,size: 50,),
                       backgroundColor: Color(0xFF15C975),
                      radius: 40.0,
                      ),
            decoration: BoxDecoration(
              shape: BoxShape.circle, 
            ),
                  ),
                  SizedBox(height: 20,),
                  Text('تم الإرسال بنجاح'
                    ,style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF262626)
                    ),),
                  Text('تم إرسال طلبك بنجاح ، يرجي انتظار الموافقة'
                    ,style: TextStyle(
                        fontSize: 15,
                        color: Color(0xFF262626)
                    ),),
                  SizedBox(height: 30,),
                  Elvetedbottomsheet(text: 'حسناً ، فهمت',textStyle: textstyle2,
                    color:Color(0xFFECECEC) , function:  () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>NewPassword())),)
           ] ),
          )),
    );
  }
}
