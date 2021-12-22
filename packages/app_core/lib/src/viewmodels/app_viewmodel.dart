import 'package:app_core/app_core.dart';

/// Observable ตัวหนึ่ง ที่จะทำหน้าเป็น interface callback จาก [Consumer] หรือ Method
/// ที่ต้องติดต่อหรือ return Result กลับไปแสดงผลที่ Widgets
///
/// Example:
/// ```dart
///   Consumer<CounterProvider> countConsumer({
///    required LiveData<String> observe,
///  }) {
///    return Consumer<CounterProvider>(
///      builder: (context, provider, child) =>
///          observe.call(context, provider.count.toString(), child),
///    );
///  }
/// ```
typedef LiveData<T> = Widget Function(
  BuildContext context,
  T value,
  Widget? child,
);

/// Observable ตัวหนึ่ง ที่จะทำหน้าเป็น interface callback จาก [Consumer] หรือ Method
/// ที่ต้องติดต่อหรือ return Result กลับไปแสดงผลที่ Widgets
///
/// โดยจะไม่มี [BuildContext] แนบไปด้วย เผื่อไว้กรณีที่ไม่จำเป็นต้องใช้ [BuildContext]
///
/// Example:
/// ```dart
///   Consumer<CounterProvider> countConsumer({
///    required LiveDataContextless<String> observe,
///  }) {
///    return Consumer<CounterProvider>(
///      builder: (_, provider, child) =>
///          observe.call(provider.count.toString(), child),
///    );
///  }
/// ```
typedef LiveDataContextless<T> = Widget Function(
  T value,
  Widget? child,
);

/// Observable ตัวหนึ่ง ที่จะทำหน้าเป็น interface callback จาก [Consumer] หรือ Method
/// ที่ต้องติดต่อหรือ return Result กลับไปแสดงผลที่ Widgets
///
/// โดยจะไม่มี [Widget] แนบไปด้วย เผื่อไว้กรณีที่ไม่จำเป็นต้องใช้ [Widget]
///
/// Example:
/// ```dart
///   Consumer<CounterProvider> countConsumer({
///    required LiveDataWidgetless<String> observe,
///  }) {
///    return Consumer<CounterProvider>(
///      builder: (context, provider, _) =>
///          observe.call(context, provider.count.toString()),
///    );
///  }
/// ```
typedef LiveDataWidgetless<T> = Widget Function(
  BuildContext context,
  T value,
);

/// Observable ตัวหนึ่ง ที่จะทำหน้าเป็น interface callback จาก [Consumer] หรือ Method
/// ที่ต้องติดต่อหรือ return Result กลับไปแสดงผลที่ Widgets
///
/// โดยมีแค่ [T] แนบไปด้วยอย่างเดียว เผื่อไว้กรณีที่จะใช้ [T] อย่างเดียว
///
/// Example:
/// ```dart
///   Consumer<CounterProvider> countConsumer({
///    required LiveDataValue<String> observe,
///  }) {
///    return Consumer<CounterProvider>(
///      builder: (_, provider, __) =>
///          observe.call(provider.count.toString()),
///    );
///  }
/// ```
typedef LiveDataValue<T> = Widget Function(
  T value,
);

/// Observable ตัวหนึ่ง ที่จะทำหน้าเป็น interface callback จาก [Consumer] หรือ Method
/// ที่ต้องติดต่อหรือ return Result กลับไปแสดงผลที่ Widgets
/// จะ wrapping ไว้ได้ 2 Result
///
/// Example:
/// ```dart
///   Consumer<CounterProvider> countConsumer({
///    required LiveData2<String, int> observe,
///  }) {
///    return Consumer<CounterProvider>(
///      builder: (context, provider, child) =>
///          observe.call(
///               context,
///               provider.count.toString(),
///               0,
///               child,
///           ),
///    );
///  }
/// ```
typedef LiveData2<T1, T2> = Widget Function(
  BuildContext context,
  T1 value1,
  T2 value2,
  Widget? child,
);

/// Observable ตัวหนึ่ง ที่จะทำหน้าเป็น interface callback จาก [Consumer] หรือ Method
/// ที่ต้องติดต่อหรือ return Result กลับไปแสดงผลที่ Widgets
/// จะ wrapping ไว้ได้ 2 Result
///
/// โดยจะไม่มี [BuildContext] แนบไปด้วย เผื่อไว้กรณีที่ไม่จำเป็นต้องใช้ [BuildContext]
///
/// Example:
/// ```dart
///   Consumer<CounterProvider> countConsumer({
///    required LiveDataContextless<String, bool> observe,
///  }) {
///    return Consumer<CounterProvider>(
///      builder: (_, provider, child) =>
///          observe.call(provider.count.toString(), false, child),
///    );
///  }
/// ```
typedef LiveDataContextless2<T1, T2> = Widget Function(
  T1 value1,
  T2 value2,
  Widget? child,
);

/// Observable ตัวหนึ่ง ที่จะทำหน้าเป็น interface callback จาก [Consumer] หรือ Method
/// ที่ต้องติดต่อหรือ return Result กลับไปแสดงผลที่ Widgets
/// จะ wrapping ไว้ได้ 2 Result
///
/// โดยจะไม่มี [Widget] แนบไปด้วย เผื่อไว้กรณีที่ไม่จำเป็นต้องใช้ [Widget]
///
/// Example:
/// ```dart
///   Consumer<CounterProvider> countConsumer({
///    required LiveDataWidgetless<int, SomeClass> observe,
///  }) {
///    return Consumer<CounterProvider>(
///      builder: (context, provider, _) =>
///          observe.call(context, 100, SomeClass()),
///    );
///  }
/// ```
typedef LiveDataWidgetless2<T1, T2> = Widget Function(
  BuildContext context,
  T1 value1,
  T2 value2,
);

/// Observable ตัวหนึ่ง ที่จะทำหน้าเป็น interface callback จาก [Consumer] หรือ Method
/// ที่ต้องติดต่อหรือ return Result กลับไปแสดงผลที่ Widgets
///
/// โดยมีแค่ [T] แนบไปด้วยอย่างเดียว เผื่อไว้กรณีที่จะใช้ [T] อย่างเดียว
/// จะ wrapping ไว้ได้ 2 Result
///
/// Example:
/// ```dart
///   Consumer<CounterProvider> countConsumer({
///    required LiveDataValue<String, EndpointType> observe,
///  }) {
///    return Consumer<CounterProvider>(
///      builder: (_, provider, __) =>
///          observe.call(provider.baseUrl, provider.endpointType),
///    );
///  }
/// ```
typedef LiveDataValue2<T1, T2> = Widget Function(
  T1 value1,
  T2 value2,
);

/// Base ของ ViewModel ทั้งหมดที่จะถูกสร้างขึ้น เพื่อใช้ในการกำหนดค่าและการเข้าถึงจาก
/// [StatelessWidgetApp] หรือ [StatefulWidgetApp] จะมี 2 Method สำคัญที่สร้างรอไว้
/// สร้าง [override] ไปและ implement code ได้เลย
///
/// - [initial] เมื่อต้องการ init Service หรือ Controller ต่างๆ ภายใน ViewModel
/// สร้างกำหนดภายใต้ method นี้ได้เลย จะถูก call เป็นอันดับแรกทุกครั้งเมื่อ ViewModel
/// ถูก new instance
///
/// - [clear] เมื่อ Widget เข้าสู่ [State.dispose] หากต้องการ clear / stop / canceled
/// services หรือ Controllers ทั้งหมด สามารถทำไว้ที่จังหวะนี้ได้ แต่ต้อง call เองทุกครั้ง
mixin BaseViewModel {
  /// Example:
  /// ```dart
  /// @override
  /// void initial(BuildContext context) {
  ///   _counterProvider = context.watch<CounterProvider>();
  /// }
  /// ```
  void initial(BuildContext context);

  /// Example:
  /// ```dart
  /// class _SomeWidgetsStateApp extends StateApp<SomeWidgets> {
  /// ...
  ///   @override
  ///   void dispose() {
  ///     viewModel()?.clear();
  ///     super.dispose();
  ///   }
  /// ...
  /// ```
  void clear();
}

/// DONG 19 10 2021
///
/// ใช้ควบคุมการทำงานเกี่ยวกับ Business Logic ของ App ที่ผูกกับ Widgets
/// Concept ของ MVVM คือ
/// * ต้องการแยก Logic ของจาก View ทั้งหมด โดยจะให้ ViewModel เป็นตัวจัดการทั้งหมด
/// และ return Result กลับไปที่ View จะส่งผลให้ Widget จะทำให้ Widgets จะไม่รู้จักกับ
/// [Provider] หรือ [Service] ต่างๆ ที่อยู่ใน Business และ Data layer
///
/// * ViewModel จะทำหน้าที่ Warp [Provider] เอาไว้ทั้งหมด และส่งผ่าน Observable ต่างๆ
/// ออกไปผ่านทาง method ที่จะถูก wrap ไว้ด้วย [LiveData] อีกขั้นนึง
///
/// Example:
/// ```dart
/// ...
/// body: Center(
///        child: requireViewModel<CountViewModel>().countConsumer(
///          observer: (_, value, child) {
///            return Text(value);
///          },
///        ),
///      ),
/// ```
///
/// * เมื่อต้องการสร้าง CustomViewModel ที่จะทำหน้าที่จัดการกับ Logic ต่่างๆ จะทำในรูปแบบนี้
///
/// Example:
/// ```dart
/// class CountViewModel extends AppViewModel {
///  CountViewModel(BuildContext context) : super(context);
///
///  late CounterProvider _counterProvider;
///
///  @override
///  void initial(BuildContext context) {
///    _counterProvider = context.read<CounterProvider>();
///  }
///
///  void increment() {
///    _counterProvider.increment();
///  }
///
///  Consumer<CounterProvider> countConsumer({
///    required LiveData<String> liveData,
///  }) {
///    return Consumer<CounterProvider>(
///      builder: (context, provider, child) =>
///          liveData(context, provider.count.toString(), child),
///    );
///  }
///
///  @override
///  void clear() {
///    //...
///    super.clear();
///   }
/// }
/// ```
abstract class AppViewModel with BaseViewModel {
  AppViewModel(this.context) : super() {
    _appEnv = context.read<AppEnvironmentProvider>().requiredEnv;
    initial(context);
  }

  /// Hold instance ของ Context ของ Page นั้นๆเอาไว้ และเรียกใช้ได้จากใน class ได้เลย
  ///
  /// Example:
  /// ```dart
  /// class CountViewModel extends AppViewModel {
  ///  CountViewModel(BuildContext context) : super(context);
  ///
  ///  CounterProvider _counterProvider;
  ///  ...
  ///  void increment() {
  ///    _counterProvider.increment(context);
  ///  }
  /// ```
  final BuildContext context;

  @protected
  AppEnvironment? _appEnv;

  AppEnvironment get appEnv {
    if (_appEnv == null) {
      throw FlutterError('AppEnvironment is null');
    }
    return _appEnv!;
  }

  Map<EndpointsType, String> get baseUrl => appEnv.baseUrl;

  String get baseUrlBase => appEnv.baseUrl[EndpointsType.base].orEmpty;

  String get baseUrlDbo => appEnv.baseUrl[EndpointsType.dbo].orEmpty;

  String get baseUrlLogo => appEnv.baseUrl[EndpointsType.logo].orEmpty;

  @override
  void initial(BuildContext context) {
    // In order to override
  }

  @override
  @mustCallSuper
  void clear() {
    // In order to override
  }
}
