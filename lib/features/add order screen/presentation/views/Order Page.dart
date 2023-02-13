import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NewOrder extends StatelessWidget {
 static String id='New Order';
  @override
  Widget build(BuildContext context) {
    TextEditingController Productname = TextEditingController();
    TextEditingController ProductPrice = TextEditingController();
    TextEditingController AgentName = TextEditingController();
    TextEditingController AgentAddress = TextEditingController();
    TextEditingController AgentNumber = TextEditingController();
    TextEditingController DeliveryPrice = TextEditingController();
    return Scaffold(
      appBar:
      AppBar(
        actions: [
          const Padding(
            padding: EdgeInsets.all(13),
            child: Text(
              'طلب جديد',
              style: TextStyle(
                fontFamily: 'Cairo',
                fontSize: 18,
                color: Color(0xff191919),
              ),
              textAlign: TextAlign.right,
              softWrap: false,
            ),
          ),
          IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_forward,color: Colors.black,),),
        ],
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset("images/Profile Image/Group 11387.svg"),
        ),
      ),
      backgroundColor: const Color(0xfff1f4f3),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              height: MediaQuery.of(context).size.height*0.54,
              child: Card(
                child: Column(

                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10,right: 10),
                      child: Row(
                        textDirection: TextDirection.rtl,
                        children: [
                        const Text(
                          'المنتجات',
                          style: TextStyle(
                            fontFamily: 'Cairo',
                            fontSize: 16,
                            color: Color(0xff000000),
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.right,
                          softWrap: false,
                        ),
                          Padding(
                            padding: const EdgeInsets.only(right: 195),
                            child: TextButton(onPressed: (){}, child: Row(
                              children: [
                                const Text(
                                  'إضافة منتج آخر',
                                  style: TextStyle(
                                    fontFamily: 'Cairo',
                                    fontSize: 14,
                                    color: Color(0xffff6600),
                                  ),
                                  textAlign: TextAlign.right,
                                  softWrap: false,
                                ),
                                const Icon(Icons.add,color: Color(0xffff6600),size: 18,),
                              ],
                            )),
                          )

                      ],),

                    ),
                  Row(
                    textDirection: TextDirection.rtl,
                    children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Text(
                        'بيتزا شيش طاووق - حار',
                        style: TextStyle(
                          fontFamily: 'Cairo',
                          fontSize: 14,
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.right,
                        softWrap: false,
                      ),
                    ),
                  ],),
                    Row(
                      textDirection: TextDirection.rtl,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: Text(
                            ': السعر',
                            style: TextStyle(
                              fontFamily: 'Cairo',
                              fontSize: 14,
                              color: Color(0xff000000),
                            ),
                            softWrap: false,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 275),
                          child: Text(
                            '250 ج.م',
                            style: TextStyle(
                              fontFamily: 'Cairo',
                              fontSize: 14,
                              color: Color(0xff000000),
                            ),
                            softWrap: false,
                          ),
                        ),
                      ],),
                    Row(textDirection: TextDirection.rtl,
                      children: [
                      IconButton(onPressed: (){}, icon: SvgPicture.asset("images/Profile Image/Group 11447.svg"),),
                        const Text(
                          'حذف',
                          style: TextStyle(
                            fontFamily: 'Cairo',
                            fontSize: 14,
                            color: Color(0xff000000),
                          ),
                          textAlign: TextAlign.right,
                          softWrap: false,
                        ),
                        IconButton(onPressed: (){}, icon: SvgPicture.asset("images/Profile Image/Group 11448.svg"),),
                        const Text(
                          'تعديل',
                          style: TextStyle(
                            fontFamily: 'Cairo',
                            fontSize: 14,
                            color: Color(0xff000000),
                          ),
                          textAlign: TextAlign.right,
                          softWrap: false,
                        ),
                    ],),
                    const Divider(color: Colors.grey,indent: 22,endIndent: 22,thickness: 1),
                    CustomField(hint:'أسم المنتج',prefix: '',Controller: Productname,),
                    CustomField(hint: 'سعر المنتج',prefix: 'ج.م',Controller: ProductPrice,),

                    Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height*0.06,
                            width: MediaQuery.of(context).size.width*0.88,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xff15c975),
                                ),
                                onPressed: () {},
                                child: const Text(
                                  'إضافة',
                                  style: TextStyle(
                                    fontFamily: 'Cairo',
                                    fontSize: 14,
                                    color: Color(0xffffffff),
                                    fontWeight: FontWeight.w600,
                                  ),
                                  textAlign: TextAlign.right,
                                  softWrap: false,
                                ),),
                          ),
                        ),),
                  ],
                ),
              ),

            ),
            const Padding(
              padding: EdgeInsets.only(right: 15,top: 10,bottom: 15),
              child: Text(
                'تفاصيل الطلب',
                style: TextStyle(
                  fontFamily: 'Cairo',
                  fontSize: 16,
                  color: Color(0xff000000),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.right,
                softWrap: false,
              ),
            ),
            CustomField(hint: 'أسم العميل', prefix: '',Controller: AgentName,),
            CustomField(hint: 'عنوان العميل', prefix: '',prefixIcon: const Icon(Icons.location_on_outlined),prefixIconColor: Colors.black,Controller: AgentAddress,),
            CustomField(hint: 'رقم العميل', prefix: '',Controller: AgentNumber, ),
            CustomField(hint: 'تكلفة التوصيل', prefix: '',Controller: DeliveryPrice,),
          ],
        ),
      ),

    );
  }
}

class CustomField extends StatelessWidget {
 late final String hint;
 late final  String prefix;
 late final   Widget? prefixIcon;
 late final   prefixIconColor;
 late final  TextEditingController Controller;
 CustomField({required this.hint,required this.prefix,this.prefixIcon,this.prefixIconColor,required this.Controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 13),
      child: SizedBox(
        height: 60,
        child: TextField(
          controller: Controller,
          style: const TextStyle(color: Color(0xff474747)),
          textAlign: TextAlign.right,
          autofocus: true,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Colors.grey,),
               ),


            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Colors.deepOrange,),



            ),
              hintText:hint,
              prefixText:prefix,
            prefixIcon: prefixIcon??const Text('') ,
            prefixIconColor: prefixIconColor,

          ),
        ),
      ),
    );
  }
}

