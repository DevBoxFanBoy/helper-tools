# helper-tools
Some helper tools

* csv-formating
** format csv second column with double quotes
** Usage:
```
./csv_formating.sh example.csv res.csv

cat res.csv
NAME,"VERSION"
blaPlugin,"1.1.2"
blaPlugin2,"2.2.4"
```

* tf-aws
** different tf templates
** Usage:
```
./tf-aws-vpc.sh main 10.0.0.0/16 res.tf

cat res.tf
resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}
```

