# Rochelle Knight, Venexia Walker, et al., 2024.

import sys, csv, re

codes = [{"code":"XE0bC","system":"icd10"},{"code":"AyuB1","system":"icd10"},{"code":"7800y","system":"icd10"},{"code":"76094","system":"icd10"},{"code":"A704.","system":"icd10"},{"code":"J61yz","system":"icd10"},{"code":"XE0CP","system":"icd10"},{"code":"J61y.","system":"icd10"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('ccu002_01-liver-disease-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["ccu002_01-liver-disease-sclerotherapy---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["ccu002_01-liver-disease-sclerotherapy---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["ccu002_01-liver-disease-sclerotherapy---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
