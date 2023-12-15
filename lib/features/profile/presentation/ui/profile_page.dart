import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_messenger/app/theme/app_colors.dart';
import 'package:my_messenger/features/profile/presentation/ui/widgets/profile_sliver_app_bar.dart';

@RoutePage()
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            delegate: ProfileSliverAppBar(),
            pinned: true,
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            sliver: SliverList.list(
              children: ListTile.divideTiles(
                tiles: const [
                  ListTile(
                    title: Text('Theme'),
                    tileColor: Colors.white,
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                    ),
                  ),
                  ListTile(
                    title: Text('Language'),
                    tileColor: Colors.white,
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                    ),
                  ),
                  ListTile(
                    title: Text('Security'),
                    tileColor: Colors.white,
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                    ),
                  ),
                ],
                context: context,
                color: AppColors.gray,
              ).toList(),
            ),
          ),
        ],
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
    );
  }
}
