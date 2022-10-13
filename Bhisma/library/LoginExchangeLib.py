import csv

class LoginExchange(object):

    def __init__(self, no, description,email,password,tags,type):
        self.no = no
        self.description = description
        self.email = email
        self.password = password
        self.tags = tags
        self.type = type

    def __str__(self):
        return f"{self.no}{self.description}{self.email}"   

    def readCSV(filename):
        
        ROWS = []
        with open("devdata/"+filename, 'r') as file:
            csvreader = csv.reader(file)
            header = next(csvreader)
            for row in csvreader:
                # ROWS.append(row)
                data = LoginExchange (row[0],row[1],row[2],row[3],row[4],row[5])
                ROWS.append(data)
        # print(header)
        # print(ROWS[3][2])
        return ROWS




