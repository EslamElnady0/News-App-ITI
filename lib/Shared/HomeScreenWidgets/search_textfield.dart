import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchTextFormField extends StatelessWidget {
  final FocusNode? focusNode;
  final String hintText;
  final VoidCallback? onTap;
  final IconData suffixIcon;
  final Function(String)? onFieldSubmitted;
  final void Function()? onSuffixPressed;
  final TextEditingController? controller;
  const SearchTextFormField({
    this.focusNode,
    this.onSuffixPressed,
    this.onFieldSubmitted,
    this.controller,
    this.onTap,
    required this.hintText,
    required this.suffixIcon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: focusNode,
      onFieldSubmitted: onFieldSubmitted,
      onTap: onTap,
      decoration: InputDecoration(
          suffixIcon: InkWell(
            borderRadius: BorderRadius.circular(20.r),
            onTap: onSuffixPressed,
            child: Icon(
              suffixIcon,
              size: 18,
            ),
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
              borderRadius: BorderRadius.circular(20.r)),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade400),
              borderRadius: BorderRadius.circular(20.r))),
    );
  }
}
