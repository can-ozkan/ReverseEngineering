import angr
import claripy

binary = './crackme3'
password_len = 8

project = angr.Project(binary, auto_load_libs=False)

input_chars = [claripy.BVS(f'c{i}', 8) for i in range(password_len)]
input_expr = claripy.Concat(*input_chars)

state = project.factory.full_init_state(stdin=input_expr)

# Optionally constrain input to printable ASCII
# for c in input_chars:
#     state.solver.add(c >= 0x20)
#     state.solver.add(c <= 0x7e)

state.options.add(angr.options.ZERO_FILL_UNCONSTRAINED_MEMORY)
state.options.add(angr.options.ZERO_FILL_UNCONSTRAINED_REGISTERS)

simgr = project.factory.simgr(state)

def is_successful(state):
    return b"Success!" in state.posix.dumps(1)

simgr.explore(find=is_successful)

if simgr.found:
    found = simgr.found[0]
    solution = found.solver.eval(input_expr, cast_to=bytes)
    print("[+] Solution found:", solution)
else:
    print("[-] No solution found.")
    for st in simgr.active:
        print(st.posix.dumps(1))

# python3 -c "import sys; sys.stdout.buffer.write(b'KU_is}\x87\x91')" | ./crackme3 
