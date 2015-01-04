names(abalone) <- c("Sex","Length","Diameter","Height","Whole.weight","Shucked.weight","Viscera.weight","Shell.weight","Rings")
write.csv(abalone, "abalone.csv", row.names=FALSE)