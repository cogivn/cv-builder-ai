import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class CVListPage extends StatelessWidget {
  const CVListPage({super.key});

  @override
  Widget build(BuildContext context) { 
    return Scaffold(
      appBar: AppBar(title: const Text('My CVs')),
      body: Text('data'));
  }
} 