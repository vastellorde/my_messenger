import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyMessenger'),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16.0),
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              AutoRouter.of(context).pushNamed('/room/1');
            },
            leading: const Icon(Icons.person),
            title: const Text('Some guy'),
            subtitle: const Text('hello!'),
            trailing: DecoratedBox(
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  shape: BoxShape.circle),
              child: const Padding(
                padding: EdgeInsets.all(4.0),
                child: Text(
                  '1',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          );
        },
        separatorBuilder: (_, __) {
          return const Divider();
        },
        itemCount: 40,
      ),
    );
  }
}
