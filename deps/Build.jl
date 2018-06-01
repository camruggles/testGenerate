using BinDeps
using Compat

@BinDeps.setup

deps = [
	omp = library_dependency("libgomp", os= :Unix)
]

run(`make`)
