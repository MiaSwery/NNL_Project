import csv

categories_from_csv = []
with open('test3.csv') as csv_file:
    reader = csv.reader(csv_file, delimiter=',')
    for row in reader:
        for i in row:
            if(i!=''):
                categories_from_csv.append(i)

print(categories_from_csv)