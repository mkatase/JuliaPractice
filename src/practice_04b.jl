#!/usr/bin/env julia
#
using HTTP

function getname(uname)
    n = something(findlast(isequal('/'), uname), 0)
    #println(n)
    uname[n+1:end]
end

function getimage(ifile)
    ofile = getname(ifile)
    odir  = "./out"
    if !isdir( odir )
        mkdir( odir )
    end
    opath = "$odir/$ofile"

    r = HTTP.request("GET", ifile)
    println(r.status)
    println(typeof(r.status))
    if r.status == 200
        println("Access OK!!")
        HTTP.open("GET", ifile) do fi
            open(opath, "w") do fo
                write(fo, fi)
            end
        end
        #download(ifile, opath)
    else
        println("Can not access!!")
        exit()
    end
end

ifile = "https://images.pexels.com/photos/954599/pexels-photo-954599.jpeg"

getimage(ifile)
