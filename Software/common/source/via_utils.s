        .include "via_const.inc"
        .include "macros.inc"
        .include "zeropage.inc"

        .import __VIA1_START__  ; Changed from __VIA2_START__ to __VIA1_START__
        .export via2_get_register
        .export _via2_get_register
        .export via2_set_register
        .export _via2_set_register

        .code

; NEGATIVE C COMPLIANT
; NOTE: These VIA2 functions now redirect to VIA1 hardware
; since this system only has VIA1 physically present
via2_get_register:
        lda __VIA1_START__,X    ; Changed from __VIA2_START__ to __VIA1_START__
        rts

; C version of the set register routine
_via2_get_register:
        tax
        lda __VIA1_START__,X    ; Changed from __VIA2_START__ to __VIA1_START__
        rts

; NEGATIVE C COMPLIANT
via2_set_register:
        sta __VIA1_START__,X    ; Changed from __VIA2_START__ to __VIA1_START__
        rts

; C version of the set register routine
_via2_set_register:
        pha
        lda (sp)
        tax
        pla
        sta __VIA1_START__,X    ; Changed from __VIA2_START__ to __VIA1_START__
        inc_ptr sp
        rts