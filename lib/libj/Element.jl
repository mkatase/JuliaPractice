#
type Element
    name::String
    symbol::String
    atomic::Int64
    period::Int64
    group::Any
    cas::String
    function Element(name, symbol, atomic, period, group, cas)
        new(name, symbol, atomic, period, group, cas)
    end
end
