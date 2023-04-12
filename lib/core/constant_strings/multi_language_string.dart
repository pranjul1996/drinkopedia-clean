import 'package:drinkopedia/core/constant_strings/string_resources.dart';
import 'package:get/get.dart';

/*
 In this class, you can defined all the other language strings such as french, spanish etc.
 Here we have denied french strings. You can define different keys for different languages.
 */


class MultiLanguageString extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'Fr': {
      StringsResources.email: "E-mail",
      StringsResources.businessEmail: "E-mail professionnel",
      StringsResources.resetMyPassword: "Réinitialiser mon mot de passe",
      StringsResources.Signin: "S'identifier",
      StringsResources.products: "Des produits",
      StringsResources.success: "SUCCÈS",
      StringsResources.fail: "ÉCHOUER",
      StringsResources.password: "Mot de passe",
      StringsResources.price: "Prix",
    }
  };
}
