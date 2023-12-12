import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_messenger/app/router/router.gr.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.pageView(
        routes: const [
          ChatListRoute(),
          ProfileRoute(),
        ],
        builder: (context, child, _) {
          final tabsRouter = AutoTabsRouter.of(context);
          return Scaffold(
              body: child,
              bottomNavigationBar: NavigationBar(
                selectedIndex: tabsRouter.activeIndex,
                onDestinationSelected: (index) {
                  tabsRouter.setActiveIndex(index);
                },
                destinations: const [
                  NavigationDestination(
                    icon: Icon(Icons.chat),
                    label: 'Messages',
                  ),
                  NavigationDestination(
                    icon: Icon(Icons.person),
                    label: 'Profile',
                  ),
                ],
              ));
        });
  }
}
