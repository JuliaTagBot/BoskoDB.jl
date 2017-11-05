__precompile__(true)
module BoskoDB

using JuliaDB

export names, nrow, ncol

include("dtable.jl")

end # module
