/// 모든 배치는 한 줄(Row) 기준임.
enum DeviceArrangeType {
  onlyWasher, // 세탁기 두 개
  leftWasher, // 좌측에만 세탁기
  rightWasher, // 우측에만 세탁기
  onlyDryer, // 건조기 4개
  leftDryer, // 좌측에만 건조기 2개
  rightDryer, // 우측에만 건조기 2개
  leftWasherRightDryer, // 좌측에는 세탁기, 우측에는 건조기 2개
  leftDryerRightWasher, // 좌측에는 건조기 2개, 우측에는 세탁기
}
