// solutions/use_if.c
#include <stdio.h>

const char* sign_of(int x) {
    if (x > 0) return "positive";
    else if (x == 0) return "zero";
    else return "negative";
}

int main() {
    int values[] = {5, 0, -3};
    for (int i = 0; i < 3; i++) {
        printf("sign_of(%d) = %s\n", values[i], sign_of(values[i]));
    }
    return 0;
}
