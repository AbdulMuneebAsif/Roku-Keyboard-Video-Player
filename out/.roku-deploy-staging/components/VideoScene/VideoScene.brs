sub init()
    videocontent = createObject("RoSGNode", "ContentNode")

    videocontent.title = "Example Video"
    videocontent.streamformat = "mp4"
    videocontent.url = "https://shorturl.at/dnuHQ"

    video = m.top.findNode("exampleVideo")
    video.content = videocontent

    video.setFocus(true)
    video.control = "play"
end sub