# this is opening the file to prepare for code
log_file = open("um-server-01.txt")

# this defines the variables sales_reports with a parameter of the open file.
def sales_reports(log_file):
    # the for in is a looping function in python.
    for line in log_file:
        line = line.rstrip()
        day = line[0:3]
        # the line below is to look for Tuesday's. I will now change it to Monday's
        if day == "Mon":
            print(line)


sales_reports(log_file)
