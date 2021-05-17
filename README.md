### Requirements
----------------
* No specific hardware necessary
* UNIX based operating system (tested on Ubuntu 12.04 or Mac OS 10.9)
* Perl 5.14+
    * Modules
        * Spreadsheet::Read
        * Spreadsheet::ParseExcel
        * Spreadsheet::XLSX
        * Template

These can be install by running `sudo cpanm Spreadsheet::Read Spreadsheet::XLSX Spreadsheet::ParseExcel Template` or with carton by running `carton install`.

### Usage
----------------

Docker is the easiest way to run this generator
Clone repo and run following commands

```
docker build -t ipxact-register-generator ./code/
docker run -it --rm --name ipxact-register-generator-runner -v "${PWD}/sample/input:/usr/src/data" ipxact-register-generator
```

Outputs are generated to besides to input files

To using another input directory, change the `${PWD}/sample/input` part of second command

You can also install the tool itself with the install script. It will install the required scripts under `/usr/local/bin`. You can then run the tool supplying the input and output arguments:

```
xlsx2ipxact --input <input_file>.xlsx --output <ipxact_output>.xml
```

Refer to the example in the samples to see usage of the excel file.