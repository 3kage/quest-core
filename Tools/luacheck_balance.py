import re, sys

def strip(src):
    out = []
    i, n = 0, len(src)
    while i < n:
        c = src[i]
        two = src[i:i+2]
        # long bracket (string or comment)
        m = re.match(r'(--)?\[(=*)\[', src[i:])
        if m and (two == '--' and src[i+2:i+3]=='[' or c=='['):
            is_comment = bool(m.group(1))
            eq = m.group(2)
            close = ']' + eq + ']'
            start = i + m.end()
            j = src.find(close, start)
            if j == -1:
                j = n
            i = j + len(close)
            out.append(' ')
            continue
        if two == '--':
            j = src.find('\n', i)
            if j == -1: j = n
            i = j
            continue
        if c in '"\'':
            q = c
            i += 1
            while i < n:
                if src[i] == '\\':
                    i += 2; continue
                if src[i] == q:
                    i += 1; break
                i += 1
            out.append(' ')
            continue
        out.append(c)
        i += 1
    return ''.join(out)

def counts(code):
    def cnt(w): return len(re.findall(r'(?<![%w_])'+w+r'(?![%w_])'.replace('%w','A-Za-z0-9'), code))
    # use explicit word boundary
    def c(w): return len(re.findall(r'(?<![A-Za-z0-9_])'+w+r'(?![A-Za-z0-9_])', code))
    return c

for path in sys.argv[1:]:
    with open(path, encoding='utf-8', errors='replace') as f:
        src = f.read()
    code = strip(src)
    c = counts(code)
    func = c('function'); do = c('do'); iff = c('if'); end = c('end')
    rep = c('repeat'); until = c('until')
    openers = func + do + iff
    status = 'OK' if openers == end and rep == until else 'MISMATCH'
    print(f'{status:9} {path}')
    if status != 'OK':
        print(f'    function={func} do={do} if={iff} -> need end={openers}, found end={end}; repeat={rep} until={until}')
