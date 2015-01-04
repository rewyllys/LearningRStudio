library(manipulate)
manipulate({
     plot(Length~Rings, data=abalone)
     xy <- manipulatorMouseClick()
     if (!is.null(xy)) points(xy$userX, xy$userY, pch=4)
})