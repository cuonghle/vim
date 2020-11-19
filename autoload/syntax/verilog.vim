" Vim syntax file
" Language:	Verilog
" Maintainer:	Mun Johl <Mun.Johl@emulex.com>
" Last Update:  Wed Jul 20 16:04:19 PDT 2011

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
   syntax clear
elseif exists("b:current_syntax")
   finish
endif

" Set the local value of the 'iskeyword' option.
" NOTE: '?' was added so that verilogNumber would be processed correctly when
"       '?' is the last character of the number.
if version >= 600
   setlocal iskeyword=@,48-57,63,_,192-255
else
   set iskeyword=@,48-57,63,_,192-255
endif

" A bunch of useful Verilog keywords

syn keyword verilogStatement   always and assign automatic buf
syn keyword verilogStatement   bufif0 bufif1 cell cmos
syn keyword verilogStatement   config deassign defparam design
syn keyword verilogStatement   disable edge endconfig
syn keyword verilogStatement   endfunction endgenerate endmodule
syn keyword verilogStatement   endprimitive endspecify endtable endtask
syn keyword verilogStatement   event force function
syn keyword verilogStatement   generate genvar highz0 highz1 ifnone
syn keyword verilogStatement   incdir include initial inout input
syn keyword verilogStatement   instance integer large liblist
syn keyword verilogStatement   library localparam macromodule medium
syn keyword verilogStatement   module nand negedge nmos nor
syn keyword verilogStatement   uvm_action uvm_active_passive_enum uvm_add_to_seq_lib uvm_add_to_sequence_library uvm_analysis_imp_decl uvm_bits_to_string uvm_bitstream_t uvm_blocking_get_imp_decl uvm_blocking_get_peek_imp_decl uvm_blocking_master_imp_decl uvm_blocking_peek_imp_decl uvm_blocking_put_imp_decl uvm_blocking_slave_imp_decl uvm_blocking_transport_imp_decl uvm_bogus_class uvm_build_phase uvm_builtin_bottomup_phase uvm_builtin_task_phase uvm_callback uvm_callbacks_objection uvm_cb_trace_noobj uvm_check_e uvm_check_phase uvm_cmdline_processor uvm_comparer uvm_componenent_ uvm_component uvm_component_end uvm_component_param_utils uvm_component_param_utils_begin uvm_component_registry uvm_component_utils uvm_component_utils_begin uvm_component_utils_end uvm_config_db uvm_configure_phase uvm_connect_phase uvm_create uvm_create_on uvm_create_random_seed uvm_declare_p_sequencer uvm_declare_sequence_lib uvm_delay uvm_do uvm_do_ uvm_do_callbacks uvm_do_callbacks_exit_on uvm_domain uvm_do_obj_callbacks uvm_do_obj_callbacks_exit_on uvm_do_on uvm_do_on_pri uvm_do_on_pri_with uvm_do_on_with uvm_do_pri uvm_do_pri_with uvm_do_with uvm_do_with_prior uvm_do_xxx uvm_dpi_get_next_arg uvm_dpi_get_next_arg_c uvm_dpi_get_tool_name uvm_dpi_get_tool_name_c uvm_dpi_get_tool_version uvm_dpi_get_tool_version_c uvm_dpi_regcomp uvm_dpi_regexec uvm_dpi_regfree uvm_dump_re_cache uvm_endianness_e uvm_end_of_elaboration_phase uvm_error uvm_error_context uvm_event uvm_event_callback uvm_event_pool uvm_exhaustive_sequence uvm_extract_phase uvm_factory uvm_fatal uvm_fatal_context uvm_field uvm_field_ uvm_field_aa_ uvm_field_aa_int_byte uvm_field_aa_int_byte_unsigned uvm_field_aa_int_enumkey uvm_field_aa_int_int uvm_field_aa_int_integer uvm_field_aa_int_integer_unsigned uvm_field_aa_int_int_unsigned uvm_field_aa_int_key uvm_field_aa_int_longint uvm_field_aa_int_longint_unsigned uvm_field_aa_int_shortint uvm_field_aa_int_shortint_unsigned uvm_field_aa_int_string uvm_field_aa_object_int uvm_field_aa_object_string uvm_field_aa_string_string uvm_field_array_ uvm_field_array_enum uvm_field_array_int uvm_field_array_object uvm_field_array_string uvm_field_automation uvm_field_enum uvm_field_event uvm_field_int uvm_field_object uvm_field_queue_ uvm_field_queue_enum uvm_field_queue_int uvm_field_queue_object uvm_field_queue_string uvm_field_real uvm_field_sarray_ uvm_field_sarray_enum uvm_field_sarray_int uvm_field_sarray_object uvm_field_sarray_string uvm_field_string uvm_field_utils_begin uvm_field_utils_end uvm_final_phase uvm_get_array_index_int uvm_get_array_index_string uvm_get_imp_decl uvm_get_max_verbosity uvm_get_peek_imp_decl uvm_glob_to_re uvm_has_wildcard uvm_hdl_check_path uvm_hdl_concat2string uvm_hdl_deposit uvm_hdl_force uvm_hdl_path_concat uvm_hdl_path_slice uvm_hdl_read uvm_hdl_release uvm_hdl_release_and_read uvm_heartbeat_modes uvm_hier_e uvm_info uvm_info_context uvm_instance_scope uvm_is_array uvm_is_match uvm_leaf_scope uvm_main_phase uvm_master_imp_decl uvm_mem uvm_mem_access_seq uvm_mem_mam uvm_mem_mam_cfg uvm_mem_region uvm_mem_shared_access_seq uvm_mem_walk_seq uvm_nonblocking_get_imp_decl uvm_nonblocking_get_peek_imp_decl uvm_nonblocking_master_imp_decl uvm_nonblocking_peek_imp_decl uvm_nonblocking_put_imp_decl uvm_nonblocking_slave_imp_decl uvm_nonblocking_transport_imp_decl uvm_object uvm_object_ uvm_objection uvm_object_param_utils uvm_object_param_utils_begin uvm_object_registry uvm_object_utils uvm_object_utils_begin uvm_object_utils_end uvm_object_value_str uvm_object_wrapper uvm_oneway_hash uvm_package uvm_pack_array uvm_pack_arrayN uvm_pack_bitstream_t uvm_pack_enum uvm_pack_enumN uvm_packer uvm_pack_int uvm_pack_intN uvm_pack_queue uvm_pack_queueN uvm_pack_real uvm_pack_sarray uvm_pack_sarrayN uvm_pack_string uvm_path_e uvm_peek_imp_decl uvm_phase uvm_phases uvm_phase_state uvm_phase_type uvm_port_base uvm_port_component_base uvm_port_list uvm_post_configure_phase uvm_post_main_phase uvm_post_reset_phase uvm_post_shutdown_phase uvm_pre_configure_phase uvm_pre_main_phase uvm_pre_reset_phase uvm_pre_shutdown_phase uvm_print_aa_ uvm_print_aa_int_key4 uvm_print_aa_int_object3 uvm_print_aa_int_object_3 uvm_print_aa_string_int3 uvm_print_aa_string_object3 uvm_print_aa_string_object_3 uvm_print_aa_string_string2 uvm_print_aa_string_string_2 uvm_print_array_int3 uvm_print_array_object3 uvm_print_array_string2 uvm_print_enum uvm_printer uvm_printer_row_info uvm_print_int3 uvm_print_int4 uvm_print_object2 uvm_print_object_qda4 uvm_print_object_queue3 uvm_print_qda_enum uvm_print_qda_int3 uvm_print_qda_int4 uvm_print_queue_int3 uvm_print_sarray_int3 uvm_print_sarray_object3 uvm_print_sarray_string2 uvm_print_string2 uvm_print_string_qda3 uvm_print_string_queue2 uvm_put_imp_decl uvm_queue uvm_radix_enum uvm_radix_to_string uvm_random_sequence uvm_rand_send uvm_rand_send_pri uvm_rand_send_pri_with uvm_rand_send_with uvm_record_attribute uvm_recorder uvm_record_field uvm_reg uvm_reg_access_seq uvm_reg_adapter uvm_reg_addr_t uvm_reg_backdoor uvm_reg_bit_bash_seq uvm_reg_block uvm_reg_cbs uvm_reg_cvr_t uvm_reg_data_t uvm_reg_field uvm_reg_file uvm_reg_frontdoor uvm_reg_hw_reset_seq uvm_reg_indirect uvm_register_cb uvm_reg_item uvm_reg_map uvm_reg_map_info uvm_reg_mem_access_seq uvm_reg_mem_built_in_seq uvm_reg_mem_hdl_paths_seq uvm_reg_mem_shared_access_seq uvm_reg_read_only_cbs uvm_reg_sequence_inst uvm_reg_shared_access_seq uvm_reg_single_access_seq uvm_reg_single_bit_bash_seq uvm_reg_tlm_adapter uvm_reg_write_only_cbs uvm_re_match uvm_report uvm_report_catcher uvm_report_enabled uvm_report_error uvm_report_fatal uvm_report_handler uvm_report_info uvm_report_object uvm_report_phase uvm_report_server uvm_report_warning uvm_reset_phase uvm_resource uvm_resource_base uvm_resource_converter uvm_resource_db uvm_resource_pool uvm_resource_types uvm_revision_string uvm_root uvm_run_phase uvm_send uvm_send_pri uvm_sequence uvm_sequence_base uvm_sequence_item uvm_sequence_library uvm_sequence_library_package uvm_sequence_library_utils uvm_sequence_param_utils uvm_sequencer uvm_sequencer_base uvm_sequence_request uvm_sequencer_item uvm_sequencer_param_base uvm_sequencer_param_utils uvm_sequencer_param_utils_begin uvm_sequencer_utils uvm_sequencer_utils_begin uvm_sequencer_utils_end uvm_sequence_state_enum uvm_sequence_utils uvm_sequence_utils_begin uvm_sequence_utils_end uvm_set_super_type uvm_severity uvm_shutdown_phase uvm_simple_sequence uvm_slave_imp_decl uvm_split_string uvm_start_of_simulation_phase uvm_status_e uvm_string_to_action uvm_string_to_severity uvm_table_printer uvm_test_done uvm_test_done_objection uvm_tlm_command_e uvm_tlm_event uvm_tlm_extension_base uvm_tlm_response_status_e uvm_tlm_sync_e uvm_tlm_time uvm_top uvm_transaction uvm_transport_imp_decl uvm_tree_printer uvm_typeid uvm_typename uvm_unpack_array uvm_unpack_arrayN uvm_unpack_enum uvm_unpack_enumN uvm_unpack_int uvm_unpack_intN uvm_unpack_queue uvm_unpack_queueN uvm_unpack_real uvm_unpack_sarray uvm_unpack_sarrayN uvm_unpack_string uvm_update_sequence_lib uvm_update_sequence_lib_and_item uvm_vector_to_string uvm_verbosity uvm_void uvm_vreg uvm_vreg_field uvm_vreg_field_cbs uvm_warning uvm_warning_context
syn keyword verilogStatement   UVM_ABSTRACT UVM_ACTIVE UVM_ALL_ACTIVE UVM_ALL_DROPPED UVM_ALL_ON UVM_ANY_ACTIVE UVM_APPEND UVM_ARRAY_RESIZE UVM_BACKDOOR UVM_BASE_SVH UVM_BIG_ENDIAN UVM_BIG_FIFO UVM_BIN UVM_BLOCKING_GET_IMP UVM_BLOCKING_GET_IMP_SFX UVM_BLOCKING_GET_PEEK_IMP UVM_BLOCKING_PEEK_IMP UVM_BLOCKING_PEEK_IMP_SFX UVM_BLOCKING_PUT_IMP UVM_BLOCKING_PUT_IMP_SFX UVM_BLOCKING_TRANSPORT_IMP UVM_BLOCKING_TRANSPORT_IMP_SFX UVM_BURST_READ UVM_BURST_WRITE UVM_CALLBACK_SVH UVM_CALLBACK_TRACE UVM_CALL_HOOK UVM_CB_MACROS_SVH UVM_CB_MSG_NO_CBS UVM_CB_MSG_NOT_REG UVM_CB_MSG_NULL_CB UVM_CB_MSG_NULL_OBJ UVM_CB_TRACE_ON UVM_CHECK UVM_CHECK_FIELDS UVM_CMDLINE_NO_DPI UVM_CMDLINE_PROC UVM_CMDLINE_PROCESSOR_SV UVM_CMDLINE_PROC_PKG_SV UVM_COMPARE UVM_COMPLETED UVM_CONFIG_DB_TRACE UVM_COPY UVM_COUNT UVM_CVR_ADDR_MAP UVM_CVR_ALL UVM_CVR_FIELD_VALS UVM_CVR_REG_BITS UVM_DA_TO_QUEUE UVM_DEBUG UVM_DEC UVM_DEEP UVM_DEFAULT UVM_DEFAULT_PATH UVM_DEFAULT_POLICY UVM_DEFAULT_TIMEOUT UVM_DEPRECATED UVM_DISABLE_AUTO_ITEM_RECORDING UVM_DISPLAY UVM_DO_ALL_REG_MEM_TESTS UVM_DO_MEM_ACCESS UVM_DO_MEM_WALK UVM_DO_REG_ACCESS UVM_DO_REG_BIT_BASH UVM_DO_REG_HW_RESET UVM_DO_SHARED_ACCESS UVM_DPI_SVH UVM_DROPPED UVM_DUMP_CMDLINE_ARGS UVM_EMPTY_MACROS UVM_ENABLE_FIELD_CHECKS UVM_END_DATA_EXTRA UVM_ENUM UVM_EQ UVM_ERROR UVM_EXIT UVM_EXPORT UVM_EXPORT_COMMON UVM_EXTRA_TYPENAME_ARG UVM_FATAL UVM_FIELD UVM_FIELD_DATA_AA_enum_key UVM_FIELD_DATA_AA_generic UVM_FIELD_DATA_AA_int_int UVM_FIELD_DATA_AA_int_key UVM_FIELD_DATA_AA_int_string UVM_FIELD_DATA_AA_object_int UVM_FIELD_DATA_AA_object_string UVM_FIELD_DATA_AA_string_string UVM_FIELD_QDA_INT UVM_FIELD_QDA_OBJECT UVM_FIELD_QDA_STRING UVM_FIELD_SET_AA_INT_ENUMTYPE UVM_FIELD_SET_AA_INT_TYPE UVM_FIELD_SET_AA_OBJECT_TYPE UVM_FIELD_SET_AA_TYPE UVM_FILE UVM_FIX_REV UVM_FLAGS UVM_FLAGS_OFF UVM_FLAGS_ON UVM_FORCED_STOP UVM_FRONTDOOR UVM_FULL UVM_FUNCTION_ERROR UVM_GET_IMP UVM_GET_PEEK_IMP UVM_GT UVM_GTE UVM_HAS_X UVM_HDL_CHECK_PATH UVM_HDL_DEPOSIT UVM_HDL_FORCE UVM_HDL_FORCE_TIME UVM_HDL_MAX_WIDTH UVM_HDL_NO_DPI UVM_HDL_READ UVM_HDL_RELEASE UVM_HDL__SVH UVM_HEARTBEAT_SVH UVM_HEX UVM_HIER UVM_HIGH UVM_HOME UVM_IMP_COMMON UVM_IMPLEMENTATION UVM_INFO UVM_IS_OK UVM_LARGE_STRING UVM_LINE_WIDTH UVM_LITTLE_ENDIAN UVM_LITTLE_FIFO UVM_LOG UVM_LOW UVM_LT UVM_LTE UVM_MACRO_EXTRAS UVM_MACRO_NUMFLAGS UVM_MACROS_SVH UVM_MAJOR_REV UVM_MAJOR_REV_1 UVM_MAJOR_VERSION_1_1 UVM_MAX_QUIT_COUNT UVM_MAX_STREAMBITS UVM_MEDIUM UVM_MEM UVM_MEM_MAM__SV UVM_MESSAGE_DEFINES_SVH UVM_MINOR_REV UVM_MINOR_REV_1 UVM_MS_IMP_COMMON UVM_NAME UVM_NE UVM_NO_ACTION UVM_NO_CHECK UVM_NOCOMPARE UVM_NOCOPY UVM_NO_COVERAGE UVM_NODEFPRINT UVM_NO_DEPRECATED UVM_NO_DPI UVM_NO_ENDIAN UVM_NO_HB_MODE UVM_NO_HIER UVM_NONBLOCKING_GET_IMP UVM_NONBLOCKING_GET_IMP_SFX UVM_NONBLOCKING_GET_PEEK_IMP UVM_NONBLOCKING_PEEK_IMP UVM_NONBLOCKING_PEEK_IMP_SFX UVM_NONBLOCKING_PUT_IMP UVM_NONBLOCKING_PUT_IMP_SFX UVM_NONBLOCKING_TRANSPORT_IMP UVM_NONBLOCKING_TRANSPORT_IMP_SFX UVM_NONE UVM_NOPACK UVM_NOPRINT UVM_NORADIX UVM_NORECORD UVM_NO_REGISTERED_CONVERTER UVM_NO_RELNOTES UVM_NOT_OK UVM_NO_WAIT_FOR_NBA UVM_NUM_LINES UVM_OBJECT_DEFINES_SVH UVM_OBJECTION_SVH UVM_OBJECTION_TRACE UVM_OBJECT_MUST_HAVE_CONSTRUCTOR UVM_OCT UVM_OFF UVM_ONE_ACTIVE UVM_PACK UVM_PACKER_MAX_BYTES UVM_PASSIVE UVM_PEEK_IMP UVM_PHASE_CLEANUP UVM_PHASE_DEFINES_SVH UVM_PHASE_DOMAIN UVM_PHASE_DONE UVM_PHASE_DORMANT UVM_PHASE_ENDED UVM_PHASE_EXECUTING UVM_PHASE_GLOBAL UVM_PHASE_IMP UVM_PHASE_JUMPING UVM_PHASE_LEAF_NODE UVM_PHASE_NODE UVM_PHASE_READY_TO_END UVM_PHASE_SCHEDULE UVM_PHASE_SCHEDULED UVM_PHASE_STARTED UVM_PHASE_SYNCING UVM_PHASE_TASK UVM_PHASE_TERMINAL UVM_PHASE_TRACE UVM_PH_TRACE UVM_PHYSICAL UVM_PKG_SV UVM_PORT UVM_PORT_COMMON UVM_POUND_ZERO_COUNT UVM_PREDICT UVM_PREDICT_DIRECT UVM_PREDICT_READ UVM_PREDICT_WRITE UVM_PREPEND UVM_PRINT UVM_PRINTER_DEFINES_SVH UVM_PUT_IMP UVM_QUEUE_RESIZE UVM_QUEUE_SVH UVM_RADIX UVM_RAISED UVM_READ UVM_READONLY UVM_REAL UVM_REAL_DEC UVM_REAL_EXP UVM_RECORD UVM_REFERENCE UVM_REG UVM_REG_ADDR_WIDTH UVM_REG_BYTENABLE_WIDTH UVM_REG_CVR_WIDTH UVM_REG_DATA_WIDTH UVM_REGEX_NO_DPI UVM_REGISTRY_SVH UVM_REG_MODEL__SV UVM_REG_NO_INDIVIDUAL_FIELD_ACCESS UVM_Rename UVM_REPORT_CATCHER_SVH UVM_REPORT_CLIENT_SVH UVM_REPORT_DISABLE_FILE UVM_REPORT_DISABLE_FILE_LINE UVM_REPORT_DISABLE_LINE UVM_REPORT_HANDLER_SVH UVM_REPORT_SERVER_SVH UVM_RERUN UVM_RESOURCE_DB_TRACE UVM_RESOURCE_GET_FCNS UVM_SARRAY_RESIZE UVM_SEQ UVM_SEQ_ITEM_FUNCTION_ERROR UVM_SEQ_ITEM_GET_MASK UVM_SEQ_ITEM_GET_NEXT_ITEM_MASK UVM_SEQ_ITEM_HAS_DO_AVAILABLE_MASK UVM_SEQ_ITEM_ITEM_DONE_MASK UVM_SEQ_ITEM_PEEK_MASK UVM_SEQ_ITEM_PULL_IMP UVM_SEQ_ITEM_PULL_MASK UVM_SEQ_ITEM_PUSH_MASK UVM_SEQ_ITEM_PUT_MASK UVM_SEQ_ITEM_PUT_RESPONSE_MASK UVM_SEQ_ITEM_TASK_ERROR UVM_SEQ_ITEM_TRY_NEXT_ITEM_MASK UVM_SEQ_ITEM_UNI_PULL_MASK UVM_SEQ_ITEM_WAIT_FOR_SEQUENCES_MASK UVM_SEQ_LIB_ITEM UVM_SEQ_LIB_RANC UVM_SEQ_LIB_RAND UVM_SEQ_LIB_RANDC UVM_SEQ_LIB_USER UVM_SEQ_PORT UVM_SET UVM_SET_CONFIG_INT UVM_SET_CONFIG_STRING UVM_SET_INST_OVERRIDE UVM_SETINT UVM_SETOBJ UVM_SETSTR UVM_SET_TYPE_OVERRIDE UVM_SHALLOW UVM_SKIPPED UVM_START_FUNCS UVM_STDOUT UVM_STOP UVM_STR_CRC_POLYNOMIAL UVM_STREAMBITS UVM_STRING UVM_TASK_ERROR UVM_TESTNAME UVM_TIME UVM_TIMEOUT UVM_TLM_ACCEPTED UVM_TLM_ADDRESS_ERROR_RESPONSE UVM_TLM_ANALYSIS_MASK UVM_TLM_BLOCKING_GET_MASK UVM_TLM_BLOCKING_GET_PEEK_MASK UVM_TLM_BLOCKING_MASTER_MASK UVM_TLM_BLOCKING_PEEK_MASK UVM_TLM_BLOCKING_PUT_MASK UVM_TLM_BLOCKING_SLAVE_MASK UVM_TLM_BLOCKING_TRANSPORT_MASK UVM_TLM_B_MASK UVM_TLM_B_TRANSPORT_IMP UVM_TLM_BURST_ERROR_RESPONSE UVM_TLM_BYTE_ENABLE_ERROR_RESPONSE UVM_TLM_COMMAND_ERROR_RESPONSE UVM_TLM_COMPLETED UVM_TLM_FIFO_FUNCTION_ERROR UVM_TLM_FIFO_TASK_ERROR UVM_TLM_FUNCTION_ERROR UVM_TLM_GENERIC_ERROR_RESPONSE UVM_TLM_GET_MASK UVM_TLM_GET_PEEK_MASK UVM_TLM_GET_TYPE_NAME UVM_TLM_IGNORE_COMMAND UVM_TLM_IMPS_SVH UVM_TLM_INCOMPLETE_RESPONSE UVM_TLM_MASTER_BIT_MASK UVM_TLM_MASTER_MASK UVM_TLM_NB_BW_MASK UVM_TLM_NB_FW_MASK UVM_TLM_NB_TRANSPORT_BW_IMP UVM_TLM_NB_TRANSPORT_FW_IMP UVM_TLM_NONBLOCKING_GET_MASK UVM_TLM_NONBLOCKING_GET_PEEK_MASK UVM_TLM_NONBLOCKING_MASTER_MASK UVM_TLM_NONBLOCKING_PEEK_MASK UVM_TLM_NONBLOCKING_PUT_MASK UVM_TLM_NONBLOCKING_SLAVE_MASK UVM_TLM_NONBLOCKING_TRANSPORT_MASK UVM_TLM_OK_RESPONSE UVM_TLM_PEEK_MASK UVM_TLM_PUT_MASK UVM_TLM_READ_COMMAND UVM_TLM_SLAVE_BIT_MASK UVM_TLM_SLAVE_MASK UVM_TLM_TASK_ERROR UVM_TLM_TRANSPORT_MASK UVM_TLM_UPDATED UVM_TLM_WRITE_COMMAND UVM_TRANSPORT_IMP UVM_UNBOUNDED_CONNECTIONS UVM_UNFORMAT2 UVM_UNFORMAT4 UVM_UNPACK UVM_UNSIGNED UVM_USE_CALLBACKS_OBJECTION_FOR_TEST_DONE UVM_USE_FILE_LINE UVM_USE_FPC UVM_USE_OVM_RUN_SEMANTIC UVM_USE_P_FORMAT UVM_USE_PROCESS_CONTAINER UVM_USE_PROCESS_STATE UVM_USE_SUSPEND_RESUME UVM_USE_TYPENAME UVM_VERBOSITY UVM_VERSION_1_1 UVM_VERSION_DEFINES_SVH UVM_VERSION_STRING UVM_VERSION_SVH UVM_WARNING UVM_WRITE
syn keyword verilogStatement   noshowcancelled not notif0 notif1 or
syn keyword verilogStatement   output parameter pmos posedge primitive
syn keyword verilogStatement   pull0 pull1 pulldown pullup
syn keyword verilogStatement   pulsestyle_onevent pulsestyle_ondetect
syn keyword verilogStatement   rcmos real realtime reg release
syn keyword verilogStatement   rnmos rpmos rtran rtranif0 rtranif1
syn keyword verilogStatement   scalared showcancelled signed small
syn keyword verilogStatement   specify specparam strong0 strong1
syn keyword verilogStatement   supply0 supply1 table task time tran
syn keyword verilogStatement   tranif0 tranif1 tri tri0 tri1 triand
syn keyword verilogStatement   trior trireg unsigned use vectored wait
syn keyword verilogStatement   wand weak0 weak1 wire wor xnor xor
syn keyword verilogLabel       begin end fork join
syn keyword verilogConditional if else case casex casez default endcase
syn keyword verilogRepeat      forever repeat while for

syn keyword verilogTodo contained TODO FIXME

syn match   verilogOperator "[&|~><!)(*#%@+/=?:;}{,.\^\-\[\]]"

syn region  verilogComment start="/\*" end="\*/" contains=verilogTodo,@Spell
syn match   verilogComment "//.*" contains=verilogTodo,@Spell

"syn match   verilogGlobal "`[a-zA-Z0-9_]\+\>"
syn match verilogGlobal "`celldefine"
syn match verilogGlobal "`default_nettype"
syn match verilogGlobal "`define"
syn match verilogGlobal "`else"
syn match verilogGlobal "`elsif"
syn match verilogGlobal "`endcelldefine"
syn match verilogGlobal "`endif"
syn match verilogGlobal "`ifdef"
syn match verilogGlobal "`ifndef"
syn match verilogGlobal "`include"
syn match verilogGlobal "`line"
syn match verilogGlobal "`nounconnected_drive"
syn match verilogGlobal "`resetall"
syn match verilogGlobal "`timescale"
syn match verilogGlobal "`unconnected_drive"
syn match verilogGlobal "`undef"
syn match   verilogGlobal "$[a-zA-Z0-9_]\+\>"

syn match   verilogConstant "\<[A-Z][A-Z0-9_]\+\>"

syn match   verilogNumber "\(\<\d\+\|\)'[sS]\?[bB]\s*[0-1_xXzZ?]\+\>"
syn match   verilogNumber "\(\<\d\+\|\)'[sS]\?[oO]\s*[0-7_xXzZ?]\+\>"
syn match   verilogNumber "\(\<\d\+\|\)'[sS]\?[dD]\s*[0-9_xXzZ?]\+\>"
syn match   verilogNumber "\(\<\d\+\|\)'[sS]\?[hH]\s*[0-9a-fA-F_xXzZ?]\+\>"
syn match   verilogNumber "\<[+-]\=[0-9_]\+\(\.[0-9_]*\|\)\(e[0-9_]*\|\)\>"

syn region  verilogString start=+"+ skip=+\\"+ end=+"+ contains=verilogEscape,@Spell
syn match   verilogEscape +\\[nt"\\]+ contained
syn match   verilogEscape "\\\o\o\=\o\=" contained

" Directives
syn match   verilogDirective   "//\s*synopsys\>.*$"
syn region  verilogDirective   start="/\*\s*synopsys\>" end="\*/"
syn region  verilogDirective   start="//\s*synopsys dc_script_begin\>" end="//\s*synopsys dc_script_end\>"

syn match   verilogDirective   "//\s*\$s\>.*$"
syn region  verilogDirective   start="/\*\s*\$s\>" end="\*/"
syn region  verilogDirective   start="//\s*\$s dc_script_begin\>" end="//\s*\$s dc_script_end\>"

"Modify the following as needed.  The trade-off is performance versus
"functionality.
syn sync minlines=50

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_verilog_syn_inits")
   if version < 508
      let did_verilog_syn_inits = 1
      command -nargs=+ HiLink hi link <args>
   else
      command -nargs=+ HiLink hi def link <args>
   endif

   " The default highlighting.
   HiLink verilogCharacter       Character
   HiLink verilogConditional     Conditional
   HiLink verilogRepeat          Repeat
   HiLink verilogString          String
   HiLink verilogTodo            Todo
   HiLink verilogComment         Comment
   HiLink verilogConstant        Constant
   HiLink verilogLabel           Label
   HiLink verilogNumber          Number
   HiLink verilogOperator        Special
   HiLink verilogStatement       Statement
   HiLink verilogGlobal          Define
   HiLink verilogDirective       SpecialComment
   HiLink verilogEscape		 Special

   delcommand HiLink
endif

let b:current_syntax = "verilog"

" vim: ts=8
