import sys
import pdb

z, x = var('z x')
eqs = []
precision = eval(sys.argv[1])
for eq_str in sys.argv[2:]:
    eqs.append(eval(eq_str))
sols = solve(eqs, z, x)

sols_str = []
for sol in sols:
    z_ans, x_ans = sol

    z_n = z_ans.right().n(digits=precision)
    x_n = x_ans.right().n(digits=precision)

    z_re = z_n.real()
    z_im = z_n.imag()
    x_re = x_n.real()
    x_im = x_n.imag()

    sols_str.append(
        [(str(z_re), str(z_im)), (str(x_re), str(x_im))]
    )

print sols_str