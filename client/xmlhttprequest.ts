const xhr = new (require('xmlhttprequest').XMLHttpRequest);
xhr.open('POST', 'http://localhost:3000/api/v1/nikos.json');
xhr.setRequestHeader('uid', 'test@example.com');
xhr.setRequestHeader('client', 'qSNrpGeGBv6HiPlMf9PuuA');
xhr.setRequestHeader('access-token', 'sHY33bLVogo0divUu13Ijw');
xhr.setRequestHeader('Content-Type', 'application/json');
xhr.onload = () => {
  console.log(`Loaded: ${xhr.status} ${xhr.response}`);
};
xhr.send(JSON.stringify({ niko: { mood: "good", date: "2023-04-23" }}));
