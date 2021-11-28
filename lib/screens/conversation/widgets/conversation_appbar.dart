import 'package:flutter/material.dart';

class ConAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 40,
        bottom: 20,
        left: 20,
        right: 20
      ),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text(
              'Back',
              style: TextStyle(
                  color: Colors.white.withOpacity(0.5),
                fontSize: 16,
              ),
            ),
          ),

        ],
      ),
    );
  }
}
