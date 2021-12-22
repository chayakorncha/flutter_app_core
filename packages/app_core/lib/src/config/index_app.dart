/// DONG 29 09 2021
///
/// ทำ file index ช่วยเลย import package ต่างๆที่เกี่ยวข้องกับ core ของ app
/// โดยใช้เงื่อนไขว่า
/// - เป็น package ของ flutter SDK และมีการเรียกใช้ใน package core ให้เอามา export ไว้ที่นี้
/// - เป็น package ของ app ที่อยู่ใน package /lib/core/ ให้เอามา export ไว้ที่ index_app.dart โดย
///   - ให้ใส่ path ../../src/ โดย ../../ แบบนี้ เผื่อในกรณีต้องยก package core ไปใช้ใน app ใหม่อนาคต จะได้ไม่มีปัญหาเรื่องชื่อ package name
/// - ถ้าเป็น package ที่อยู่ใน /lib/src/ ไม่จำเป็นต้องเอามาใส่ในนี้ ให้ไปสร้างแยกใน package /lib/src เอาอีกที

//package
export 'package:flutter/material.dart';
export 'package:flutter_localizations/flutter_localizations.dart';
export 'package:favorite_button/favorite_button.dart';
export 'package:provider/provider.dart';
export 'package:flutter_screenutil/flutter_screenutil.dart';
export 'package:flutter/services.dart';
export 'package:provider/provider.dart';
export 'package:json_annotation/json_annotation.dart';
export 'package:font_awesome_flutter/font_awesome_flutter.dart';
export 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
//res
export '../../src/res/dims/app_dimension.dart';
export '../../src/res/colors/app_color.dart';
export '../../src/res/styles/app_style.dart';
export '../../src/res/theme/app_theme.dart';
export '../../src/res/icons/app_icons.dart';
export '../../src/res/strings/app_language.dart';
export '../../src/res/strings/standard_wording.dart';
//l10n
export '../../src/l10n/l10n.dart';
//config
export '../../src/config/app_router.dart';
export '../../src/config/comapany_name.dart';
export '../../src/models/app_environment.dart';
export '../../src/config/env/app_environment_provider.dart';
//utils
export '../../src/data/cache/app_secure_storage.dart';
export '../../src/data/cache/app_storage.dart';
export '../../src/utils/helper/format.dart';
export '../../src/data/services/app_client.dart';
export '../../src/data/repository/result.dart';
export '../../src/data/repository/app_repository.dart';
//widgets
export '../../src/widgets/chip_label/chip_action.dart';
export '../../src/widgets/image/image_not_found.dart';
export '../../src/widgets/button/button_basket.dart';
export '../../src/widgets/button/button_favorite.dart';
export '../../src/widgets/chip_label/chip_action.dart';
export '../../src/widgets/button/botton_navigation_bar.dart';
export '../../src/widgets/button/button_see_more.dart';
export '../../src/widgets/product_card.dart';
export '../../src/widgets/product_card_slider.dart';
export '../../src/models/product.dart';
export '../../src/widgets/product_card.dart';
//provider
export '../../src/viewmodels/app_viewmodel.dart';
//extension
export '../../src/extensions/app_extensions.dart';
//constant
export '../../src/config/app_constants.dart';
