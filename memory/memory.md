when we define a variable in a function or a scope and we call it in that limited zone, GO defines that in stack,
when the function will be done, GO clears all variables in stack.

sometimes we need a variable that is shared between different parts, for example pointer or array, GO defines those in heap and allocate some space for that, when the task of variable will be done, garbage collector(GC) run by GO and see this variable is not releated to anything,
GC free that reserved space and send it to os.

memory leak:
sometimes in heap memory all variables be remind and crowd a huge space in heap, in this state big size of memory has value and it reduces performance.
for example when our pod or container related to our application be restarted, we dont know what variables are in use or not,

we can read the heap and memory by a tools from GO, pprof.


if based on main.go file we start to sending request and check the memory we find out after each request, crowded part of memory is increasing and after a specified time we will have memory leak and our pod be restarted (for example each 24 hours we have update)

we should read the memory and find it out:
we use pprof, it tests cpu, memory and goroutines by new http server.
afetr importing this tool we use it in a new goroutin.
we see which service has much usage in a UI.