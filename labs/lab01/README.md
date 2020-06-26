# its581
course materials and references for its581

__Tasks__

1. Generate a Bitcoin address using command line
2. Create a wallet using an App, a cloud account and *a desktop application(optional)*

## Task1: Generate a Bitcoin address then encode as a QR code
```bash
# find a suitable folder to work inside
# 1. Generate an ECC private key
# Bitcoin uses an elliptic curve called secp256k1  standardized by NIST, defined as y^2=x^3+7
# The public key is a coordinate (x,y) on this curve; the private key is a 32 bytes(256 bits) random number.
openssl ecparam -name secp256k1 -genkey -out privkey.pem

# 2. show the content of the private key
openssl ec -in privkey.pem -text -noout

# 3. extract the public key and show its content
openssl ec -in privkey.pem -pubout -out pubkey.pem
openssl ec -in pubkey.pem -pubin -text -noout

# EC public key format: 1 byte prefix || 32 bytes x coordinate || 32 bytes y coordinate
# From equation: y^2=x^3+7 we know a x value corresponds to two y values, one positve, one negative
# prefix: =0x04 means uncompressed public key;
# remove y get compressed keys:
# prefix: =0x02 means postive y value; =0x03 means negative y value
# In ECC, odd y represents negative; even y represents positve.

# 4. construct the compressed public key
openssl ec -in pubkey.pem -pubin -text -noout -conv_form compressed -out zippubkey.pem

# 5. convert the compressed public key to a hex string by removing colons and blanks
zpub=$(cat zippubkey.pem | head -n -1 | tail -n -3 | tr -dc [:alnum:])
echo $zpub

# 6. generate public-key hash: HASH160(x) = RIPEMD160(SHA256(x))
pubkeyhash=$(echo $zpub | xxd -r -p | openssl dgst -sha256 -binary | openssl dgst -ripemd160 | cut -d "=" -f 2 | tr -dc [:alnum:])
echo $pubkeyhash

# 7. generate raw bitcoin address
# raw bitcoin address format: 1 byte version || 20 bytes public-key hash || 4 bytes check sum
# version: =0x00 means pay-to-pub-key hash; 0x05 means pay-to-script-hash
# prepend version number
raw0="00$pubkeyhash"
echo $raw0

# generate check sum = first 4 bytes of sha256(sha256(raw0)): HASH256(x)=SHA256(SHA256(x))
raw1=$(echo $raw0 | xxd -r -p | openssl dgst -sha256 -binary | openssl dgst -sha256 | cut -d "=" -f 2 | tr -dc [:alnum:])
echo $raw1

checksum=${raw1:0:8}
echo $checksum

# concatenate raw0 and checksum to get the raw address
raw=$raw0$checksum
echo $raw

# encode the raw address with base58 to get the final bitcoin public-key address
btaddr=$(echo $raw | xxd -r -p | base58)
echo $btaddr
# bitcoin public-key address (P2PKH) always starts with 1, because the version number 0x00 is converted to 1 in base58 encoding

## bitcoin script hash address (P2SH) always begins with 3, 

# 8. generate QR code for the bitcoin address
# use any online QR code generator

```

# References

* _Elliptic Curve Cryptography_

  * [Elliptic Curve Cryptography](https://wiki.openssl.org/index.php/Elliptic\_Curve\_Cryptography)
  * [Command Line Elliptic Curve Operations](https://wiki.openssl.org/index.php/Command\_Line\_Elliptic\_Curve\_Operations)
  * [Bitcoin key mechanism and elliptic curves over finite fields](https://www.johndcook.com/blog/2018/08/14/bitcoin-elliptic-curves/)
  * [Elliptic Curve Cryptography (ECC)](https://cryptobook.nakov.com/asymmetric-key-ciphers/elliptic-curve-cryptography-ecc)
  * [Basic blockchain programming](http://davidederosa.com/basic-blockchain-programming/)
  * [Basic blockchain programming on Github](https://github.com/keeshux/basic-blockchain-programming)
  * [jsrsasign](https://kjur.github.io/jsrsasign/)
  * [fast elliptic curve cryptography](https://pypi.org/project/fastecdsa/)
  * [OpenSSL and ECDSA Signatures](https://medium.com/@skloesch/openssl-and-ecdsa-signatures-db60c005b1f4)
  * [Elliptic-curve cryptography](https://en.wikipedia.org/wiki/Elliptic-curve\_cryptography)
  * [Elliptic Curve Digital Signature Algorithm](https://en.bitcoin.it/wiki/Elliptic\_Curve\_Digital\_Signature\_Algorithm)
  * [Secp256k1](https://en.bitcoin.it/wiki/Secp256k1)
  * [Standards for Efficient Cryptography Group](http://www.secg.org/)

* _QR code_

  * [QR code](https://en.wikipedia.org/wiki/QR\_code)
  * [QR Code Generator from the ZXing Project](https://zxing.appspot.com/generator)
  * [ZXing Decoder Online](https://zxing.org/w/decode.jspx)
  * [ZXing project on Github](https://github.com/zxing/zxing)

* _Cryptocurrency exchanges_

	* [We use coins](https://www.weusecoins.com/)
  * [Cryptocurrency markets](https://bitcoincharts.com/markets/list/)
  * [CryptoCompare](https://www.cryptocompare.com/)
  * [Coin ATM Radar](https://coinatmradar.com/)
  * [P2P-Trading-Exchanges](https://github.com/cointastical/P2P-Trading-Exchanges/)
  * [Secure trading](https://en.bitcoin.it/wiki/Secure\_Trading)
  * [How to buy bitcoin](https://99bitcoins.com)  

* _Cryptocurrency wallet_

  * [Choose your Bitcoin wallet](https://bitcoin.org/en/choose-your-wallet)
  * [Best Bitcoin & Cryptocurrency Wallets](https://www.buybitcoinworldwide.com/wallets/)
  * [The 20 Best Cryptocurrency Wallets for Your Digital Coins in 2020](https://www.ubuntupit.com/best-cryptocurrency-wallets/)
  * [Best Bitcoin Wallets](https://www.thebalance.com/best-bitcoin-wallets-4160642)
  * [WalletGenerator](https://walletgenerator.net/)
  * [Storing Bitcoins](https://en.bitcoin.it/wiki/Storing\_bitcoins)

  
* _Bitcoin Developer References_

  * [Bitcoin Developer References](https://developer.bitcoin.org/reference/)
  * [bitcoinj](https://bitcoinj.github.io/)
  * [bitcoin testnet](https://blockstream.info/testnet/)
