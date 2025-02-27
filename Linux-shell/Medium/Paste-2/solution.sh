# In this challenge, we practice using the paste command to merge lines of a given file.

# You are given a CSV file where each row contains the name of a city and its state separated by a comma. Your task is to restructure the file so that three consecutive rows are folded into one line and are separated by semicolons.


# Input
# Albany, N.Y.
# Albuquerque, N.M.
# Anchorage, Alaska
# Asheville, N.C.
# Atlanta, Ga.
# Atlantic City, N.J.
# Austin, Texas
# Baltimore, Md.
# Baton Rouge, La.
# Billings, Mont.
# Birmingham, Ala.
# Bismarck, N.D.
# Boise, Idaho
# Boston, Mass.
# Bridgeport, Conn.


# Output
# Albany, N.Y.;Albuquerque, N.M.;Anchorage, Alaska
# Asheville, N.C.;Atlanta, Ga.;Atlantic City, N.J.
# Austin, Texas;Baltimore, Md.;Baton Rouge, La.
# Billings, Mont.;Birmingham, Ala.;Bismarck, N.D.
# Boise, Idaho;Boston, Mass.;Bridgeport, Conn.


# Solution
paste -d ';' --- $1


# Solution
paste -s -d ';;\n'