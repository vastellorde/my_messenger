import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_messenger/app/theme/app_colors.dart';
import 'package:my_messenger/features/profile/presentation/state/profile_bloc.dart';
import 'package:my_messenger/features/profile/presentation/ui/widgets/profile_sliver_app_bar.dart';

@RoutePage()
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        return state.map(unAuthorized: (_) {
          return const SizedBox.shrink();
        }, authorized: (user) {
          return Scaffold(
            body: CustomScrollView(
              slivers: [
                SliverPersistentHeader(
                  delegate: ProfileSliverAppBar(username: user.user.username),
                  pinned: true,
                ),
                SliverPadding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  sliver: SliverList.list(
                    children: [
                      ...ListTile.divideTiles(
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
                      ),
                      ElevatedButton(
                          onPressed: () {
                            context
                                .read<ProfileBloc>()
                                .add(const ProfileEvent.logOut());
                          },
                          child: const Text('Logout')),
                    ],
                  ),
                ),
              ],
            ),
            backgroundColor: Theme.of(context).colorScheme.background,
          );
        });
      },
    );
  }
}
