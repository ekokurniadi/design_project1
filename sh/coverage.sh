flutter test --coverage
lcov -r coverage/lcov.info "*.realm.dart" "*.codegen.g.dart" "*.codegen.freezed.dart" "lib/inspector.dart" -o coverage/lcov_cleaned.info 
genhtml -o coverage coverage/lcov_cleaned.info > coverage/output.txt
open coverage/index.html 