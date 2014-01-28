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

	pal = colorRampPalette(c("red", "yellow", "blue"))
	x = rnorm(100)
	par(mfrow = c(2,1))
	plot(x, col = pal(100))
	plot(x, col = pal(10))

	# RColorBrewer package: sequential, diverging, qualitative (for factors)
	
	# make sure you did install.packages(RColorBrewer)
	library(RColorBrewer)
	cols = brewer.pal(3, "BuGn")
	print(cols)
	pal = colorRampPalette(cols)
	image(volcano, col = pal(20))

	# anti-aliasing
	x = rnorm(10000)
	y = rnorm(10000)
	smoothScatter(x,y)

	# rgb: takes 3 numbers between 0 and 1
	# use the alpha parameter for transparancy (0 = most transparant, 1 = not transparant)

	plot(x, y, pch = 19)
	plot(x, y, col = rgb(0, 0, 0, 0.2), pch = 19)

	# colorspace package: for a different control over colors
}