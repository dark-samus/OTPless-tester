OUTPUT_ARCH(arm)
ENTRY(_entry)
SECTIONS
{
	. = 0x23F00000;
	.text : {
		*(.text.start)
		*(.text)
	}
	.data : {
		*(.data)
	}
	.bss : {
		__bss_start = .;
		*(.bss COMMON)
	}
	__bss_end = .;
	.rodata : {
		*(.rodata)
	}
	. = ALIGN(4);
}
