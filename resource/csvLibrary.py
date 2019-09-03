import csv

class csvLibrary(object):
    # ROBOT_LIBRARY_SCOPE = 'Global'

    # def __init__(self):
    #     print('Read Cell Value in CSV File')

    def read_cell_value_by_row(self, filename, rownumber):
        #read an existing csv file
        userdata = []
        user = {}
        with open(filename, 'r') as csvfile:
            #read csv file as dictionary object
            reader = csv.DictReader(csvfile)
            #read and store it as list of dictionary items
            userdata = list(reader)
            #get specific list item as a dictionary object
            user = userdata[rownumber-1]
            #return the dictionary object
            return user

# class csvLibrary(object):

#     def read_csv_file(self, filename):
#         '''This creates a keyword named "Read CSV File"

#         This keyword takes one argument, which is a path to a .csv file. It
#         returns a list of rows, with each row being a list of the data in 
#         each column.
#         '''
#         data = []
#         with open(filename, 'rb') as csvfile:
#             reader = csv.reader(csvfile, delimiter=',')
#             for row in reader:
#                 for i in row:
#                     data.append(i)
#         return data
