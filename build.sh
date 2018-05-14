echo "==============================  Building miniupnpc  =================================="
cd miniupnp/miniupnpc
cmake .
make
cd ../..

echo "==============================  Building leveldb  =================================="
cd leveldb
chmod a+x ./build_detect_platform
make
cd ..

echo "==============================  Building openssl  =================================="
cd openssl
export OPENSSL_ROOT_DIR=`pwd`
chmod a+x ./config
./config
make
cd ..

echo "==============================  Building fc  =================================="
cd fc
cmake .
chmod a+x vendor/secp256k1=zkp/autogen.sh
cd ..

