# Rochelle Knight, Venexia Walker, et al., 2024.

import sys, csv, re

codes = [{"code":"K70.2","system":"icd10"},{"code":"K70.1","system":"icd10"},{"code":"XaBE3","system":"icd10"},{"code":"X3072","system":"icd10"},{"code":"X3071","system":"icd10"},{"code":"J617.","system":"icd10"},{"code":"X306l","system":"icd10"},{"code":"X306r","system":"icd10"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('ccu002_01-liver-disease-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["nonalcoholic-ccu002_01-liver-disease---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["nonalcoholic-ccu002_01-liver-disease---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["nonalcoholic-ccu002_01-liver-disease---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
