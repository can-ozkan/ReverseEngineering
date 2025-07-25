import angr

# 1. Load the binary into an angr Project
project = angr.Project('./crackme', auto_load_libs=False)

# 2. Create an initial state starting at the program's entry point
state = project.factory.entry_state()

# 3. Create a Simulation Manager to handle state exploration
simgr = project.factory.simgr(state)

# 4. Define a function to detect "Success!" in the program output
def is_successful(state):
    # stdout (file descriptor 1)
    return b'Success!' in state.posix.dumps(1)

# 5. Optionally, define a function to avoid "Try again." outputs
def should_abort(state):
    return b'Try again.' in state.posix.dumps(1)

# 6. Explore the binary: find state that prints "Success!", avoid "Try again."
simgr.explore(find=is_successful, avoid=should_abort)

# 7. Check if a solution was found
if simgr.found:
    found_state = simgr.found[0]
    # Extract what was sent to stdin (file descriptor 0)
    password = found_state.posix.dumps(0)
    print(f"[+] Solution found: {password!r}")
else:
    print("[-] No solution found.")

