x <- matrix(0,ncol = 650, nrow = 650);
y <- matrix(0, ncol = 1, nrow = 650);
x[1, 1] = 1;
x[1, 6] = -1;
y[1, 1] = 1;
y[2, 1] = y[3, 1] = y[4, 1] = y[5, 1] = 0;

for(i in 6:650) {
    y[i, 1] = -1;
}




