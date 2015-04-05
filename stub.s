.text
.globl __psx_init
.globl ___psx_init
.globl _so_entry_point
.globl __so_entry_point

__psx_init:
___psx_init:
_so_entry_point:
__so_entry_point:
	mov $1, %eax
	ret
