library(ggplot2)
library(bladdr)

# Figure: A small collection of
# time-to-cat-singing:
set.seed(1)
n <- 5
df <- data.frame(
  cat = 1:n,
  sing_time = rgamma(n, 2)
)
ggplot(df, aes(x = sing_time, y = cat)) +
  geom_segment(aes(x = 0, y = cat, xend = sing_time, yend = cat)) +
  geom_point() +
  theme_tufte(10) +
  labs(x = "Cat age (human years)",
       y = "Cat") +
  theme(axis.ticks.y = element_blank(),
        axis.text.y = element_blank())

set.seed(2)
n <- 100
df <- data.frame(
  cat = 1:n,
  sing_time = rgamma(n, 2)
)
ggplot(df, aes(x = sing_time, y = cat)) +
  geom_segment(aes(x = 0, y = cat, xend = sing_time, yend = cat)) +
  geom_point() +
  theme_tufte(10) +
  labs(x = "Cat age (human years)",
       y = "Cat") +
  theme(axis.ticks.y = element_blank(),
        axis.text.y = element_blank())







df <- data.frame(gs = rgamma(100000, 2))


ggplot(df, aes(gs)) +
  geom_density() +
  theme_tufte(10) +
  labs(x = "Cat age (human years)",
       y = "Probability of singing") +
  theme(axis.ticks.y = element_blank(),
        axis.text.y = element_blank())


ggplot(data.frame(x = c(0, 20)), aes(x)) +
  stat_function(fun = dgamma, args = c(2))
