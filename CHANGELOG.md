## [0.0.1] - 01-12-2021

* สร้าง App Core ที่จะใช้เป็นโครงสร้างหลักในการพัฒนา Mobile Application

## [0.0.2] - 13-12-2021

* ปรับรูปแบบโครงสร้าง Design ใหม่ ให้มีความ Dynamic มาขึ้น สามารถรองรับการ Customize จากระดับ App Project ได้
    - แยก Package Design ตามหน้าที่ colors, theme, dims, fonts, icons, string, style
    - เพิ่มรูปแบบการเรียกใช้  Design ให้สามารถกำหนด class mixin ที่ต้องการใช้ได้
    - เพิ่ม param ใน Function materialApp ให้สามารถส่ง Instance ของ Material เข้ามาตรงๆ ได้เลย และจะใช้ Instance นั้นเป็นหลักแทน Default

* เพิ่มวิธีเรียกใช้ Design 
    ```dart
    // เรียกใช้ appStyle จาก class mixin ที่มีการ customize ในระดับ App Project
    appStyleBy<CustomStyle>().someStyleText,

    // เรียกใช้ appColor จาก class mixin ที่มีการ customize ในระดับ App Project
    appColorBy<CustomColor>().someColor,

    // เรียกใช้ appTheme จาก class mixin ที่มีการ customize ในระดับ app project
    appTheme.getLightTheme(),
    appThemeBy<CustomTheme>().getLightTheme(),

    // เรียกใช้ appDimensions จาก class mixin ที่มีการ customize ในระดับ App Project
    appDimsBy<CustomDims>().some_size,

    // เรียกใช้ appIcon จาก class mixin ที่มีการ customize ในระดับ App Project
    appIconBy<CustomIcon>().someIcon,

    // เรียกใช้ wording จาก class mixin ที่มีการ customize ในระดับ App Project
    context.wordingBy<CustomWording>().someWording,
    ```

* เพิ่มโครงสร้าง Caching ที่ Local
