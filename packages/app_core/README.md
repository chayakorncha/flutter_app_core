# Introduction
`December 2021`

App Core เป็น Package ที่ทำขึ้นเพื่อเป็น Code ตั้งต้น รวบรวม Boilerplate Code ที่ต้อง implement ซ้ำๆ ทุกครั้งที่ขึ้น Project ใหม่ ช่วยเพิ่มความสะดวก รวดเร็วมากยิ่งขึ้น เพิ่มความ stable ของโครงสร้าง ใช้หลัก OOP เข้ามาช่วยจัดการกับการ Customize ของลูกค้าแต่เจ้า และใช้ Factory pattern ในการ provide instance class ที่มี logic แตกต่างกันออกไป

App Core ใช้ Design Pattern คือ MVVM (model, view, viewmodel) และ Repository Pattern มีโครงสร้างการทำงานคล้าย MVVM ของทางฝั่ง [Android Jetpack](https://developer.android.com/jetpack/guide) คือจะมี Viewmodel ทำหน้าที่เป็น State Holder ตัดสินใจกับ Use Cases  รวมถึงทำหน้าที่ติดต่อกับ Data Layer ผ่าน Repository รอรับ Result และส่งต่อให้ Widgets เพื่อแสดงผลบน UI ผ่าน LiveData ที่เอามาครบ Consumer ของ Provider อีกชั้นนึง

![Guide to app architecture](https://akexorcist.dev/content/images/2020/12/make_repository_in_mvvm_for_android_testable-001.jpeg)
> Local database จะขึ้นอยู่แต่ละ Project ว่าจะใช้โครงการเก็บข้อมูลแบบไหน ใน app core จึงมี class ตั้งต้นที่มี method ของการเก็บ key-value (Shared Preferences) เท่านั้น ถ้า project ไหน จำเป็นต้องใช้ SQLite ต้อง implement แยกเองในแต่ละ Project
>  ###### Note :   Activity/Fragment = Widget

App Core ใช้ state management คือ  [Provider](https://pub.dev/packages/provider)

โครงสร้างหลักจะเป็นแบ่งเป็น Package ย่อยๆ ตามแต่ละหน้าที่ ดังนี้

- **config** : เก็บรวบรวม Config, Constance Value, Environment
- **data** : รวบรวมการทำงานเกี่ยวข้องกับ Data layer ทั้งหมด เช่น Service, dio, local caching   
- **extensions** : รวบรวม extensions method ต่างๆ
- **l10n** : รวบรวมการทำงานที่ข้องกับ Localizations
- **models** : รวบรวม Models หลักที่ใช้ตามโครงสร้าง ST
- **res** : รวบรวมเกี่ยวกับ Resources Design
	- colors
	- dimensions
	- fonts
	- icons
	- string
	- styles
	- theme
- **utils** : รวบรวม static method หรือ helper ที่จำเป็นต้องใช้
- **viewmodels** :  Viewmodel หลักที่ใช้เป็นโครงให้ใช้  inherited ไปใช้งาน
- **framework_app.dart** : เป็น Class หลักของ AppCore ที่มีการ implement Class Widget หลัก สำหรับเป็น Class ตั้งต้น widget
	- StatelessWidgetApp ใช้แทน StatelessWidget
	- StatefulWidgetApp ใช้แทน StatefulWidget

# Getting Started

`21 Dec 2021`

app_core คือ package ที่สร้างขึ้นเพื่อความ flexible โดย code ที่ถูก clone ลงมา จะถูกเก็บเป็น cache เอาไว้ 

app_core สามารถ add เข้าไปที่ `dependencies` ใน `pubspec.yaml` ได้ตามขั้นตอน ดังนี้

### Setup Dependencies

ไปที่ file `pubspec.yaml` ภายใต้ **dependencies:**

```yaml
dependencies:
  flutter:
	sdk: flutter
	  
  # My Core dependency
  app_core:
    git:
      url: {azure_clone_url}
      # ref คือ commit point ที่ต้องการดึง Code ลงมาใช้ 
      # สามารถกำหนด Commit ref id ได้ เช่น
      # ref: c495XXX
      # คือ commit ref id tag-version 0.0.1
      ref: develop # ref ไปที่ branch develop
```
 
>  - ใช้ command `flutter pub get` ในการดึงลงมาในครั้งแรก 
>  - ใช้ command `flutter clean && flutter pub get && flutter packages upgrade` เพื่อ update source code app_core เมื่อมีการเปลี่ยนแปลงที่ remote

**Optional :**
ถ้าต้องการใช้ fonts ที่อยู่ใน app_core ทำขั้นตอนดังนี้
ใน file `pubspec.yaml` ภายใต้ **flutter:**
```yaml
flutter:
  fonts:
    - family: Kanit
      fonts:
        - asset: packages/app_core/core/res/fonts/Kanit-Regular.ttf
```
---
### How to use 

***การเข้าถึง class ใดๆ ใน app_core ให้ import app_core.dart'***
***! ยกเว้น models class ต่างๆ ให้ทำการ import เพิ่มเติมตามที่จะใช้งาน***
`import  'package:app_core/app_core.dart';`

app_core ออกแบบมาให้รองรับ ProductFlavor / Scheme ในกรณีที่อนาคตต้อง Customize code ให้กับลูกค้าหลายเจ้า แต่ใช้ code base เดียวกัน ทำให้ไม่จำเป็นต้องแยก Project ง่ายต่อการ maintain code ยิ่งขึ้น

จะยกตัวอย่างการเรียกใช้งานใน `main.dart` ที่จะมีการ implement code ทั้งที่ new file ในระดับ app project และเรียกใช้  class ที่อยู่ใน app_core

#### void mainCommon()

ขั้นตอนแรกใน `main.dart` ให้เพิ่ม method `mainCommon` ขึ้นมาใหม่ ตามตัวอย่าง
```dart
void mainCommon(AppEnvironmentProvider  appEnv)
```

เพื่อใช้เป็น main method หลักที่รองรับการเรียกใช้งานจากหลาย Flavor จากนั้นทำการเรียกใช้ method 
`mainCommon` ใน method `main` เดิม  ซึ่ง method `mainCommon` มี param `AppEnvironmentProvider` pass เข้ามาด้วย

```dart
void main() {
  mainCommon(...);
}

void  mainCommon(AppEnvironmentProvider appEnv) {...}
```

#### AppEnvironmentProvider

`AppEnvironmentProvider<Repository>` เป็น `ChangeNotifier` หลักตัวนึง ที่ทำหน้าที่ในการ Hold `AppEnvironment`  ซึ่งสามารถเข้าถึงได้จากที่ไหนใน app ก็ได้

จากนั้น ให้ new file .dart ขึ้นมาใหม่ เช่น `StandardEnvironment` ที่ extends มาจาก `AppEnvironmentProvider` ซึ่ง `AppEnvironmentProvider` สามารถกำหนด generic type ที่จะทำหน้าเป็น Repository ในตัวอย่างจะใช้ชื่อ `IAuthenDatasource`

```dart
// standard_evironment.dart
class StandardEnvironment extends AppEnvironmentProvider<IAuthenDatasource>
```

`AppEnvironmentProvider` จะมี `required` constructor ดังนี้
- `EnvironmentState` : กำหนด EnvironmentState ณ ตอน runtime 
	- `EnvironmentState.dev`
	- `EnvironmentState.stage`
	- `EnvironmentState.prod`
- `AppRouter` : กำหนด route ต่างๆ ภายใน App
- `Widget` : child widget

**Optional :** 
- `RepositoryBuilder` : เมื่อจำเป็นต้องการใช้ endpoint ในการ init `AppClient` จะทำหน้าที่ในการ callback กลับมาทันทีหลังจากที่ `lookupBaseUrl` ถูกเรียก พร้อมกับ pass baseUrl มาด้วย

ตัวอย่าง : 
```dart
void main() {
  mainCommon(
    StandardEnvironment(
      EnvironmentState.dev,
      repoBuilder: (baseUrl) => AuthenRepository(
        localDataSource: LocalStorageApp.defaultStorage(),
        remoteDataSource: AppClient.init(
          newBaseUrl: baseUrl,
        ),
      ),
      child: const MyApp(),
      appRouter: RouterManager(),
    ),
  );
}
```

เมื่อ extends `AppEnvironmentProvider` มาแล้ว จำเป็นต้อง `@override` method  ตามตัวอย่างด้านล่าง

```dart
class StandardEnvironment extends AppEnvironmentProvider<IAuthenDatasource> {

 @override
 Future<AppEnvironment> loadEnv(BuildContext  context) {...}

 @override
 Map<EndpointsType, String> lookupBaseUrl() {...}
 
}
```

- `loadEnv` : คือ method ในการสร้าง `AppEnvironment` จังหวะนี้จะเป็นการกำหนดค่าทุกอย่างที่จำเป็น รวมถึงการ authen ต่างๆ ถ้าหากจำเป็น
- `lookupBaseUrl` : กำหนด endpoint ในแต่ละ `EnvironmentState`

#### IAuthenDatasource

คือ interface class ที่กำหนดการทำงานให้ Repository ตามแต่ละหน้าที่ของมัน

```dart
// i_authen_datasource.dart
abstract class IAuthenDatasource {

  Future<Result<Customer>> authen();

  Future<Result<CustomerLogin>> signIn(String  username, String  password);
  
}
```

> `IAuthenDatasource` คือ abstract class ที่จะกำหนดวิธีการเข้าถึง datasource

#### AppRepositoty

abstract  class ที่ Repository ทุก class ควรที่จะ extends มาจาก `AppRepositoty` เพราะ `AppRepositoty` จะต้องกำหนด Generic Type ดังนี้
- `LocalDataSource`  : Type ของ Local Database
	- app_core จะมี `LocalStorageApp.defaultStorage()` provide ให้ สามารถเรียกใช้งานได้เลย และใช้ [flutter_secure_storage](https://pub.dev/packages/flutter_secure_storage) เป็น database แบบ NoSQL
- `RemoteDateSource` : Type ของ  Remote Datasource
	- app_core จะมี `AppClient` provide ให้ เป็นการติดต่อกับ service ตามโครงสร้างของ E-Order สามารถเรียกใช้งานได้เลย แต่จำเป็นต้อง init baseUrl ก่อนใช้งานครั้งแรกเสมอ และใช้ [retrofit](https://pub.dev/packages/retrofit) ในการเชื่อมต่อกับ service

ตัวอย่าง Code สมบูรณ์ :

```dart
void main() {
  mainCommon(
    StandardEnvironment(
      EnvironmentState.dev,
      repoBuilder: (baseUrl) => AuthenRepository(
        localDataSource: LocalStorageApp.defaultStorage(),
        remoteDataSource: AppClient.init(
          newBaseUrl: baseUrl,
        ),
      ),
      child: const MyApp(),
      appRouter: RouterManager(),
    ),
  );
}

void mainCommon(AppEnvironmentProvider appEnv) async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then(
    (_) {
      runApp(
        MultiProvider(
          providers: [
            ChangeNotifierProvider.value(
              value: appEnv,
            )
          ],
          child: Consumer<AppEnvironmentProvider>(
            builder: (context, provider, _) {
              return FutureBuilder<AppEnvironment>(
                future: provider.loadEnv(context),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    final environment = snapshot.data!;
                    return environment.child;
                  }
                  return Container();
                },
              );
            },
          ),
        ),
      );
    },
  );
}
```
