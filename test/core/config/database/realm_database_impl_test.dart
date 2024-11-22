import 'package:flutter_pos/core/config/database/realm_database_impl.dart';
import 'package:flutter_pos/core/config/database/schemas/dashboard_schema.schema.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:realm/realm.dart';

import '../../../mocks.mocks.dart';

void main() {
  late RealmDatabaseImpl realmDatabase;
  late MockRealm realm;

  setUp(() {
    realm = MockRealm();
    realmDatabase = RealmDatabaseImpl(realm);
    provideDummy<DashboardSchema>(DashboardSchema(0, mode: 'DUMMY'));
  });

  group('Realm Database', () {
    group('read', () {
      test('should return ronpos dashboard schema when find success', () {
        //arrange
        when(realm.find<DashboardSchema>(1)).thenAnswer(
          (_) => DashboardSchema(1, mode: 'RONPOS'),
        );

        //act
        final result = realmDatabase.find<DashboardSchema, int>(1);

        //assert
        expect(result, isA<DashboardSchema>());
        expect(result?.id, 1);
        expect(result?.mode, 'RONPOS');

        verify(realm.find(1)).called(1);
      });

      test('should return null when data not found', () {
        //arrange
        when(realm.find<DashboardSchema>(1)).thenAnswer(
          (_) => null,
        );

        //act
        final result = realmDatabase.find<DashboardSchema, int>(1);

        //assert
        expect(result, isA<Null>());

        verify(realm.find(1)).called(1);
      });
    });

    group('create', () {
      test('should return ronpos dashboard schema when create success',
          () async {
        final dashboardSchema = DashboardSchema(1, mode: 'RONPOS');
        //arrange
        when(realm.writeAsync<DashboardSchema>(any, any)).thenAnswer((m) {
          final closure =
              m.positionalArguments[0] as DashboardSchema Function();
          return Future.value(closure());
        });

        when(realm.add<DashboardSchema>(any, update: false)).thenAnswer(
          (_) => dashboardSchema,
        );

        //act
        final result = await realmDatabase.add<DashboardSchema>(
          DashboardSchema(1, mode: 'RONPOS'),
        );

        //assert
        expect(result.isRight(), true);
      });

      test('should return failure dashboard schema when create failed',
          () async {
        //arrange
        when(realm.writeAsync<DashboardSchema>(any, any)).thenAnswer((m) {
          final closure =
              m.positionalArguments[0] as DashboardSchema Function();
          return Future.value(closure());
        });

        when(realm.add<DashboardSchema>(any, update: false)).thenThrow(
          'Error',
        );

        //act
        final result = await realmDatabase.add<DashboardSchema>(
          DashboardSchema(1, mode: 'RONPOS'),
        );
        //assert
        expect(result.isLeft(), true);
      });
    });

    group('delete', () {
      test('should return true when delete success', () async {
        //arrange
        when(realm.writeAsync<void>(any, any)).thenAnswer((m) {
          return Future.value();
        });

        when(realm.delete<DashboardSchema>(any)).thenAnswer(
          (_) => true,
        );

        //act
        final result = await realmDatabase.delete(
          DashboardSchema(1, mode: 'RONPOS'),
        );

        //assert
        expect(result, true);
      });

      test('should return false when delete failed', () async {
        //arrange
        when(realm.writeAsync<void>(any, any)).thenThrow('Error');

        when(realm.delete<DashboardSchema>(any)).thenAnswer((_) => false);

        //act
        final result = await realmDatabase.delete(
          DashboardSchema(1, mode: 'RONPOS'),
        );

        //assert
        expect(result, false);
      });
    });

    group('update', () {
      test('should return ronpos dashboard schema when update success',
          () async {
        final dashboardSchema = DashboardSchema(1, mode: 'RONPOS');
        //arrange
        when(realm.writeAsync<DashboardSchema>(any, any)).thenAnswer((m) {
          final closure =
              m.positionalArguments[0] as DashboardSchema Function();
          return Future.value(closure());
        });

        when(realm.add<DashboardSchema>(any, update: true)).thenAnswer(
          (_) => dashboardSchema,
        );

        //act
        final result = await realmDatabase.update<DashboardSchema>(
          DashboardSchema(1, mode: 'RONPOS'),
        );

        //assert
        expect(result.isRight(), true);
      });

      test('should return failure dashboard schema when update failed',
          () async {
        //arrange
        when(realm.writeAsync<DashboardSchema>(any, any)).thenAnswer((m) {
          final closure =
              m.positionalArguments[0] as DashboardSchema Function();
          return Future.value(closure());
        });

        when(realm.add<DashboardSchema>(any, update: true)).thenThrow(
          'Error',
        );

        //act
        final result = await realmDatabase.update<DashboardSchema>(
          DashboardSchema(1, mode: 'RONPOS'),
        );
        //assert
        expect(result.isLeft(), true);
      });
    });

    group('find all', () {
      test('should return list of ronpos dashboard schema when getAll success',
          () async {
        //arrange
        when(realm.all<DashboardSchema>()).thenAnswer(
          (_) {
            return MockRealmResults<DashboardSchema>([
              DashboardSchema(1),
              DashboardSchema(2),
            ]);
          },
        );

        //act
        final result = realmDatabase.getAll<DashboardSchema>();

        //assert
        expect(result.isNotEmpty, true);
        expect(result.length, 2);
      });

      test('should return empty list when data is empty', () {
        //arrange
        when(realm.all<DashboardSchema>()).thenAnswer(
          (_) => MockRealmResults<DashboardSchema>([]),
        );

        //act
        final result = realmDatabase.getAll<DashboardSchema>();

        //assert
        expect(result.isEmpty, true);
        expect(result.length, 0);
      });
    });

    test('dispose', () {
      when(realm.close()).thenAnswer(
        (x) => () {},
      );

      realmDatabase.dispose();
      verify(realm.close()).called(1);
    });

    group('add list', () {
      test('verify add list success', () async {
        final items = [
          DashboardSchema(1, mode: 'RONPOS'),
          DashboardSchema(2, mode: 'DUMMY'),
        ];

        //arrange
        when(realm.writeAsync<void>(any)).thenAnswer((invocation) async {
          final closure = invocation.positionalArguments[0] as void Function();
          closure();
        });

        // act
        await realmDatabase.addList<DashboardSchema>(items);

        // assert
        verify(realm.addAll(items)).called(1);
        verify(realm.writeAsync<void>(any)).called(1);
      });

      test('should return failure dashboard schema when add list failed',
          () async {
        final items = [
          DashboardSchema(1, mode: 'RONPOS'),
          DashboardSchema(2, mode: 'DUMMY'),
        ];

        //arrange
        when(realm.writeAsync<void>(any)).thenThrow(
          Exception('Failed to add items'),
        );

        // act
        expectLater(
          () async => await realmDatabase.addList<DashboardSchema>(items),
          throwsException, // Check that an exception is thrown
        );

        //assert
        verify(realm.writeAsync<void>(any)).called(1);
        verifyNever(realm.addAll(items));
      });
    });
  });
}

class MockRealmResults<T> extends Mock implements RealmResults<T> {
  MockRealmResults(this._list);
  final List<T> _list;

  @override
  Iterator<T> get iterator => _list.iterator;

  @override
  int get length => _list.length;

  @override
  T operator [](int index) => _list[index];
}
