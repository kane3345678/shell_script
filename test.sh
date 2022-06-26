# check file format
function check_file_format() {
    if [ -f $1 ]; then
        file $1 | grep -q "text"
        if [ $? -eq 0 ]; then
            echo "file format is correct"
        else
            echo "file format is not correct"
        fi
    else
        echo "file not exist"
    fi
}

# ssh target host
function ssh_target_host() {
    ssh $1 "ls -l"
}
# get file modified time
function get_file_modified_time() {
    stat -c %Y $1
}

# compare file modified time
function compare_file_modified_time() {
    if [ $1 -gt $2 ]; then
        echo "file $1 is newer than $2"
    else
        echo "file $1 is older than $2"
    fi
}

# find a file within a specific time
function find_file_within_time() {
    find $1 -mtime $2
}
#make a while loop
function while_loop() {
    i=0
    while [ $i -lt 10 ]; do
        echo $i
        i=$(($i+1))
    done
}

# tar a folde
function tar_folder() {
    tar -czf $1.tar.gz $1
}

# untar a file
function untar_file() {
    tar -xzf $1
}
# check folder modify time is earlier than a specific time
function check_folder_modify_time() {
    if [ $(stat -c %Y $1) -lt $2 ]; then
        echo "folder $1 is older than $2"
    else
        echo "folder $1 is newer than $2"
    fi
}

# tar a foler is modified within a specific time
function tar_folder_within_time() {
    if [ $(stat -c %Y $1) -gt $2 ]; then
        tar -czf $1.tar.gz $1
    fi
}


# tar a folder if a specfic file exists in subfolder
function tar_folder_if_file_exists() {
    if [ -f $1 ]; then
        tar -czf $1.tar.gz $1
    fi
}

# run a command in the afternoon
function run_command_in_afternoon() {
    if [ $(date +%H) -lt 12 ]; then
        echo "run command in afternoon"
    else
        echo "run command in morning"
    fi
}

# find a file in a folder recursively
function find_file_in_folder_recursively() {
    find $1 -name $2
}

function tar_folder_if_file_exists() {
    if [ find_file_in_folder_recursively -eq 0 ]; then
        tar -czf $1.tar.gz $1
    fi
}

# check if var greater than 5
function check_if_var_greater_than_5() {
    if [ $1 -gt 5 ]; then
        echo "var is greater than 5"
    else
        echo "var is less than 5"
    fi
}
# check num of variable
function check_num_of_variable() {
    if [ $# -eq 0 ]; then
        echo "no variable"
    else
        echo "there are $# variables"
    fi
}

# make a while loop
function while_loop() {
    i=0
    while [ $i -lt 10 ]; do
        echo $i
        i=$(($i+1))
    done
}
# make a for loop
function for_loop() {
    for i in $*; do
        echo $i
    done
}

# make a switch case
function switch_case() {
    case $1 in
        "1")
            echo "1"
            ;;
        "2")
            echo "2"
            ;;
        "3")
            echo "3"
            ;;
        *)
            echo "default"
            ;;
    esac
}

