import 'package:app_core/src/config/index_app.dart';

typedef InitialDesign<T> = T Function(String comCode);

/// DONG 29 09 2021
///
/// ควยคุมเกี่ยวกับ Design ของ app เพื่อให้เป็น class กลางในการกำนหดค่าต่างๆ
/// เกี่ยวกับ design Color, Sizing, Theme ต่างๆ
/// ถ้ามี widget ไหนที่ไม่ได้ extends จาก [StatelessWidgetApp] หรือ [StatefulWidgetApp]
/// แต่ต้องการเข้าถึง [AppColor], [AppDimensions], [L10n]
/// ให้ implement [Designable] ไป จะทำให้สามารถเข้าถึง member ของ [Designable] ได้เลย
/// และสามารถ override เพื่อ customize ได้ตาม requirement
///
/// Example :
/// ```dart
/// class SomeCustomWidget extends Drawer with Designable {
/// ...
/// }
/// ```
mixin Designable {
  /// เรียกใช้ Color ที่เป็น Standard และใช้ทั้งแอพ ถ้า widget extends
  /// จาก [StatelessWidgetApp] สามารถเรียกใช้ได้เลย
  /// ถ้ามีการ customize color ต้อง init class ก่อนเรียกใช้
  /// โดยส่ง param comCode เข้าไป
  /// และต้องโยน context เข้ามาด้วยเพื่อเรียกใช้
  ///
  /// Example :
  /// ```dart
  /// ...(
  /// child : Text('Standard',
  ///     textStyle: TextStyle(color:
  ///             colorApp.someCustomColor, // ดึงสีที่ custom ไว้
  ///       ),
  ///   ),
  ///   ...
  /// ```
  @protected
  AppColor get appColor => AppColor.of<AppColor>();

  /// เรียกใช้ Color ที่ customize และใช้ทั้งแอพ ถ้า widget extends
  /// จาก [StatelessWidgetApp] สามารถเรียกใช้ได้เลย
  /// ถ้ามีการ customize color ต้อง init class ก่อนเรียกใช้
  /// โดยส่ง param comCode เข้าไป
  /// และต้องโยน context เข้ามาด้วยเพื่อเรียกใช้
  ///
  /// Example :
  /// ```dart
  /// ...(
  /// child : Text('Standard',
  ///     textStyle: TextStyle(color:
  ///             appColorBy<CustomColor>().someCustomColor, // ดึงสีที่ custom ไว้
  ///       ),
  ///   ),
  ///   ...
  /// ```
  @protected
  C appColorBy<C extends AppColor>() => AppColor.of<C>();

  /// เรียกใช้ Dimension ที่เป็น Standard และใช้ทั้งแอพ ถ้า widget extends
  /// จาก [StatelessWidgetApp] สามารถเรียกใช้ได้เลย
  ///
  /// Example:
  /// ```dart
  /// ...(
  /// child : Text('Standard',
  ///     textStyle: TextStyle(fontSize:
  ///             dimensionApp.size_12, // ดึงค่า dimensionApps
  ///       ),
  ///   ),
  ///   ...
  /// ```
  @protected
  AppDimensions get appDimension => AppDimensions.of();

  /// เรียกใช้ Dimension ที่ customize และใช้ทั้งแอพ ถ้า widget extends
  /// จาก [StatelessWidgetApp] สามารถเรียกใช้ได้เลย
  ///
  /// Example:
  /// ```dart
  /// ...(
  /// child : Text('Standard',
  ///     textStyle: TextStyle(fontSize:
  ///             appDimsBy<CustomDims>.size_12, // ดึงค่า dimensionApps
  ///       ),
  ///   ),
  ///   ...
  /// ```
  D appDimsBy<D extends AppDimensions>() => AppDimensions.of<D>();

  /// DONG 13 10 2021
  ///
  /// เรียกใช้ Dimension ที่เป็น standard และใช้ทั้งแอพ ถ้า widget extends
  /// จาก [StatelessWidgetApp] สามารถเรียกใช้ได้เลย
  ///
  /// Example:
  /// ```dart
  /// BottomNavigationBarItem(
  ///    icon: appIcon.product, // ดึง Icon จาก appIcon
  ///    ...
  /// ),
  /// ```
  @protected
  AppIcon get appIcon => AppIcon.of<AppIcon>();

  /// DONG 13 10 2021
  ///
  /// เรียกใช้ Dimension ที่ customize และใช้ทั้งแอพ ถ้า widget extends
  /// จาก [StatelessWidgetApp] สามารถเรียกใช้ได้เลย
  ///
  /// Example:
  /// ```dart
  /// BottomNavigationBarItem(
  ///    icon: appIconBy<CustomIcon>().product, // ดึง Icon จาก appIcon
  ///    ...
  /// ),
  /// ```
  @protected
  I appIconBy<I extends AppIcon>() => AppIcon.of<I>();

  /// เรียกใช้ Style ที่เป็น standard และใช้ทั้งแอพ ถ้า widget extends
  /// จาก [StatelessWidgetApp] สามารถเรียกใช้ได้เลย
  ///
  /// Example:
  /// ```dart
  /// Text(
  ///    style: appStyle.textSeeMore(context), // ดึง style จาก appStyle
  ///    ...
  /// ),
  /// ```
  ///
  @protected
  AppStyle get appStyle => AppStyle.of<AppStyle>();

  /// เรียกใช้ Style ที่ customize และใช้ทั้งแอพ ถ้า widget extends
  /// จาก [StatelessWidgetApp] สามารถเรียกใช้ได้เลย
  ///
  /// Example:
  /// ```dart
  /// Text(
  ///    style: appStyleBy<CustomStyle>().textSeeMore(context), // ดึง style จาก appStyleBy
  ///    ...
  /// ),
  /// ```
  ///
  S appStyleBy<S extends AppStyle>() => AppStyle.of<S>();

  /// เรียกใช้ Style ที่เป็น standard และใช้ทั้งแอพ ถ้า widget extends
  /// จาก [StatelessWidgetApp] สามารถเรียกใช้ได้เลย
  ///
  /// Example:
  /// ```dart
  /// Text(
  ///    style: appTheme.getLighTheme(), // ดึง Icon จาก appIcon
  ///    ...
  /// ),
  /// ```
  ///
  @protected
  AppTheme get appTheme => AppTheme.of<AppTheme>();

  /// เรียกใช้ Style ที่ customize และใช้ทั้งแอพ ถ้า widget extends
  /// จาก [StatelessWidgetApp] สามารถเรียกใช้ได้เลย
  ///
  /// Example:
  /// ```dart
  /// Text(
  ///    style: appThemeBy<CustomTheme>().getLighTheme(), // ดึง Theme จาก appTheme
  ///    ...
  /// ),
  /// ```
  ///
  T appThemeBy<T extends AppTheme>() => AppTheme.of<T>();
}

abstract class ViewModelImmutable {
  /// return Nullable [_viewModel] instance
  ///
  /// Example:
  /// ```dart
  ///   @override
  ///   Widget build(BuildContext context) {
  ///     viewModel<SomeViewModel>()?.someMethod();
  ///     ...
  ///   }
  /// }
  /// ```
  VM? viewModel<VM extends BaseViewModel>();

  /// return NonNull [_viewModel] instance with `Throwable`
  ///
  /// Example:
  /// ```dart
  ///   @override
  ///   Widget build(BuildContext context) {
  ///     requireViewModel<SomeViewModel>().someMethod();
  ///     ...
  ///   }
  /// }
  /// ```
  VM requireViewModel<VM extends BaseViewModel>();
}

abstract class ViewModelMutable with ViewModelImmutable {
  /// การเรียกใช้ [setViewModel] ต้องเรียกใช้ใน method [State.didChangeDependencies]
  /// เท่านั้น หากเป็น [StatefulWidgetApp] ให้ [override] method
  /// [StateApp.attachViewModel]
  ///
  /// Example:
  /// ```dart
  /// class _SomeWidgetStateApp extends StateApp<SomeWidget> {
  ///   @override
  ///   void didChangeDependencies() {
  ///     setViewModel(SomeViewModel(context));
  ///     ...
  ///   }
  /// ```
  void setViewModel(BaseViewModel value);
}

/// DONG 28 09 2021
///
/// สร้าง Customize Widget Stateless ขึ้นเป็นตัวกลางเอาไว้ใช้ทั้ง App
/// หรือใช้เป็น Core ให้กับ App อื่นที่จะขึ้นในอนาคต
/// เอาใช้จัดการกับ config, service หรือ Business logic บางอย่างที่ต้องใช้
/// รวมกันทั้งแอพ ถ้าต้อง init เหมือนกันทุกหน้า ให้มาทำในหน้านี้ที่เดียว
///
/// โดยตัว [StatelessWidgetApp] จะ extends มาจาก [StatelessWidget] อีกที
/// การเรียกใช้งาน ให้เรียกผ่าน snippets [stla] เพื่อ generate code ขึ้นมาอัตโนมัติ
///
/// * param: [viewModel] จำเป็นต้อง inject ทุกครั้ง หากต้องการเรียกใช้
///   - [viewModel]
///   - [requireViewModel]
///
/// หากไม่ inject [viewModel] เข้ามา แต่มีการเรียกใช้ จะทำให้ app บึ้ม
abstract class StatelessWidgetApp extends StatelessWidget
    with Designable
    implements ViewModelImmutable {
  const StatelessWidgetApp({
    Key? key,
    BaseViewModel? viewModel,
  })  : _viewModel = viewModel,
        super(key: key);

  final BaseViewModel? _viewModel;

  @override
  VM? viewModel<VM extends BaseViewModel>() =>
      _viewModel == null ? null : _viewModel as VM;

  @override
  VM requireViewModel<VM extends BaseViewModel>() {
    if (_viewModel == null) {
      throw FlutterError('requireViewModel could not return null');
    }

    return _viewModel as VM;
  }

  /// function สร้าง default MaterialApp เพื่อกำหนด Theme หลัก
  /// ที่ใช้ทั้งแอพ ถ้าต้อง customize หรือปรับเปลี่ยนอะไร ให้ทำใน function นี้
  ///
  /// Param :
  /// - [kMaterialApp] โยน [MaterialApp] เข้ามาเองทั้งหมด ถ้ามาเป็นค่า Null
  ///    จะใช้ที่ default ไว้
  ///   - Note : ถ้ากำหนดใช้ [MaterialApp] เอง ต้องระวังเรื่องการเรียกใช้ [AppDimensions]
  /// จำเป็นต้อง init [ScreenUtilInit] ก่อนทุกครั้ง
  ///
  /// - [environment] environment ต่างๆ ของ App ที่จะใข้
  /// - [lookupLanguage] Function สำหรับ new instance ของ class wording
  /// - [colorAppBuilder] Function สำหรับ new instance ของ class Color
  /// - [dimensionAppBuilder] Function สำหรับ new instance ของ class Dimension
  /// - [iconAppBuilder] Function สำหรับ new instance ของ class Icon
  /// - [local] optional สำหรับเปิดใช้งาน DevicePreview
  /// - [builder] optional สำหรับเปิดใช้งาน DevicePreview
  /// - [useInheritedMediaQuery] optional สำหรับเปิดใช้งาน DevicePreview
  @protected
  Widget materialApp({
    required BuildContext context,
    required AppEnvironment environment,
    required LookupLanguage lookupLanguage,
    required InitialDesign<AppIcon> iconAppBuilder,
    required InitialDesign<AppColor> colorAppBuilder,
    required InitialDesign<AppTheme> themeAppBuilder,
    required InitialDesign<AppDimensions> dimensionAppBuilder,
    required InitialDesign<AppStyle> styleAppBuilder,
    MaterialApp? kMaterialApp,
    Locale? local,
    TransitionBuilder? builder,
    bool useInheritedMediaQuery = false,
    bool debugShowCheckedModeBanner = false,
  }) {
    final companyCode = environment.comCode;
    AppIcon.initAppIcon(iconAppBuilder(companyCode));
    AppColor.initAppColor(colorAppBuilder(companyCode));
    AppTheme.initAppTheme(themeAppBuilder(companyCode), design: appColor);

    final materialInstance = (kMaterialApp ??
        MaterialApp(
          debugShowCheckedModeBanner: debugShowCheckedModeBanner,
          // set up สำหรับ Device Preview
          useInheritedMediaQuery: useInheritedMediaQuery,
          locale: local,
          builder: builder,
          title: environment.title,
          // กำหนด themeMode ของแอพ โดยยึดจาก system
          themeMode: environment.themeMode,
          // กำหนด lightTheme หรือ theme ปกติ
          theme: appTheme.getLightTheme(),
          // กำหนด darkTheme
          darkTheme: appTheme.getDarkTheme(),
          // support ภาษาไหนบ้าง
          supportedLocales: L10n.supportLang,
          localizationsDelegates: [
            AppLanguageLocale.delegate(
              environment.comCode,
              lookupLanguage: lookupLanguage,
            ),
            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate
          ],
          // สร้าง Route ใน App
          onGenerateRoute: (routeSettings) => MaterialPageRoute<void>(
            settings: routeSettings,
            builder: (context) =>
                environment.appRouter.routing(routeSettings.name),
          ),
          initialRoute: environment.initialRoute,
        ));

    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    ScreenUtil.init(
      BoxConstraints(
        maxWidth: width,
        maxHeight: height,
      ),
      designSize: Size(
        width,
        height,
      ),
      orientation: Orientation.portrait,
    );
    // ต้อง init หลังจาก ScreenUtil.init แล้ว
    AppDimensions.initAppDims(dimensionAppBuilder(companyCode));
    AppStyle.initAppStyle(styleAppBuilder(companyCode));

    return materialInstance;
  }
}

/// สร้าง Customize Widget Stateless ขึ้นเป็นตัวกลางเอาไว้ใช้ทั้ง App
/// หรือใช้เป็น Core ให้กับ App อื่นที่จะขึ้นในอนาคต
/// เอาใช้จัดการกับ config, service หรือ Business logic บางอย่างที่ต้องใช้
/// รวมกันทั้งแอพ ถ้าต้อง init เหมือนกันทุกหน้า ให้มาทำในหน้านี้ที่เดียว
///
/// โดยตัว [StatefulWidgetApp] จะ extends มาจาก [StatefulWidgetApp] อีกที
/// การเรียกใช้งาน ให้เรียกผ่าน snippets [stfa] เพื่อ generate code ขึ้นมาอัตโนมัติ
abstract class StatefulWidgetApp extends StatefulWidget {
  const StatefulWidgetApp({Key? key}) : super(key: key);

  @override
  StateApp createState();
}

/// ครอบ [State] ด้วย [StateApp] อีกทีเพื่อใช้กำหนดการทำงาน
/// เอาใช้จัดการกับ config, service หรือ Business logic บางอย่างที่ต้องใช้
/// รวมกันทั้งแอพ ถ้าต้อง init เหมือนกันทุกหน้า ให้มาทำในหน้านี้ที่เดียว
abstract class StateApp<T extends StatefulWidgetApp> extends State<T>
    with Designable
    implements ViewModelMutable {
  late BaseViewModel? _viewModel;

  /// override เมื่อจำเป็นต้องต้อง new Instance ViewModel
  /// ให้ใช้ method นี้เท่านั้น เพื่อลดความผิดพลาดในการสร้าง Instance ของ ViewModel
  ///
  /// Example:
  /// ```dart
  /// @override
  /// void attachViewModel() {
  ///   setViewModel(CountViewModel(context));
  /// }
  /// ```
  void attachViewModel() {
    // In order to override
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    attachViewModel();
  }

  /// override มาจาก [ViewModelMutable]
  ///
  /// Note:
  /// การเรียกใช้ [setViewModel] ต้องเรียกใช้ใน method [State.didChangeDependencies]
  /// เพราะ [StatefulWidgetApp] เป็น widget ที่ inherite มาจาก [StatefulWidget]
  /// อีกขั้นนึง หากต้องการใช้ new instance [BaseViewModel] จะไม่สามารถ call ที่
  /// [StateApp.initState] ได้ จะทำให้ app บึ้ม
  @override
  void setViewModel(BaseViewModel value) => _viewModel = value;

  /// override มาจาก [ViewModelMutable]
  @override
  VM? viewModel<VM extends BaseViewModel>() =>
      _viewModel == null ? null : _viewModel as VM;

  // /// override มาจาก [ViewModelMutable]
  // @override
  // VM requireViewModel<VM extends BaseViewModel>() {
  //   if (_viewModel == null) {
  //     throw FlutterError('requireViewModel could not return null');
  //   }

  //   return _viewModel as VM;
  // }

  /// override มาจาก [ViewModelMutable]
  @override
  VM requireViewModel<VM extends BaseViewModel>() {
    if (_viewModel == null) {
      throw FlutterError('requireViewModel could not return null');
    }
    return _viewModel as VM;
  }
}

/// DONG 01 10 2021
///
/// สร้าง extension method ที่เกี่ยวข้องกับการใช้ [BuildContext] ภายใน app
/// เพื่อให้ code กระชับขึ้น ไม่ต้องเรียก method ที่ยาวจนเกินไป
/// หากมี method ไหนที่ต้องเรียกใช้ผ่าน context หรือจำเป็นต้อง pass arg context
/// ให้มาสร้าง method เอาไว้ตรงนี้ แล้วเรียกใช้เอาก็ได้
extension AppContext on BuildContext {
  /// DONG 10 12 2021
  ///
  /// ทำ extension method การดึง ภาษามาแสดงใน app โดยจะสามารถกดหนด type ของ class
  /// ที่ hold wording ที่ต้องการได้ผ่าน [W] และ class [W] ต้อง inherite มาจาก [BaseWording]
  ///
  /// Example :
  /// ```dart
  /// ... (
  ///   child: Text(
  ///             context.wordingFrom<SomeCustomizeWording>().searchByCategory,
  ///           ), // Text
  /// ...
  /// ```
  W wordingBy<W extends BaseWording>() => AppLanguageLocale.of<W>(this).let(
        (it) {
          if (it == null) {
            FlutterError('AppLanguageLocale is null');
          }
          return it!.wordingInstance;
        },
      );

  /// DONG 30 09 2021
  ///
  /// ทำ extension method การดึง ภาษามาแสดงใน app เพื่อลดการ call method ที่มีความยาวให้สั้นลง
  ///
  /// Example :
  /// ```dart
  /// @override
  /// Widget build(BuildContext context) {
  /// ... (
  ///   child: Text(
  ///             // เรียกใช้ context.wordingS แทนการเรียก AppLanguageLocale.of(context)
  ///             context.wordingS.searchByCategory,
  ///           ), // Text
  /// ...
  /// }
  /// ```
  BaseWording get wording => AppLanguageLocale.of(this).let(
        (it) {
          if (it == null) {
            FlutterError('AppLanguageLocale is null');
          }
          return it!.wordingInstance;
        },
      );

  /// DONG 13 10 2021
  ///
  /// เรียกใช้งาน Color จาก [ThemeData] ที่กำหนดไว้ตามค่าสีของ Material Design
  /// - Primary
  /// - secondary
  ///
  /// โดยค่าสีที่ได้ออกมาจะมาจากที่กำหนดไว้ใน [AppColor.getLightTheme] / [AppColor.getDarkTheme]
  /// สามารถเรียกใช้ [BuildContext.appColor] เพื่อดึงค่าสีหลักจาก [ThemeData] มาใช้งานได้เลย
  ///
  /// Example:
  /// ```dart
  /// bottomNavigationBar: BottomNavigationBar(
  ///     selectedItemColor: context.colorApp.secondary,
  ///     ...
  /// )
  /// ```
  ///
  /// `Note:`
  /// ถ้าต้องการเรียกใช้งาน custom Color ที่กำหนดขึ้นมาเองใน [AppColor] ให้เรียกใช้จาก [Designable.appColor]
  /// แทนได้เลย เพราะไม่จำเป็นต้องใช้ [BuildContext] ในการเข้าถึง [AppColor]
  ///
  /// Example:
  /// ```dart
  /// bottomNavigationBar: BottomNavigationBar(
  ///     ...
  ///     unselectedItemColor: colorApp.someCustomColor,
  ///     ...
  /// )
  /// ```
  ///
  /// See also:
  ///
  ///  * [Material Design](https://material.io/design/color/the-color-system.html#color-usage-and-palettes)
  ColorScheme get appColor => Theme.of(this).colorScheme;
}
