import time

def lpower(n):
    if n == 0:
        return lambda x: 1
    else:
        f = lpower(n - 1)
        return lambda x: x * f(x)

def main():    
    iterations = 500000
    base = 3
    expo = 20
    lpowern = lpower(expo)

    start_time = time.time()

    for _ in range(iterations):
        lpowern(base)

    end_time = time.time()

    print(f"Elapsed time: {end_time - start_time} s")

if __name__ == '__main__':
    main()
