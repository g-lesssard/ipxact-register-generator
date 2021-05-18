sudo apt install -y cpanminus

sudo cpanm Spreadsheet::Read Spreadsheet::XLSX Spreadsheet::ParseExcel Template

perl Makefile.PL

make 
sudo make install
make purge
