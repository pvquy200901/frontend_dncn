import 'package:flutter_application_1/router/custom/custom_page_route.dart';
import 'package:flutter_application_1/screens/ui/pages/login/login_page.dart';
import 'package:auto';
import 'package:flutter/material.dart';
//import 'package:injectable/injectable.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    CustomRoute(
      customRouteBuilder: CustomPageRoute.root,
      initial: true,
      page: LoginPage,
      path: LoginPage.path,
    )
    
  ],
)
@Singleton()
class AppRouter extends _$AppRouter {}
