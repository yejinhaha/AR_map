// ignore_for_file: file_names
import 'package:flutter/material.dart';

// 커뮤니티 페이지
class CommunityPage extends StatefulWidget {
  const CommunityPage({super.key});

  @override
  State<CommunityPage> createState() => CommunityState();
}

class CommunityState extends State<CommunityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'community page',
        ),
      ),
    );
  }
}