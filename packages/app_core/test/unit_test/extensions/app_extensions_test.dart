import 'package:app_core/src/extensions/app_extensions.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('All Extensions test', () {
    group('All Extensions of converter', () {
      test('toInt value converter should be correct 100', () {
        final valueIntConverted = '100'.toInt();
        expect(valueIntConverted, 100);
      });

      test('toInt with , value converter should be correct 1000', () {
        final valueIntConverted = '1,000'.toInt();
        expect(valueIntConverted, 1000);
      });

      test('toInt with , . value converter should be correct 1000', () {
        final valueIntConverted = '1,000.1'.toInt();
        expect(valueIntConverted, 1000);
      });

      test(
        'toIntEmptyAble with empty value converter should be correct 0',
        () {
          final valueIntConverted = ''.toIntEmptyAble();
          expect(valueIntConverted, 0);
        },
      );

      test(
        'toIntEmptyAble with null value converter should be correct 0',
        () {
          final valueIntConverted = null.toIntEmptyAble();
          expect(valueIntConverted, 0);
        },
      );

      test('toDouble value converter should be correct 100.0', () {
        final valueIntConverted = '100'.toDouble();
        expect(valueIntConverted, 100.0);
      });

      test('toDouble with , value converter should be correct 1000.0', () {
        final valueIntConverted = '1,000'.toDouble();
        expect(valueIntConverted, 1000.0);
      });

      test(
        'toDoubleEmptyAble with empty value converter should be correct 0.0',
        () {
          final valueIntConverted = ''.toDoubleEmptyAble();
          expect(valueIntConverted, 0.0);
        },
      );

      test(
        'toDoubleEmptyAble with null value converter should be correct 0.0',
        () {
          final valueIntConverted = null.toDoubleEmptyAble();
          expect(valueIntConverted, 0.0);
        },
      );
    });

    group('All Extensions operator of num', () {
      test('extensions of orDefault', () {
        int? i = 1;
        i = null;
        expect(i.orDefault(1), 1);
      });
      group('operator of int', () {
        test('plus of int', () {
          var i = 1;
          expect(i.plus(1), 2);
        });

        test('minus of int', () {
          var i = 2;
          expect(i.minus(1), 1);
        });

        test('div of int', () {
          var i = 1;
          expect(i.div(1), 1);
        });

        test('times of int', () {
          var i = 1;
          expect(i.times(1), 1);
        });

        test('mods of int', () {
          var i = 20;
          expect(i.mod(3), 2);
        });
      });

      group('operator of double', () {
        test('plus of double', () {
          var i = 1.0;
          expect(i.plus(1.0), 2.0);
        });

        test('minus of double', () {
          var i = 2.0;
          expect(i.minus(1.0), 1.0);
        });

        test('div of double', () {
          var i = 1.1;
          expect(i.div(1.1), 1.0);
        });

        test('times of double', () {
          var i = 1.1;
          expect((i.times(1.1).toStringAsFixed(2)).toDouble(),
              (1.21.toStringAsFixed(2)).toDouble());
        });

        test('mods of double', () {
          var i = 20.0;
          expect(i.mod(3.5), 2.5);
        });
      });
    });
  });
}
