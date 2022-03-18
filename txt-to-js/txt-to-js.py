"""
To run:
python txt-to-js.py <output file name> <txt file 1> <txt file 2> ... <txt file n>
"""

import sys, os

def create_array(file_name):
    try:
        f = open(file_name)
        line = f.readline()
        
        output.write("const " +
        file_name.split(".", 1)[0] +
        " = [\"" +
        line.replace("\n", "") +
        "\"")
        line = f.readline()

        while line:
            output.write(",\"" + line.replace("\n", "") + "\"")
            line = f.readline()
        
        output.write("];")
        f.close()

    except FileNotFoundError:
        print(file_name + " not found")

if len(sys.argv) <= 2:
        print("Not enough arguments")
else:
    if not os.path.exists("output"):
        os.makedirs("output")
    output = open("output/" + sys.argv[1] + ".js", "w")

    for x in range(2, len(sys.argv)):
        create_array(sys.argv[x])
        output.write("\n")