shape <- 5
scale <- 1
t0 <- 1.999

results <- data.frame(
  t = c(1.001, 1.05, 1.10, 1.15, 1.20, 1.25, 2, 10)
)

# Compute exact probabilities of death at times t
# Conditional on survival to time t0
results$probability <- results |>
  with((pweibull(t, shape) - pweibull(t0, shape)) / (1 - pweibull(t0, shape)))

# hazard at time t
h_t <- function(t) {
  scale^(-shape) * shape * t^(shape - 1)
}

plot(1:10, h_t(1:10))

hazard  <- h_t(2)

results$approximation <- hazard * (results$t - t0)

results

# I understand what h(t)dt stands for
# I thought it would be a more accurate
# descriptor of conditional survival for some
# length of time the smaller dt was.
# It's actually a more accurate descriptor of
# conditional surival for *dt* the smaller *dt* is
#
# Now to figure out what (F(t) - F(t0))/S(t0) is
