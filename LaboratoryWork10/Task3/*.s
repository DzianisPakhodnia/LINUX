	.file	"calculation.cpp"
	.text
	.section	.text._ZnwmPv,"axG",@progbits,_ZnwmPv,comdat
	.weak	_ZnwmPv
	.type	_ZnwmPv, @function
_ZnwmPv:
.LFB102:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE102:
	.size	_ZnwmPv, .-_ZnwmPv
	.section	.rodata
	.type	_ZStL19piecewise_construct, @object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.zero	1
	.type	_ZStL13allocator_arg, @object
	.size	_ZStL13allocator_arg, 1
_ZStL13allocator_arg:
	.zero	1
	.type	_ZStL6ignore, @object
	.size	_ZStL6ignore, 1
_ZStL6ignore:
	.zero	1
	.text
	.type	_ZL18__gthread_active_pv, @function
_ZL18__gthread_active_pv:
.LFB1450:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1450:
	.size	_ZL18__gthread_active_pv, .-_ZL18__gthread_active_pv
	.section	.text._ZL20__gthread_mutex_lockP15pthread_mutex_t,"axG",@progbits,_ZNSt5mutex4lockEv,comdat
	.type	_ZL20__gthread_mutex_lockP15pthread_mutex_t, @function
_ZL20__gthread_mutex_lockP15pthread_mutex_t:
.LFB1464:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	_ZL18__gthread_active_pv
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	.L6
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	pthread_mutex_lock@PLT
	jmp	.L7
.L6:
	movl	$0, %eax
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1464:
	.size	_ZL20__gthread_mutex_lockP15pthread_mutex_t, .-_ZL20__gthread_mutex_lockP15pthread_mutex_t
	.section	.text._ZL22__gthread_mutex_unlockP15pthread_mutex_t,"axG",@progbits,_ZNSt5mutex6unlockEv,comdat
	.type	_ZL22__gthread_mutex_unlockP15pthread_mutex_t, @function
_ZL22__gthread_mutex_unlockP15pthread_mutex_t:
.LFB1467:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	_ZL18__gthread_active_pv
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	.L9
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	pthread_mutex_unlock@PLT
	jmp	.L10
.L9:
	movl	$0, %eax
.L10:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1467:
	.size	_ZL22__gthread_mutex_unlockP15pthread_mutex_t, .-_ZL22__gthread_mutex_unlockP15pthread_mutex_t
	.section	.text._ZNSt5mutex4lockEv,"axG",@progbits,_ZNSt5mutex4lockEv,comdat
	.align 2
	.weak	_ZNSt5mutex4lockEv
	.type	_ZNSt5mutex4lockEv, @function
_ZNSt5mutex4lockEv:
.LFB1479:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZL20__gthread_mutex_lockP15pthread_mutex_t
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L13
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	_ZSt20__throw_system_errori@PLT
.L13:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1479:
	.size	_ZNSt5mutex4lockEv, .-_ZNSt5mutex4lockEv
	.section	.text._ZNSt5mutex6unlockEv,"axG",@progbits,_ZNSt5mutex6unlockEv,comdat
	.align 2
	.weak	_ZNSt5mutex6unlockEv
	.type	_ZNSt5mutex6unlockEv, @function
_ZNSt5mutex6unlockEv:
.LFB1481:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZL22__gthread_mutex_unlockP15pthread_mutex_t
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1481:
	.size	_ZNSt5mutex6unlockEv, .-_ZNSt5mutex6unlockEv
	.section	.rodata
	.type	_ZStL10defer_lock, @object
	.size	_ZStL10defer_lock, 1
_ZStL10defer_lock:
	.zero	1
	.type	_ZStL11try_to_lock, @object
	.size	_ZStL11try_to_lock, 1
_ZStL11try_to_lock:
	.zero	1
	.type	_ZStL10adopt_lock, @object
	.size	_ZStL10adopt_lock, 1
_ZStL10adopt_lock:
	.zero	1
	.section	.text._ZNSt12_Vector_baseISt4pairIddESaIS1_EE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseISt4pairIddESaIS1_EE12_Vector_implD5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt4pairIddESaIS1_EE12_Vector_implD2Ev
	.type	_ZNSt12_Vector_baseISt4pairIddESaIS1_EE12_Vector_implD2Ev, @function
_ZNSt12_Vector_baseISt4pairIddESaIS1_EE12_Vector_implD2Ev:
.LFB1930:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__new_allocatorISt4pairIddEED2Ev
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1930:
	.size	_ZNSt12_Vector_baseISt4pairIddESaIS1_EE12_Vector_implD2Ev, .-_ZNSt12_Vector_baseISt4pairIddESaIS1_EE12_Vector_implD2Ev
	.weak	_ZNSt12_Vector_baseISt4pairIddESaIS1_EE12_Vector_implD1Ev
	.set	_ZNSt12_Vector_baseISt4pairIddESaIS1_EE12_Vector_implD1Ev,_ZNSt12_Vector_baseISt4pairIddESaIS1_EE12_Vector_implD2Ev
	.section	.text._ZNSt12_Vector_baseISt4pairIddESaIS1_EEC2Ev,"axG",@progbits,_ZNSt12_Vector_baseISt4pairIddESaIS1_EEC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt4pairIddESaIS1_EEC2Ev
	.type	_ZNSt12_Vector_baseISt4pairIddESaIS1_EEC2Ev, @function
_ZNSt12_Vector_baseISt4pairIddESaIS1_EEC2Ev:
.LFB1932:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseISt4pairIddESaIS1_EE12_Vector_implC1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1932:
	.size	_ZNSt12_Vector_baseISt4pairIddESaIS1_EEC2Ev, .-_ZNSt12_Vector_baseISt4pairIddESaIS1_EEC2Ev
	.weak	_ZNSt12_Vector_baseISt4pairIddESaIS1_EEC1Ev
	.set	_ZNSt12_Vector_baseISt4pairIddESaIS1_EEC1Ev,_ZNSt12_Vector_baseISt4pairIddESaIS1_EEC2Ev
	.section	.text._ZNSt6vectorISt4pairIddESaIS1_EEC2Ev,"axG",@progbits,_ZNSt6vectorISt4pairIddESaIS1_EEC5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorISt4pairIddESaIS1_EEC2Ev
	.type	_ZNSt6vectorISt4pairIddESaIS1_EEC2Ev, @function
_ZNSt6vectorISt4pairIddESaIS1_EEC2Ev:
.LFB1934:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseISt4pairIddESaIS1_EEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1934:
	.size	_ZNSt6vectorISt4pairIddESaIS1_EEC2Ev, .-_ZNSt6vectorISt4pairIddESaIS1_EEC2Ev
	.weak	_ZNSt6vectorISt4pairIddESaIS1_EEC1Ev
	.set	_ZNSt6vectorISt4pairIddESaIS1_EEC1Ev,_ZNSt6vectorISt4pairIddESaIS1_EEC2Ev
	.text
	.globl	_Z19calculate_and_writeddddddRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt5mutex
	.type	_Z19calculate_and_writeddddddRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt5mutex, @function
_Z19calculate_and_writeddddddRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt5mutex:
.LFB1925:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1925
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 3, -24
	movsd	%xmm0, -72(%rbp)
	movsd	%xmm1, -80(%rbp)
	movsd	%xmm2, -88(%rbp)
	movsd	%xmm3, -96(%rbp)
	movsd	%xmm4, -104(%rbp)
	movsd	%xmm5, -112(%rbp)
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorISt4pairIddESaIS1_EEC1Ev
	movsd	-96(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)
	jmp	.L19
.L20:
	movsd	-64(%rbp), %xmm2
	movsd	-88(%rbp), %xmm1
	movsd	-80(%rbp), %xmm0
	movq	-72(%rbp), %rax
	movapd	%xmm2, %xmm3
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
.LEHB0:
	call	_Z9quadraticdddd@PLT
	movq	%xmm0, %rax
	movq	%rax, -56(%rbp)
	leaq	-56(%rbp), %rdx
	leaq	-64(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorISt4pairIddESaIS1_EE12emplace_backIJRdS5_EEEvDpOT_
	movsd	-64(%rbp), %xmm0
	addsd	-112(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)
.L19:
	movsd	-64(%rbp), %xmm1
	movsd	-104(%rbp), %xmm0
	comisd	%xmm1, %xmm0
	jnb	.L20
	movq	-128(%rbp), %rdx
	leaq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt10lock_guardISt5mutexEC1ERS0_
.LEHE0:
	movq	-120(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB1:
	call	_Z13write_to_fileRKSt6vectorISt4pairIddESaIS1_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@PLT
.LEHE1:
	leaq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10lock_guardISt5mutexED1Ev
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorISt4pairIddESaIS1_EED1Ev
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L24
	jmp	.L27
.L26:
	endbr64
	movq	%rax, %rbx
	leaq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10lock_guardISt5mutexED1Ev
	jmp	.L22
.L25:
	endbr64
	movq	%rax, %rbx
.L22:
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorISt4pairIddESaIS1_EED1Ev
	movq	%rbx, %rax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L23
	call	__stack_chk_fail@PLT
.L23:
	movq	%rax, %rdi
.LEHB2:
	call	_Unwind_Resume@PLT
.LEHE2:
.L27:
	call	__stack_chk_fail@PLT
.L24:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1925:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA1925:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1925-.LLSDACSB1925
.LLSDACSB1925:
	.uleb128 .LEHB0-.LFB1925
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L25-.LFB1925
	.uleb128 0
	.uleb128 .LEHB1-.LFB1925
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L26-.LFB1925
	.uleb128 0
	.uleb128 .LEHB2-.LFB1925
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE1925:
	.text
	.size	_Z19calculate_and_writeddddddRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt5mutex, .-_Z19calculate_and_writeddddddRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt5mutex
	.section	.text._ZNSt12_Vector_baseISt4pairIddESaIS1_EE12_Vector_implC2Ev,"axG",@progbits,_ZNSt12_Vector_baseISt4pairIddESaIS1_EE12_Vector_implC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt4pairIddESaIS1_EE12_Vector_implC2Ev
	.type	_ZNSt12_Vector_baseISt4pairIddESaIS1_EE12_Vector_implC2Ev, @function
_ZNSt12_Vector_baseISt4pairIddESaIS1_EE12_Vector_implC2Ev:
.LFB2134:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	nop
	nop
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseISt4pairIddESaIS1_EE17_Vector_impl_dataC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2134:
	.size	_ZNSt12_Vector_baseISt4pairIddESaIS1_EE12_Vector_implC2Ev, .-_ZNSt12_Vector_baseISt4pairIddESaIS1_EE12_Vector_implC2Ev
	.weak	_ZNSt12_Vector_baseISt4pairIddESaIS1_EE12_Vector_implC1Ev
	.set	_ZNSt12_Vector_baseISt4pairIddESaIS1_EE12_Vector_implC1Ev,_ZNSt12_Vector_baseISt4pairIddESaIS1_EE12_Vector_implC2Ev
	.section	.text._ZNSt12_Vector_baseISt4pairIddESaIS1_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseISt4pairIddESaIS1_EED5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt4pairIddESaIS1_EED2Ev
	.type	_ZNSt12_Vector_baseISt4pairIddESaIS1_EED2Ev, @function
_ZNSt12_Vector_baseISt4pairIddESaIS1_EED2Ev:
.LFB2140:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2140
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$4, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseISt4pairIddESaIS1_EE13_M_deallocateEPS1_m
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseISt4pairIddESaIS1_EE12_Vector_implD1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2140:
	.section	.gcc_except_table
.LLSDA2140:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2140-.LLSDACSB2140
.LLSDACSB2140:
.LLSDACSE2140:
	.section	.text._ZNSt12_Vector_baseISt4pairIddESaIS1_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseISt4pairIddESaIS1_EED5Ev,comdat
	.size	_ZNSt12_Vector_baseISt4pairIddESaIS1_EED2Ev, .-_ZNSt12_Vector_baseISt4pairIddESaIS1_EED2Ev
	.weak	_ZNSt12_Vector_baseISt4pairIddESaIS1_EED1Ev
	.set	_ZNSt12_Vector_baseISt4pairIddESaIS1_EED1Ev,_ZNSt12_Vector_baseISt4pairIddESaIS1_EED2Ev
	.section	.text._ZNSt6vectorISt4pairIddESaIS1_EED2Ev,"axG",@progbits,_ZNSt6vectorISt4pairIddESaIS1_EED5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorISt4pairIddESaIS1_EED2Ev
	.type	_ZNSt6vectorISt4pairIddESaIS1_EED2Ev, @function
_ZNSt6vectorISt4pairIddESaIS1_EED2Ev:
.LFB2143:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2143
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseISt4pairIddESaIS1_EE19_M_get_Tp_allocatorEv
	movq	-40(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -24(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt8_DestroyIPSt4pairIddEEvT_S3_
	nop
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseISt4pairIddESaIS1_EED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2143:
	.section	.gcc_except_table
.LLSDA2143:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2143-.LLSDACSB2143
.LLSDACSB2143:
.LLSDACSE2143:
	.section	.text._ZNSt6vectorISt4pairIddESaIS1_EED2Ev,"axG",@progbits,_ZNSt6vectorISt4pairIddESaIS1_EED5Ev,comdat
	.size	_ZNSt6vectorISt4pairIddESaIS1_EED2Ev, .-_ZNSt6vectorISt4pairIddESaIS1_EED2Ev
	.weak	_ZNSt6vectorISt4pairIddESaIS1_EED1Ev
	.set	_ZNSt6vectorISt4pairIddESaIS1_EED1Ev,_ZNSt6vectorISt4pairIddESaIS1_EED2Ev
	.section	.text._ZNSt6vectorISt4pairIddESaIS1_EE12emplace_backIJRdS5_EEEvDpOT_,"axG",@progbits,_ZNSt6vectorISt4pairIddESaIS1_EE12emplace_backIJRdS5_EEEvDpOT_,comdat
	.align 2
	.weak	_ZNSt6vectorISt4pairIddESaIS1_EE12emplace_backIJRdS5_EEEvDpOT_
	.type	_ZNSt6vectorISt4pairIddESaIS1_EE12emplace_backIJRdS5_EEEvDpOT_, @function
_ZNSt6vectorISt4pairIddESaIS1_EE12emplace_backIJRdS5_EEEvDpOT_:
.LFB2145:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$96, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	-88(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, %rdx
	je	.L32
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRdEOT_RNSt16remove_referenceIS1_E4typeE
	movq	%rax, %rbx
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRdEOT_RNSt16remove_referenceIS1_E4typeE
	movq	-88(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	-88(%rbp), %rcx
	movq	%rcx, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rax, -64(%rbp)
	movq	%rbx, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRdEOT_RNSt16remove_referenceIS1_E4typeE
	movq	%rax, %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRdEOT_RNSt16remove_referenceIS1_E4typeE
	movq	-80(%rbp), %rdx
	movq	%rdx, -48(%rbp)
	movq	-72(%rbp), %rdx
	movq	%rdx, -40(%rbp)
	movq	%rax, -32(%rbp)
	movq	%rbx, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movl	$16, %edi
	call	_ZnwmPv
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRdEOT_RNSt16remove_referenceIS1_E4typeE
	movq	%rax, %r12
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRdEOT_RNSt16remove_referenceIS1_E4typeE
	movq	%r12, %rdx
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt4pairIddEC1IRdS2_Lb1EEEOT_OT0_
	nop
	nop
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	leaq	16(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, 8(%rax)
	jmp	.L34
.L32:
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRdEOT_RNSt16remove_referenceIS1_E4typeE
	movq	%rax, %r12
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRdEOT_RNSt16remove_referenceIS1_E4typeE
	movq	%rax, %rbx
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorISt4pairIddESaIS1_EE3endEv
	movq	%rax, %rsi
	movq	-88(%rbp), %rax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movq	%rax, %rdi
	call	_ZNSt6vectorISt4pairIddESaIS1_EE17_M_realloc_insertIJRdS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
.L34:
	nop
	addq	$96, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2145:
	.size	_ZNSt6vectorISt4pairIddESaIS1_EE12emplace_backIJRdS5_EEEvDpOT_, .-_ZNSt6vectorISt4pairIddESaIS1_EE12emplace_backIJRdS5_EEEvDpOT_
	.section	.text._ZNSt10lock_guardISt5mutexEC2ERS0_,"axG",@progbits,_ZNSt10lock_guardISt5mutexEC5ERS0_,comdat
	.align 2
	.weak	_ZNSt10lock_guardISt5mutexEC2ERS0_
	.type	_ZNSt10lock_guardISt5mutexEC2ERS0_, @function
_ZNSt10lock_guardISt5mutexEC2ERS0_:
.LFB2152:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_ZNSt5mutex4lockEv
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2152:
	.size	_ZNSt10lock_guardISt5mutexEC2ERS0_, .-_ZNSt10lock_guardISt5mutexEC2ERS0_
	.weak	_ZNSt10lock_guardISt5mutexEC1ERS0_
	.set	_ZNSt10lock_guardISt5mutexEC1ERS0_,_ZNSt10lock_guardISt5mutexEC2ERS0_
	.section	.text._ZNSt10lock_guardISt5mutexED2Ev,"axG",@progbits,_ZNSt10lock_guardISt5mutexED5Ev,comdat
	.align 2
	.weak	_ZNSt10lock_guardISt5mutexED2Ev
	.type	_ZNSt10lock_guardISt5mutexED2Ev, @function
_ZNSt10lock_guardISt5mutexED2Ev:
.LFB2155:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_ZNSt5mutex6unlockEv
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2155:
	.size	_ZNSt10lock_guardISt5mutexED2Ev, .-_ZNSt10lock_guardISt5mutexED2Ev
	.weak	_ZNSt10lock_guardISt5mutexED1Ev
	.set	_ZNSt10lock_guardISt5mutexED1Ev,_ZNSt10lock_guardISt5mutexED2Ev
	.section	.text._ZNSt12_Vector_baseISt4pairIddESaIS1_EE17_Vector_impl_dataC2Ev,"axG",@progbits,_ZNSt12_Vector_baseISt4pairIddESaIS1_EE17_Vector_impl_dataC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt4pairIddESaIS1_EE17_Vector_impl_dataC2Ev
	.type	_ZNSt12_Vector_baseISt4pairIddESaIS1_EE17_Vector_impl_dataC2Ev, @function
_ZNSt12_Vector_baseISt4pairIddESaIS1_EE17_Vector_impl_dataC2Ev:
.LFB2221:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2221:
	.size	_ZNSt12_Vector_baseISt4pairIddESaIS1_EE17_Vector_impl_dataC2Ev, .-_ZNSt12_Vector_baseISt4pairIddESaIS1_EE17_Vector_impl_dataC2Ev
	.weak	_ZNSt12_Vector_baseISt4pairIddESaIS1_EE17_Vector_impl_dataC1Ev
	.set	_ZNSt12_Vector_baseISt4pairIddESaIS1_EE17_Vector_impl_dataC1Ev,_ZNSt12_Vector_baseISt4pairIddESaIS1_EE17_Vector_impl_dataC2Ev
	.section	.text._ZNSt15__new_allocatorISt4pairIddEED2Ev,"axG",@progbits,_ZNSt15__new_allocatorISt4pairIddEED5Ev,comdat
	.align 2
	.weak	_ZNSt15__new_allocatorISt4pairIddEED2Ev
	.type	_ZNSt15__new_allocatorISt4pairIddEED2Ev, @function
_ZNSt15__new_allocatorISt4pairIddEED2Ev:
.LFB2224:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2224:
	.size	_ZNSt15__new_allocatorISt4pairIddEED2Ev, .-_ZNSt15__new_allocatorISt4pairIddEED2Ev
	.weak	_ZNSt15__new_allocatorISt4pairIddEED1Ev
	.set	_ZNSt15__new_allocatorISt4pairIddEED1Ev,_ZNSt15__new_allocatorISt4pairIddEED2Ev
	.section	.text._ZNSt12_Vector_baseISt4pairIddESaIS1_EE13_M_deallocateEPS1_m,"axG",@progbits,_ZNSt12_Vector_baseISt4pairIddESaIS1_EE13_M_deallocateEPS1_m,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt4pairIddESaIS1_EE13_M_deallocateEPS1_m
	.type	_ZNSt12_Vector_baseISt4pairIddESaIS1_EE13_M_deallocateEPS1_m, @function
_ZNSt12_Vector_baseISt4pairIddESaIS1_EE13_M_deallocateEPS1_m:
.LFB2226:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L41
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt15__new_allocatorISt4pairIddEE10deallocateEPS1_m
	nop
.L41:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2226:
	.size	_ZNSt12_Vector_baseISt4pairIddESaIS1_EE13_M_deallocateEPS1_m, .-_ZNSt12_Vector_baseISt4pairIddESaIS1_EE13_M_deallocateEPS1_m
	.section	.text._ZNSt12_Vector_baseISt4pairIddESaIS1_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseISt4pairIddESaIS1_EE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt4pairIddESaIS1_EE19_M_get_Tp_allocatorEv
	.type	_ZNSt12_Vector_baseISt4pairIddESaIS1_EE19_M_get_Tp_allocatorEv, @function
_ZNSt12_Vector_baseISt4pairIddESaIS1_EE19_M_get_Tp_allocatorEv:
.LFB2227:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2227:
	.size	_ZNSt12_Vector_baseISt4pairIddESaIS1_EE19_M_get_Tp_allocatorEv, .-_ZNSt12_Vector_baseISt4pairIddESaIS1_EE19_M_get_Tp_allocatorEv
	.section	.text._ZSt7forwardIRdEOT_RNSt16remove_referenceIS1_E4typeE,"axG",@progbits,_ZSt7forwardIRdEOT_RNSt16remove_referenceIS1_E4typeE,comdat
	.weak	_ZSt7forwardIRdEOT_RNSt16remove_referenceIS1_E4typeE
	.type	_ZSt7forwardIRdEOT_RNSt16remove_referenceIS1_E4typeE, @function
_ZSt7forwardIRdEOT_RNSt16remove_referenceIS1_E4typeE:
.LFB2229:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2229:
	.size	_ZSt7forwardIRdEOT_RNSt16remove_referenceIS1_E4typeE, .-_ZSt7forwardIRdEOT_RNSt16remove_referenceIS1_E4typeE
	.section	.text._ZNSt6vectorISt4pairIddESaIS1_EE3endEv,"axG",@progbits,_ZNSt6vectorISt4pairIddESaIS1_EE3endEv,comdat
	.align 2
	.weak	_ZNSt6vectorISt4pairIddESaIS1_EE3endEv
	.type	_ZNSt6vectorISt4pairIddESaIS1_EE3endEv, @function
_ZNSt6vectorISt4pairIddESaIS1_EE3endEv:
.LFB2231:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIddESt6vectorIS2_SaIS2_EEEC1ERKS3_
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L48
	call	__stack_chk_fail@PLT
.L48:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2231:
	.size	_ZNSt6vectorISt4pairIddESaIS1_EE3endEv, .-_ZNSt6vectorISt4pairIddESaIS1_EE3endEv
	.section	.text._ZNSt6vectorISt4pairIddESaIS1_EE15_S_use_relocateEv,"axG",@progbits,_ZNSt6vectorISt4pairIddESaIS1_EE15_S_use_relocateEv,comdat
	.weak	_ZNSt6vectorISt4pairIddESaIS1_EE15_S_use_relocateEv
	.type	_ZNSt6vectorISt4pairIddESaIS1_EE15_S_use_relocateEv, @function
_ZNSt6vectorISt4pairIddESaIS1_EE15_S_use_relocateEv:
.LFB2233:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	call	_ZNSt6vectorISt4pairIddESaIS1_EE19_S_nothrow_relocateESt17integral_constantIbLb1EE
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L51
	call	__stack_chk_fail@PLT
.L51:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2233:
	.size	_ZNSt6vectorISt4pairIddESaIS1_EE15_S_use_relocateEv, .-_ZNSt6vectorISt4pairIddESaIS1_EE15_S_use_relocateEv
	.section	.text._ZNSt6vectorISt4pairIddESaIS1_EE19_S_nothrow_relocateESt17integral_constantIbLb1EE,"axG",@progbits,_ZNSt6vectorISt4pairIddESaIS1_EE19_S_nothrow_relocateESt17integral_constantIbLb1EE,comdat
	.weak	_ZNSt6vectorISt4pairIddESaIS1_EE19_S_nothrow_relocateESt17integral_constantIbLb1EE
	.type	_ZNSt6vectorISt4pairIddESaIS1_EE19_S_nothrow_relocateESt17integral_constantIbLb1EE, @function
_ZNSt6vectorISt4pairIddESaIS1_EE19_S_nothrow_relocateESt17integral_constantIbLb1EE:
.LFB2234:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2234:
	.size	_ZNSt6vectorISt4pairIddESaIS1_EE19_S_nothrow_relocateESt17integral_constantIbLb1EE, .-_ZNSt6vectorISt4pairIddESaIS1_EE19_S_nothrow_relocateESt17integral_constantIbLb1EE
	.section	.rodata
.LC0:
	.string	"vector::_M_realloc_insert"
	.section	.text._ZNSt6vectorISt4pairIddESaIS1_EE17_M_realloc_insertIJRdS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,"axG",@progbits,_ZNSt6vectorISt4pairIddESaIS1_EE17_M_realloc_insertIJRdS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,comdat
	.align 2
	.weak	_ZNSt6vectorISt4pairIddESaIS1_EE17_M_realloc_insertIJRdS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	.type	_ZNSt6vectorISt4pairIddESaIS1_EE17_M_realloc_insertIJRdS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, @function
_ZNSt6vectorISt4pairIddESaIS1_EE17_M_realloc_insertIJRdS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:
.LFB2232:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2232
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$240, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -232(%rbp)
	movq	%rsi, -240(%rbp)
	movq	%rdx, -248(%rbp)
	movq	%rcx, -256(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-232(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	movl	$1, %esi
	movq	%rax, %rdi
.LEHB3:
	call	_ZNKSt6vectorISt4pairIddESaIS1_EE12_M_check_lenEmPKc
	movq	%rax, -208(%rbp)
	movq	-232(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -200(%rbp)
	movq	-232(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -192(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorISt4pairIddESaIS1_EE5beginEv
	movq	%rax, -224(%rbp)
	leaq	-224(%rbp), %rdx
	leaq	-240(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxxmiIPSt4pairIddESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_
	movq	%rax, -184(%rbp)
	movq	-232(%rbp), %rax
	movq	-208(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseISt4pairIddESaIS1_EE11_M_allocateEm
.LEHE3:
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -216(%rbp)
	movq	-256(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRdEOT_RNSt16remove_referenceIS1_E4typeE
	movq	%rax, %rbx
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRdEOT_RNSt16remove_referenceIS1_E4typeE
	movq	-184(%rbp), %rdx
	movq	%rdx, %rcx
	salq	$4, %rcx
	movq	-176(%rbp), %rdx
	addq	%rdx, %rcx
	movq	-232(%rbp), %rdx
	movq	%rdx, -168(%rbp)
	movq	%rcx, -160(%rbp)
	movq	%rax, -152(%rbp)
	movq	%rbx, -144(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRdEOT_RNSt16remove_referenceIS1_E4typeE
	movq	%rax, %rbx
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRdEOT_RNSt16remove_referenceIS1_E4typeE
	movq	-168(%rbp), %rdx
	movq	%rdx, -136(%rbp)
	movq	-160(%rbp), %rdx
	movq	%rdx, -128(%rbp)
	movq	%rax, -120(%rbp)
	movq	%rbx, -112(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, %rsi
	movl	$16, %edi
	call	_ZnwmPv
	movq	%rax, %rbx
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRdEOT_RNSt16remove_referenceIS1_E4typeE
	movq	%rax, %r12
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRdEOT_RNSt16remove_referenceIS1_E4typeE
	movq	%r12, %rdx
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt4pairIddEC1IRdS2_Lb1EEEOT_OT0_
	nop
	nop
	movq	$0, -216(%rbp)
	call	_ZNSt6vectorISt4pairIddESaIS1_EE15_S_use_relocateEv
	testb	%al, %al
	je	.L55
	movq	-232(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseISt4pairIddESaIS1_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rbx
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIddESt6vectorIS2_SaIS2_EEE4baseEv
	movq	(%rax), %rsi
	movq	-176(%rbp), %rdx
	movq	-200(%rbp), %rax
	movq	%rbx, %rcx
	movq	%rax, %rdi
	call	_ZNSt6vectorISt4pairIddESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_
	movq	%rax, -216(%rbp)
	addq	$16, -216(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseISt4pairIddESaIS1_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rbx
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIddESt6vectorIS2_SaIS2_EEE4baseEv
	movq	(%rax), %rax
	movq	-216(%rbp), %rdx
	movq	-192(%rbp), %rsi
	movq	%rbx, %rcx
	movq	%rax, %rdi
	call	_ZNSt6vectorISt4pairIddESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_
	movq	%rax, -216(%rbp)
	jmp	.L56
.L55:
	movq	-232(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseISt4pairIddESaIS1_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rbx
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIddESt6vectorIS2_SaIS2_EEE4baseEv
	movq	(%rax), %rsi
	movq	-176(%rbp), %rdx
	movq	-200(%rbp), %rax
	movq	%rbx, %rcx
	movq	%rax, %rdi
.LEHB4:
	call	_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIddES2_SaIS1_EET0_T_S5_S4_RT1_
	movq	%rax, -216(%rbp)
	addq	$16, -216(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseISt4pairIddESaIS1_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rbx
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIddESt6vectorIS2_SaIS2_EEE4baseEv
	movq	(%rax), %rax
	movq	-216(%rbp), %rdx
	movq	-192(%rbp), %rsi
	movq	%rbx, %rcx
	movq	%rax, %rdi
	call	_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIddES2_SaIS1_EET0_T_S5_S4_RT1_
.LEHE4:
	movq	%rax, -216(%rbp)
.L56:
	call	_ZNSt6vectorISt4pairIddESaIS1_EE15_S_use_relocateEv
	xorl	$1, %eax
	testb	%al, %al
	je	.L57
	movq	-232(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseISt4pairIddESaIS1_EE19_M_get_Tp_allocatorEv
	movq	-200(%rbp), %rdx
	movq	%rdx, -104(%rbp)
	movq	-192(%rbp), %rdx
	movq	%rdx, -96(%rbp)
	movq	%rax, -88(%rbp)
	movq	-96(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB5:
	call	_ZSt8_DestroyIPSt4pairIddEEvT_S3_
.LEHE5:
	nop
.L57:
	movq	-232(%rbp), %rax
	movq	-232(%rbp), %rdx
	movq	16(%rdx), %rdx
	subq	-200(%rbp), %rdx
	sarq	$4, %rdx
	movq	-200(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseISt4pairIddESaIS1_EE13_M_deallocateEPS1_m
	movq	-232(%rbp), %rax
	movq	-176(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-232(%rbp), %rax
	movq	-216(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-208(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-176(%rbp), %rax
	addq	%rax, %rdx
	movq	-232(%rbp), %rax
	movq	%rdx, 16(%rax)
	nop
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L64
	jmp	.L67
.L65:
	endbr64
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	cmpq	$0, -216(%rbp)
	jne	.L59
	movq	-184(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-176(%rbp), %rax
	addq	%rax, %rdx
	movq	-232(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -56(%rbp)
	nop
	jmp	.L60
.L59:
	movq	-232(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseISt4pairIddESaIS1_EE19_M_get_Tp_allocatorEv
	movq	-176(%rbp), %rdx
	movq	%rdx, -48(%rbp)
	movq	-216(%rbp), %rdx
	movq	%rdx, -40(%rbp)
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB6:
	call	_ZSt8_DestroyIPSt4pairIddEEvT_S3_
	nop
.L60:
	movq	-232(%rbp), %rax
	movq	-208(%rbp), %rdx
	movq	-176(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseISt4pairIddESaIS1_EE13_M_deallocateEPS1_m
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L61
	call	__stack_chk_fail@PLT
.L61:
	call	__cxa_rethrow@PLT
.LEHE6:
.L66:
	endbr64
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L63
	call	__stack_chk_fail@PLT
.L63:
	movq	%rax, %rdi
.LEHB7:
	call	_Unwind_Resume@PLT
.LEHE7:
.L67:
	call	__stack_chk_fail@PLT
.L64:
	addq	$240, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2232:
	.section	.gcc_except_table
	.align 4
.LLSDA2232:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT2232-.LLSDATTD2232
.LLSDATTD2232:
	.byte	0x1
	.uleb128 .LLSDACSE2232-.LLSDACSB2232
.LLSDACSB2232:
	.uleb128 .LEHB3-.LFB2232
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB4-.LFB2232
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L65-.LFB2232
	.uleb128 0x1
	.uleb128 .LEHB5-.LFB2232
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB6-.LFB2232
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L66-.LFB2232
	.uleb128 0
	.uleb128 .LEHB7-.LFB2232
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
.LLSDACSE2232:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT2232:
	.section	.text._ZNSt6vectorISt4pairIddESaIS1_EE17_M_realloc_insertIJRdS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,"axG",@progbits,_ZNSt6vectorISt4pairIddESaIS1_EE17_M_realloc_insertIJRdS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,comdat
	.size	_ZNSt6vectorISt4pairIddESaIS1_EE17_M_realloc_insertIJRdS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, .-_ZNSt6vectorISt4pairIddESaIS1_EE17_M_realloc_insertIJRdS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	.section	.text._ZSt8_DestroyIPSt4pairIddEEvT_S3_,"axG",@progbits,_ZSt8_DestroyIPSt4pairIddEEvT_S3_,comdat
	.weak	_ZSt8_DestroyIPSt4pairIddEEvT_S3_
	.type	_ZSt8_DestroyIPSt4pairIddEEvT_S3_, @function
_ZSt8_DestroyIPSt4pairIddEEvT_S3_:
.LFB2278:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Destroy_auxILb1EE9__destroyIPSt4pairIddEEEvT_S5_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2278:
	.size	_ZSt8_DestroyIPSt4pairIddEEvT_S3_, .-_ZSt8_DestroyIPSt4pairIddEEvT_S3_
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPSt4pairIddESt6vectorIS2_SaIS2_EEEC2ERKS3_,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIddESt6vectorIS2_SaIS2_EEEC5ERKS3_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIddESt6vectorIS2_SaIS2_EEEC2ERKS3_
	.type	_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIddESt6vectorIS2_SaIS2_EEEC2ERKS3_, @function
_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIddESt6vectorIS2_SaIS2_EEEC2ERKS3_:
.LFB2281:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2281:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIddESt6vectorIS2_SaIS2_EEEC2ERKS3_, .-_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIddESt6vectorIS2_SaIS2_EEEC2ERKS3_
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIddESt6vectorIS2_SaIS2_EEEC1ERKS3_
	.set	_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIddESt6vectorIS2_SaIS2_EEEC1ERKS3_,_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIddESt6vectorIS2_SaIS2_EEEC2ERKS3_
	.section	.text._ZNKSt6vectorISt4pairIddESaIS1_EE12_M_check_lenEmPKc,"axG",@progbits,_ZNKSt6vectorISt4pairIddESaIS1_EE12_M_check_lenEmPKc,comdat
	.align 2
	.weak	_ZNKSt6vectorISt4pairIddESaIS1_EE12_M_check_lenEmPKc
	.type	_ZNKSt6vectorISt4pairIddESaIS1_EE12_M_check_lenEmPKc, @function
_ZNKSt6vectorISt4pairIddESaIS1_EE12_M_check_lenEmPKc:
.LFB2283:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorISt4pairIddESaIS1_EE8max_sizeEv
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorISt4pairIddESaIS1_EE4sizeEv
	subq	%rax, %rbx
	movq	%rbx, %rdx
	movq	-64(%rbp), %rax
	cmpq	%rax, %rdx
	setb	%al
	testb	%al, %al
	je	.L71
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L72
	call	__stack_chk_fail@PLT
.L72:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
.L71:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorISt4pairIddESaIS1_EE4sizeEv
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorISt4pairIddESaIS1_EE4sizeEv
	movq	%rax, -40(%rbp)
	leaq	-64(%rbp), %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt3maxImERKT_S2_S2_
	movq	(%rax), %rax
	addq	%rbx, %rax
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorISt4pairIddESaIS1_EE4sizeEv
	cmpq	%rax, -32(%rbp)
	jb	.L73
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorISt4pairIddESaIS1_EE8max_sizeEv
	cmpq	-32(%rbp), %rax
	jnb	.L74
.L73:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorISt4pairIddESaIS1_EE8max_sizeEv
	jmp	.L75
.L74:
	movq	-32(%rbp), %rax
.L75:
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L77
	call	__stack_chk_fail@PLT
.L77:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2283:
	.size	_ZNKSt6vectorISt4pairIddESaIS1_EE12_M_check_lenEmPKc, .-_ZNKSt6vectorISt4pairIddESaIS1_EE12_M_check_lenEmPKc
	.section	.text._ZNSt6vectorISt4pairIddESaIS1_EE5beginEv,"axG",@progbits,_ZNSt6vectorISt4pairIddESaIS1_EE5beginEv,comdat
	.align 2
	.weak	_ZNSt6vectorISt4pairIddESaIS1_EE5beginEv
	.type	_ZNSt6vectorISt4pairIddESaIS1_EE5beginEv, @function
_ZNSt6vectorISt4pairIddESaIS1_EE5beginEv:
.LFB2284:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIddESt6vectorIS2_SaIS2_EEEC1ERKS3_
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L80
	call	__stack_chk_fail@PLT
.L80:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2284:
	.size	_ZNSt6vectorISt4pairIddESaIS1_EE5beginEv, .-_ZNSt6vectorISt4pairIddESaIS1_EE5beginEv
	.section	.text._ZN9__gnu_cxxmiIPSt4pairIddESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_,"axG",@progbits,_ZN9__gnu_cxxmiIPSt4pairIddESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_,comdat
	.weak	_ZN9__gnu_cxxmiIPSt4pairIddESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_
	.type	_ZN9__gnu_cxxmiIPSt4pairIddESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_, @function
_ZN9__gnu_cxxmiIPSt4pairIddESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_:
.LFB2285:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIddESt6vectorIS2_SaIS2_EEE4baseEv
	movq	(%rax), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIddESt6vectorIS2_SaIS2_EEE4baseEv
	movq	(%rax), %rax
	movq	%rbx, %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$4, %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2285:
	.size	_ZN9__gnu_cxxmiIPSt4pairIddESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_, .-_ZN9__gnu_cxxmiIPSt4pairIddESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_
	.section	.text._ZNSt12_Vector_baseISt4pairIddESaIS1_EE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseISt4pairIddESaIS1_EE11_M_allocateEm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt4pairIddESaIS1_EE11_M_allocateEm
	.type	_ZNSt12_Vector_baseISt4pairIddESaIS1_EE11_M_allocateEm, @function
_ZNSt12_Vector_baseISt4pairIddESaIS1_EE11_M_allocateEm:
.LFB2286:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L84
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt15__new_allocatorISt4pairIddEE8allocateEmPKv
	nop
	jmp	.L86
.L84:
	movl	$0, %eax
.L86:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2286:
	.size	_ZNSt12_Vector_baseISt4pairIddESaIS1_EE11_M_allocateEm, .-_ZNSt12_Vector_baseISt4pairIddESaIS1_EE11_M_allocateEm
	.section	.text._ZNSt6vectorISt4pairIddESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_,"axG",@progbits,_ZNSt6vectorISt4pairIddESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_,comdat
	.weak	_ZNSt6vectorISt4pairIddESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_
	.type	_ZNSt6vectorISt4pairIddESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_, @function
_ZNSt6vectorISt4pairIddESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_:
.LFB2287:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorISt4pairIddESaIS1_EE14_S_do_relocateEPS1_S4_S4_RS2_St17integral_constantIbLb1EE
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2287:
	.size	_ZNSt6vectorISt4pairIddESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_, .-_ZNSt6vectorISt4pairIddESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIddESt6vectorIS2_SaIS2_EEE4baseEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIddESt6vectorIS2_SaIS2_EEE4baseEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIddESt6vectorIS2_SaIS2_EEE4baseEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIddESt6vectorIS2_SaIS2_EEE4baseEv, @function
_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIddESt6vectorIS2_SaIS2_EEE4baseEv:
.LFB2288:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2288:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIddESt6vectorIS2_SaIS2_EEE4baseEv, .-_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIddESt6vectorIS2_SaIS2_EEE4baseEv
	.section	.text._ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIddES2_SaIS1_EET0_T_S5_S4_RT1_,"axG",@progbits,_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIddES2_SaIS1_EET0_T_S5_S4_RT1_,comdat
	.weak	_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIddES2_SaIS1_EET0_T_S5_S4_RT1_
	.type	_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIddES2_SaIS1_EET0_T_S5_S4_RT1_, @function
_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIddES2_SaIS1_EET0_T_S5_S4_RT1_:
.LFB2289:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt32__make_move_if_noexcept_iteratorISt4pairIddESt13move_iteratorIPS1_EET0_PT_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt32__make_move_if_noexcept_iteratorISt4pairIddESt13move_iteratorIPS1_EET0_PT_
	movq	%rax, %rdi
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movq	%rbx, %rsi
	call	_ZSt22__uninitialized_copy_aISt13move_iteratorIPSt4pairIddEES3_S2_ET0_T_S6_S5_RSaIT1_E
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2289:
	.size	_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIddES2_SaIS1_EET0_T_S5_S4_RT1_, .-_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIddES2_SaIS1_EET0_T_S5_S4_RT1_
	.section	.text._ZNSt15__new_allocatorISt4pairIddEE10deallocateEPS1_m,"axG",@progbits,_ZNSt15__new_allocatorISt4pairIddEE10deallocateEPS1_m,comdat
	.align 2
	.weak	_ZNSt15__new_allocatorISt4pairIddEE10deallocateEPS1_m
	.type	_ZNSt15__new_allocatorISt4pairIddEE10deallocateEPS1_m, @function
_ZNSt15__new_allocatorISt4pairIddEE10deallocateEPS1_m:
.LFB2307:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdlPv@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2307:
	.size	_ZNSt15__new_allocatorISt4pairIddEE10deallocateEPS1_m, .-_ZNSt15__new_allocatorISt4pairIddEE10deallocateEPS1_m
	.section	.text._ZNSt12_Destroy_auxILb1EE9__destroyIPSt4pairIddEEEvT_S5_,"axG",@progbits,_ZNSt12_Destroy_auxILb1EE9__destroyIPSt4pairIddEEEvT_S5_,comdat
	.weak	_ZNSt12_Destroy_auxILb1EE9__destroyIPSt4pairIddEEEvT_S5_
	.type	_ZNSt12_Destroy_auxILb1EE9__destroyIPSt4pairIddEEEvT_S5_, @function
_ZNSt12_Destroy_auxILb1EE9__destroyIPSt4pairIddEEEvT_S5_:
.LFB2308:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2308:
	.size	_ZNSt12_Destroy_auxILb1EE9__destroyIPSt4pairIddEEEvT_S5_, .-_ZNSt12_Destroy_auxILb1EE9__destroyIPSt4pairIddEEEvT_S5_
	.section	.text._ZNSt4pairIddEC2IRdS2_Lb1EEEOT_OT0_,"axG",@progbits,_ZNSt4pairIddEC5IRdS2_Lb1EEEOT_OT0_,comdat
	.align 2
	.weak	_ZNSt4pairIddEC2IRdS2_Lb1EEEOT_OT0_
	.type	_ZNSt4pairIddEC2IRdS2_Lb1EEEOT_OT0_, @function
_ZNSt4pairIddEC2IRdS2_Lb1EEEOT_OT0_:
.LFB2310:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRdEOT_RNSt16remove_referenceIS1_E4typeE
	movsd	(%rax), %xmm0
	movq	-8(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRdEOT_RNSt16remove_referenceIS1_E4typeE
	movsd	(%rax), %xmm0
	movq	-8(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2310:
	.size	_ZNSt4pairIddEC2IRdS2_Lb1EEEOT_OT0_, .-_ZNSt4pairIddEC2IRdS2_Lb1EEEOT_OT0_
	.weak	_ZNSt4pairIddEC1IRdS2_Lb1EEEOT_OT0_
	.set	_ZNSt4pairIddEC1IRdS2_Lb1EEEOT_OT0_,_ZNSt4pairIddEC2IRdS2_Lb1EEEOT_OT0_
	.section	.text._ZNKSt6vectorISt4pairIddESaIS1_EE8max_sizeEv,"axG",@progbits,_ZNKSt6vectorISt4pairIddESaIS1_EE8max_sizeEv,comdat
	.align 2
	.weak	_ZNKSt6vectorISt4pairIddESaIS1_EE8max_sizeEv
	.type	_ZNKSt6vectorISt4pairIddESaIS1_EE8max_sizeEv, @function
_ZNKSt6vectorISt4pairIddESaIS1_EE8max_sizeEv:
.LFB2312:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt12_Vector_baseISt4pairIddESaIS1_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rdi
	call	_ZNSt6vectorISt4pairIddESaIS1_EE11_S_max_sizeERKS2_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2312:
	.size	_ZNKSt6vectorISt4pairIddESaIS1_EE8max_sizeEv, .-_ZNKSt6vectorISt4pairIddESaIS1_EE8max_sizeEv
	.section	.text._ZNKSt6vectorISt4pairIddESaIS1_EE4sizeEv,"axG",@progbits,_ZNKSt6vectorISt4pairIddESaIS1_EE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt6vectorISt4pairIddESaIS1_EE4sizeEv
	.type	_ZNKSt6vectorISt4pairIddESaIS1_EE4sizeEv, @function
_ZNKSt6vectorISt4pairIddESaIS1_EE4sizeEv:
.LFB2313:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$4, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2313:
	.size	_ZNKSt6vectorISt4pairIddESaIS1_EE4sizeEv, .-_ZNKSt6vectorISt4pairIddESaIS1_EE4sizeEv
	.section	.text._ZSt3maxImERKT_S2_S2_,"axG",@progbits,_ZSt3maxImERKT_S2_S2_,comdat
	.weak	_ZSt3maxImERKT_S2_S2_
	.type	_ZSt3maxImERKT_S2_S2_, @function
_ZSt3maxImERKT_S2_S2_:
.LFB2314:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L102
	movq	-16(%rbp), %rax
	jmp	.L103
.L102:
	movq	-8(%rbp), %rax
.L103:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2314:
	.size	_ZSt3maxImERKT_S2_S2_, .-_ZSt3maxImERKT_S2_S2_
	.section	.text._ZNSt6vectorISt4pairIddESaIS1_EE14_S_do_relocateEPS1_S4_S4_RS2_St17integral_constantIbLb1EE,"axG",@progbits,_ZNSt6vectorISt4pairIddESaIS1_EE14_S_do_relocateEPS1_S4_S4_RS2_St17integral_constantIbLb1EE,comdat
	.weak	_ZNSt6vectorISt4pairIddESaIS1_EE14_S_do_relocateEPS1_S4_S4_RS2_St17integral_constantIbLb1EE
	.type	_ZNSt6vectorISt4pairIddESaIS1_EE14_S_do_relocateEPS1_S4_S4_RS2_St17integral_constantIbLb1EE, @function
_ZNSt6vectorISt4pairIddESaIS1_EE14_S_do_relocateEPS1_S4_S4_RS2_St17integral_constantIbLb1EE:
.LFB2316:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__relocate_aIPSt4pairIddES2_SaIS1_EET0_T_S5_S4_RT1_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2316:
	.size	_ZNSt6vectorISt4pairIddESaIS1_EE14_S_do_relocateEPS1_S4_S4_RS2_St17integral_constantIbLb1EE, .-_ZNSt6vectorISt4pairIddESaIS1_EE14_S_do_relocateEPS1_S4_S4_RS2_St17integral_constantIbLb1EE
	.section	.text._ZSt32__make_move_if_noexcept_iteratorISt4pairIddESt13move_iteratorIPS1_EET0_PT_,"axG",@progbits,_ZSt32__make_move_if_noexcept_iteratorISt4pairIddESt13move_iteratorIPS1_EET0_PT_,comdat
	.weak	_ZSt32__make_move_if_noexcept_iteratorISt4pairIddESt13move_iteratorIPS1_EET0_PT_
	.type	_ZSt32__make_move_if_noexcept_iteratorISt4pairIddESt13move_iteratorIPS1_EET0_PT_, @function
_ZSt32__make_move_if_noexcept_iteratorISt4pairIddESt13move_iteratorIPS1_EET0_PT_:
.LFB2317:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt13move_iteratorIPSt4pairIddEEC1ES2_
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L108
	call	__stack_chk_fail@PLT
.L108:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2317:
	.size	_ZSt32__make_move_if_noexcept_iteratorISt4pairIddESt13move_iteratorIPS1_EET0_PT_, .-_ZSt32__make_move_if_noexcept_iteratorISt4pairIddESt13move_iteratorIPS1_EET0_PT_
	.section	.text._ZSt22__uninitialized_copy_aISt13move_iteratorIPSt4pairIddEES3_S2_ET0_T_S6_S5_RSaIT1_E,"axG",@progbits,_ZSt22__uninitialized_copy_aISt13move_iteratorIPSt4pairIddEES3_S2_ET0_T_S6_S5_RSaIT1_E,comdat
	.weak	_ZSt22__uninitialized_copy_aISt13move_iteratorIPSt4pairIddEES3_S2_ET0_T_S6_S5_RSaIT1_E
	.type	_ZSt22__uninitialized_copy_aISt13move_iteratorIPSt4pairIddEES3_S2_ET0_T_S6_S5_RSaIT1_E, @function
_ZSt22__uninitialized_copy_aISt13move_iteratorIPSt4pairIddEES3_S2_ET0_T_S6_S5_RSaIT1_E:
.LFB2318:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt18uninitialized_copyISt13move_iteratorIPSt4pairIddEES3_ET0_T_S6_S5_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2318:
	.size	_ZSt22__uninitialized_copy_aISt13move_iteratorIPSt4pairIddEES3_S2_ET0_T_S6_S5_RSaIT1_E, .-_ZSt22__uninitialized_copy_aISt13move_iteratorIPSt4pairIddEES3_S2_ET0_T_S6_S5_RSaIT1_E
	.section	.text._ZNSt6vectorISt4pairIddESaIS1_EE11_S_max_sizeERKS2_,"axG",@progbits,_ZNSt6vectorISt4pairIddESaIS1_EE11_S_max_sizeERKS2_,comdat
	.weak	_ZNSt6vectorISt4pairIddESaIS1_EE11_S_max_sizeERKS2_
	.type	_ZNSt6vectorISt4pairIddESaIS1_EE11_S_max_sizeERKS2_, @function
_ZNSt6vectorISt4pairIddESaIS1_EE11_S_max_sizeERKS2_:
.LFB2330:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movabsq	$576460752303423487, %rax
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movabsq	$576460752303423487, %rax
	nop
	nop
	movq	%rax, -40(%rbp)
	leaq	-40(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt3minImERKT_S2_S2_
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L116
	call	__stack_chk_fail@PLT
.L116:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2330:
	.size	_ZNSt6vectorISt4pairIddESaIS1_EE11_S_max_sizeERKS2_, .-_ZNSt6vectorISt4pairIddESaIS1_EE11_S_max_sizeERKS2_
	.section	.text._ZNKSt12_Vector_baseISt4pairIddESaIS1_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNKSt12_Vector_baseISt4pairIddESaIS1_EE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNKSt12_Vector_baseISt4pairIddESaIS1_EE19_M_get_Tp_allocatorEv
	.type	_ZNKSt12_Vector_baseISt4pairIddESaIS1_EE19_M_get_Tp_allocatorEv, @function
_ZNKSt12_Vector_baseISt4pairIddESaIS1_EE19_M_get_Tp_allocatorEv:
.LFB2331:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2331:
	.size	_ZNKSt12_Vector_baseISt4pairIddESaIS1_EE19_M_get_Tp_allocatorEv, .-_ZNKSt12_Vector_baseISt4pairIddESaIS1_EE19_M_get_Tp_allocatorEv
	.section	.text._ZNSt15__new_allocatorISt4pairIddEE8allocateEmPKv,"axG",@progbits,_ZNSt15__new_allocatorISt4pairIddEE8allocateEmPKv,comdat
	.align 2
	.weak	_ZNSt15__new_allocatorISt4pairIddEE8allocateEmPKv
	.type	_ZNSt15__new_allocatorISt4pairIddEE8allocateEmPKv, @function
_ZNSt15__new_allocatorISt4pairIddEE8allocateEmPKv:
.LFB2332:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movabsq	$576460752303423487, %rax
	cmpq	-32(%rbp), %rax
	setb	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	setne	%al
	testb	%al, %al
	je	.L121
	movabsq	$1152921504606846975, %rax
	cmpq	-32(%rbp), %rax
	jnb	.L122
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.L122:
	call	_ZSt17__throw_bad_allocv@PLT
.L121:
	movq	-32(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdi
	call	_Znwm@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2332:
	.size	_ZNSt15__new_allocatorISt4pairIddEE8allocateEmPKv, .-_ZNSt15__new_allocatorISt4pairIddEE8allocateEmPKv
	.section	.text._ZSt12__relocate_aIPSt4pairIddES2_SaIS1_EET0_T_S5_S4_RT1_,"axG",@progbits,_ZSt12__relocate_aIPSt4pairIddES2_SaIS1_EET0_T_S5_S4_RT1_,comdat
	.weak	_ZSt12__relocate_aIPSt4pairIddES2_SaIS1_EET0_T_S5_S4_RT1_
	.type	_ZSt12__relocate_aIPSt4pairIddES2_SaIS1_EET0_T_S5_S4_RT1_, @function
_ZSt12__relocate_aIPSt4pairIddES2_SaIS1_EET0_T_S5_S4_RT1_:
.LFB2333:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPSt4pairIddEET_S3_
	movq	%rax, %r12
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPSt4pairIddEET_S3_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPSt4pairIddEET_S3_
	movq	%rax, %rdi
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	movq	%r12, %rdx
	movq	%rbx, %rsi
	call	_ZSt14__relocate_a_1IPSt4pairIddES2_SaIS1_EET0_T_S5_S4_RT1_
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2333:
	.size	_ZSt12__relocate_aIPSt4pairIddES2_SaIS1_EET0_T_S5_S4_RT1_, .-_ZSt12__relocate_aIPSt4pairIddES2_SaIS1_EET0_T_S5_S4_RT1_
	.section	.text._ZNSt13move_iteratorIPSt4pairIddEEC2ES2_,"axG",@progbits,_ZNSt13move_iteratorIPSt4pairIddEEC5ES2_,comdat
	.align 2
	.weak	_ZNSt13move_iteratorIPSt4pairIddEEC2ES2_
	.type	_ZNSt13move_iteratorIPSt4pairIddEEC2ES2_, @function
_ZNSt13move_iteratorIPSt4pairIddEEC2ES2_:
.LFB2335:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRPSt4pairIddEEONSt16remove_referenceIT_E4typeEOS5_
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2335:
	.size	_ZNSt13move_iteratorIPSt4pairIddEEC2ES2_, .-_ZNSt13move_iteratorIPSt4pairIddEEC2ES2_
	.weak	_ZNSt13move_iteratorIPSt4pairIddEEC1ES2_
	.set	_ZNSt13move_iteratorIPSt4pairIddEEC1ES2_,_ZNSt13move_iteratorIPSt4pairIddEEC2ES2_
	.section	.text._ZSt18uninitialized_copyISt13move_iteratorIPSt4pairIddEES3_ET0_T_S6_S5_,"axG",@progbits,_ZSt18uninitialized_copyISt13move_iteratorIPSt4pairIddEES3_ET0_T_S6_S5_,comdat
	.weak	_ZSt18uninitialized_copyISt13move_iteratorIPSt4pairIddEES3_ET0_T_S6_S5_
	.type	_ZSt18uninitialized_copyISt13move_iteratorIPSt4pairIddEES3_ET0_T_S6_S5_, @function
_ZSt18uninitialized_copyISt13move_iteratorIPSt4pairIddEES3_ET0_T_S6_S5_:
.LFB2337:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movb	$0, -2(%rbp)
	movb	$0, -1(%rbp)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIPSt4pairIddEES5_EET0_T_S8_S7_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2337:
	.size	_ZSt18uninitialized_copyISt13move_iteratorIPSt4pairIddEES3_ET0_T_S6_S5_, .-_ZSt18uninitialized_copyISt13move_iteratorIPSt4pairIddEES3_ET0_T_S6_S5_
	.section	.text._ZSt3minImERKT_S2_S2_,"axG",@progbits,_ZSt3minImERKT_S2_S2_,comdat
	.weak	_ZSt3minImERKT_S2_S2_
	.type	_ZSt3minImERKT_S2_S2_, @function
_ZSt3minImERKT_S2_S2_:
.LFB2342:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L130
	movq	-16(%rbp), %rax
	jmp	.L131
.L130:
	movq	-8(%rbp), %rax
.L131:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2342:
	.size	_ZSt3minImERKT_S2_S2_, .-_ZSt3minImERKT_S2_S2_
	.section	.text._ZSt12__niter_baseIPSt4pairIddEET_S3_,"axG",@progbits,_ZSt12__niter_baseIPSt4pairIddEET_S3_,comdat
	.weak	_ZSt12__niter_baseIPSt4pairIddEET_S3_
	.type	_ZSt12__niter_baseIPSt4pairIddEET_S3_, @function
_ZSt12__niter_baseIPSt4pairIddEET_S3_:
.LFB2344:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2344:
	.size	_ZSt12__niter_baseIPSt4pairIddEET_S3_, .-_ZSt12__niter_baseIPSt4pairIddEET_S3_
	.section	.text._ZSt14__relocate_a_1IPSt4pairIddES2_SaIS1_EET0_T_S5_S4_RT1_,"axG",@progbits,_ZSt14__relocate_a_1IPSt4pairIddES2_SaIS1_EET0_T_S5_S4_RT1_,comdat
	.weak	_ZSt14__relocate_a_1IPSt4pairIddES2_SaIS1_EET0_T_S5_S4_RT1_
	.type	_ZSt14__relocate_a_1IPSt4pairIddES2_SaIS1_EET0_T_S5_S4_RT1_, @function
_ZSt14__relocate_a_1IPSt4pairIddES2_SaIS1_EET0_T_S5_S4_RT1_:
.LFB2345:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L135
.L136:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt11__addressofISt4pairIddEEPT_RS2_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt11__addressofISt4pairIddEEPT_RS2_
	movq	%rax, %rcx
	movq	-64(%rbp), %rax
	movq	%rax, %rdx
	movq	%rbx, %rsi
	movq	%rcx, %rdi
	call	_ZSt19__relocate_object_aISt4pairIddES1_SaIS1_EEvPT_PT0_RT1_
	addq	$16, -40(%rbp)
	addq	$16, -24(%rbp)
.L135:
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jne	.L136
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2345:
	.size	_ZSt14__relocate_a_1IPSt4pairIddES2_SaIS1_EET0_T_S5_S4_RT1_, .-_ZSt14__relocate_a_1IPSt4pairIddES2_SaIS1_EET0_T_S5_S4_RT1_
	.section	.text._ZSt4moveIRPSt4pairIddEEONSt16remove_referenceIT_E4typeEOS5_,"axG",@progbits,_ZSt4moveIRPSt4pairIddEEONSt16remove_referenceIT_E4typeEOS5_,comdat
	.weak	_ZSt4moveIRPSt4pairIddEEONSt16remove_referenceIT_E4typeEOS5_
	.type	_ZSt4moveIRPSt4pairIddEEONSt16remove_referenceIT_E4typeEOS5_, @function
_ZSt4moveIRPSt4pairIddEEONSt16remove_referenceIT_E4typeEOS5_:
.LFB2346:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2346:
	.size	_ZSt4moveIRPSt4pairIddEEONSt16remove_referenceIT_E4typeEOS5_, .-_ZSt4moveIRPSt4pairIddEEONSt16remove_referenceIT_E4typeEOS5_
	.section	.text._ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIPSt4pairIddEES5_EET0_T_S8_S7_,"axG",@progbits,_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIPSt4pairIddEES5_EET0_T_S8_S7_,comdat
	.weak	_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIPSt4pairIddEES5_EET0_T_S8_S7_
	.type	_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIPSt4pairIddEES5_EET0_T_S8_S7_, @function
_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIPSt4pairIddEES5_EET0_T_S8_S7_:
.LFB2347:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt16__do_uninit_copyISt13move_iteratorIPSt4pairIddEES3_ET0_T_S6_S5_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2347:
	.size	_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIPSt4pairIddEES5_EET0_T_S8_S7_, .-_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIPSt4pairIddEES5_EET0_T_S8_S7_
	.section	.text._ZSt11__addressofISt4pairIddEEPT_RS2_,"axG",@progbits,_ZSt11__addressofISt4pairIddEEPT_RS2_,comdat
	.weak	_ZSt11__addressofISt4pairIddEEPT_RS2_
	.type	_ZSt11__addressofISt4pairIddEEPT_RS2_, @function
_ZSt11__addressofISt4pairIddEEPT_RS2_:
.LFB2349:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2349:
	.size	_ZSt11__addressofISt4pairIddEEPT_RS2_, .-_ZSt11__addressofISt4pairIddEEPT_RS2_
	.section	.text._ZSt19__relocate_object_aISt4pairIddES1_SaIS1_EEvPT_PT0_RT1_,"axG",@progbits,_ZSt19__relocate_object_aISt4pairIddES1_SaIS1_EEvPT_PT0_RT1_,comdat
	.weak	_ZSt19__relocate_object_aISt4pairIddES1_SaIS1_EEvPT_PT0_RT1_
	.type	_ZSt19__relocate_object_aISt4pairIddES1_SaIS1_EEvPT_PT0_RT1_, @function
_ZSt19__relocate_object_aISt4pairIddES1_SaIS1_EEvPT_PT0_RT1_:
.LFB2350:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRSt4pairIddEEONSt16remove_referenceIT_E4typeEOS4_
	movq	-120(%rbp), %rdx
	movq	%rdx, -64(%rbp)
	movq	-104(%rbp), %rdx
	movq	%rdx, -56(%rbp)
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt4pairIddEEOT_RNSt16remove_referenceIS2_E4typeE
	movq	-64(%rbp), %rdx
	movq	%rdx, -40(%rbp)
	movq	-56(%rbp), %rdx
	movq	%rdx, -32(%rbp)
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$16, %edi
	call	_ZnwmPv
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt4pairIddEEOT_RNSt16remove_referenceIS2_E4typeE
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	nop
	nop
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt11__addressofISt4pairIddEEPT_RS2_
	movq	-120(%rbp), %rdx
	movq	%rdx, -96(%rbp)
	movq	%rax, -88(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -72(%rbp)
	nop
	nop
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2350:
	.size	_ZSt19__relocate_object_aISt4pairIddES1_SaIS1_EEvPT_PT0_RT1_, .-_ZSt19__relocate_object_aISt4pairIddES1_SaIS1_EEvPT_PT0_RT1_
	.section	.text._ZSt16__do_uninit_copyISt13move_iteratorIPSt4pairIddEES3_ET0_T_S6_S5_,"axG",@progbits,_ZSt16__do_uninit_copyISt13move_iteratorIPSt4pairIddEES3_ET0_T_S6_S5_,comdat
	.weak	_ZSt16__do_uninit_copyISt13move_iteratorIPSt4pairIddEES3_ET0_T_S6_S5_
	.type	_ZSt16__do_uninit_copyISt13move_iteratorIPSt4pairIddEES3_ET0_T_S6_S5_, @function
_ZSt16__do_uninit_copyISt13move_iteratorIPSt4pairIddEES3_ET0_T_S6_S5_:
.LFB2351:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2351
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L146
.L147:
	leaq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt13move_iteratorIPSt4pairIddEEdeEv
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt11__addressofISt4pairIddEEPT_RS2_
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZSt10_ConstructISt4pairIddEJS1_EEvPT_DpOT0_
	leaq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt13move_iteratorIPSt4pairIddEEppEv
	addq	$16, -24(%rbp)
.L146:
	leaq	-48(%rbp), %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB8:
	call	_ZStneIPSt4pairIddEEbRKSt13move_iteratorIT_ES7_
.LEHE8:
	testb	%al, %al
	jne	.L147
	movq	-24(%rbp), %rax
	jmp	.L153
.L151:
	endbr64
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	movq	-24(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt8_DestroyIPSt4pairIddEEvT_S3_
.LEHB9:
	call	__cxa_rethrow@PLT
.LEHE9:
.L152:
	endbr64
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB10:
	call	_Unwind_Resume@PLT
.LEHE10:
.L153:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2351:
	.section	.gcc_except_table
	.align 4
.LLSDA2351:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT2351-.LLSDATTD2351
.LLSDATTD2351:
	.byte	0x1
	.uleb128 .LLSDACSE2351-.LLSDACSB2351
.LLSDACSB2351:
	.uleb128 .LEHB8-.LFB2351
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L151-.LFB2351
	.uleb128 0x1
	.uleb128 .LEHB9-.LFB2351
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L152-.LFB2351
	.uleb128 0
	.uleb128 .LEHB10-.LFB2351
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
.LLSDACSE2351:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT2351:
	.section	.text._ZSt16__do_uninit_copyISt13move_iteratorIPSt4pairIddEES3_ET0_T_S6_S5_,"axG",@progbits,_ZSt16__do_uninit_copyISt13move_iteratorIPSt4pairIddEES3_ET0_T_S6_S5_,comdat
	.size	_ZSt16__do_uninit_copyISt13move_iteratorIPSt4pairIddEES3_ET0_T_S6_S5_, .-_ZSt16__do_uninit_copyISt13move_iteratorIPSt4pairIddEES3_ET0_T_S6_S5_
	.section	.text._ZSt4moveIRSt4pairIddEEONSt16remove_referenceIT_E4typeEOS4_,"axG",@progbits,_ZSt4moveIRSt4pairIddEEONSt16remove_referenceIT_E4typeEOS4_,comdat
	.weak	_ZSt4moveIRSt4pairIddEEONSt16remove_referenceIT_E4typeEOS4_
	.type	_ZSt4moveIRSt4pairIddEEONSt16remove_referenceIT_E4typeEOS4_, @function
_ZSt4moveIRSt4pairIddEEONSt16remove_referenceIT_E4typeEOS4_:
.LFB2352:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2352:
	.size	_ZSt4moveIRSt4pairIddEEONSt16remove_referenceIT_E4typeEOS4_, .-_ZSt4moveIRSt4pairIddEEONSt16remove_referenceIT_E4typeEOS4_
	.section	.text._ZStneIPSt4pairIddEEbRKSt13move_iteratorIT_ES7_,"axG",@progbits,_ZStneIPSt4pairIddEEbRKSt13move_iteratorIT_ES7_,comdat
	.weak	_ZStneIPSt4pairIddEEbRKSt13move_iteratorIT_ES7_
	.type	_ZStneIPSt4pairIddEEbRKSt13move_iteratorIT_ES7_, @function
_ZStneIPSt4pairIddEEbRKSt13move_iteratorIT_ES7_:
.LFB2354:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSteqIPSt4pairIddEEbRKSt13move_iteratorIT_ES7_
	xorl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2354:
	.size	_ZStneIPSt4pairIddEEbRKSt13move_iteratorIT_ES7_, .-_ZStneIPSt4pairIddEEbRKSt13move_iteratorIT_ES7_
	.section	.text._ZNSt13move_iteratorIPSt4pairIddEEppEv,"axG",@progbits,_ZNSt13move_iteratorIPSt4pairIddEEppEv,comdat
	.align 2
	.weak	_ZNSt13move_iteratorIPSt4pairIddEEppEv
	.type	_ZNSt13move_iteratorIPSt4pairIddEEppEv, @function
_ZNSt13move_iteratorIPSt4pairIddEEppEv:
.LFB2355:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2355:
	.size	_ZNSt13move_iteratorIPSt4pairIddEEppEv, .-_ZNSt13move_iteratorIPSt4pairIddEEppEv
	.section	.text._ZNKSt13move_iteratorIPSt4pairIddEEdeEv,"axG",@progbits,_ZNKSt13move_iteratorIPSt4pairIddEEdeEv,comdat
	.align 2
	.weak	_ZNKSt13move_iteratorIPSt4pairIddEEdeEv
	.type	_ZNKSt13move_iteratorIPSt4pairIddEEdeEv, @function
_ZNKSt13move_iteratorIPSt4pairIddEEdeEv:
.LFB2356:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2356:
	.size	_ZNKSt13move_iteratorIPSt4pairIddEEdeEv, .-_ZNKSt13move_iteratorIPSt4pairIddEEdeEv
	.section	.text._ZSt10_ConstructISt4pairIddEJS1_EEvPT_DpOT0_,"axG",@progbits,_ZSt10_ConstructISt4pairIddEJS1_EEvPT_DpOT0_,comdat
	.weak	_ZSt10_ConstructISt4pairIddEJS1_EEvPT_DpOT0_
	.type	_ZSt10_ConstructISt4pairIddEJS1_EEvPT_DpOT0_, @function
_ZSt10_ConstructISt4pairIddEJS1_EEvPT_DpOT0_:
.LFB2357:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$16, %edi
	call	_ZnwmPv
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt4pairIddEEOT_RNSt16remove_referenceIS2_E4typeE
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2357:
	.size	_ZSt10_ConstructISt4pairIddEJS1_EEvPT_DpOT0_, .-_ZSt10_ConstructISt4pairIddEJS1_EEvPT_DpOT0_
	.section	.text._ZSt7forwardISt4pairIddEEOT_RNSt16remove_referenceIS2_E4typeE,"axG",@progbits,_ZSt7forwardISt4pairIddEEOT_RNSt16remove_referenceIS2_E4typeE,comdat
	.weak	_ZSt7forwardISt4pairIddEEOT_RNSt16remove_referenceIS2_E4typeE
	.type	_ZSt7forwardISt4pairIddEEOT_RNSt16remove_referenceIS2_E4typeE, @function
_ZSt7forwardISt4pairIddEEOT_RNSt16remove_referenceIS2_E4typeE:
.LFB2358:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2358:
	.size	_ZSt7forwardISt4pairIddEEOT_RNSt16remove_referenceIS2_E4typeE, .-_ZSt7forwardISt4pairIddEEOT_RNSt16remove_referenceIS2_E4typeE
	.section	.text._ZSteqIPSt4pairIddEEbRKSt13move_iteratorIT_ES7_,"axG",@progbits,_ZSteqIPSt4pairIddEEbRKSt13move_iteratorIT_ES7_,comdat
	.weak	_ZSteqIPSt4pairIddEEbRKSt13move_iteratorIT_ES7_
	.type	_ZSteqIPSt4pairIddEEbRKSt13move_iteratorIT_ES7_, @function
_ZSteqIPSt4pairIddEEbRKSt13move_iteratorIT_ES7_:
.LFB2360:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt13move_iteratorIPSt4pairIddEE4baseEv
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt13move_iteratorIPSt4pairIddEE4baseEv
	cmpq	%rax, %rbx
	sete	%al
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2360:
	.size	_ZSteqIPSt4pairIddEEbRKSt13move_iteratorIT_ES7_, .-_ZSteqIPSt4pairIddEEbRKSt13move_iteratorIT_ES7_
	.section	.text._ZNKSt13move_iteratorIPSt4pairIddEE4baseEv,"axG",@progbits,_ZNKSt13move_iteratorIPSt4pairIddEE4baseEv,comdat
	.align 2
	.weak	_ZNKSt13move_iteratorIPSt4pairIddEE4baseEv
	.type	_ZNKSt13move_iteratorIPSt4pairIddEE4baseEv, @function
_ZNKSt13move_iteratorIPSt4pairIddEE4baseEv:
.LFB2361:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2361:
	.size	_ZNKSt13move_iteratorIPSt4pairIddEE4baseEv, .-_ZNKSt13move_iteratorIPSt4pairIddEE4baseEv
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.ident	"GCC: (Ubuntu 13.2.0-23ubuntu4) 13.2.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
