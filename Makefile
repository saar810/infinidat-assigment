#!make

linter_path_config := ".linters"

black:
	python -m black .

flake8:
	python -m flake8 --config ./.linters/.flake8

unittest:
	cd tests; python test_app.py