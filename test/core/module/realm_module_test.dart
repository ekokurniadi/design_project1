import 'package:flutter_pos/core/config/envi/envi.dart';
import 'package:flutter_pos/core/module/realm_module.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:realm/realm.dart';

import '../../helpers/helper.dart';


class MockRealmModule extends RealmModule {}

void main() {
  late MockRealmModule realmModule;

  setUp((){
    realmModule = MockRealmModule();
  });

  setUpAll(()async{
    await TestModule.setup();
  });

  test('should return realm database instance from realm module', (){
    final realm = realmModule.provideRealm(Envi());

    expect( realm, isA<Realm>());
  });
}