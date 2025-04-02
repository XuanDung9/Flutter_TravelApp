import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const ButtonWidget({Key? key, required this.title, required this.onTap})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity, // Đảm bảo nút rộng toàn bộ chiều ngang
      height: 50, // Chiều cao nút
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.purple, // Màu nền
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30), // Bo tròn góc
          ),
        ),
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white, // Màu chữ trắng
          ),
        ),
      ),
    );
  }
}
