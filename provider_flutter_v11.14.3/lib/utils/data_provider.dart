import 'package:flutter/cupertino.dart';
import 'package:lotech/main.dart';
import 'package:lotech/models/about_model.dart';
import 'package:lotech/utils/extensions/context_ext.dart';
import 'package:lotech/utils/images.dart';

List<AboutModel> getAboutDataModel({BuildContext? context}) {
  List<AboutModel> aboutList = [];

  if(rolesAndPermissionStore.termCondition)
  aboutList.add(AboutModel(title: context!.translate.lblTermsAndConditions, image: termCondition));
  if(rolesAndPermissionStore.privacyPolicy)
  aboutList.add(AboutModel(title: languages.lblPrivacyPolicy, image: privacy_policy));
  if(rolesAndPermissionStore.helpAndSupport)
  aboutList.add(AboutModel(title: languages.lblHelpAndSupport, image: termCondition));
  aboutList.add(AboutModel(title: languages.lblHelpLineNum, image: calling));
  aboutList.add(AboutModel(title: languages.lblRateUs, image: rateUs));

  return aboutList;
}