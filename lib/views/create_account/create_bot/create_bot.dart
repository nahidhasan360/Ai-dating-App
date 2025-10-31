import 'package:flutter/material.dart';
import '../../../global_widgets/custom_navbar.dart';

class CreateBot extends StatelessWidget {
 const CreateBot({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2C124F),
      body: const



      Center(
        child: Text("Main Content", style: TextStyle(color: Colors.white)),
      ),
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}
