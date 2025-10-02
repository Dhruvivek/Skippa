import "package:flutter/material.dart";
import "package:massbunk/Widgets/branch_card.dart";
import "../data/branch_data.dart";

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(title: Text("Branches")),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: branches.length,
        itemBuilder: (context, index) {
          return BranchCard(branch: branches[index]);
        },
      ),
    );
  }
}
