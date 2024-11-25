# 1. Entropy

1. Suppose a password is chosen as a concatenation of four lower-case dictionary words, where each word is selected uniformly at random
from a dictionary of size 100,000. An example of such a password is correcthorsebatterystaple. How many bits of entropy does this have?

Total entropy = log_2(# of possibilities) = log_2(100000)

log_2(100000) ≈ 16 bits of entropy for word

Then for 4 words ≈ **64 bits of entropy**

2. Consider an alternative scheme where a password is chosen as a sequence of 8 random alphanumeric characters (including both lower-case
and upper-case letters). An example is rg8Ql34g. How many bits of entropy does this have?

Supposing 62 possible characters per position from 26 a-z, 26 A-Z and 10 digits.

Total entropy = log_2(62⁸) = 5.954

Then for 8 characters = 6 * 8 ≈ **48 bits of entropy**

3. Which is the stronger password?

The one with 4 random words

# 3. Symmetric cryptography

Symmetric cryptography. Encrypt a file with AES encryption, using OpenSSL: openssl aes-256-cbc -salt -in {input filename} -out {output 
filename}. Look at the contents using cat or hexdump. Decrypt it with openssl aes-256-cbc -d -in {input filename} -out {output filename} 
and confirm that the contents match the original using cmp.

![Result of running the encryiption and decryiption](image.png)

