import 'package:flutter/material.dart';

class PostTagChip extends StatelessWidget {
  final String text;
  final bool selected;

  const PostTagChip({Key? key, required this.text, required this.selected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          border: Border.all(color: Color(0xffcceee6)),
          color: selected ? const Color(0xffcceee6) : const Color(0xffffffff),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
        ),
        child: Center(
          child: Text(text,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color:  Color(0xff00a981),
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }
}
