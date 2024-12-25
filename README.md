# Assembly Code Bug: Segmentation Fault

This repository demonstrates a common assembly language bug that leads to segmentation faults. The bug involves a memory access operation where the calculated address is potentially invalid due to user-controlled input. The solution shows how to prevent this error through proper input validation and bounds checking. 

## Bug

The bug lies in the following assembly instruction:

`mov eax, [ebx+esi*4+0x10]`

If the calculated address `ebx+esi*4+0x10` falls outside of the allocated memory region, accessing that memory location will cause a segmentation fault.  This is especially risky when `esi` is derived from user input and not properly validated.

## Solution

The solution focuses on validating `esi` before using it in the memory address calculation.  This ensures that the calculated address is always within the allowed range.

## How to Reproduce

1. Clone this repository
2. Assemble the `bug.asm` file
3. Run the resulting executable with various values of `esi`
4. Observe the segmentation fault occurring with certain values of `esi`
5. Compile and run `bugSolution.asm` to see the corrected code.