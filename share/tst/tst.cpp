#include <stdlib.h>
#include <stdio.h>

class Array {
    protected:
        int* body;
        int last_index;
    public:
        Array(int k) {
            body = new int[k];
            last_index = k - 1;
        }
        ~Array() {
            if (body) delete[] body; 
            body = 0;
            last_index = -1;
        }
        int& operator [] (int i) {
            if( i < 0 || i > last_index )
                exit(1);
            return body[i];
        }
};

int
main(){
    Array x(4);
    x[0] = 1;
    printf("ans: %d\n", x[0]);
    return 0;
}
