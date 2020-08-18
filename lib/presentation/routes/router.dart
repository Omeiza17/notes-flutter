import 'package:auto_route/auto_route_annotations.dart';
import 'package:ddd_notes/presentation/notes/note_form/note_form_page.dart';
import 'package:ddd_notes/presentation/notes/note_overview/note_overview_page.dart';
import 'package:ddd_notes/presentation/sign_in/sign_in_page.dart';
import 'package:ddd_notes/presentation/splash/splash_page.dart';

@MaterialAutoRouter(
    generateNavigationHelperExtension: true,
    routes: <AutoRoute>[
      MaterialRoute(page: SplashPage, initial: true),
      MaterialRoute(page: SignInPage),
      MaterialRoute(page: NoteOverviewPage),
      MaterialRoute(page: NoteFormPage, fullscreenDialog: true),
    ])
class $Router {}
