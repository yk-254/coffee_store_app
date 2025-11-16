import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../theme/app_theme.dart';

class FormTile extends StatelessWidget {
  final String title;
  final String hint;
  final IconData icon;
  final bool obsecure;
  final TextDirection direction;

  const FormTile({
    super.key,
    required this.title,
    required this.hint,
    required this.icon,
    required this.direction,
    this.obsecure = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          title,
          textAlign: TextAlign.right,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        SizedBox(height: 15.h),
        TextField(
          obscureText: obsecure,
          textDirection: direction,
          cursorColor: AppColors.text,
          style: Theme.of(context).textTheme.bodyMedium,
          decoration: InputDecoration(
            hint: Text(hint, textDirection: TextDirection.rtl),
            suffixIcon: Icon(icon, color: AppColors.text),
          ),
        ),
      ],
    );
  }
}
