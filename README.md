# DNSRecon

### CAUTION: This is active reconnaissance script

## Usage

#### 1. Create a output folder

`mkdir output_folder`

#### 2. Run Script
First parameter is domain name and the second is path to output file

`./dnsrecon.sh example.com path_to_output_folder/output_file.txt`


## Example Output

```
SOA --> ns.icann.org


NS

a.iana-servers.net
b.iana-servers.net


A

example.com.		A	93.184.216.34
```
