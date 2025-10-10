# Simple Python script to write to and read from a file

# Step 1: Write to a file
with open("try.txt", "w") as file:
    file.write("Now I'm talking to you\n")
    file.write("Respond if you are there\n")

# Step 2: Read from the file
with open("try.txt", "r") as file:
    content = file.read()
    print("File contents:")
    print(content)
