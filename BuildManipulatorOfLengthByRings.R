library(manipulate)
manipulate(
     plot(Length ~ Rings, data=abalone
          , axes = axes
          , cex = cex
          , pch = if(pch) 19 else 1
          )
     , axes = checkbox(TRUE, "Show axes")     
     , cex = slider(0, 5, initial = 1, step=0.1, label="Point size")
     , pch = button("Fill points")
     )