sub ShowKeyboardScreen()
    print " ************ Show Keyboard Screen method called ************ "
    m.KeyboardScreen = CreateObject("roSGNode", "KeyboardExample")
    ShowScreen(m.KeyboardScreen)
    m.KeyboardScreen.ObserveField("userTyped", "CheckURL")
    ' m.KeyboardScreen.content = m.KeyboardScreen.userTyped
end sub

sub CheckURL()

    ' text = ReadAsciiFile("tmp:/Config.txt")
    text = m.KeyboardScreen.userTyped
    ' print "ReadAsciiFile has this text = > ", m.KeyboardScreen.userTyped
    if text = "abc"
        DisplayVideoScreen()
    else if text = "https://shorturl.at/dnuHQ"
        'https://roku-webdev-opus.s3.amazonaws.com/public-videos/big+stream+trimmed.mp4
        DisplayVideoScreen()
    else
        DisplayNewScreen()
    end if


end sub


sub DisplayNewScreen()
    print " ************ Display New Screen method called ************ "
    m.NewScreen = CreateObject("roSGNode", "NewScreen")
    print "Text extracted to new screen =>", m.KeyboardScreen.userTyped

    m.NewScreen.content = m.KeyboardScreen.userTyped
    ShowScreen(m.NewScreen)


    ' these both print statements get the same value
    print " m.KeyboardScreen.userTyped = > ", m.KeyboardScreen.userTyped
    print " m.NewScreen.content = > ", m.NewScreen.content
end sub

sub DisplayVideoScreen()
    print " ************ Display Video Screen method called ************ "
    m.VideoScene = CreateObject("roSGNode", "VideoScene")

    ShowScreen(m.VideoScene)
end sub