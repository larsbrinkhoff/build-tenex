expect "@" send "ENABLE\r"; continue
expect "!" send "QUIT\r"; continue
expect "\n." send "H"; continue
expect "ALT TENEX" send "."
continue

expect "\n"
continue
quit
