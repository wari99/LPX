function f()
    coroutine.yield(1,10)
    coroutine.yield(2,20)
    coroutine.yield(3,30)
end

for i,v in coroutine.wrap(f) do
    print(i,v)
end


--it = coroutine.wrap(f)
--print(it)
--print(it())
--print(it())

--for i,v in ipairs({10,20,30}) do
--    print(v)
--end
