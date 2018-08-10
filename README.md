# toy
play

For fun

The function in main.R is mainRun(), and arguments for it is :
  * client_id: client account id
  * client_name: client name (should be lowercase)
  * kpi_index
  * start_date: (YYYY-MM-DD) the start date of training period
  * end_date: (YYYY-MM-DD) the end date of training period
  * type: either 'ADHC' or 'SCH'
  * with_impression: (TRUE or FALSE) whether add impressions or not
  * user_name: user_name for ADHC type, default is 'service'
  * threads: default 4
  * market: local market, default is 'default'
  
Shell command option for main.R is:
```
Options:

    -i INTEGER, --client_id=INTEGER
        client account id

    -n CHARACTER, --client_name=CHARACTER
        client name

    -k INTEGER, --kpi_index=INTEGER
        kpi index

    -s CHARACTER, --start_date=CHARACTER
        SA start date

    -e CHARACTER, --end_date=CHARACTER
        SA end date

    -t CHARACTER, --type=CHARACTER
        SA running type

    -w LOGICAL, --with_impression=LOGICAL
        whether add impression

    -u CHARACTER, --user_name=CHARACTER
        user name

    -r INTEGER, --threads=INTEGER
        number of cores

    -m CHARACTER, --market=CHARACTER
        local market

    -h, --help
        Show this help message and exit
```
For example:
```shell
     Rscript ./main.R -i 42 -n blueapron -k 2 -s 2017-01-01 -e 2010-02-01 -t SCH -w TRUE -u service -r 4 -m default
 ```
 
For checking Jenkins run:
 ```shell
     Python checkRun.py [USERNAME] [PASSWORD] [PRINTLOGINFO(TURE/FALSE)]
 ```
