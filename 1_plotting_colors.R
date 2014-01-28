stuffrogersaid = function(){
	pal = colorRamp(c("red", "blue"))
	print("pal only accepts values between 0 and 1")
	print(pal(0))
	print(pal(1))
	print(pal(0.5))
	print(pal(seq(0,1, len = 10)))

	pal = colorRampPalette(c("red", "yellow"))
	print("pal now accepts integer values, which returns a number of interpolated colours")
	print(pal(2))
	print(pal(10))
}