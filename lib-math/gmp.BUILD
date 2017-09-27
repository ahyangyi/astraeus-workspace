package(default_visibility = ['//visibility:public'])

load("@//utils-base:files.bzl", "template_rule", "write_file_rule")

# We build a generic gmp but tune for a modern microarchitecture
gmp_tune_arch = "skylake"

asm_files = [
    ["addaddmul_1msb0.asm", "addaddmul_1msb0"],
    ["addmul_2.asm", "addmul_2"],
    ["aorrlsh1_n.asm", "addlsh1_n"],
    ["aorrlsh1_n.asm", "rsblsh1_n"],
    ["aorrlsh2_n.asm", "addlsh2_n"],
    ["aorrlsh2_n.asm", "rsblsh2_n"],
    ["aors_err1_n.asm", "add_err1_n"],
    ["aors_err1_n.asm", "sub_err1_n"],
    ["aors_err2_n.asm", "add_err2_n"],
    ["aors_err2_n.asm", "sub_err2_n"],
    ["aors_err3_n.asm", "add_err3_n"],
    ["aors_err3_n.asm", "sub_err3_n"],
    ["aors_n.asm", "add_n"],
    ["aors_n.asm", "sub_n"],
    ["aorsmul_1.asm", "addmul_1"],
    ["aorsmul_1.asm", "submul_1"],
    ["bdiv_dbm1c.asm", "bdiv_dbm1c"],
    ["bdiv_q_1.asm", "bdiv_q_1"],
    ["cnd_aors_n.asm", "cnd_add_n"],
    ["cnd_aors_n.asm", "cnd_sub_n"],
    ["com.asm", "com"],
    ["copyd.asm", "copyd"],
    ["copyi.asm", "copyi"],
    ["div_qr_2n_pi1.asm", "div_qr_2n_pi1"],
    ["div_qr_2u_pi1.asm", "div_qr_2u_pi1"],
    ["dive_1.asm", "dive_1"],
    ["divrem_1.asm", "divrem_1"],
    ["divrem_2.asm", "divrem_2"],
    ["gcd_1.asm", "gcd_1"],
    ["invert_limb.asm", "invert_limb"],
    ["invert_limb_table.asm", "invert_limb_table"],
    ["k8/aorrlsh_n.asm", "addlsh_n"],
    ["k8/aorrlsh_n.asm", "rsblsh_n"],
    ["k8/div_qr_1n_pi1.asm", "div_qr_1n_pi1"],
    ["k8/mul_basecase.asm", "mul_basecase"],
    ["k8/mullo_basecase.asm", "mullo_basecase"],
    ["k8/mulmid_basecase.asm", "mulmid_basecase"],
    ["k8/redc_1.asm", "redc_1"],
    ["k8/sqr_basecase.asm", "sqr_basecase"],
    ["logops_n.asm", "and_n"],
    ["logops_n.asm", "andn_n"],
    ["logops_n.asm", "ior_n"],
    ["logops_n.asm", "iorn_n"],
    ["logops_n.asm", "nand_n"],
    ["logops_n.asm", "nior_n"],
    ["logops_n.asm", "xnor_n"],
    ["logops_n.asm", "xor_n"],
    ["lshift.asm", "lshift"],
    ["lshiftc.asm", "lshiftc"],
    ["mod_1_1.asm", "mod_1_1"],
    ["mod_1_2.asm", "mod_1_2"],
    ["mod_1_4.asm", "mod_1_4"],
    ["mod_34lsub1.asm", "mod_34lsub1"],
    ["mode1o.asm", "mode1o"],
    ["mul_1.asm", "mul_1"],
    ["mul_2.asm", "mul_2"],
    ["popham.asm", "hamdist"],
    ["popham.asm", "popcount"],
    ["rsh1aors_n.asm", "rsh1add_n"],
    ["rsh1aors_n.asm", "rsh1sub_n"],
    ["rshift.asm", "rshift"],
    ["sec_tabselect.asm", "sec_tabselect"],
    ["sqr_diag_addlsh1.asm", "sqr_diag_addlsh1"],
    ["sublsh1_n.asm", "sublsh1_n"],
    ]

generated_asm_files = ["gen/" + x + ".S" for (_, x) in asm_files]

mpn_c_files = [
    ["add.c", "add"],
    ["add_1.c", "add_1"],
    ["add_n_sub_n.c", "add_n_sub_n"],
    ["bdiv_q.c", "bdiv_q"],
    ["bdiv_qr.c", "bdiv_qr"],
    ["binvert.c", "binvert"],
    ["broot.c", "broot"],
    ["brootinv.c", "brootinv"],
    ["bsqrt.c", "bsqrt"],
    ["bsqrtinv.c", "bsqrtinv"],
    ["cmp.c", "cmp"],
    ["cnd_swap.c", "cnd_swap"],
    ["comb_tables.c", "comb_tables"],
    ["dcpi1_bdiv_q.c", "dcpi1_bdiv_q"],
    ["dcpi1_bdiv_qr.c", "dcpi1_bdiv_qr"],
    ["dcpi1_div_q.c", "dcpi1_div_q"],
    ["dcpi1_div_qr.c", "dcpi1_div_qr"],
    ["dcpi1_divappr_q.c", "dcpi1_divappr_q"],
    ["div_q.c", "div_q"],
    ["div_qr_1.c", "div_qr_1"],
    ["div_qr_2.c", "div_qr_2"],
    ["diveby3.c", "diveby3"],
    ["divexact.c", "divexact"],
    ["divis.c", "divis"],
    ["divrem.c", "divrem"],
    ["dump.c", "dump"],
    ["fib2_ui.c", "fib2_ui"],
    ["fib_table.c", "fib_table"],
    ["gcd.c", "gcd"],
    ["gcd_subdiv_step.c", "gcd_subdiv_step"],
    ["gcdext.c", "gcdext"],
    ["gcdext_1.c", "gcdext_1"],
    ["gcdext_lehmer.c", "gcdext_lehmer"],
    ["get_d.c", "get_d"],
    ["get_str.c", "get_str"],
    ["hgcd.c", "hgcd"],
    ["hgcd2.c", "hgcd2"],
    ["hgcd2_jacobi.c", "hgcd2_jacobi"],
    ["hgcd_appr.c", "hgcd_appr"],
    ["hgcd_jacobi.c", "hgcd_jacobi"],
    ["hgcd_matrix.c", "hgcd_matrix"],
    ["hgcd_reduce.c", "hgcd_reduce"],
    ["hgcd_step.c", "hgcd_step"],
    ["invert.c", "invert"],
    ["invertappr.c", "invertappr"],
    ["jacbase.c", "jacbase"],
    ["jacobi.c", "jacobi"],
    ["jacobi_2.c", "jacobi_2"],
    ["matrix22_mul.c", "matrix22_mul"],
    ["matrix22_mul1_inverse_vector.c", "matrix22_mul1_inverse_vector"],
    ["mod_1.c", "mod_1"],
    ["mod_1_3.c", "mod_1_3"],
    ["mp_bases.c", "mp_bases"],
    ["mu_bdiv_q.c", "mu_bdiv_q"],
    ["mu_bdiv_qr.c", "mu_bdiv_qr"],
    ["mu_div_q.c", "mu_div_q"],
    ["mu_div_qr.c", "mu_div_qr"],
    ["mu_divappr_q.c", "mu_divappr_q"],
    ["mul.c", "mul"],
    ["mul_fft.c", "mul_fft"],
    ["mul_n.c", "mul_n"],
    ["mullo_n.c", "mullo_n"],
    ["mulmid.c", "mulmid"],
    ["mulmid_n.c", "mulmid_n"],
    ["mulmod_bnm1.c", "mulmod_bnm1"],
    ["neg.c", "neg"],
    ["nussbaumer_mul.c", "nussbaumer_mul"],
    ["perfpow.c", "perfpow"],
    ["perfsqr.c", "perfsqr"],
    ["pow_1.c", "pow_1"],
    ["powlo.c", "powlo"],
    ["powm.c", "powm"],
    ["pre_mod_1.c", "pre_mod_1"],
    ["random.c", "random"],
    ["random2.c", "random2"],
    ["redc_2.c", "redc_2"],
    ["redc_n.c", "redc_n"],
    ["remove.c", "remove"],
    ["rootrem.c", "rootrem"],
    ["sbpi1_bdiv_q.c", "sbpi1_bdiv_q"],
    ["sbpi1_bdiv_qr.c", "sbpi1_bdiv_qr"],
    ["sbpi1_div_q.c", "sbpi1_div_q"],
    ["sbpi1_div_qr.c", "sbpi1_div_qr"],
    ["sbpi1_divappr_q.c", "sbpi1_divappr_q"],
    ["scan0.c", "scan0"],
    ["scan1.c", "scan1"],
    ["sec_aors_1.c", "sec_add_1"],
    ["sec_aors_1.c", "sec_sub_1"],
    ["sec_div.c", "sec_div_qr"],
    ["sec_div.c", "sec_div_r"],
    ["sec_invert.c", "sec_invert"],
    ["sec_mul.c", "sec_mul"],
    ["sec_pi1_div.c", "sec_pi1_div_qr"],
    ["sec_pi1_div.c", "sec_pi1_div_r"],
    ["sec_powm.c", "sec_powm"],
    ["sec_sqr.c", "sec_sqr"],
    ["set_str.c", "set_str"],
    ["sizeinbase.c", "sizeinbase"],
    ["sqr.c", "sqr"],
    ["sqrlo.c", "sqrlo"],
    ["sqrlo_basecase.c", "sqrlo_basecase"],
    ["sqrmod_bnm1.c", "sqrmod_bnm1"],
    ["sqrtrem.c", "sqrtrem"],
    ["sub.c", "sub"],
    ["sub_1.c", "sub_1"],
    ["tdiv_qr.c", "tdiv_qr"],
    ["toom22_mul.c", "toom22_mul"],
    ["toom2_sqr.c", "toom2_sqr"],
    ["toom32_mul.c", "toom32_mul"],
    ["toom33_mul.c", "toom33_mul"],
    ["toom3_sqr.c", "toom3_sqr"],
    ["toom42_mul.c", "toom42_mul"],
    ["toom42_mulmid.c", "toom42_mulmid"],
    ["toom43_mul.c", "toom43_mul"],
    ["toom44_mul.c", "toom44_mul"],
    ["toom4_sqr.c", "toom4_sqr"],
    ["toom52_mul.c", "toom52_mul"],
    ["toom53_mul.c", "toom53_mul"],
    ["toom54_mul.c", "toom54_mul"],
    ["toom62_mul.c", "toom62_mul"],
    ["toom63_mul.c", "toom63_mul"],
    ["toom6_sqr.c", "toom6_sqr"],
    ["toom6h_mul.c", "toom6h_mul"],
    ["toom8_sqr.c", "toom8_sqr"],
    ["toom8h_mul.c", "toom8h_mul"],
    ["toom_couple_handling.c", "toom_couple_handling"],
    ["toom_eval_dgr3_pm1.c", "toom_eval_dgr3_pm1"],
    ["toom_eval_dgr3_pm2.c", "toom_eval_dgr3_pm2"],
    ["toom_eval_pm1.c", "toom_eval_pm1"],
    ["toom_eval_pm2.c", "toom_eval_pm2"],
    ["toom_eval_pm2exp.c", "toom_eval_pm2exp"],
    ["toom_eval_pm2rexp.c", "toom_eval_pm2rexp"],
    ["toom_interpolate_12pts.c", "toom_interpolate_12pts"],
    ["toom_interpolate_16pts.c", "toom_interpolate_16pts"],
    ["toom_interpolate_5pts.c", "toom_interpolate_5pts"],
    ["toom_interpolate_6pts.c", "toom_interpolate_6pts"],
    ["toom_interpolate_7pts.c", "toom_interpolate_7pts"],
    ["toom_interpolate_8pts.c", "toom_interpolate_8pts"],
    ["trialdiv.c", "trialdiv"],
    ["zero.c", "zero"],
    ["zero_p.c", "zero_p"],
    ]

copts = [
        "-Wno-maybe-uninitialized",
        "-Wno-unused-but-set-variable",
        "-Wno-unused-value",
        "-Wno-unused-variable",
        "-D__GMP_WITHIN_GMP",
        "-std=gnu99",
        "-Iexternal/gmp/mpn",
        "-Iexternal/gmp/mpz",
        "-Iexternal/gmp/mpq",
        "-Iexternal/gmp/printf",
        "-Iexternal/gmp/scanf",
        "-Iexternal/gmp/rand",
        "-Iexternal/gmp/gmp",
        "-Iexternal/gmp/",
        "-Iexternal/gmp/mpn/x86_64/%s/" % gmp_tune_arch,
        ]

generated_headers = [
    # Configured
    "public/gmp.h",
    "config.h",
    # Generated
    "fac_table.h",
    "fib_table.h",
    "mp_bases.h",
    "trialdivtab.h",
    "perfsqr.h",
    "jacobitab.h",
    # In the source pack
    "gmp-impl.h",
    "longlong.h",
    ]

[cc_library(
    name = "mpn-" + func_name,
    srcs = ["mpn/generic/" + src,
        "mpn/x86_64/%s/gmp-mparam.h" % gmp_tune_arch,
        ] + generated_headers,
    copts = [
        "-DOPERATION_" + func_name,
        ] + copts,
    includes = [
        "public",
        ],
    ) for (src, func_name) in mpn_c_files ]
mpn_libs = [":mpn-" + func_name for (_, func_name) in mpn_c_files]

cc_library(
    name = "gmp",
    srcs = glob([
        "mpn/*.c",
        "mpn/*.h",
        "mpn/x86_64/%s/gmp-mparam.h" % gmp_tune_arch,
        "mpz/*.c",
        "mpz/*.h",
        "mpq/*.c",
        "mpq/*.h",
        "mpf/*.c",
        "mpf/*.h",
        "printf/*.c",
        "printf/*.h",
        "scanf/*.c",
        "scanf/*.h",
        "rand/*.c",
        "rand/*.h",
        "*.c",
        ], exclude = [
        "gen*",
        "bootstrap.c",
        "tal-debug.c",
        "tal-notreent.c",
        ]) + generated_headers + generated_asm_files,
    hdrs = [
        "public/gmp.h",
        ],
    includes = [
        "public",
        ],
    deps = mpn_libs,
    copts = copts,
    )

template_rule(
    name = "public_gmp_h",
    src = "gmp-h.in",
    out = "public/gmp.h",
    substitutions = {
        '@GMP_LIMB_BITS@': '64',
        '@GMP_NAIL_BITS@': '0',
        '@DEFN_LONG_LONG_LIMB@': '',
        '@LIBGMP_DLL@': '0',
        '@CC@': 'Astraeus',
        '@CFLAGS@': 'Astraeus',
    },
)

write_file_rule(
    name = "generate-config-h",
    out = "config.h",
    content =\
        "#define HAVE_ATTRIBUTE_CONST 1\n"+\
        "#define HAVE_ATTRIBUTE_MALLOC 1\n"+\
        "#define HAVE_ATTRIBUTE_MODE 1\n"+\
        "#define HAVE_ATTRIBUTE_NORETURN 1\n"+\
        "#define HAVE_CALLING_CONVENTIONS 1\n"+\
        "#define HAVE_DLFCN_H 1\n"+\
        "#define HAVE_DOUBLE_IEEE_LITTLE_ENDIAN 1\n"+\
        "#define HAVE_FCNTL_H 1\n"+\
        "#define HAVE_FLOAT_H 1\n"+\
        "#define HAVE_HIDDEN_ALIAS 1\n"+\
        "#define HAVE_HOST_CPU_FAMILY_x86_64 1\n"+\
        "#define HAVE_INTMAX_T 1\n"+\
        "#define HAVE_INTPTR_T 1\n"+\
        "#define HAVE_INTTYPES_H 1\n"+\
        "#define HAVE_LIMB_LITTLE_ENDIAN 1\n"+\
        "#define HAVE_LONG_DOUBLE 1\n"+\
        "#define HAVE_LONG_LONG 1\n"+\
        "#define HAVE_MEMSET 1\n"+\
        "#define HAVE_MMAP 1\n"+\
        "#define HAVE_MPROTECT 1\n"+\
        "#define HAVE_NATIVE_mpn_add_n 1\n"+\
        "#define HAVE_NATIVE_mpn_add_nc 1\n"+\
        "#define HAVE_NATIVE_mpn_addaddmul_1msb0 1\n"+\
        "#define HAVE_NATIVE_mpn_addlsh1_n 1\n"+\
        "#define HAVE_NATIVE_mpn_addlsh2_n 1\n"+\
        "#define HAVE_NATIVE_mpn_addlsh_n 1\n"+\
        "#define HAVE_NATIVE_mpn_addmul_2 1\n"+\
        "#define HAVE_NATIVE_mpn_and_n 1\n"+\
        "#define HAVE_NATIVE_mpn_andn_n 1\n"+\
        "#define HAVE_NATIVE_mpn_bdiv_dbm1c 1\n"+\
        "#define HAVE_NATIVE_mpn_bdiv_q_1 1\n"+\
        "#define HAVE_NATIVE_mpn_cnd_add_n 1\n"+\
        "#define HAVE_NATIVE_mpn_cnd_sub_n 1\n"+\
        "#define HAVE_NATIVE_mpn_com 1\n"+\
        "#define HAVE_NATIVE_mpn_copyd 1\n"+\
        "#define HAVE_NATIVE_mpn_copyi 1\n"+\
        "#define HAVE_NATIVE_mpn_div_qr_1n_pi1 1\n"+\
        "#define HAVE_NATIVE_mpn_divexact_1 1\n"+\
        "#define HAVE_NATIVE_mpn_divrem_1 1\n"+\
        "#define HAVE_NATIVE_mpn_divrem_2 1\n"+\
        "#define HAVE_NATIVE_mpn_gcd_1 1\n"+\
        "#define HAVE_NATIVE_mpn_hamdist 1\n"+\
        "#define HAVE_NATIVE_mpn_invert_limb 1\n"+\
        "#define HAVE_NATIVE_mpn_ior_n 1\n"+\
        "#define HAVE_NATIVE_mpn_iorn_n 1\n"+\
        "#define HAVE_NATIVE_mpn_lshift 1\n"+\
        "#define HAVE_NATIVE_mpn_lshiftc 1\n"+\
        "#define HAVE_NATIVE_mpn_mod_1_1p 1\n"+\
        "#define HAVE_NATIVE_mpn_mod_1s_2p 1\n"+\
        "#define HAVE_NATIVE_mpn_mod_1s_4p 1\n"+\
        "#define HAVE_NATIVE_mpn_mod_34lsub1 1\n"+\
        "#define HAVE_NATIVE_mpn_modexact_1_odd 1\n"+\
        "#define HAVE_NATIVE_mpn_modexact_1c_odd 1\n"+\
        "#define HAVE_NATIVE_mpn_mul_1 1\n"+\
        "#define HAVE_NATIVE_mpn_mul_1c 1\n"+\
        "#define HAVE_NATIVE_mpn_mul_2 1\n"+\
        "#define HAVE_NATIVE_mpn_mul_basecase 1\n"+\
        "#define HAVE_NATIVE_mpn_mullo_basecase 1\n"+\
        "#define HAVE_NATIVE_mpn_nand_n 1\n"+\
        "#define HAVE_NATIVE_mpn_nior_n 1\n"+\
        "#define HAVE_NATIVE_mpn_pi1_bdiv_q_1 1\n"+\
        "#define HAVE_NATIVE_mpn_popcount 1\n"+\
        "#define HAVE_NATIVE_mpn_preinv_divrem_1 1\n"+\
        "#define HAVE_NATIVE_mpn_redc_1 1\n"+\
        "#define HAVE_NATIVE_mpn_rsblsh1_n 1\n"+\
        "#define HAVE_NATIVE_mpn_rsblsh2_n 1\n"+\
        "#define HAVE_NATIVE_mpn_rsblsh_n 1\n"+\
        "#define HAVE_NATIVE_mpn_rsh1add_n 1\n"+\
        "#define HAVE_NATIVE_mpn_rsh1add_nc 1\n"+\
        "#define HAVE_NATIVE_mpn_rsh1sub_n 1\n"+\
        "#define HAVE_NATIVE_mpn_rsh1sub_nc 1\n"+\
        "#define HAVE_NATIVE_mpn_rshift 1\n"+\
        "#define HAVE_NATIVE_mpn_sqr_basecase 1\n"+\
        "#define HAVE_NATIVE_mpn_sqr_diag_addlsh1 1\n"+\
        "#define HAVE_NATIVE_mpn_sub_n 1\n"+\
        "#define HAVE_NATIVE_mpn_sub_nc 1\n"+\
        "#define HAVE_NATIVE_mpn_sublsh1_n 1\n"+\
        "#define HAVE_NATIVE_mpn_xnor_n 1\n"+\
        "#define HAVE_NATIVE_mpn_xor_n 1\n"+\
        "#define HAVE_PTRDIFF_T 1\n"+\
        "#define HAVE_QUAD_T 1\n"+\
        "#define HAVE_RAISE 1\n"+\
        "#define HAVE_STACK_T 1\n"+\
        "#define HAVE_STDINT_H 1\n"+\
        "#define HAVE_STDLIB_H 1\n"+\
        "#define HAVE_STRCHR 1\n"+\
        "#define HAVE_STRING_H 1\n"+\
        "#define HAVE_STRNLEN 1\n"+\
        "#define HAVE_STRTOL 1\n"+\
        "#define HAVE_STRTOUL 1\n"+\
        "#define HAVE_SYSCTL 1\n"+\
        "#define HAVE_TIMES 1\n"+\
        "#define HAVE_UINT_LEAST32_T 1\n"+\
        "#define HAVE_UNISTD_H 1\n"+\
        "#define LSYM_PREFIX \".L\"\n"+\
        "#define SIZEOF_UNSIGNED_LONG 8\n"+\
        "#define VERSION \"6.1.2-Astreaus\"\n"+\
        "#define WANT_TMP_ALLOCA 1\n"+\
        "#define restrict __restrict\n",
    )

generators = [
    "gen-bases",
    "gen-fac",
    "gen-fib",
    "gen-trialdivtab",
    "gen-psqr",
    "gen-jacobitab",
    ]

[cc_binary(
    name = "{}".format(generator),
    srcs = ["{}.c".format(generator)],
    deps = [":bootstrap"],
    copts = copts,
    ) for generator in generators]

genrule(
    name = "generate-mp-bases-h",
    tools = ["gen-bases"],
    outs = ["mp_bases.h"],
    cmd = "$(location gen-bases) header 64 0 > $(@D)/mp_bases.h",
    )
genrule(
    name = "generate-mp-bases-c",
    tools = ["gen-bases"],
    outs = ["mpn/generic/mp_bases.c"],
    cmd = "$(location gen-bases) table 64 0 > $(@D)/mp_bases.c",
    )
genrule(
    name = "generate-fac-table-h",
    tools = ["gen-fac"],
    outs = ["fac_table.h"],
    cmd = "$(location gen-fac) 64 0 > $(@D)/fac_table.h",
    )
genrule(
    name = "generate-fib-table-h",
    tools = ["gen-fib"],
    outs = ["fib_table.h"],
    cmd = "$(location gen-fib) header 64 0 > $(@D)/fib_table.h",
    )

genrule(
    name = "generate-fib-table-c",
    tools = ["gen-fib"],
    outs = ["mpn/generic/fib_table.c"],
    cmd = "$(location gen-fib) table 64 0 > $(@D)/fib_table.c",
    )
genrule(
    name = "generate-trialdivtab-h",
    tools = ["gen-trialdivtab"],
    outs = ["trialdivtab.h"],
    cmd = "$(location gen-trialdivtab) 64 8000 > $(@D)/trialdivtab.h",
    )
genrule(
    name = "generate-perfsqr-h",
    tools = ["gen-psqr"],
    outs = ["perfsqr.h"],
    cmd = "$(location gen-psqr) 64 0 > $(@D)/perfsqr.h",
    )
genrule(
    name = "generate-jacobitab-h",
    tools = ["gen-jacobitab"],
    outs = ["jacobitab.h"],
    cmd = "$(location gen-jacobitab) > $(@D)/jacobitab.h",
    )

cc_library(
    name = "bootstrap",
    hdrs = ["bootstrap.c", "mini-gmp/mini-gmp.c", "mini-gmp/mini-gmp.h"],
    )

[genrule(
    name = "gen-" + func_name,
    srcs = [
        "mpn/x86_64/" + asm_file,
        "mpn/asm-defs.m4",
        "mpn/x86_64/x86_64-defs.m4",
        "@//lib-math/gmp:config_m4",
        "mpn/x86_64/aorrlshC_n.asm",
        ],
    outs = ["gen/" + func_name + ".S"],
    cmd = "sed -e 's=\\.\\./config.m4=lib-math/gmp/config.m4=g' $(location mpn/x86_64/%s) | m4 -D__GMP_WITHIN_GMP -DPIC -DHAVE_CONFIG_H -DOPERATION_%s > $(@D)/%s.S" % (asm_file, func_name, func_name),
    ) for (asm_file, func_name) in asm_files]
