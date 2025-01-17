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
    for _ in range(iterations):
        lpowern(base)

if __name__ == '__main__':
    main()
