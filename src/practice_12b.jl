#!/usr/bin/env julia

"""
 Button Example Code
 orig: https://developer.gnome.org/gnome-devel-demos/stable/button.c.html.en

"""

using Gtk
using Gtk.ShortNames

function change(b)
    l = get_gtk_property(b, :label, String)
    println(l)
    set_gtk_property!(b, :label, reverse(l))
end

function app()
    win = Window("Button Example", 200, 100)
    b = Button("Click Me")
    push!(win,b)

    showall(win)

    condition = Condition()

    signal_connect(change, b, :clicked)
    signal_connect(win, :destroy) do widget
        notify(condition)
    end
    wait(condition)
end

app()
