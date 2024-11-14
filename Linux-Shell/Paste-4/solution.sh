# Given a CSV file where each row contains the name of a city and its state separated by a comma, your task is to restructure the file in such a way, that three consecutive rows are folded into one, and separated by tab.


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
# Albany, N.Y.    Albuquerque, N.M.   Anchorage, Alaska
# Asheville, N.C. Atlanta, Ga.    Atlantic City, N.J.
# Austin, Texas   Baltimore, Md.  Baton Rouge, La.
# Billings, Mont. Birmingham, Ala.    Bismarck, N.D.
# Boise, Idaho    Boston, Mass.   Bridgeport, Conn.


# Solution
paste -d ' ' - - - $1


# Solution
paste -d '\t' - - - $1