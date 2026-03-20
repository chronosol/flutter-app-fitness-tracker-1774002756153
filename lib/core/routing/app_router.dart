import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../features/workouts/presentation/screens/workouts_screen.dart';

final GoRouter appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const WorkoutsScreen(),
    ),
  ],
);
