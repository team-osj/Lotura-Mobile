import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lotura/core/dummy/laundry_status_locate_dummy.dart';
import 'package:lotura/core/type/device_arrange_type.dart';

@JsonEnum(fieldRename: FieldRename.snake)
enum LocateType {
  maleSchool(text: '남자 학교측', title: '남자 학교 측'),
  maleDormitory(text: '남자 기숙사측', title: '남자 기숙사 측'),
  female(text: '여자 기숙사측', title: '여자 기숙사 측', exception: '여자');

  const LocateType({
    required this.text,
    required this.title,
    this.exception,
  });

  final String text;
  final String title;
  final String? exception;

  List<Map<DeviceArrangeType, List<int>>> get locateArrange {
    switch(this) {
      case LocateType.maleSchool:
        return maleSchoolLocateDummy;
      case LocateType.maleDormitory:
        return maleDormitoryLocateDummy;
      case LocateType.female:
        return femaleDormitoryLocateDummy;
    }
  }
}
