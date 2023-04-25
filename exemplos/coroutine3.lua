function f()
    coroutine.yield(1, 10)
    coroutine.yield(2, 20)
    coroutine.yield(3, 30)
    --return
end

co = coroutine.create(f)
print(coroutine.resume(co)) --true 1 10
print(coroutine.resume(co)) --true 2 20
print(coroutine.resume(co)) --true 3 30
print(coroutine.resume(co)) --true
print(coroutine.resume(co)) --false cannot resume dead coroutine
