

# first saved the Data in csv file
# http://lambda.gsfc.nasa.gov/data/suborbital/ACBAR/DecorrelatedBandPowers.txt

Pkg.add("DataFrames")	
using DataFrames
df = readtable("NASA Data.csv" , header = false)
# deleting the first column

dataframe = delete!(df, :x1)
rename!(dataframe , :x2 , :x1)
rename!(dataframe , :x3 , :x2)
rename!(dataframe , :x4 , :x3)

Pkg.add("PyPlot")
using PyPlot

#looking at trend
plot(dataframe[:,1])
plot(dataframe[:,2])
plot(dataframe[:,3])

# looking at each two columns
plot(dataframe[:,1],dataframe[:,2])
plot(dataframe[:,1],dataframe[:,3])
plot(dataframe[:,2],dataframe[:,3])


