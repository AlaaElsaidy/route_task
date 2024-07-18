import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchPart extends StatelessWidget {
  const SearchPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: TextFormField(
          decoration: InputDecoration(
            prefixIcon: Padding(
              padding: const EdgeInsets.only(
                left: 20
              ),
              child: Icon(Icons.search,color:Color(0xff004182) ,size: 40,),
            ),
            hintText: "What do you search for?",
            hintStyle: GoogleFonts.lato(
              fontSize: 18,
              color:Color(0xff06004F).withOpacity(.5),
              fontWeight:FontWeight.w500

            ),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: Color(0xff004182), width: 2)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: Color(0xff004182), width: 2)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: Color(0xff004182), width: 2)),
            enabled: true,
          ),
        )),
        SizedBox(
          width: 15,
        ),
        Icon(Icons.shopping_cart_outlined,size: 40,color: Color(0xff004182))
      ],
    );
  }
}
