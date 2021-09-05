#include <stdio.h>
#include <string.h>

void Bubble(int *array) {
    int temp;
    for(int i = 0; i < 9; i++) {
        for(int j = 0; j < 8 - i; j++) {
            if (array[j] < array[j+1]) {
                temp = array[j];
                array[j] = array[j+1];
                array[j+1] = temp;
            }
        }
    }
}


int main() {
    int length[9];
    int sum;

    for(int i = 0; i < 9; i++) {
        scanf("%d",&length[i]);
    }

    for(int i = 0; i< 9; i++) {
        sum += length[i];
    }

    int rest = sum - 100;

    for(int i = 0; i < 8; i++) {
        for (int j =i + 1; j < 9; j++) {
            if (length[i]+length[j] == rest) {
                length.remove(length[i]);
                length.remove(length[j]);
                bubble(length);
                print("%s",length);
                return 0;
            }
        }
    }
    
}