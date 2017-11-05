using BoskoDB
using JuliaDB
using Base.Test

# write your own tests here
@testset "iteration" begin
    x = distribute(IndexedTable(Columns(a=[1,1], b=[1,2]), Columns(c=[3,4])), 2)
    # y = distribute(IndexedTable(Columns(a=[1,1], b=[1,2]), [3,4]), 2)

    @test names(x) == [:a, :b, :c]
    @test nrow(x) == 2
    @test ncol(x) == 3
end
