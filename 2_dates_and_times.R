stuffRogerSaid = function(){
	# Dates: Date class (number of days since 1970-01-01)
	# Times: POSIXct (a large integer) or POSIXlt (a list) class (number of seconds since 1970-01-01)

	x = as.Date("1970-01-01")
	print(x)
	print(unclass(x))
	print(unclass(as.Date("1970-01-02")))

	# try weekdays(), months(), quarters()

	# POSIXlt
	x = Sys.time()
	print(x)

	p = as.POSIXlt(x)
	print(names(unclass(p)))
	print(p$sec)

	# strptime - check ?strptime for the formatting strings
	datestring = c("January 10, 2012 10:40", "December 9, 2013 11:45")
	x = strptime(datestring, "%B %d, %Y %H:%M")
	print(x)
	print(class(x))

	# operations on Dates and Times
	x = as.Date("2012-01-01")
	y = strptime("9 Jan 2011 11:34:21", "%d %b %Y %H:%M:%S")
	# print(x - y)

	x = as.POSIXlt(x)
	print(x - y)

}