import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/app_colors.dart';

class ProfilePageField extends StatelessWidget {
  static const String icon = '>';
  final String title;
  final String value;
  final VoidCallback onPressed;

  const ProfilePageField(
      {super.key,
      required this.title,
      required this.value,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.only(top: 5, bottom: 5, left: 10),
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Text(
                title,
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: AppColors.grey3,
                      fontSize: 15,
                    ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Text(value,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 19,
                      )),
            ),
            const Expanded(
              child: Text(
                icon,
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
