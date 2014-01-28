stuffRogerSaid = function(){
	# Dates: Date class (number of days since 1970-01-01)
	# Times: POSIXct or POSIXlt class (number of seconds since 1970-01-01)

	x = as.Date("1970-01-01")
	print(x)
	print(unclass(x))
	print(unclass(as.Date("1970-01-02")))
}