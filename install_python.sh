#!/bin/sh

# install python 2.7.13
wget https://www.python.org/ftp/python/2.7.13/Python-2.7.13.tgz
tar xfz Python-2.7.13.tgz
rm -f Python-2.7.13.tgz
cd Python-2.7.13/
./configure --prefix /usr/local/lib/python2.7.13 --enable-ipv6 --enable-shared --enable-unicode=ucs4 --enable-loadable-sqlite-extensions --with-zlib
make -j20
make install
echo "/usr/local/lib/python2.7.13/lib" > /etc/ld.so.conf.d/python2.conf
ldconfig
cd ..
ln -sf /usr/local/lib/python2.7.13/bin/python /usr/local/bin/python
ln -sf /usr/local/lib/python2.7.13/bin/python /usr/local/bin/python2
hash -d python
curl https://bootstrap.pypa.io/get-pip.py | python
ln -sf /usr/local/lib/python2.7.13/bin/pip /usr/local/bin/pip
pip install ipython
ln -sf /usr/local/lib/python2.7.13/bin/ipython /usr/local/bin/ipython

# install python 3.6.2
wget https://www.python.org/ftp/python/3.6.2/Python-3.6.2.tgz
tar xfz Python-3.6.2.tgz
rm -f Python-3.6.2.tgz
cd Python-3.6.2/
./configure --prefix /usr/local/lib/python3.6.2 --enable-ipv6 --enable-shared --enable-loadable-sqlite-extensions --with-zlib
make -j20
make install
echo "/usr/local/lib/python3.6.2/lib" > /etc/ld.so.conf.d/python3.conf
ldconfig
cd ..
ln -sf /usr/local/lib/python3.6.2/bin/python3 /usr/local/bin/python3
hash -d python3
curl https://bootstrap.pypa.io/get-pip.py | python3
ln -sf /usr/local/lib/python3.6.2/bin/pip3 /usr/local/bin/pip3
pip install ipython
ln -sf /usr/local/lib/python3.6.2/bin/ipython3 /usr/local/bin/ipython3

# install Python packages
pip install scipy nltk gensim pandas jupyter django virtualenv mkdocs
pip3 install scipy nltk gensim pandas jupyter django virtualenv mkdocs

# install scikit-learn
pip install scikit-learn matplotlib
pip3 install scikit-learn matplotlib

python -m ipykernel install --user
python3 -m ipykernel install --user

apt-get install -y libxml2-dev libxslt1-dev python-dev
pip install lxml bs4 pymongo pulp
pip3 install lxml bs4 pymongo pulp
