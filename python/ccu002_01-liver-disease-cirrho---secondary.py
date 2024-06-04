# Rochelle Knight, Venexia Walker, et al., 2024.

import sys, csv, re

codes = [{"code":"K74.5","system":"icd10"},{"code":"K70.3","system":"icd10"},{"code":"K71.7","system":"icd10"},{"code":"K74.6","system":"icd10"},{"code":"K74.4","system":"icd10"},{"code":"XE0b5","system":"icd10"},{"code":"X307M","system":"icd10"},{"code":"J6160","system":"icd10"},{"code":"J616z","system":"icd10"},{"code":"XaC1d","system":"icd10"},{"code":"J615B","system":"icd10"},{"code":"J615z","system":"icd10"},{"code":"X307R","system":"icd10"},{"code":"XE0b7","system":"icd10"},{"code":"XE0dD","system":"icd10"},{"code":"J6161","system":"icd10"},{"code":"Jyu71","system":"icd10"},{"code":"XE0dJ","system":"icd10"},{"code":"XaBM6","system":"icd10"},{"code":"J6153","system":"icd10"},{"code":"XaXi9","system":"icd10"},{"code":"J615.","system":"icd10"},{"code":"XE0b4","system":"icd10"},{"code":"J61y3","system":"icd10"},{"code":"J6157","system":"icd10"},{"code":"F10y0","system":"icd10"},{"code":"J616.","system":"icd10"},{"code":"J6155","system":"icd10"},{"code":"XE0bA","system":"icd10"},{"code":"J6356","system":"icd10"},{"code":"J6159","system":"icd10"},{"code":"J61..","system":"icd10"},{"code":"XE0b8","system":"icd10"},{"code":"J615G","system":"icd10"},{"code":"Xa9C7","system":"icd10"},{"code":"J615F","system":"icd10"},{"code":"X307V","system":"icd10"},{"code":"X307S","system":"icd10"},{"code":"J6152","system":"icd10"},{"code":"J615D","system":"icd10"},{"code":"XE2up","system":"icd10"},{"code":"X307Q","system":"icd10"},{"code":"J6154","system":"icd10"},{"code":"X307O","system":"icd10"},{"code":"J6156","system":"icd10"},{"code":"J615y","system":"icd10"},{"code":"X307L","system":"icd10"},{"code":"X307U","system":"icd10"},{"code":"J615A","system":"icd10"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('ccu002_01-liver-disease-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["ccu002_01-liver-disease-cirrho---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["ccu002_01-liver-disease-cirrho---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["ccu002_01-liver-disease-cirrho---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
