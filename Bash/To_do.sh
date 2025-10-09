#!/bin/bash


TODO_FILE="$HOME/.todo_list.txt"

# Create the file if it doesn't exist
touch "$TODO_FILE"

function show_menu() {
    echo ""
    echo "====== TO-DO LIST MENU ======"
    echo "1. View To-Do List"
    echo "2. Add Task"
    echo "3. Remove Task"
    echo "4. Exit"
    echo "============================="
    echo -n "Choose an option [1-4]: "
}

function view_list() {
    echo ""
    echo "------ Your To-Do List ------"
    if [[ ! -s $TODO_FILE ]]; then
        echo "No tasks found."
    else
        nl -w2 -s'. ' "$TODO_FILE"
    fi
    echo "-----------------------------"
}

function add_task() {
    echo -n "Enter the task description: "
    read -r task
    if [[ -n $task ]]; then
        echo "$task" >> "$TODO_FILE"
        echo "Task added!"
    else
        echo "No task entered."
    fi
}

function remove_task() {
    view_list
    if [[ ! -s $TODO_FILE ]]; then
        return
    fi
    echo -n "Enter the task number to remove: "
    read -r task_num

    if [[ "$task_num" =~ ^[0-9]+$ ]]; then
        if [[ "$task_num" -le $(wc -l < "$TODO_FILE") && "$task_num" -gt 0 ]]; then
            sed -i "${task_num}d" "$TODO_FILE"
            echo "Task #$task_num removed."
        else
            echo "Invalid task number."
        fi
    else
        echo "Invalid input. Please enter a number."
    fi
}

# Main loop
while true; do
    show_menu
    read -r choice
    case $choice in
        1) view_list ;;
        2) add_task ;;
        3) remove_task ;;
        4) echo "Goodbye!"; exit 0 ;;
        *) echo "Invalid choice. Please select 1-4." ;;
    esac
done

