/// DONG
///
/// Extension สำหรับต่อท้าย num ที่เป็น nullable
extension NumberNullableExtensions<T extends num> on T? {
  /// ใช้สำหรับ Default ค่าให้หากเป็น nullable
  ///
  /// Example:
  /// ```dart
  /// void someMethod({int? someValue}) {
  ///   // ปกติจะใช้ ?? เพื่อ default ค่า
  ///   // สามารถใช้ท่านี้แทนได้
  ///   return result.plus(someValue.orDefault(1));
  /// }
  /// ```
  ///
  /// Param:
  /// - [defaultValue] สามารถกำหนดค่า default ได้หากเป็น Null ได้
  T orDefault(T defaultValue) => this ?? defaultValue;
}

/// DONG
///
/// Extension สำหรับ Convert หรือ Operate ต่างๆ ที่เกี่ยวกับ number
extension NumberExtensions<T extends num> on T {
  /// ใช้เป็น operator แทน `+` ได้ เพื่อให้ Code ดูและอ่านง่ายขึ้น
  /// แต่ instance จะไม่ถูกเปลี่ยน แต่ถูกแค่กระทำการและ return ค่าออกไปเท่านั้น
  ///
  /// Example:
  /// ```dart
  /// var value = 1;
  /// return value.plus(1); // return 2 แค่ value ยังมีค่าเป็น 1
  /// ```
  ///
  /// Param:
  /// - [other] กำหนดค่าที่ต้องการเข้ามากระทำการตาม operator
  T plus(T other) => ((this) + other) as T;

  /// ใช้เป็น operator แทน `-` ได้ เพื่อให้ Code ดูและอ่านง่ายขึ้น
  /// แต่ instance จะไม่ถูกเปลี่ยน แต่ถูกแค่กระทำการและ return ค่าออกไปเท่านั้น
  ///
  /// Example:
  /// ```dart
  /// var value = 2;
  /// return value.minus(1); // return 1 แต่ value ยังมีค่าเป็น 2
  /// // OR
  /// final element = someList[length.minus(1)];
  /// ```
  ///
  /// Param:
  /// - [other] กำหนดค่าที่ต้องการเข้ามากระทำการตาม operator
  T minus(T other) => ((this) - other) as T;

  /// ใช้เป็น operator แทน `*` ได้ เพื่อให้ Code ดูและอ่านง่ายขึ้น
  /// แต่ instance จะไม่ถูกเปลี่ยน แต่ถูกแค่กระทำการและ return ค่าออกไปเท่านั้น
  ///
  /// Example:
  /// ```dart
  /// var value = 2;
  /// return value.times(1); // return 2 แต่ value ยังมีค่าเป็น 2
  /// ```
  ///
  /// Param:
  /// - [other] กำหนดค่าที่ต้องการเข้ามากระทำการตาม operator
  T times(T other) => ((this) * other) as T;

  /// ใช้เป็น operator แทน `/` ได้ เพื่อให้ Code ดูและอ่านง่ายขึ้น
  /// แต่ instance จะไม่ถูกเปลี่ยน แต่ถูกแค่กระทำการและ return ค่าออกไปเท่านั้น
  ///
  /// Example:
  /// ```dart
  /// var value = 2;
  /// return value.div(1); // return 2 แต่ value ยังมีค่าเป็น 2
  /// //OR
  /// var value = 2;
  /// return value.div(0.5); // return 4 แต่ value ยังมีค่าเป็น 2
  /// ```
  ///
  /// Param:
  /// - [other] กำหนดค่าที่ต้องการเข้ามากระทำการตาม operator
  T div(num other) => (runtimeType.let(
        (it) {
          switch (it) {
            case int:
              return this ~/ other;
            default:
              return this / other;
          }
        },
      )) as T;

  /// ใช้เป็น operator แทน `%` ได้ เพื่อให้ Code ดูและอ่านง่ายขึ้น
  /// แต่ instance จะไม่ถูกเปลี่ยน แต่ถูกแค่กระทำการและ return ค่าออกไปเท่านั้น
  ///
  /// Example:
  /// ```dart
  /// var value = 20;
  /// return value.mod(3); // return 2 แต่ value ยังมีค่าเป็น 20
  /// ```
  ///
  /// Param:
  /// - [other] กำหนดค่าที่ต้องการเข้ามากระทำการตาม operator
  num mod(num other) => this % other;

  /// ใช้กำหนดค่าที่ต้องเป็น หากมีค่าไม่เท่ากับ [value] จะทำการ return [value]
  /// มีค่าเท่ากับการเช็ค condition if !=
  ///
  /// Example:
  /// ```dart
  /// var result = 0;
  /// // logic...
  /// // ถ้า result มีค่าไม่เท่ากับ 5 จะ return 5 ออกไป
  /// // แต่ instance ของ result จะไม่ถูกเปลี่ยน
  /// return result.mustBe(5);
  /// ```
  ///
  /// Param:
  /// - [value] กำหนดค่าที่ต้องการเข้ามาตรวจสอบ
  T mustBe(T value) => this != value ? value : this;

  /// ใช้กำหนดค่าที่ต้องเป็น หากมีค่าน้อยกว่า [value] จะทำการ return [value]
  /// มีค่าเท่ากับการเช็ค condition if <
  ///
  /// Example:
  /// ```dart
  /// var result = 0;
  /// // logic...
  /// // ถ้า result มีค่าน้อยกว่า 5 จะ return 5 ออกไป
  /// // แต่ instance ของ result จะไม่ถูกเปลี่ยน
  /// return result.moreThan(5);
  /// ```
  ///
  /// Param:
  /// - [value] กำหนดค่าที่ต้องการเข้ามาตรวจสอบ
  T moreThan(T value) => this < value ? value : this;

  /// ใช้กำหนดค่าที่ต้องเป็น หากมีค่ามากกว่า [value] จะทำการ return [value]
  /// มีค่าเท่ากับการเช็ค condition if >
  ///
  /// Example:
  /// ```dart
  /// var result = 0;
  /// // logic...
  /// // ถ้า result มีค่ามากกว่า 5 จะ return 5 ออกไป
  /// // แต่ instance ของ result จะไม่ถูกเปลี่ยน
  /// return result.lessThan(5);
  /// ```
  ///
  /// Param:
  /// - [value] กำหนดค่าที่ต้องการเข้ามาตรวจสอบ
  T lessThan(T value) => this > value ? value : this;

  /// ใช้ตรวจสอบค่าว่ามีค่าตาม [value] หรือไม่
  /// มีค่าเท่ากับการเช็ค condition if ==
  ///
  /// Example:
  /// ```dart
  /// var result = 0;
  /// // logic...
  /// if(result.isValue(1)) {
  ///   //..
  /// }
  /// ```
  ///
  /// Param:
  /// - [value] กำหนดค่าที่ต้องการเข้ามาตรวจสอบ
  bool isValue(T value) => this == value;

  /// ใช้ตรวจสอบค่าว่ามีค่ามากกว่า [value] หรือไม่
  /// มีค่าเท่ากับการเช็ค condition if >
  ///
  /// Example:
  /// ```dart
  /// var value1 = 0;
  /// var value2 = 0;
  /// // logic...
  /// if(value1.isMoreThan(value2)) {
  ///   //..
  /// }
  /// ```
  ///
  /// Param:
  /// - [value] กำหนดค่าที่ต้องการเข้ามาตรวจสอบ
  bool isMoreThan(T value) => this > value;

  /// ใช้ตรวจสอบค่าว่ามีค่าน้อยกว่า [value] หรือไม่
  /// มีค่าเท่ากับการเช็ค condition if <
  ///
  /// Example:
  /// ```dart
  /// var value1 = 0;
  /// var value2 = 0;
  /// // logic...
  /// if(value1.isLessThan(value2)) {
  ///   //..
  /// }
  /// ```
  ///
  /// Param:
  /// - [value] กำหนดค่าที่ต้องการเข้ามาตรวจสอบ
  bool isLessThan(T value) => this < value;

  /// ใช้ตรวจสอบค่าว่ามีค่ามากกว่าหรือเท่ากับ [value] หรือไม่
  /// มีค่าเท่ากับการเช็ค condition if >=
  ///
  /// Example:
  /// ```dart
  /// var value1 = 0;
  /// var value2 = 0;
  /// // logic...
  /// if(value1.isMoreEquals(value2)) {
  ///   //..
  /// }
  /// ```
  ///
  /// Param:
  /// - [value] กำหนดค่าที่ต้องการเข้ามาตรวจสอบ
  bool isMoreEquals(T value) => this >= value;

  /// ใช้ตรวจสอบค่าว่ามีค่าน้อยกว่าหรือเท่ากับ [value] หรือไม่
  /// มีค่าเท่ากับการเช็ค condition if <=
  ///
  /// Example:
  /// ```dart
  /// var value1 = 0;
  /// var value2 = 0;
  /// // logic...
  /// if(value1.isLessEquals(value2)) {
  ///   //..
  /// }
  /// ```
  ///
  /// Param:
  /// - [value] กำหนดค่าที่ต้องการเข้ามาตรวจสอบ
  bool isLessEquals(T value) => this <= value;

  /// Convert วินาที => Millisecond
  ///
  /// Example:
  /// ```dart
  /// final countDown = 1.secondsToMillis
  /// ```
  int get secondsToMillis => Duration(seconds: this as int).inMilliseconds;

  /// Convert นาที => Millisecond
  ///
  /// Example:
  /// ```dart
  /// final countDown = 1.minutesToMillis
  /// ```
  int get minutesToMillis => Duration(minutes: this as int).inMilliseconds;

  /// Convert ชั่วโมง => Millisecond
  ///
  /// Example:
  /// ```dart
  /// final countDown = 1.hoursToMillis
  /// ```
  int get hoursToMillis => Duration(hours: this as int).inMilliseconds;

  /// Convert วัน => Millisecond
  ///
  /// Example:
  /// ```dart
  /// final countDown = 1.daysToMillis
  /// ```
  int get daysToMillis => Duration(days: this as int).inMilliseconds;
}

/// DONG
///
/// Extensions สำหรับสร้าง ScopeFunction สามารนำไปต่อกับ Nullable ได้ทุกตัว
/// ลดการเช็ค if null ก่อนจะทำการอะไรต่อ เป็นการทำ Chaining Method ให้มี wording
/// ที่สื่อความหมายมากยิ่งขึ้น
extension ObjectExtensions<T> on T {
  /// เมื่อต้องการเข้าถึงหรือ assign ค่าตัวแปรใดๆ ที่เป็น Nullable
  /// ปกติต้องใช้ เพื่อจะใช้งานหรือ assign ตัวแปร value ได้
  /// ```dart
  /// var String anotherValue = '';
  /// ... // logic
  /// if(value != null) {
  ///   anotherValue = value;
  /// ...
  /// }
  /// ```
  ///
  /// สารมารถลดรูปด้านบนได้ด้วยการ
  /// ```dart
  /// var String anotherValue = '';
  /// ... // logic
  /// value?.let((it) => anotherValue = it); // it = value
  /// ```
  /// OR
  /// ```dart
  /// String greet(String? yourName) {
  ///   return yourName?.let((name) => 'Hi! $name') ?? 'Oops!';
  /// }
  /// ```
  ///
  /// Param:
  /// - [action] คือ [Function] ที่จะ call กลับไปหา caller พร้อมกับ [it] ที่เป็น Instance
  ///   ของ [T] ไปให้ ตรงจุดที่เรียก [let] สามารถเข้าถึง instance ผ่าน [it] ได้เลย
  R let<R>(R Function(T it) action) => action.call(this);

  /// ใช้สำหรับกระทำการกับ [T] เพิ่มเติมหรือต่อเนืองจากการกระทำการครั้งก่อนหน้า
  /// และไม่มีการ return ค่าการเปลี่ยนแปลงค่าใดๆกลับออกไปจาก [action]
  ///
  /// ```dart
  /// calculateVat(total).also((it) {
  ///   setTotalInVatToShow(it);
  /// });
  /// ```
  /// Param:
  /// - [action] คือ [Function] ที่จะ call กลับไปหา caller พร้อมกับ [it] ที่เป็น Instance
  ///   ของ [T] ไปให้ ตรงจุดที่เรียก [also] สามารถเข้าถึง instance ผ่าน [it] ได้เลย
  T also(void Function(T it) action) {
    action(this);
    return this;
  }

  /// ใช้เมื่อต้องการเช็ค condition บางอย่างก่อนที่จะ assign ค่าให้กับตัวแปรนั้นๆ
  ///
  /// Example:
  /// ```dart
  /// // ปกติ
  /// String text = '';
  /// if(someCondition) {
  ///   text = 'assign';
  /// }else {
  ///   text = 'another assign';
  /// }
  ///
  /// // ใช้ condition
  /// String text = condition(() {
  /// // แทรก Logic บางอย่างตรงนี้ได้
  ///   if(someCondition) {
  ///     return 'assign';
  ///   }else {
  ///     return 'another assign';
  ///   }
  /// });
  /// ```
  R condition<R>(R Function() action) => action();
}

/// DONG
///
/// Extension ที่จัดการกับ [String] ที่ต้องการทำการบางอย่างเช่นการแปลง [String] => [int]
/// โดยสามารถเรียกผ่านตัวแปร null ได้เลย
extension StringExtensions on String? {
  /// ทำการ [int.parse] โดยจะเช็ค format ก่อนว่ามี char ที่จะส่งผลทำให้ parse ไม่ได้
  /// อยู่ด้วยหรือไม่ ถ้ามีจะทำการ replace ออกให้ก่อนจะ [int.parse]
  /// หรือเป็น null จะ return [defaultValue] ให้
  ///
  /// Example:
  /// ```dart
  /// '1'.toInt(); // 1
  ///
  /// someNullableString.toInt(defaultValue: 1); // value or defaultValue (1)
  ///
  /// '1,000'.toInt(); // 1000
  ///
  /// '1000.1'.toInt(); // 1000
  /// ```
  /// Param:
  /// - [defaultValue] สามารถกำหนดค่า default ได้หากไม่สามารถ parse ได้
  int toInt({int defaultValue = 0}) =>
      this?.let(
        (it) => int.parse(
          it.replaceAll(',', '').let(
                (it) => it.substring(
                  0,
                  it.lastIndexOf('.'),
                ),
              ),
        ),
      ) ??
      defaultValue;

  /// ทำการ [double.parse] โดยจะเช็ค format ก่อนว่ามี char ที่จะส่งผลทำให้ parse ไม่ได้
  /// อยู่ด้วยหรือไม่ ถ้ามีจะทำการ replace ออกให้ก่อนจะ [double.parse]
  /// หรือเป็น null จะ return [defaultValue] ให้
  ///
  /// Example:
  /// ```dart
  /// '1'.toDouble(); // 1.0
  ///
  /// someNullableString.toDouble(defaultValue: 1.0); // value or defaultValue (1.0)
  ///
  /// '1,000'.toDouble(); // 1000.0
  ///
  /// '1000.1'.toDouble(); // 1000.1
  /// ```
  ///
  /// Param:
  /// - [round] สามารถกำหนดจำนวนทศนิยมได้ default = 2
  /// - [defaultValue] สามารถกำหนดค่า default ได้หากไม่สามารถ parse ได้
  double toDouble({int round = 2, double defaultValue = 0.0}) =>
      this?.let((it) {
        return double.parse(
          double.parse(it.replaceAll(',', '')).toStringAsFixed(round),
        );
      }) ??
      defaultValue;

  /// ทำการ [int.parse] โดยจะเช็ค format ก่อนว่ามี char ที่จะส่งผลทำให้ parse ไม่ได้
  /// อยู่ด้วยหรือไม่ ถ้ามีจะทำการ replace ออกให้ก่อนจะ [int.parse]
  /// หรือเป็น null หรือ ค่าว่าง จะ return [defaultValue] ให้
  ///
  /// Example:
  /// ```dart
  /// '1'.toIntEmptyAble(); // 1
  ///
  /// someNullableString.toIntEmptyAble(defaultValue: 1); // value or defaultValue (1)
  ///
  /// '1,000'.toIntEmptyAble(); // 1000
  ///
  /// '1000.1'.toIntEmptyAble(); // 1000
  ///
  /// ''.toIntEmptyAble(); // 0
  /// ```
  /// Param:
  /// - [defaultValue] สามารถกำหนดค่า default ได้หากไม่สามารถ parse ได้
  int toIntEmptyAble({int defaultValue = 0}) =>
      this?.let((it) {
        if (it.isNotEmpty) {
          return it.toInt();
        }
        return defaultValue;
      }) ??
      defaultValue;

  /// ทำการ [double.parse] โดยจะเช็ค format ก่อนว่ามี char ที่จะส่งผลทำให้ parse ไม่ได้
  /// อยู่ด้วยหรือไม่ ถ้ามีจะทำการ replace ออกให้ก่อนจะ [double.parse]
  /// หรือเป็น null หรือ ค่าว่าง จะ return [defaultValue] ให้
  ///
  /// Example:
  /// ```dart
  /// '1'.toDoubleEmptyAble(); // 1.0
  ///
  /// someNullableString.toDoubleEmptyAble(defaultValue: 1.0); // value or defaultValue (1.0)
  ///
  /// '1,000'.toDoubleEmptyAble(); // 1000.0
  ///
  /// '1000.1'.toDoubleEmptyAble(); // 1000.1
  /// ```
  /// Param:
  /// - [defaultValue] สามารถกำหนดค่า default ได้หากไม่สามารถ parse ได้
  double toDoubleEmptyAble({int round = 2, double defaultValue = 0.0}) =>
      this?.let((it) {
        if (it.isNotEmpty) {
          return it.toDouble(
            round: round,
            defaultValue: defaultValue,
          );
        }
        return defaultValue;
      }) ??
      defaultValue;

  /// ใช้สำหรับ defautl value empty ให้กับ String ที่เป็น Nullable หากมีค่าเป็น Null
  /// จะ Return ค่าว่างให้ มีความหมายเดี๋ยวกันกับ
  /// ```dart
  /// value ?? '';
  /// ```
  /// แต่สามารถใช้ [orEmpty] ให้สื่อความหมายมากยิ่งขึ้นได้
  ///
  /// Example:
  /// ```dart
  /// value.orEmpty;
  /// ```
  String get orEmpty => this ?? '';

  /// ใช้สำหรับ defautl value empty ให้กับ String ที่เป็น Nullable หรือเป็นค่าว่าง
  /// หากมีค่าเป็น Null
  /// จะ Return [defaultValue] มีความหวานเดี๋ยวกันกับ
  /// ```dart
  /// value ?? 'someDefauldValue';
  /// // OR
  /// if(value.isEmpty()) {
  ///   value = 'someDefauldValue';
  /// }
  /// // OR
  /// if(value == null || value.isEmpty()) {
  ///   value = 'someDefauldValue';
  /// }
  /// ```
  /// แต่สามารถใช้ [ifEmpty] ให้สื่อความหมายมากยิ่งขึ้น และลดรูปจากตัวอย่างด้านบนได้
  ///
  /// Example:
  /// ```dart
  /// value.ifEmpty('someDefauldValue');
  /// ```
  String ifEmpty(String defaultValue) {
    return orEmpty.isEmpty ? defaultValue : orEmpty;
  }

  /// ใช้เป็น operator แทน `+` ได้ เพื่อให้ Code ดูและอ่านง่ายขึ้น
  /// แต่ instance จะไม่ถูกเปลี่ยน แต่ถูกกระทำการและ return ค่าออกไปเท่านั้น
  ///
  /// Example:
  /// ```dart
  /// var value = '';
  /// return value.plus('someText'); // return 'someText' แค่ value ยังมีค่าเป็น ''
  /// ```
  ///
  /// Param:
  /// - [other] กำหนดค่าที่ต้องการเข้ามากระทำการตาม operator
  String plus(String other) => StringBuffer().let(
        (it) {
          it.write(this);
          it.write(other);
          return it.toString();
        },
      );
}

/// DONG
///
/// Extension ที่จัดการกับ [List] โดยสามารถเรียกผ่านตัวแปร null ได้เลย
/// ใช้เพื่อลดการเขียนโค้ดที่ซ้ำซ่้อนหรือต้องเขียนเยอะๆ ยาวๆ มี logic หรือการ loop เยอะๆ
extension IterableExtensions<E> on List<E>? {
  /// สามารถนำเอาต่อกับ [List] ที่เป็น Nullable แต่ไม่ต้องการให้ตัวแปรนั้นมีค่าเป็น null
  /// ต้องการให้ default ด้วย emptyList
  ///
  ///
  /// Example:
  /// ```dart
  /// List<String> someListNullable;
  /// // ปกติอาจจะใช้
  /// return someListNullable ?? List.empty();
  /// // OR
  /// return someListNullable ?? [];
  ///
  /// // สามารถลดรูปด้านบนได้ด้วยการใช้
  /// return someListNullable.orEmpty;
  /// ```
  List<E> get orEmpty => this ?? List<E>.empty();

  /// ใช้สำหรับ loop [List] เพื่อสร้าง [List] ใหม่แต่ต้องเช็ค Condition ของแต่ละ element
  /// ก่อนที่จะ add element นั้นเข้าไปใน list สามารถใช้ [toListCondition] สำหรับจัดการตรงนั้นได้
  /// โดยจะ call [condition] เพื่อเช็คก่อนว่า element นั้นตรง condition หรือไม่
  /// สุดท้ายจะ return [List] ใหม่ออกไป
  ///
  /// Example:
  /// ```dart
  /// final result = someMethod().toListCondition((element) => element.userName.isNotEmpty);
  ///
  /// List<String> someMethod() => //...
  /// ```
  ///
  /// Param:
  /// - [condition] กำหนด Function ไว้ตรวจสอบ Condition ให้จะมี element ของ [List]
  ///   ออกไปด้วย
  List<E> toListCondition(bool Function(E element) condition) {
    if (orEmpty.isEmpty) {
      return List.empty();
    }
    final result = List<E>.empty();
    for (var element in this!) {
      if (condition(element)) {
        result.add(element);
      }
    }
    return result;
  }

  /// ใช้สำหรับ loop [List] เพื่อสร้าง [List] ใหม่แต่ต้องเช็ค Condition ของแต่ละ element
  /// ก่อนที่จะ add element นั้นเข้าไปใน list สามารถใช้ [toListConditionIndex] สำหรับจัดการตรงนั้นได้
  /// โดยจะ call [condition] เพื่อเช็คก่อนว่า element นั้นตรง condition หรือไม่
  /// สุดท้ายจะ return [List] ใหม่ออกไป
  ///
  /// Example:
  /// ```dart
  /// final result = someMethod().toListConditionIndex((index, element) => 
  ///   element.userName.isNotEmpty
  /// );
  ///
  /// List<String> someMethod() => //...
  /// ```
  ///
  /// Param:
  /// - [condition] กำหนด Function ไว้ตรวจสอบ Condition ให้จะมี index และ element
  ///  ของ [List] ออกไปด้วย
  List<E> toListConditionIndex(bool Function(int index, E element) condition) {
    if (orEmpty.isEmpty) {
      return List.empty();
    }
    final result = List<E>.empty();
    this!.asMap().forEach((index, value) {
      if (condition(index, value)) {
        result.add(value);
      }
    });
    return result;
  }

  /// ใช้สำหรับ loop [List] เพื่อหา element ใน list ตาม [condition] ที่กำหนด
  ///
  /// Example:
  /// ```dart
  /// final result = List.empty();
  /// someMethod().forEachCondition(
  ///   condition: (e) => e.isNotEmpty,
  ///   onFound: (e) => result.add(e),
  /// );
  ///
  /// List<String> someMethod() {
  ///   return // someList
  /// }
  /// ```
  void forEachCondition({
    required bool Function(E element) condition,
    required void Function(E element) onFound,
  }) {
    if (orEmpty.isNotEmpty) {
      for (var element in this!) {
        if (condition(element)) {
          onFound(element);
        }
      }
    }
  }
}
