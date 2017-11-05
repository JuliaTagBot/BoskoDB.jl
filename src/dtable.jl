import Base.names
import JuliaDB.DTable
import DataFrames.ncol

"""
The names of the columns of the `DTable`
"""
function names(df::DTable)
    # fieldnames(eltype(df))
    tmpdf = JuliaDB.take_n(df,1)
    if typeof(tmpdf.index.columns) <: Tuple # this means the index is not a namedTuple
        return keys(tmpdf.data.columns)
    else
         return vcat(keys(tmpdf.index.columns), keys(tmpdf.data.columns))
    end
end

"""
The number of rows of the `DTable`
"""
function nrow(df::DTable)
    length(df)
end

"""
The number of rows of the `DTable`
"""
function ncol(df::DTable)
    df |> names |> length
end
