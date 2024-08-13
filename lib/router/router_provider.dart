import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../screens/index.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'news',
          builder: (BuildContext context, GoRouterState state) {
            return const NewsScreen();
          },
        ),
        GoRoute(
            path: 'podcast',
            builder: (BuildContext context, GoRouterState state) {
              return const PodcastScreen();
            }),
        GoRoute(
          path: 'todo',
          builder: (BuildContext context, GoRouterState state) {
            return const TodoScreen();
          },
        ),
        GoRoute(
          path: 'change',
          builder: (BuildContext context, GoRouterState state) {
            return const ChangeScreen();
          },
        ),
      ],
    ),
  ],
);
