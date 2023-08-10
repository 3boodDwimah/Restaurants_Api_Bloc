import 'package:flutter/material.dart';

class commore extends StatelessWidget {
  final IconData? icon;
  final String text1;
  final IconData iconpre;
  final void Function()? onPressed;

  commore(
      {Key? key,
       this.icon,
      required this.text1,
      required this.iconpre,
      this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: onPressed,
      child: Container(

        width: MediaQuery.of(context).size.width/1,
        height: 50,
        decoration: BoxDecoration(
          color: const Color(0xffffffff),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8,bottom: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
           //   Image.asset(image!),
              Icon(
                icon,
                color: const Color(0xffFF9F0D),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                text1,
                style: TextStyle(
                  fontFamily: 'Tajawal',
                  fontSize: 16,
                  color: const Color(0xff5e5e5e),
                ),
                textAlign: TextAlign.right,
                softWrap: false,
              ),
              Spacer(),
              Icon(
                iconpre,
                size: 26,
                color: const Color(0xff5e5e5e),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
