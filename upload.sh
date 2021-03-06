#!/bin/bash -ixe

rm -rf dist || true

python3 -m pydoc -w ./pd/pdd.py                                                                                                                                            

python3 setup.py sdist bdist_wheel

python3 -m pip install --user --upgrade twine

twine check dist/*

python3 -m twine upload --repository-url https://test.pypi.org/legacy/ dist/*
#python3 -m twine upload --repository-url https://pypi.python.org/pypi/ dist/*
