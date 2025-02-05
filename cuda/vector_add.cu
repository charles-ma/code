# include <stdio.h>
# include "cuda_runtime.h"
# include "device_launch_parameters.h"

#define N 1000000000

void vector_add(float *out, float *a, float *b, int n) {
    for(int i = 0; i < n; i++){
        out[i] = a[i] + b[i];
    }
}

__global__ void gpu_vector_add(float *out, float *a, float *b, int n) {
    int i = threadIdx.x;
    out[i] = a[i] + b[i];
}

__global__ void hello_cuda() {
    printf("Hello CUDA world\n");
}

int main(){
    float *a, *b, *out; 

    // Allocate memory
    a   = (float*)malloc(sizeof(float) * N);
    b   = (float*)malloc(sizeof(float) * N);
    out = (float*)malloc(sizeof(float) * N);

    // Initialize array
    for(int i = 0; i < N; i++){
        a[i] = 1.0f; 
        b[i] = 2.0f;
    }

    // c function
    vector_add(out, a, b, N);

    // cuda function
    // gpu_vector_add<<<1,1>>>(out, a, b, N);
    hello_cuda<<<2, 20>>>();
    cudaDeviceSynchronize();
    cudaDeviceReset();

    return 0;
}
