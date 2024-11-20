library conditional_export_issue_test;

export 'src/stub.dart' 
  if (Platform.isLinux) 'src/linux.dart'
  if (Platform.isWindows) 'src/windows.dart';

// This works
// export 'src/linux.dart' if (Platform.isWindows) 'src/windows.dart';

// This also works
// export 'src/windows.dart' if (Platform.isLinux) 'src/linux.dart';
