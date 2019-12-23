using DataFrames, TableView, CSV, DataFramesMeta, ZipFile
test = CSV.read("C:/Users/Jeffrey/Documents/GitHub/julia-practice/Data Sets/us-accidents/US_Accidents_May19.csv")

showtable(test)

names(test)

# Row 1-3
test[1:3, :]

# Coloumn 1-3
test[:, 1:3]

# 3x3 Matrix of row 1-3 by coloum 1-3
test[1:3, 1:3,]

# Direct coloumn name access
test[!, :Start_Time]

# Get alls rows where coloumn side is "R"
test[in(["R"]).(test.Side), :]

# Create a subtable just with the coloumns Start_Time and Severity and store as a DataFrame
a = DataFrame(test[:, [:Start_Time, :Severity]])

# Make a new csv file with our new DataFrame
CSV.write("first.csv", a)

# Get that DataFrames by file reading and store into local variable
test2 = CSV.read("first.csv")

test2[:1,:]

test[1:5, [:State, :City, :County]]

test[in(["OH"]).(test.State), :]

test[:1, 6:10]
