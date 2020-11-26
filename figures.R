
# 2020-11-25 --------------------------------------------------------------

p1 <- data.frame(id = 10:1,
                 y = c(1, 1, 1, 1, 1, 0, 0, 0, 0, 0),
                 t = c(1, 7, 4, 5, 6, NA, NA, NA, NA, NA),
                 f = c(10, 10, 10, 10, 10, 10, 10, 6, 6, 6))

p2 <- data.frame(id = 8:1,
                 t = c(4, 5, 6, 7, NA, NA, NA, NA),
                 f = rep(10, 8))

library(ggplot2)
ggplot(data = p1) +
  geom_segment(aes(x = 0, xend = f, y = id, yend = id), size = 2) +
  geom_point(aes(x = t, y = id), size = 5) +
  scale_x_continuous(name = "Năm theo dõi", breaks = 1:10) +
  scale_y_continuous(name = "Người tham gia", breaks = 1:10) +
  geom_vline(xintercept = c(3, 8), linetype = 2) +
  theme_bw() +
  ggtitle("A")
ggsave(filename = file.path("figures", "SDBT_01.png"), width = 5, height = 3)

ggplot(data = p2) +
  geom_segment(aes(x = 0, xend = f, y = id, yend = id), size = 2) +
  geom_point(aes(x = t, y = id), size = 5) +
  scale_x_continuous(name = "Năm theo dõi", breaks = 1:10) +
  scale_y_continuous(name = "Người tham gia", breaks = 1:10) +
  geom_vline(xintercept = c(3, 8), linetype = 2) +
  theme_bw() +
  ggtitle("B")
ggsave(filename = file.path("figures", "SDBT_02.png"), width = 5, height = 3)

prob <- seq(from = 0, to = 0.9, by = 0.01)
odds <- prob/(1-prob)
ggplot(data = data.frame(prob = prob, odds = odds), aes(x = prob, y = odds)) +
  geom_line(size = 2) +
  geom_vline(xintercept = 0.5, size = 1, linetype = 2) +
  geom_hline(yintercept = 1, size = 1, linetype = 2) +
  scale_x_continuous(name = "Tỉ lệ", breaks = seq(from = 0, to = 1, by = 0.1)) +
  scale_y_continuous(name = "Số chênh", breaks = seq(from = 0, to = 10)) +
  theme_bw()
ggsave(filename = file.path("figures", "odds_prop.png"), width = 5, height = 3)

