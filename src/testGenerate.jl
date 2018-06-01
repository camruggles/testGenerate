module testGenerate

# package code goes here
function test()
	println("Testing to see if a generated package can work.")
	t = ccall((:help, "./libtemp.so"), Int32, ())
	println("$t")

end

end # module
