import 'package:flutter/material.dart';
import '../core/models/help_model.dart'; // ✅ ADD THIS (important)
import '../widgets/section_tile.dart';

class DetailScreen extends StatelessWidget {
  final HelpModel help;

  const DetailScreen({
    super.key,
    required this.help,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(help.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            SectionTile(
              title: "Steps",
              items: help.steps,
            ),
          ],
        ),
      ),
    );
  }
}