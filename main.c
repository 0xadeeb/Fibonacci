#include <stdio.h>

extern int fib_odd(int n);

int fib_even(int n) { return n * fib_odd(n - 1); }

int main() {
    int n, res;
    printf("Enter a number: ");
    scanf("%d", &n);
    if (n % 2) {
        res = fib_odd(n);
    } else {
        res = fib_even(n);
    }
    printf("Fib of %d: %d\n", n, res);
    return 0;
}
