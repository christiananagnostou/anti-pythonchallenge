var pickle = require('pickle');

fetch('http://www.pythonchallenge.com/pc/def/banner.p', {})
  .then((res) => res.text())
  .then((str) =>
    pickle.loads(str, (original) =>
      original.forEach((line) =>
        console.log(line.map((ch) => ch[0].repeat(ch[1])).join('')),
      ),
    ),
  );
