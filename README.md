# Gradescope Secure Harness

This repository is a Gradescope autograder template for C/C++ programming
assignments that aims to follow Gradescope's [best practices](https://gradescope-autograders.readthedocs.io/en/latest/best_practices/). 

## Sandboxing

Student programs are not allowed to:

- Run as root
- Access networks
- Access files outside their working directory
- Bombard results.json by writing a lot of data to either `stdout` or `stderr`

## Exception handling

The harness will produce a friendly, interpretable message to `stderr` in case
the student program:

- Has a non-zero return code
- Has unexpected stderr content
- Raises a signal for illegal instruction, segmentation fault, or other SIGABRT
- Leaks memory (checked on command)
- Has a compiler error
- Has a linker error
- Runs out of resources (memory or storage)
