.PHONY: pub_get
pub_get:
	flutter pub get

.PHONY: build_runner
build_runner:
	dart run build_runner clean
	dart run build_runner build --delete-conflicting-outputs

.PHONY: run_dev
run_dev:
	flutter run --dart-define=FLAVOR=dev

.PHONY: run_prod
run_prod:
	flutter run --dart-define=FLAVOR=prod
