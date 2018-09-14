#!/usr/bin/env julia
#
using SQLite

function readfile(filename)
    (L,H) = readcsv(filename, header=true, comments=true, comment_char='#')
    L
end

function checkfile(dbname)
    return SQLite.DB( dbname )
end

function createtbl(db)
    r = SQLite.tables( db )
    if !( "elements" in r[:name] )
        s = "create table elements "
        s = s * "(id integer primary key, name text not null,"
        s = s * "symbol text not null, anum integer not null,"
        s = s * "pnum integer not null, gnum text not null,"
        s = s * "cas text not null)"
        SQLite.execute!(db, s)
    else
        println("table exists!!")
    end
end

function insertdb(db, L)
    n = "insert into elements values (?1, ?2, ?3, ?4, ?5, ?6, ?7)"
    (rnum, cnum) = size(L)
    for i = 1:rnum
        N = L[i,:]
        unshift!(N,i)
        #println(i,L[i,:])
        #println(i,N)
        SQLite.query(db, n; values=N)
    end
end

function display(r,m)
    for i in 1:r
        #println(r,m[i,:])
        #println(r,m[1][i],m[2][i],m[6][i])
        @printf("%16s : %s\n",m[2][i],m[7][i])
    end
end
    
function printset(db)
    n = "select * from elements "

    println("=== Group 3 ===")
    s = n * "where gnum=3"
    m = SQLite.query(db, s)
    (r,c) = size(m)
    display(r, m)

    println("=== Group 3A ===")
    s = n * "where gnum=\"3A\""
    m = SQLite.query(db, s)
    (r,c) = size(m)
    display(r, m)

end

if length(ARGS) == 2
    fname = ARGS[1]  # csv filename
    dname = ARGS[2]  # db name
    L  = readfile( fname )
    db = checkfile( dname )
    createtbl( db )
    insertdb( db, L )
    printset( db )
else
    println("./practice_05.jl [csv] [db]")
    exit()
end
