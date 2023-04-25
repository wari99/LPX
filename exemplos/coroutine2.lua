function f()
    coroutine.yield(10)
    coroutine.yield(20)
    coroutine.yield(nil)
--    do return nil end
    coroutine.yield(30)
end

for v in coroutine.wrap(f) do
    print(v)
end    

print("asdsdsd")

it = coroutine.wrap(f)
v1 = it()
v2 = it()
v3 = it()
v4 = it()
--v5 = it()

print(v1,v2,v3,v4)
