library(manipulate)
manipulate({
     if (is.null(manipulatorGetState("model"))){
          fit <- lm(Length~Whole.weight, data=abalone)
          manipulatorSetState("model", fit)
          print("Hey, I just estimated a model!")
     } else {
          fit <- manipulatorGetState("model")
          print("Now I just retrieved this model from storage")
     }
     plot(abalone$Length, predict(fit), col=col)
}
, col=picker("red","green","blue","black")
)