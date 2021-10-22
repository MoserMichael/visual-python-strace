#!/bin/bash -ixe

rm -rf dist || true

python3 -m pydoc -w ./pd/pdd.py                                                                                                                                            

python3 setup.py sdist bdist_wheel

python3 -m pip install --user --upgrade twine


cat <<EOF
*** upload ***
enter user: __token__
for password: <pypi api token>
EOF

python3 -m twine upload --verbose dist/*

#twine check dist/*
#
#python3 -m twine upload --repository-url https://test.pypi.org/legacy/ dist/*
