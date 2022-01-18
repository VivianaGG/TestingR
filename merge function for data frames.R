A = data.frame(x = 1:5, y = c(1, 4, 6, 7, 2))
B = data.frame(x = c(2, 2, 1, 1, 2, NA), y = c(1, NA, 5, 6, 3, 8))
y <- merge(A, B, by = 0, all = TRUE) [-1]
print(y)
