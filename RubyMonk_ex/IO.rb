#open the file "new-fd" and create a file descriptor:
fd = IO.sysopen("new-fd", "w")

# create a new I/O stream using the file descriptor for "new-fd":
p IO.new(fd)
