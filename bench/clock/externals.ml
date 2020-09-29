module M_io_constants = struct
  let _IO_ON = 0
  let _IO_OFF = 1
end

module M_lchip_interface = struct
    let _ms_tick = ref 0
    let _print_global_inputs = ()
    let _read_global_input state input_id = ()
    let _write_global_output output_id state = ()
    let _print_uint8 tag value = ()
    let _get_ms_tick r = r := !_ms_tick
end

module M_g_operators = struct 
    let _bitwise_sll_uint32 = (lsl)
    let _bitwise_srl_uint32 = (lsr)
    let _bitwise_not_uint32 = lnot
    let _bitwise_and_uint32 = (land)
    let _bitwise_xor_uint32 = (lxor)
    let _bitwise_or_uint32 = (lor)
    let _bitwise_sll_uint16 = (lsl)
    let _bitwise_srl_uint16 = (lsr)
    let _bitwise_not_uint16 = lnot
    let _bitwise_and_uint16 = (land)
    let _bitwise_xor_uint16 = (lxor)
    let _bitwise_or_uint16 = (lor)
    let _bitwise_sll_uint8 = (lsl)
    let _bitwise_srl_uint8 = (lsr)
    let _bitwise_not_uint8 = lnot
    let _bitwise_and_uint8 = (land)
    let _bitwise_xor_uint8 = (lxor)
    let _bitwise_or_uint8 = (lor)

    let _add_uint32 = (+)
    let _sub_uint32 = (-)
    let _mul_uint32 = ( * )
    let _add_uint16 = (+)
    let _sub_uint16 = (-)
    let _mul_uint16 = ( * )
    let _add_uint8 = (+)
    let _sub_uint8 = (-)
    let _mul_uint8 = ( * )
end

module M_safety_variables = struct
  let _safety_variables_array = ref 0
  let _struct_safety_variables_size_minus_1 = 10
end

module M_g_standard_types = struct
    let _uint32_t = 0 , 4294967295
    let _uint16_t = 0 , 65535
    let _uint8_t = 0 , 255
end

module M_lchip_configuration = struct
  let _MAX_NB_MODULES = 1 
  let _MAX_NB_INPUTS = 3 
  let _MAX_NB_OUTPUTS = 2
end
