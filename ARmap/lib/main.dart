import 'package:flutter/material.dart';

// 지역화 및 국제화 관련 임포트
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_web_plugins/url_strategy.dart'; // 웹 앱에서 URL 전략을 위한 임포트.
import 'auth/firebase_auth/firebase_user_provider.dart'; // Firebase 인증 제공자.
import 'auth/firebase_auth/auth_util.dart'; // Firebase 인증 유틸리티.

import 'backend/firebase/firebase_config.dart'; // Firebase 설정.
import 'flutter_flow/flutter_flow_theme.dart'; // 앱의 커스텀 테마 설정.
import 'flutter_flow/flutter_flow_util.dart'; // Flutter Flow 유틸리티.
import 'flutter_flow/internationalization.dart'; // 국제화 유틸리티.
import 'flutter_flow/nav/nav.dart'; // 네비게이션 유틸리티.

// Flutter 애플리케이션의 시작점.
void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Flutter 초기화를 보장함.
  GoRouter.optionURLReflectsImperativeAPIs = true; // URL이 상태 변경을 반영하도록 함.
  usePathUrlStrategy(); // 웹 앱에서 깔끔한 URL을 위해 패스 URL 전략을 사용함.
  await initFirebase(); // Firebase 초기화.

  await FlutterFlowTheme.initialize(); // 커스텀 테마 초기화.

  runApp(const MyApp()); // 앱 실행.
}

// 애플리케이션의 메인 위젯.
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();

  // 위젯 트리에서 상태에 접근하기 위한 헬퍼 메소드.
  static _MyAppState of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>()!;
}

// MyApp의 상태 클래스.
class _MyAppState extends State<MyApp> {
  Locale? _locale; // 현재 지역 설정.
  ThemeMode _themeMode = FlutterFlowTheme.themeMode; // 현재 테마 모드.

  late Stream<BaseAuthUser> userStream; // Firebase 사용자 인증 스트림.

  late AppStateNotifier _appStateNotifier; // 앱 전체 상태 변경을 알리는 노티파이어.
  late GoRouter _router; // 네비게이션을 위한 라우터 인스턴스.

  final authUserSub = authenticatedUserStream.listen((_) {}); // 인증된 사용자 스트림 구독.

  @override
  void initState() {
    super.initState();

    _appStateNotifier = AppStateNotifier.instance; // 앱 상태 노티파이어 초기화.
    _router = createRouter(_appStateNotifier); // 상태 노티파이어를 사용하여 라우터 초기화.
    userStream = tutorialMultiLanguageAppFirebaseUserStream()
      ..listen((user) => _appStateNotifier.update(user)); // 사용자 업데이트 수신.
    jwtTokenStream.listen((_) {}); // JWT 토큰 스트림 리스너.
    Future.delayed(
      const Duration(milliseconds: 1000),
          () => _appStateNotifier.stopShowingSplashImage(), // 1초 후 스플래시 이미지 표시 중지.
    );
  }

  @override
  void dispose() {
    authUserSub.cancel(); // 제거 시 인증 사용자 구독 취소.

    super.dispose();
  }

  // 선택된 언어에 따라 로케일 설정.
  void setLocale(String language) {
    setState(() => _locale = createLocale(language));
  }

  // 테마 모드 설정 (밝음/어둠).
  void setThemeMode(ThemeMode mode) => setState(() {
    _themeMode = mode;
    FlutterFlowTheme.saveThemeMode(mode); // 테마 모드 저장.
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Tutorial - Multi-Language App',
      localizationsDelegates: const [
        FFLocalizationsDelegate(), // 커스텀 지역화 델리게이트.
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: _locale, // 지역화를 위한 로케일 설정.
      supportedLocales: const [
        Locale('ko'), // 지원하는 로케일 목록.
      ],
      theme: ThemeData(
        brightness: Brightness.light,
        useMaterial3: false, // Material3 스타일링 비활성화.
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        useMaterial3: false, // 어두운 모드에서 Material3 스타일링 비활성화.
      ),
      themeMode: _themeMode, // 현재 테마 모드.
      routerConfig: _router, // 라우터 설정.
    );
  }
}
