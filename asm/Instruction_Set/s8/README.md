# Info

## NZCV[31:28] = N Z C V

## Unconditional Branch

> b br bl blr ret

## Conditional Branch

> Suffix to conditional branches e.g: b.EQ {label}

### Condition Codes

- EQ(equal): Z
- NE(not equal): ~Z
- GE(greater or equal): (N && V) || (~N && ~V)
- GT(greater): ~Z && [(N && V) || (~N && ~V)]
- LE(lower or equal): (N && ~V) || (~N && V)
- LT(lower): ~Z && [(N && ~V) || (~N && V)]
- CS(carry set): C
- CC(carry clear): ~C
- MI(Minus): N
- PL(Positive or zero): ~N
- VS(Overflow of signed integers): V
- VC(No overflow of signed integers): ~V
- HI(Higher): C && ~Z
- HS(Higher or same): C
- LO(Lower): ~C
- LS(Lower or same): ~C || Z
