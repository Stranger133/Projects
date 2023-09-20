function xorEncryptDecrypt(plaintext, key) {
let result = '';
    for (let i = 0; i < plaintext.length; i++) {
        let xor = plaintext.charCodeAt(i) ^ key.charCodeAt(i % key.length);
        let restrictedXor = (xor % 95) + 32;
        result += String.fromCharCode(restrictedXor);
    }
    return result;
}
  let enc = xorEncryptDecrypt("password", "testkey123");
  let decr = xorEncryptDecrypt(enc, "testkey1");
  console.log(enc);
  console.log(decr)