import 'package:flutter/material.dart';
import 'package:massbunk/model/branch_model.dart';

class BranchCard extends StatelessWidget {
  const BranchCard({super.key, required this.branch});

  final BranchModel branch;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: (RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
      child: Padding(
        padding: EdgeInsetsGeometry.all(16),
        child: ExpansionTile(
          title: Text(branch.branchname),
          children: branch.sections
              .map((sections) => ListTile(title: Text(sections), onTap: () {}))
              .toList(),
        ),
      ),
    );
  }
}
