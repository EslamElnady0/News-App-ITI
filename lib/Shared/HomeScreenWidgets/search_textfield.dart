import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchTextFormField extends StatelessWidget {
  final String hintText;
  const SearchTextFormField({
    required this.hintText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          suffixIcon: const Icon(
            FontAwesomeIcons.magnifyingGlass,
            size: 18,
          ),
          hintText: hintText,
          hintStyle:
              GoogleFonts.nunito(color: Colors.grey.shade400, fontSize: 12),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height * 0.05,
          ),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade400),
              borderRadius: BorderRadius.circular(20)),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade400),
              borderRadius: BorderRadius.circular(20))),
    );
  }
}
