const alphabet = 'abcdefghijklmnopqrstuvwxyz';

const map = {};
alphabet.split('').forEach((ch, i) => (map[ch] = i));

const translate = (str, shift) =>
  str
    .split('')
    .map((char) => alphabet[(map[char] + shift) % alphabet.length] || char)
    .join('');

const str =
  "g fmnc wms bgblr rpylqjyrc gr zw fylb. rfyrq ufyr amknsrcpq ypc dmp. bmgle gr gl zw fylb gq glcddgagclr ylb rfyr'q ufw rfgq rcvr gq qm jmle. sqgle qrpgle.kyicrpylq() gq pcamkkclbcb. lmu ynnjw ml rfc spj. ";
console.log(translate(str, 2));
console.log();
const url = 'map';
console.log(translate(url, 2));
