import 'package:app_core/app_core.dart';

typedef RepositoryBuilder<T, P> = T Function(P);

/// DONG 18 10 2021
///
/// Provider จัดการการสร้าง [AppEnvironment]
/// ใช้ [ChangeNotifier] เพื่อให้สามารถ inject เข้า [MultiProvider] ตอน [runApp]
/// และใช้ [Consumer] การดึงค่า [AppEnvironment] ผ่าน [loadEnv]
/// ให้ extends ไป implement ตาม requirement ของลูกค้าแต่ละเจ้า
///
/// Example:
/// ```dart
/// class StandardEnvironment extends AppEnvironmentProvider<IAuthenDatasource> {
///   StandardEnvironment(
///     EnvironmentState state, {
///     ThemeMode? themeMode,
///     required RepositoryBuilder<IAuthenDatasource, String> repoBuilder,
///     required AppRouter appRouter,
///     required Widget child,
///   }) : super(
///           state,
///           appRouter,
///           child,
///           themeMode: themeMode,
///         );
/// ```
///
/// เมื่อต้องเรียกใช้ให้เรียกใช้ในจังหวะ call method mainCommon
///
/// Example:
/// ```dart
/// mainCommon(
/// StandardEnvironment(
///       EnvironmentState.dev,
///       repoBuilder: (baseUrl) => AuthenRepository(
///         localDataSource: AppLocalStorage.defaultStorage(),
///         remoteDataSource: AppClient.init(
///           newBaseUrl: baseUrl,
///         ),
///       ),
///       child: const MyApp(),
///       appRouter: RouterManager(),
///     ),
/// );
///
/// void mainCommon(AppEnvironmentProvider appEnv) {
///   ...
///       runApp(
///         MultiProvider(
///           providers: [
///             ChangeNotifierProvider.value(
///               value: appEnv,
///             ),
///    ...
/// ```
abstract class AppEnvironmentProvider<Repository> with ChangeNotifier {
  AppEnvironmentProvider(
    EnvironmentState state,
    this._appRouter,
    this._child, {
    ThemeMode? themeMode,
    RepositoryBuilder<Repository, String>? repoBuilder,
  })  : _state = state,
        _themeMode = themeMode {
    // init baseUrl
    baseUrl = lookupBaseUrl();
    _repo = repoBuilder?.call(baseUrl[EndpointsType.base].orEmpty);
  }

  final AppRouter _appRouter;
  AppRouter get appRouter => _appRouter;

  final Widget _child;
  Widget get child => _child;

  final ThemeMode? _themeMode;
  ThemeMode get themeMode => _themeMode ?? ThemeMode.light;

  /// กำหนด state ของ Env ว่าเป็น state ไหน เพื่อให้แยก env ได้ถูก
  ///   - [EnvironmentState.dev]
  ///   - [EnvironmentState.stage]
  ///   - [EnvironmentState.prod]
  final EnvironmentState _state;

  /// interface Datasource สำหรับเข้าถึง data layer
  late Repository? _repo;

  Repository get requiredRepo {
    if (_repo == null) {
      FlutterError('Repo is null, repoBuilder might not be called!');
    }
    return _repo!;
  }

  Repository? get repo => _repo;

  /// เก็บ instance ของ [AppEnvironment]
  @protected
  AppEnvironment? env;

  /// เก็บ comCode ของแต่ละ Env
  @protected
  String comCode = '';

  @protected
  late Map<EndpointsType, String> baseUrl;

  String getBaseUrl(EndpointsType type) => baseUrl[type].orEmpty;

  AppEnvironment get requiredEnv {
    if (env == null) {
      throw FlutterError('Environment was not be loaded');
    }
    return env!;
  }

  @protected
  EnvironmentState get state => _state;

  /// ใช้สำหรับกำหนดค่าต่างๆ ให้กับ [AppEnvironment] เป็น method หลักที่ใช้ call เมื่อ
  /// ต้องการให้ init ค่า
  ///
  /// Example:
  /// ```dart
  /// return FutureBuilder<AppEnvironment>(
  ///               future: provider.loadEnv(context),
  ///               builder: (context, snapshot)
  /// ```
  /// เมื่อต้องกำหนดค่า
  /// ```dart
  ///@override
  ///Future<AppEnvironment> loadEnv(BuildContext context) async {
  ///  final result = await repo.authen();
  ///  final customer = result.data!;
  ///
  ///  // init Environment ของ App ทั้งหมด
  ///  env = AppEnvironment(
  ///    title: 'E-Order-DEV',
  ///    comCode: comCode,
  ///    user: customer,
  ///    baseUrl: baseUrl,
  ///    themeMode: ThemeMode.light,
  ///    appRouter: RouterManager(),
  ///    homePage: const MainPage(),
  ///    initialRoute: '/',
  ///    child: const MyApp(),
  ///  );
  ///
  ///  return env!;
  ///}
  /// ```
  Future<AppEnvironment> loadEnv(BuildContext context);

  /// ใช้กำหนด [baseUrl] จะถูกเรียกทันที่ที่ class [AppEnvironmentProvider] ถูก create
  /// ใช้เพื่อกำหนด url ต่างๆ ที่ใช้ในการ call service ให้กำหนด url ต่างๆ ตาม [EndpointsType]
  /// - [EndpointsType.base]
  /// - [EndpointsType.dbo]
  /// - [EndpointsType.logo]
  ///
  /// Example:
  /// ```dart
  ///Map<EndpointsType, String> lookupBaseUrl() {
  ///  Map<EndpointsType, String> baseUrl;
  ///
  ///  switch (state) {
  ///    case EnvironmentState.prod:
  ///      baseUrl = {
  ///        EndpointsType.logo: '...',
  ///        EndpointsType.base: '...',
  ///        EndpointsType.dbo: '...',
  ///      };
  ///      break;
  ///    case EnvironmentState.stage:
  ///      baseUrl = {
  ///        EndpointsType.logo: '...',
  ///        EndpointsType.base: '...',
  ///        EndpointsType.dbo: '...',
  ///      };
  ///      break;
  ///    default:
  ///      baseUrl = {
  ///        EndpointsType.logo: '...',
  ///        EndpointsType.base: '...',
  ///        EndpointsType.dbo: '...',
  ///      };
  ///      break;
  ///  }
  ///  return baseUrl;
  ///}
  /// ```
  Map<EndpointsType, String> lookupBaseUrl();
}
