run_coverage() {
  # shellcheck disable=SC2034
#  STATE=$1
#  flutter pub run remove_from_coverage:remove_from_coverage -f coverage/lcov.info -r '(.gr?|.freezed|_helpers?).dart$'

  genhtml -o coverage coverage/lcov.info -q
}

if make flutter_coverage; then
  run_coverage true
else
  run_coverage false
  exit 1
fi
