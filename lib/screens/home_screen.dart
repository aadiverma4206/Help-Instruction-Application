import 'package:flutter/material.dart';
import '../data/help_data.dart';
import '../widgets/help_card.dart';
import '../routes/app_routes.dart'; // ✅ important

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Help & Instructions"),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          int crossAxisCount = constraints.maxWidth > 600 ? 2 : 1;

          return GridView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: helpList.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossAxisCount,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              childAspectRatio: 3,
            ),
            itemBuilder: (context, index) {
              final item = helpList[index];

              return HelpCard(
                title: item.title,
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    AppRoutes.detail,
                    arguments: item, // ✅ pass data
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}