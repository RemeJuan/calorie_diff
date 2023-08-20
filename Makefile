flutter_generate:
	fvm flutter packages pub run build_runner build --delete-conflicting-outputs

flutter_test:
	fvm flutter test test --no-pub --test-randomize-ordering-seed random

flutter_cov:
	./coverage-test-report.sh

flutter_coverage:
	fvm flutter test test --no-pub --coverage --test-randomize-ordering-seed random

pod_install:
	cd ios && arch -x86_64 pod install --repo-update

