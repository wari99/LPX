a = [
    'aaa',
    [
        'xxx',
        'yyy',
    ],
    'bbb'
]

class arvore:
    def __init__(self, a):
        self.cur = [a] 
        
    def __iter__(self):
        return self
        
    def __next__(self):
        while self.cur:
            no = self.cur.pop()
            if isinstance(no, list):
                for f in reversed(no):
                    self.cur.append(f)
            else:
                return no
        raise StopIteration

for f in arvore(a):
    print(f)
