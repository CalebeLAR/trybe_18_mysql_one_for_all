let input = `1	Barbara Liskov	82	1	2019-10-20
2	Robert Cecil Martin	58	1	2017-01-06
3	Ada Lovelace	37	2	2017-12-30
4	Martin Fowler	46	2	2017-01-17
5	Sandi Metz	58	2	2018-04-29
6	Paulo Freire	19	3	2018-02-14
7	Bell Hooks	26	3	2018-01-05
8	Christopher Alexander	85	4	2019-06-05
9	Judith Butler	45	4	2020-05-13
10	Jorge Amado	58	4	2017-02-17`

let output = '';
let rows = input.split('\n');
for (let i = 0; i < rows.length; i++) {
  let columns = rows[i].split('\t');
  if (i = 0) {
    output += "VALUE ('" + columns[0] + "', '" + columns[1] + "', '" + columns[2] + "', '" + columns[3] + "', '" + columns[4] + "')";
    if (i < rows.length - 1) {
      output += ",\n";
    }
  } else {
    output += "('" + columns[0] + "', '" + columns[1] + "', '" + columns[2] + "', '" + columns[3] + "', '" + columns[4] + "')";
    if (i < rows.length - 1) {
      output += ",\n";
    }
  }
}

console.log(output);
