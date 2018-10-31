#
#
@pyimport PySide.QtCore as c
@pyimport PySide.QtGui as g
@pyimport PySide.QtWebKit as w

@pydef mutable struct TestFive
    function __init__(self)
        self[:x] = 100
        self[:y] = 150
        self[:w] = 720
        self[:h] = 480
        self[:u] = "http://localhost:8000/"
        self[:t] = "Demo Title"
        self[:m] = ""
    end

    function start(self)
        app  = g.QApplication([])
        view = w.QWebView()
        view[:setGeometry](self[:x], self[:y], self[:w], self[:h])
        view[:setWindowTitle](self[:t])
        if self[:m] == ""
            view[:load](c.QUrl(self[:u]))
        else
            view[:setHtml](self[:m])
        end
        view[:show]()
        app[:exec_]()
    end
end
