const input = `1	1
1	2
1	3
2	1
2	3
3	2
4	4
5	5
5	6
6	6
6	1
7	6
8	
9	3
10	2`;

let output = '';
const rows = input.split('\n');
for (let i = 0; i < rows.length; i++) {
  const columns = rows[i].split('\t');
    output += `VALUE ('${columns[0]}', '${columns[1]}', '${columns[2]}', '${columns[3]}', '${columns[4]}')`;
    if (i < rows.length - 1) {
      output += ',\n';
    }
}

console.log(output);
