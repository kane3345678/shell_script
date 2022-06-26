import json 
import yaml
# save content to file
def save_to_file(filename, lines):
    with open(filename, 'w') as f:
        for line in lines:
            f.write(line + '\n')
# write data to yaml file
def save_to_yaml(filename, data):
    with open(filename, 'w') as f:
        yaml.dump(data, f)

# read data from json file
def read_from_json(filename):
    with open(filename, 'r') as f:
        return json.load(f)
# get x line in a file
def get_line(filename, line_number):
    with open(filename, 'r') as f:
        for i, line in enumerate(f):
            if i == line_number:
                return line
# make a http post request
def post_request(url, data):
    import requests
    return requests.post(url, data)

# get Nth data in a list
def get_nth_data(data, n):
    return data[n]

# shift Nth bit in a number
def shift_nth_bit(number, n):
    return number >> n
# read a binary file
def read_binary_file(filename):
    with open(filename, 'rb') as f:
        return f.read()
# get nth byte in a binary file
def get_nth_byte(filename, n):
    with open(filename, 'rb') as f:
        return f.read()[n]

# check if a str in a file
def check_if_str_in_file(filename, str):
    with open(filename, 'r') as f:
        return str in f.read()
