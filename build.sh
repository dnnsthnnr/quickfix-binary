git clone --depth 1 https://github.com/quickfix/quickfix.git

cd quickfix

autoconf

./bootstrap

./configure --with-python3 --with-ruby && make && make check

python setup.py bdist