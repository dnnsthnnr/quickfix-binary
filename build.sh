git clone --depth 1 https://github.com/quickfix/quickfix.git

cd quickfix

autoconf

./bootstrap

./configure --with-python3 --with-ruby && make && make check

cd ../

python setup.py sdist
python setup.py bdist