/*
 * File:	vectors.s
 * Purpose:	MCF523x vector table
 *
 * Notice:  Functions are generated by metrowerks and adapted by
 *          SYS TEC electronic GmbH.
 *
 */

#ifdef      _UNDERSCORE_
   #define  asm_exception_handler   _asm_exception_handler
   #define  asm_irq_handler         _asm_irq_handler
   #define  fec_interrupt_handler   _fec_interrupt_handler
#endif

#ifdef __ghs__
	.globl VECTOR_TABLE
#else
	.global VECTOR_TABLE
	.global _VECTOR_TABLE
#endif

	.extern __stack
	.extern start
	.extern asm_exception_handler
	.extern asm_irq_handler
/*	.extern fec_interrupt_handler */

    .text

/*
 * Exception Vector Table
 */
VECTOR_TABLE:
_VECTOR_TABLE:
INITSP:		.long	__stack			        /* Initial SP			*/
INITPC:		.long	power_on_jump    		/* Initial PC			*/
vector02:	.long	asm_exception_handler	/* Access Error			*/
vector03:	.long	asm_exception_handler	/* Address Error		*/
vector04:	.long	asm_exception_handler	/* Illegal Instruction	*/
vector05:	.long	asm_exception_handler	/* Reserved				*/
vector06:	.long	asm_exception_handler	/* Reserved				*/
vector07:	.long	asm_exception_handler	/* Reserved				*/
vector08:	.long	asm_exception_handler	/* Privilege Violation	*/
vector09:	.long	asm_exception_handler	/* Trace				*/
vector0A:	.long	asm_exception_handler	/* Unimplemented A-Line	*/
vector0B:	.long	asm_exception_handler	/* Unimplemented F-Line	*/
vector0C:	.long	asm_exception_handler	/* Debug Interrupt		*/
vector0D:	.long	asm_exception_handler	/* Reserved				*/
vector0E:	.long	asm_exception_handler	/* Format Error			*/
vector0F:	.long	asm_exception_handler	/* Unitialized Int.		*/
vector10:	.long	asm_exception_handler	/* Reserved				*/
vector11:	.long	asm_exception_handler	/* Reserved				*/
vector12:	.long	asm_exception_handler	/* Reserved				*/
vector13:	.long	asm_exception_handler	/* Reserved				*/
vector14:	.long	asm_exception_handler	/* Reserved				*/
vector15:	.long	asm_exception_handler	/* Reserved				*/
vector16:	.long	asm_exception_handler	/* Reserved				*/
vector17:	.long	asm_exception_handler	/* Reserved				*/
vector18:	.long	asm_exception_handler	/* Spurious Interrupt	*/
vector19:	.long	asm_exception_handler	/* Autovector Level 1	*/
vector1A:	.long	asm_exception_handler	/* Autovector Level 2	*/
vector1B:	.long	asm_exception_handler	/* Autovector Level 3	*/
vector1C:	.long	asm_exception_handler	/* Autovector Level 4	*/
vector1D:	.long	asm_exception_handler	/* Autovector Level 5	*/
vector1E:	.long	asm_exception_handler	/* Autovector Level 6	*/
vector1F:	.long	asm_exception_handler	/* Autovector Level 7	*/
vector20:	.long	asm_exception_handler	/* TRAP #0				*/
vector21:	.long	asm_exception_handler	/* TRAP #1				*/
vector22:	.long	asm_exception_handler	/* TRAP #2				*/
vector23:	.long	asm_exception_handler	/* TRAP #3				*/
vector24:	.long	asm_exception_handler	/* TRAP #4				*/
vector25:	.long	asm_exception_handler	/* TRAP #5				*/
vector26:	.long	asm_exception_handler	/* TRAP #6				*/
vector27:	.long	asm_exception_handler	/* TRAP #7				*/
vector28:	.long	asm_exception_handler	/* TRAP #8				*/
vector29:	.long	asm_exception_handler	/* TRAP #9				*/
vector2A:	.long	asm_exception_handler	/* TRAP #10				*/
vector2B:	.long	asm_exception_handler	/* TRAP #11				*/
vector2C:	.long	asm_exception_handler	/* TRAP #12				*/
vector2D:	.long	asm_exception_handler	/* TRAP #13				*/
vector2E:	.long	asm_exception_handler	/* TRAP #14				*/
vector2F:	.long	asm_exception_handler	/* TRAP #15				*/
vector30:	.long	asm_exception_handler	/* Reserved				*/
vector31:	.long	asm_exception_handler	/* Reserved				*/
vector32:	.long	asm_exception_handler	/* Reserved				*/
vector33:	.long	asm_exception_handler	/* Reserved				*/
vector34:	.long	asm_exception_handler	/* Reserved				*/
vector35:	.long	asm_exception_handler	/* Reserved				*/
vector36:	.long	asm_exception_handler	/* Reserved				*/
vector37:	.long	asm_exception_handler	/* Reserved				*/
vector38:	.long	asm_exception_handler	/* Reserved				*/
vector39:	.long	asm_exception_handler	/* Reserved				*/
vector3A:	.long	asm_exception_handler	/* Reserved				*/
vector3B:	.long	asm_exception_handler	/* Reserved				*/
vector3C:	.long	asm_exception_handler	/* Reserved				*/
vector3D:	.long	asm_exception_handler	/* Reserved				*/
vector3E:	.long	asm_exception_handler	/* Reserved				*/
vector3F:	.long	asm_exception_handler	/* Reserved				*/
vector40:	.long	asm_exception_handler   /* ???? */
vector41:	.long	asm_exception_handler   /* Edge port Interrupt 1*/
vector42:	.long	asm_exception_handler   /* Edge port Interrupt 2*/
vector43:	.long	asm_exception_handler   /* Edge port Interrupt 3*/
vector44:	.long	asm_exception_handler   /* Edge port Interrupt 4*/
vector45:	.long	asm_exception_handler   /* Edge port Interrupt 5*/
vector46:	.long	asm_exception_handler   /* Edge port Interrupt 6*/
vector47:	.long	asm_exception_handler   /* Edge port Interrupt 7*/
vector48:	.long	asm_irq_handler         /* software wdt timeout */
vector49:	.long	asm_irq_handler         /* DMA done channel 0   */
vector4A:	.long	asm_irq_handler         /* DMA done channel 1   */
vector4B:	.long	asm_irq_handler         /* DMA done channel 2   */
vector4C:	.long	asm_irq_handler         /* DMA done channel 3   */
vector4D:	.long	asm_irq_handler         /* UART 0 interrupt     */
vector4E:	.long	asm_irq_handler         /* UART 1 interrupt     */
vector4F:	.long	asm_irq_handler         /* UART 2 interrupt     */
vector50:	.long	asm_irq_handler         /* not used             */
vector51:	.long	asm_irq_handler         /* I�C interrupt        */
vector52:	.long	asm_irq_handler         /* QSPI interrupt       */
vector53:	.long	asm_irq_handler         /* TMR0 interrupt       */
vector54:	.long	asm_irq_handler         /* TMR1 interrupt       */
vector55:	.long	asm_irq_handler         /* TMR2 interrupt       */
vector56:	.long	asm_irq_handler         /* TMR3 interrupt       */
vector57:	.long	asm_irq_handler         /* FEC0 interrupt       */
vector58:	.long	asm_irq_handler         /* FEC0 interrupt       */
vector59:	.long	asm_irq_handler         /* FEC0 interrupt       */
vector5A:	.long	asm_irq_handler         /* FEC0 interrupt       */
vector5B:	.long	asm_irq_handler         /* FEC0 interrupt       */
vector5C:	.long	asm_irq_handler         /* FEC0 interrupt       */
vector5D:	.long	asm_irq_handler         /* FEC0 interrupt       */
vector5E:	.long	asm_irq_handler         /* FEC0 interrupt       */
vector5F:	.long	asm_irq_handler         /* FEC0 interrupt       */
vector60:	.long	asm_irq_handler         /* FEC0 interrupt       */
vector61:	.long	asm_irq_handler         /* FEC0 interrupt       */
vector62:	.long	asm_irq_handler         /* FEC0 interrupt       */
vector63:	.long	asm_irq_handler         /* FEC0 interrupt       */
vector64:	.long	asm_irq_handler         /* PIT0 interrupt       */
vector65:	.long	asm_irq_handler         /* PIT1 interrupt       */
vector66:	.long	asm_irq_handler         /* FEC1 interrupt       */
vector67:	.long	asm_irq_handler         /* FEC0 interrupt       */
vector68:	.long	asm_irq_handler         /* RNG interrupt        */
vector69:	.long	asm_irq_handler         /* SKHA interrupt       */
vector6A:	.long	asm_irq_handler         /* MDHA interrupt       */
vector6B:	.long	asm_irq_handler         /* FLEXCAN1 interrupt   */
vector6C:	.long	asm_irq_handler         /* FLEXCAN1 interrupt   */
vector6D:	.long	asm_irq_handler         /* FLEXCAN1 interrupt   */
vector6E:	.long	asm_irq_handler         /* FLEXCAN1 interrupt   */
vector6F:	.long	asm_irq_handler         /* FLEXCAN1 interrupt   */
vector70:	.long	asm_irq_handler         /* DMA interrupt   */
vector71:	.long	asm_irq_handler         /* FLEXCAN1 interrupt   */
vector72:	.long	asm_irq_handler         /* FLEXCAN1 interrupt   */
vector73:	.long	asm_irq_handler         /* FLEXCAN1 interrupt   */
vector74:	.long	asm_irq_handler         /* FLEXCAN1 interrupt   */
vector75:	.long	asm_irq_handler         /* FLEXCAN1 interrupt   */
vector76:	.long	asm_irq_handler         /* FLEXCAN1 interrupt   */
vector77:	.long	asm_irq_handler         /* FLEXCAN1 interrupt   */
vector78:	.long	asm_irq_handler         /* FLEXCAN1 interrupt   */
vector79:	.long	asm_irq_handler         /* FLEXCAN1 interrupt   */
vector7A:	.long	asm_irq_handler         /* FLEXCAN1 interrupt   */
vector7B:	.long	asm_irq_handler         /* FLEXCAN1 interrupt   */
vector7C:	.long	asm_irq_handler         /* FLEXCAN1 interrupt   */
vector7D:	.long	asm_irq_handler         /* not used             */
vector7E:	.long	asm_irq_handler         /* not used             */
vector7F:	.long	asm_irq_handler         /* not used             */
vector80:	.long	asm_exception_handler
vector81:	.long	asm_irq_handler         /* not used             */
vector82:	.long	asm_irq_handler         /* not used             */
vector83:	.long	asm_irq_handler         /* not used             */
vector84:	.long	asm_irq_handler         /* not used             */
vector85:	.long	asm_irq_handler         /* not used             */
vector86:	.long	asm_irq_handler         /* not used             */
vector87:	.long	asm_irq_handler         /* not used             */
vector88:	.long	asm_irq_handler         /* FLEXCAN0 interrupt   */
vector89:	.long	asm_irq_handler         /* FLEXCAN0 interrupt   */
vector8A:	.long	asm_irq_handler         /* FLEXCAN0 interrupt   */
vector8B:	.long	asm_irq_handler         /* FLEXCAN0 interrupt   */
vector8C:	.long	asm_irq_handler         /* FLEXCAN0 interrupt   */
vector8D:	.long	asm_irq_handler         /* FLEXCAN0 interrupt   */
vector8E:	.long	asm_irq_handler         /* FLEXCAN0 interrupt   */
vector8F:	.long	asm_irq_handler         /* FLEXCAN0 interrupt   */
vector90:	.long	asm_irq_handler         /* FLEXCAN0 interrupt   */
vector91:	.long	asm_irq_handler         /* FLEXCAN0 interrupt   */
vector92:	.long	asm_irq_handler         /* FLEXCAN0 interrupt   */
vector93:	.long	asm_irq_handler         /* FLEXCAN0 interrupt   */
vector94:	.long	asm_irq_handler         /* FLEXCAN0 interrupt   */
vector95:	.long	asm_irq_handler         /* FLEXCAN0 interrupt   */
vector96:	.long	asm_irq_handler         /* FLEXCAN0 interrupt   */
vector97:	.long	asm_irq_handler         /* FLEXCAN0 interrupt   */
vector98:	.long	asm_irq_handler         /* FLEXCAN0 interrupt   */
vector99:	.long	asm_irq_handler         /* FLEXCAN0 interrupt   */
vector9A:	.long	asm_irq_handler         /* not used             */
vector9B:	.long	asm_irq_handler         /* ETPU interrupt       */
vector9C:	.long	asm_irq_handler         /* ETPU interrupt       */
vector9D:	.long	asm_irq_handler         /* ETPU interrupt       */
vector9E:	.long	asm_irq_handler         /* ETPU interrupt       */
vector9F:	.long	asm_irq_handler         /* ETPU interrupt       */
vectorA0:	.long	asm_irq_handler         /* ETPU interrupt       */
vectorA1:	.long	asm_irq_handler         /* ETPU interrupt       */
vectorA2:	.long	asm_irq_handler         /* ETPU interrupt       */
vectorA3:	.long	asm_irq_handler         /* ETPU interrupt       */
vectorA4:	.long	asm_irq_handler         /* ETPU interrupt       */
vectorA5:	.long	asm_irq_handler         /* ETPU interrupt       */
vectorA6:	.long	asm_irq_handler         /* ETPU interrupt       */
vectorA7:	.long	asm_irq_handler         /* ETPU interrupt       */
vectorA8:	.long	asm_irq_handler         /* ETPU interrupt       */
vectorA9:	.long	asm_irq_handler         /* ETPU interrupt       */
vectorAA:	.long	asm_irq_handler         /* ETPU interrupt       */
vectorAB:	.long	asm_irq_handler         /* ETPU interrupt       */
vectorAC:	.long	asm_irq_handler         /* ETPU interrupt       */
vectorAD:	.long	asm_irq_handler         /* ETPU interrupt       */
vectorAE:	.long	asm_irq_handler         /* ETPU interrupt       */
vectorAF:	.long	asm_irq_handler         /* ETPU interrupt       */
vectorB0:	.long	asm_irq_handler         /* ETPU interrupt       */
vectorB1:	.long	asm_irq_handler         /* ETPU interrupt       */
vectorB2:	.long	asm_irq_handler         /* ETPU interrupt       */
vectorB3:	.long	asm_irq_handler         /* ETPU interrupt       */
vectorB4:	.long	asm_irq_handler         /* ETPU interrupt       */
vectorB5:	.long	asm_irq_handler         /* ETPU interrupt       */
vectorB6:	.long	asm_irq_handler         /* ETPU interrupt       */
vectorB7:	.long	asm_irq_handler         /* ETPU interrupt       */
vectorB8:	.long	asm_irq_handler         /* ETPU interrupt       */
vectorB9:	.long	asm_irq_handler         /* ETPU interrupt       */
vectorBA:	.long	asm_irq_handler         /* ETPU interrupt       */
vectorBB:	.long	asm_irq_handler         /* ETPU interrupt       */
vectorBC:	.long	asm_irq_handler         /* not used             */
vectorBD:	.long	asm_irq_handler         /* not used             */
vectorBE:	.long	asm_irq_handler         /* not used             */
vectorBF:	.long	asm_irq_handler         /* not used             */
vectorC0:	.long	asm_exception_handler
vectorC1:	.long	asm_exception_handler
vectorC2:	.long	asm_exception_handler
vectorC3:	.long	asm_exception_handler
vectorC4:	.long	asm_exception_handler
vectorC5:	.long	asm_exception_handler
vectorC6:	.long	asm_exception_handler
vectorC7:	.long	asm_exception_handler
vectorC8:	.long	asm_exception_handler
vectorC9:	.long	asm_exception_handler
vectorCA:	.long	asm_exception_handler
vectorCB:	.long	asm_exception_handler
vectorCC:	.long	asm_exception_handler
vectorCD:	.long	asm_exception_handler
vectorCE:	.long	asm_exception_handler
vectorCF:	.long	asm_exception_handler
vectorD0:	.long	asm_exception_handler
vectorD1:	.long	asm_exception_handler
vectorD2:	.long	asm_exception_handler
vectorD3:	.long	asm_exception_handler
vectorD4:	.long	asm_exception_handler
vectorD5:	.long	asm_exception_handler
vectorD6:	.long	asm_exception_handler
vectorD7:	.long	asm_exception_handler
vectorD8:	.long	asm_exception_handler
vectorD9:	.long	asm_exception_handler
vectorDA:	.long	asm_exception_handler
vectorDB:	.long	asm_exception_handler
vectorDC:	.long	asm_exception_handler
vectorDD:	.long	asm_exception_handler
vectorDE:	.long	asm_exception_handler
vectorDF:	.long	asm_exception_handler
vectorE0:	.long	asm_exception_handler
vectorE1:	.long	asm_exception_handler
vectorE2:	.long	asm_exception_handler
vectorE3:	.long	asm_exception_handler
vectorE4:	.long	asm_exception_handler
vectorE5:	.long	asm_exception_handler
vectorE6:	.long	asm_exception_handler
vectorE7:	.long	asm_exception_handler
vectorE8:	.long	asm_exception_handler
vectorE9:	.long	asm_exception_handler
vectorEA:	.long	asm_exception_handler
vectorEB:	.long	asm_exception_handler
vectorEC:	.long	asm_exception_handler
vectorED:	.long	asm_exception_handler
vectorEE:	.long	asm_exception_handler
vectorEF:	.long	asm_exception_handler
vectorF0:	.long	asm_exception_handler
vectorF1:	.long	asm_exception_handler
vectorF2:	.long	asm_exception_handler
vectorF3:	.long	asm_exception_handler
vectorF4:	.long	asm_exception_handler
vectorF5:	.long	asm_exception_handler
vectorF6:	.long	asm_exception_handler
vectorF7:	.long	asm_exception_handler
vectorF8:	.long	asm_exception_handler
vectorF9:	.long	asm_exception_handler
vectorFA:	.long	asm_exception_handler
vectorFB:	.long	asm_exception_handler
vectorFC:	.long	asm_exception_handler
vectorFD:	.long	asm_exception_handler
vectorFE:	.long	asm_exception_handler
vectorFF:	.long	asm_exception_handler
			.long	0 /* 0x400  - leave 408-40F free for debugger to put */
			.long	0 /* 0x404	vector catching routine */
			.long	0 /* 0x408 */
			.long	0 /* 0x40C */

power_on_jump:
	move.w	#0x2700,%SR
	
    move.l  #__MBAR,%D0
    .long   0x4e7b0C0F    /* movec d0,MBAR0	  */
    nop

	jmp 	start         /* jmp to crt0 start*/
	
	.end
