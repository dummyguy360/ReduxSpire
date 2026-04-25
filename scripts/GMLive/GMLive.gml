global.mq_gml_thread_scope = [undefined, undefined, 0, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined];
global.gml_std_haxe_type_markerValue = [];
(function()
{
    global.mt_gml_std_Date = new gml_std_haxe_class(-1, "gml_std_Date");
    global.mt_gml_builder = new gml_std_haxe_class(-1, "gml_builder");
    global.mt_gml_node = new gml_std_haxe_enum(-1, "gml_node", ["undefined_hx", "number", "cstring", "other_const", "enum_ctr", "array_decl", "object_decl", "ensure_array_for_local", "ensure_array_for_global", "ensure_array_for_field", "ensure_array_for_index", "ensure_array_for_index2d", "ident", "self_hx", "other_hx", "global_ref", "script", "native_script", "const", "arg_const", "arg_index", "arg_count", "call", "call_script", "call_script_at", "call_script_id", "call_script_with_array", "call_field", "call_func", "call_func_at", "construct", "func_literal", "prefix", "postfix", "un_op", "bin_op", "set_op", "delete_hx", "null_co", "to_bool", "from_bool", "in", "local_hx", "local_set", "local_aop", "static_decl", "static", "static_set", "static_aop", "global_hx", "global_set", "global_aop", "field", "field_set", "field_aop", "env", "env_set", "env_aop", "env_fd", "env_fd_set", "env_fd_aop", "env1d", "env1d_set", "env1d_aop", "alarm", "alarm_set_hx", "alarm_aop", "index", "index_set", "index_aop", "index2d", "index2d_set", "index2d_aop", "raw_id", "raw_id_set", "raw_id_aop", "raw_id2d", "raw_id2d_set", "raw_id2d_aop", "ds_list", "ds_list_set_hx", "ds_list_aop", "ds_map", "ds_map_set_hx", "ds_map_aop", "ds_grid", "ds_grid_set_hx", "ds_grid_aop", "key_id", "key_id_set", "key_id_aop", "var_decl", "block", "if_then", "ternary", "switch_hx", "wait", "fork", "while_hx", "do_until", "do_while", "repeat_hx", "for_hx", "with_hx", "once", "return_hx", "exit_hx", "break_hx", "continue_hx", "debugger", "try_catch", "throw_hx"], [gml_node_undefined_hx, gml_node_number, gml_node_cstring, gml_node_other_const, gml_node_enum_ctr, gml_node_array_decl, gml_node_object_decl, gml_node_ensure_array_for_local, gml_node_ensure_array_for_global, gml_node_ensure_array_for_field, gml_node_ensure_array_for_index, gml_node_ensure_array_for_index2d, gml_node_ident, gml_node_self_hx, gml_node_other_hx, gml_node_global_ref, gml_node_script, gml_node_native_script, gml_node_const, gml_node_arg_const, gml_node_arg_index, gml_node_arg_count, gml_node_call, gml_node_call_script, gml_node_call_script_at, gml_node_call_script_id, gml_node_call_script_with_array, gml_node_call_field, gml_node_call_func, gml_node_call_func_at, gml_node_construct, gml_node_func_literal, gml_node_prefix, gml_node_postfix, gml_node_un_op, gml_node_bin_op, gml_node_set_op, gml_node_delete_hx, gml_node_null_co, gml_node_to_bool, gml_node_from_bool, gml_node_in, gml_node_local_hx, gml_node_local_set, gml_node_local_aop, gml_node_static_decl, gml_node_static, gml_node_static_set, gml_node_static_aop, gml_node_global_hx, gml_node_global_set, gml_node_global_aop, gml_node_field, gml_node_field_set, gml_node_field_aop, gml_node_env, gml_node_env_set, gml_node_env_aop, gml_node_env_fd, gml_node_env_fd_set, gml_node_env_fd_aop, gml_node_env1d, gml_node_env1d_set, gml_node_env1d_aop, gml_node_alarm, gml_node_alarm_set_hx, gml_node_alarm_aop, gml_node_index, gml_node_index_set, gml_node_index_aop, gml_node_index2d, gml_node_index2d_set, gml_node_index2d_aop, gml_node_raw_id, gml_node_raw_id_set, gml_node_raw_id_aop, gml_node_raw_id2d, gml_node_raw_id2d_set, gml_node_raw_id2d_aop, gml_node_ds_list, gml_node_ds_list_set_hx, gml_node_ds_list_aop, gml_node_ds_map, gml_node_ds_map_set_hx, gml_node_ds_map_aop, gml_node_ds_grid, gml_node_ds_grid_set_hx, gml_node_ds_grid_aop, gml_node_key_id, gml_node_key_id_set, gml_node_key_id_aop, gml_node_var_decl, gml_node_block, gml_node_if_then, gml_node_ternary, gml_node_switch_hx, gml_node_wait, gml_node_fork, gml_node_while_hx, gml_node_do_until, gml_node_do_while, gml_node_repeat_hx, gml_node_for_hx, gml_node_with_hx, gml_node_once, gml_node_return_hx, gml_node_exit_hx, gml_node_break_hx, gml_node_continue_hx, gml_node_debugger, gml_node_try_catch, gml_node_throw_hx]);
    global.mt_gml_action = new gml_std_haxe_enum(-1, "gml_action", ["discard", "dup", "dup2x", "dup3x", "dup_in", "undefined_hx", "number", "cstring", "array_decl", "object_decl", "const", "self_hx", "other_hx", "local_hx", "local_set", "local_aop", "global_hx", "global_set", "global_aop", "field", "field_set", "field_aop", "fast_field_aop", "self_field", "self_field_set", "self_field_aop", "fast_self_field", "fast_self_field_set", "fast_self_field_aop", "local_field", "local_field_set", "local_field_aop", "fast_local_field", "fast_local_field_set", "fast_local_field_aop", "index", "index_set", "index_aop", "index2d", "index2d_set", "index2d_aop", "env", "env_set", "env_aop", "env1d", "env1d_set", "env1d_aop", "ds_aop", "arg_const", "arg_const_set", "arg_const_aop", "arg_index", "arg_index_set", "arg_index_aop", "arg_count", "add_int", "equ_op", "neq_op", "concat", "bin_op", "un_op", "in", "in_const", "call_script", "call_script_id", "call_script_with_array", "call_func", "call_func0", "call_func0o", "call_func1", "call_func1o", "call_func2", "call_func2o", "call_func3", "call_func3o", "call_func4", "call_func4o", "call_func_with_local0", "call_func_with_local0o", "call_func_with_local1", "call_func_with_local1o", "call_func_with_local2", "call_func_with_local2o", "call_func_with_local3", "call_func_with_local3o", "call_func_with_local4", "call_func_with_local4o", "call_field", "construct", "func_literal", "jump", "jump_if", "jump_unless", "jump_placeholder", "bool_and", "bool_or", "null_co", "switch_hx", "switch_case", "repeat_jump", "repeat_pre", "with_pre", "with_next", "with_post", "break_hx", "continue_hx", "return_hx", "return_const", "result", "try_hx", "catch_hx", "finally_hx", "throw_hx", "wait", "fork", "ensure_array_for_local", "ensure_array_for_global", "ensure_array_for_field", "ensure_array_for_index", "ensure_array_for_index2d", "alarm", "alarm_set_hx", "alarm_aop", "closure"]);
    global.mt_gml_func = new gml_std_haxe_class(-1, "gml_func");
    global.mt_api_api_version = new gml_std_haxe_class(-1, "api_api_version");
    global.mt_gml_parser = new gml_std_haxe_class(-1, "gml_parser");
    global.mt_gml_parser_macro = new gml_std_haxe_class(-1, "gml_parser_macro");
    global.mt_gml_program = new gml_std_haxe_class(-1, "gml_program");
    global.mt_gml_std_StringBuf = new gml_std_haxe_class(-1, "gml_std_StringBuf");
    global.mt_api_api_var = new gml_std_haxe_class(-1, "api_api_var");
    global.mt_gml_enum_ctr = new gml_std_haxe_class(-1, "gml_enum_ctr");
    global.mt_gml_macro = new gml_std_haxe_class(-1, "gml_macro");
    global.mt_ast_gml_node_def_param = new gml_std_haxe_class(-1, "ast_gml_node_def_param");
    global.mt_ast_gml_node_def_ctr = new gml_std_haxe_class(-1, "ast_gml_node_def_ctr");
    global.mt_gml_pos = new gml_std_haxe_class(-1, "gml_pos");
    global.mt_gml_script = new gml_std_haxe_class(-1, "gml_script");
    global.mt_gml_source = new gml_std_haxe_class(-1, "gml_source");
    global.mt_gml_token = new gml_std_haxe_enum(-1, "gml_token", ["header", "macro_def", "macro_start", "hash", "semico", "comma", "period", "colon", "qmark", "at_sign", "dollar_sign", "keyword", "ident", "undefined_hx", "number", "cstring", "un_op", "adjfix", "bin_op", "set_op", "par_open", "par_close", "sqb_open", "sqb_close", "cub_open", "cub_close", "arg_const", "null_co", "null_co_set", "pragma"]);
    global.mt_gml_std_haxe_class = new gml_std_haxe_class(-1, "gml_std_haxe_class");
    global.mt_gml_std_haxe_enum = new gml_std_haxe_class(-1, "gml_std_haxe_enum");
    global.mt_gml_std_haxe_Exception = new gml_std_haxe_class(-1, "gml_std_haxe_Exception");
    global.mt_haxe_ds_basic_map = new gml_std_haxe_class(-1, "haxe_ds_basic_map");
    global.mt_haxe_ds_string_map = new gml_std_haxe_class(-1, "haxe_ds_string_map");
    global.mt_haxe_ds_string_map.h_superClass = global.mt_haxe_ds_basic_map;
    global.mt_gml_thread_scope = new gml_std_haxe_class(7, "gml_thread_scope");
    global.mt_gml_with_scope = new gml_std_haxe_class(-1, "gml_with_scope");
    global.mt_gml_type_ref = new gml_std_haxe_class(-1, "gml_type_ref");
    global.mt_vm_v2_GmlStructBase = new gml_std_haxe_class(-1, "vm_v2_GmlStructBase");
})();

function gml_std_enum_toString()
{
    return gml_std_Std_stringify(self);
}

function gml_std_enum_getIndex()
{
    return __enumIndex__;
}

function gml_std_Date(arg0, arg1, arg2, arg3, arg4, arg5) constructor
{
    static h_date = undefined;
    
    static h_getTime = function()
    {
        return (h_date - 25569) * 86400000;
    };
    
    static __class__ = global.mt_gml_std_Date;
    
    h_date = date_create_datetime(arg0, arg1 + 1, arg2, arg3, arg4, arg5);
}

function gml_std_Date_now()
{
    var l_d = new gml_std_Date(2000, 0, 1, 0, 0, 0);
    l_d.h_date = date_current_datetime();
    return l_d;
}

function gml_std_Type_createEnumIndex(arg0, arg1, arg2)
{
    var l_n = (arg2 != undefined) ? array_length(arg2) : 0;
    
    if (arg0.h_index < 0)
    {
        var l_fns = arg0.h_functions;
        
        if (l_fns == undefined)
            show_error("Enum " + arg0.h_name + " does not have a constructor array.", true);
        
        return gml_internal_native_function_invoke_call(l_fns[arg1], arg2, l_n);
    }
    
    var l_r = array_create(l_n + 1);
    l_r[0] = arg1;
    
    if (l_n > 0)
        array_copy(l_r, 1, arg2, 0, l_n);
    
    return l_r;
}

function gml_std_Type_getEnumConstructs(arg0)
{
    return gml_std_gml_internal_ArrayImpl_copy(arg0.h_constructors);
}

function gml_std_Type_enumConstructor(arg0)
{
    var l_isStruct1 = is_struct(arg0);
    var l_et, l_i;
    
    if (l_isStruct1)
    {
        l_et = arg0.__enum__;
        l_i = arg0.__enumIndex__;
    }
    else
    {
        return string(arg0);
    }
    
    var l_cs = l_et.h_constructors;
    
    if (l_cs != undefined && l_i >= 0 && l_i < array_length(l_cs))
    {
        return l_cs[l_i];
    }
    else
    {
        if (l_isStruct1)
        {
            var l_s = instanceof(arg0);
            
            if (string_copy(l_s, 1, 3) == "mc_")
                l_s = string_delete(l_s, 1, 3);
            
            l_i = string_length(l_et.h_name);
            
            if (string_copy(l_s, 1, l_i) == l_et.h_name && string_ord_at(l_s, l_i + 1) == 95)
                l_s = string_delete(l_s, 1, l_i + 1);
            
            return l_s;
        }
        
        return string(arg0);
    }
}

function gml_std_Type_enumParameters(arg0)
{
    if (is_struct(arg0))
    {
        var l_fields = arg0.__enumParams__;
        var l_n = array_length(l_fields);
        var l_r = array_create(l_n);
        var l_i = -1;
        
        while (++l_i < l_n)
            l_r[l_i] = variable_struct_get(arg0, array_get(l_fields, l_i));
        
        return l_r;
    }
    
    if (is_array(arg0))
    {
        var l_m = arg0;
        var l_n = array_length(l_m) - 1;
        var l_r = array_create(l_n);
        array_copy(l_r, 0, l_m, 1, l_n);
        return l_r;
    }
    else
    {
        return [];
    }
}

function gml_std_Type_enumIndex(arg0)
{
    if (is_struct(arg0))
        return arg0.__enumIndex__;
    else if (is_array(arg0))
        return arg0[0];
    else
        return arg0;
}

function gml_std_StringTools_startsWith(arg0, arg1)
{
    var l_n = string_length(arg1);
    return string_length(arg0) >= l_n && string_copy(arg0, 1, l_n) == arg1;
}

function gml_std_StringTools_endsWith(arg0, arg1)
{
    var l_n = string_length(arg0);
    var l_i = string_length(arg1);
    return l_n >= l_i && string_copy(arg0, (l_n + 1) - l_i, l_i) == arg1;
}

function gml_std_StringTools_trim(arg0)
{
    var l_len = string_length(arg0);
    var l_till = l_len;
    
    while (l_till > 0)
    {
        var l_char = string_ord_at(arg0, l_till);
        
        if (l_char == 32 || (l_char > 8 && l_char < 14))
            l_till--;
        else
            break;
    }
    
    if (l_till < l_len)
        arg0 = string_copy(arg0, 1, l_till);
    
    var l_start = 1;
    
    while (l_start <= l_till)
    {
        var l_char = string_ord_at(arg0, l_start);
        
        if (l_char == 32 || (l_char > 8 && l_char < 14))
            l_start++;
        else
            break;
    }
    
    if (l_start > 1)
        arg0 = string_delete(arg0, 1, l_start - 1);
    
    return arg0;
}

function compile_groups_gml_compile_group_literal_proc_lf(arg0, arg1, arg2, arg3)
{
    var l_instStack = arg2[6];
    var l_inst = l_instStack[l_instStack[0]];
    
    if (instanceof(l_inst) == "instance")
        l_inst = l_inst.id;
    
    var l_i = arg3[0] + 1;
    
    if (l_i >= array_length(arg3))
        arg3[array_length(arg3) * 2] = 0;
    
    arg3[l_i] = l_inst;
    arg3[0] = l_i;
    return 0;
}

function compile_groups_gml_compile_group_literal_proc_lf1(arg0, arg1, arg2, arg3)
{
    var l_instStack = arg2[6];
    var l_inst = l_instStack[l_instStack[0] - 1];
    
    if (instanceof(l_inst) == "instance")
        l_inst = l_inst.id;
    
    var l_i = arg3[0] + 1;
    
    if (l_i >= array_length(arg3))
        arg3[array_length(arg3) * 2] = 0;
    
    arg3[l_i] = l_inst;
    arg3[0] = l_i;
    return 0;
}

function compile_groups_gml_compile_group_literal_proc(arg0, arg1, arg2)
{
    var l__g = arg0;
    
    switch (l__g.__enumIndex__)
    {
        case 0:
            if (arg2)
                ds_list_add(arg1, gml_action_undefined_hx(l__g.h_d));
            
            break;
        
        case 1:
            if (arg2)
                ds_list_add(arg1, gml_action_number(l__g.h_d, l__g.h_value));
            
            break;
        
        case 2:
            if (arg2)
                ds_list_add(arg1, gml_action_cstring(l__g.h_d, l__g.h_value));
            
            break;
        
        case 18:
            if (arg2)
                ds_list_add(arg1, gml_action_const(l__g.h_d, variable_struct_get(global.gml_const_val.h_obj, l__g.h_name)));
            
            break;
        
        case 3:
            if (arg2)
                ds_list_add(arg1, gml_action_const(l__g.h_d, l__g.h_value));
            
            break;
        
        case 13:
            var l_d = l__g.h_d;
            
            if (arg2)
            {
                if (l_d.h_src.h_version.h_int_self)
                    ds_list_add(arg1, vm_v2_gml_action_closure_bind(l_d, "self", {}, compile_groups_gml_compile_group_literal_proc_lf));
                else
                    ds_list_add(arg1, gml_action_self_hx(l_d));
            }
            
            break;
        
        case 14:
            var l_d = l__g.h_d;
            
            if (arg2)
            {
                if (l_d.h_src.h_version.h_int_self)
                    ds_list_add(arg1, vm_v2_gml_action_closure_bind(l_d, "other", {}, compile_groups_gml_compile_group_literal_proc_lf1));
                else
                    ds_list_add(arg1, gml_action_other_hx(l_d));
            }
            
            break;
        
        case 15:
            if (arg2)
                ds_list_add(arg1, gml_action_number(l__g.h_d, -5));
            
            break;
        
        case 16:
            ds_list_add(arg1, gml_action_func_literal(l__g.h_d, l__g.h_ref.h_name));
            break;
        
        case 17:
            ds_list_add(arg1, gml_action_const(l__g.h_d, l__g.h_id));
            break;
        
        case 5:
            var l_w = l__g.h_values;
            compile_gml_compile_args_proc(arg1, l_w);
            ds_list_add(arg1, gml_action_array_decl(l__g.h_d, array_length(l_w)));
            break;
        
        case 6:
            var l_w = l__g.h_values;
            var l_fields = [];
            var l_i = 0;
            var l__g2 = array_length(l_w);
            
            while (l_i < l__g2)
            {
                var l_x = l_w[l_i];
                
                if (gml_compile_node(l_w[l_i], arg1, true))
                    return true;
                
                var l__g3 = l_x;
                var l_bindFunc = l__g3.__enumIndex__ == 31;
                array_push(l_fields, 
                {
                    name: l__g.h_keys[l_i],
                    bindFunc: l_bindFunc
                });
                l_i++;
            }
            
            ds_list_add(arg1, gml_action_object_decl(l__g.h_d, l_fields));
            break;
        
        default:
            return undefined;
    }
    
    return false;
}

function compile_groups_gml_compile_group_literal_init()
{
    gml_compile_set_handlers(compile_groups_gml_compile_group_literal_proc, ["undefined", "number", "cstring", "const", "other_const", "self", "other", "global_ref", "script", "native_script", "array_decl", "object_decl"]);
}

function compile_gml_compile_args_get_simple(arg0)
{
    var l__g = arg0;
    
    switch (l__g.__enumIndex__)
    {
        case 52:
            if (l__g.h_obj.__enumIndex__ == 13)
            {
                var l__field = l__g.h_field;
                var l_fastGetter = variable_struct_get(global.api_api_fast_field_getters.h_obj, l__field);
                
                if (l_fastGetter != undefined)
                {
                    global.compile_gml_compile_args_get_simple_val = l_fastGetter;
                    global.compile_gml_compile_args_get_simple_kind = 3;
                }
                else
                {
                    global.compile_gml_compile_args_get_simple_val = l__field;
                    global.compile_gml_compile_args_get_simple_kind = 2;
                }
            }
            else if (gml_compile_const_val_of(arg0))
            {
                global.compile_gml_compile_args_get_simple_val = global.gml_compile_const_val_of_val;
                global.compile_gml_compile_args_get_simple_kind = 0;
            }
            else
            {
                return false;
            }
            
            break;
        
        case 42:
            global.compile_gml_compile_args_get_simple_val = variable_struct_get(global.gml_compile_curr_script.h_local_map.h_obj, l__g.h_name);
            global.compile_gml_compile_args_get_simple_kind = 1;
            break;
        
        default:
            if (gml_compile_const_val_of(arg0))
            {
                global.compile_gml_compile_args_get_simple_val = global.gml_compile_const_val_of_val;
                global.compile_gml_compile_args_get_simple_kind = 0;
                break;
            }
            
            return false;
    }
    
    return true;
}

function compile_gml_compile_args_proc_lf(arg0, arg1, arg2, arg3)
{
    var l_arr = values;
    var l_count = count;
    var l_i = arg3[0];
    var l_next = l_i + l_count;
    
    while (l_next >= array_length(arg3))
        arg3[array_length(arg3) * 2] = 0;
    
    array_copy(arg3, l_i + 1, l_arr, 0, l_count);
    arg3[0] = l_next;
    return 0;
}

function compile_gml_compile_args_proc_lf1(arg0, arg1, arg2, arg3)
{
    var l_params = params;
    var l_kinds = kinds;
    var l_locals = arg2[4];
    var l_self1;
    
    if (usesSelf)
    {
        var l_this1 = arg2[6];
        l_self1 = l_this1[l_this1[0]];
    }
    else
    {
        l_self1 = undefined;
    }
    
    var l_count = count;
    var l_i = arg3[0];
    var l_next = l_i + l_count;
    
    while (l_next >= array_length(arg3))
        arg3[array_length(arg3) * 2] = 0;
    
    arg3[0] = l_next;
    var l_k = 0;
    var l__ = 0;
    var l__g1 = l_count;
    
    while (l__ < l__g1)
    {
        l_i++;
        var l_v;
        
        switch (l_kinds[l_k])
        {
            case 1:
                l_v = l_locals[l_params[l_k]];
                break;
            
            case 0:
                l_v = l_params[l_k];
                break;
            
            case 3:
                l_v = l_params[l_k](l_self1);
                break;
            
            case 2:
                var l_field = l_params[l_k];
                var l_val = variable_struct_get(l_self1, l_field);
                
                if (l_val == undefined)
                {
                    if (!variable_struct_exists(l_self1, l_field))
                    {
                        if (is_numeric(l_self1))
                        {
                            if (object_exists(l_self1))
                                gml_thread_error(gml_std_Std_stringify(l_self1) + " (" + object_get_name(l_self1) + ") does not have a variable `" + l_field + "`.");
                            else if (instance_exists(l_self1))
                                gml_thread_error(gml_std_Std_stringify(l_self1) + " (" + object_get_name(l_self1.object_index) + ") does not have a variable `" + l_field + "`.");
                            else
                                gml_thread_error(gml_value_dump(l_self1) + " does not have a variable `" + l_field + "`.");
                        }
                        else if (typeof(l_self1) == "ref")
                        {
                            if (instance_exists(l_self1))
                                gml_thread_error(gml_std_Std_stringify(l_self1) + " (" + object_get_name(l_self1.object_index) + ") does not have a variable `" + l_field + "`.");
                            else
                                gml_thread_error(gml_value_dump(l_self1) + " does not have a variable `" + l_field + "`.");
                        }
                        else
                        {
                            gml_thread_error(gml_value_dump(l_self1) + " does not have a variable `" + l_field + "`.");
                        }
                    }
                }
                
                l_v = l_val;
                break;
        }
        
        arg3[l_i] = l_v;
        l_k++;
        l__++;
    }
    
    return 0;
}

function compile_gml_compile_args_proc(arg0, arg1, arg2 = 0, arg3 = array_length(arg1))
{
    var l_i = arg2;
    
    while (l_i < arg3)
    {
        var l_q = arg1[l_i];
        
        if (!compile_gml_compile_args_get_simple(l_q))
        {
            if (gml_compile_node(l_q, arg0, true))
                return true;
            
            l_i++;
            continue;
        }
        
        var l_kind = global.compile_gml_compile_args_get_simple_kind;
        var l_count = 1;
        var l_kinds = [l_kind];
        var l_params = [global.compile_gml_compile_args_get_simple_val];
        var l_allConsts = l_kind == 0;
        var l_usesLocals = l_kind == 1;
        var l_usesSelf = l_kind == 2 || l_kind == 3;
        
        while ((l_i + l_count) < arg3)
        {
            if (!compile_gml_compile_args_get_simple(arg1[l_i + l_count]))
                break;
            
            l_kind = global.compile_gml_compile_args_get_simple_kind;
            array_push(l_params, global.compile_gml_compile_args_get_simple_val);
            array_push(l_kinds, l_kind);
            
            if (l_kind != 0)
            {
                l_allConsts = false;
                
                switch (l_kind)
                {
                    case 1:
                        l_usesLocals = true;
                        break;
                    
                    case 2:
                    case 3:
                        l_usesSelf = true;
                        break;
                }
            }
            
            l_count++;
        }
        
        var l_d = gml_std_haxe_enum_tools_getParameter(l_q, 0);
        
        if (l_count == 1)
        {
            if (gml_compile_node(l_q, arg0, true))
                return true;
        }
        else if (l_allConsts)
        {
            ds_list_add(arg0, vm_v2_gml_action_closure_bind(l_d, "...push(consts)", 
            {
                values: l_params,
                count: l_count
            }, compile_gml_compile_args_proc_lf));
        }
        else
        {
            ds_list_add(arg0, vm_v2_gml_action_closure_bind(l_d, "...push(simple)", 
            {
                params: l_params,
                kinds: l_kinds,
                count: l_count,
                usesLocals: l_usesLocals,
                usesSelf: l_usesSelf
            }, compile_gml_compile_args_proc_lf1));
        }
        
        l_i += l_count;
    }
    
    return false;
}

function gml_fast_field_add(arg0, arg1, arg2)
{
    variable_struct_set(global.api_api_fast_field_getters.h_obj, arg0, arg1);
    variable_struct_set(global.api_api_fast_field_setters.h_obj, arg0, arg2);
}

function gml_add_sig(arg0)
{
}

function gml_remove_sig(arg0)
{
}

function gml_parse_name(arg0, arg1)
{
    var l_c = string_ord_at(arg0, arg1 + 1);
    
    if ((l_c >= 97 && l_c <= 122) || (l_c >= 65 && l_c <= 90) || l_c == 95)
    {
        var l_k = arg1;
        
        while (true)
        {
            arg1++;
            l_c = string_ord_at(arg0, arg1 + 1);
            
            if (!(l_c == 95 || (l_c >= 97 && l_c <= 122) || (l_c >= 65 && l_c <= 90) || (l_c >= 48 && l_c <= 57)))
                break;
        }
        
        return gml_std_string_substring(arg0, l_k, arg1);
    }
    else
    {
        show_error("API.parseName: wrong format in " + arg0, true);
    }
}

function gml_func_add(arg0, arg1)
{
    var l_f = new gml_func();
    l_f.h_set(arg0, arg1);
    variable_struct_set(global.gml_func_map.h_obj, l_f.h_name, l_f);
}

function gml_func_copy(arg0, arg1, arg2)
{
    var l_f0 = variable_struct_get(global.gml_func_map.h_obj, arg1);
    
    if (l_f0 == undefined)
        show_error("Can't find " + arg1 + " to add an alias for.", true);
    
    variable_struct_set(global.gml_func_map.h_obj, arg0, l_f0.h_copy(arg0));
    var l_tmp = arg2 != undefined && arg2 != "";
}

function gml_remove_func(arg0)
{
    if (variable_struct_get(global.gml_func_map.h_obj, arg0) == undefined)
    {
        return false;
    }
    else
    {
        haxe__dynamic_access_dynamic_access_impl__remove(global.gml_func_map.h_obj, arg0);
        return true;
    }
}

function gml_var_add(arg0, arg1)
{
    var l_v = new api_api_var();
    l_v.h_set(arg0, arg1);
    variable_struct_set(global.api_api_var_map.h_obj, l_v.h_name, l_v);
}

function gml_remove_var(arg0)
{
    if (variable_struct_get(global.api_api_var_map.h_obj, arg0) == undefined)
    {
        return false;
    }
    else
    {
        haxe__dynamic_access_dynamic_access_impl__remove(global.api_api_var_map.h_obj, arg0);
        return true;
    }
}

function gml_const_add(arg0, arg1)
{
    var l_s = arg0 + " = " + gml_value_print(arg1);
    variable_struct_set(global.gml_const_map.h_obj, arg0, true);
    variable_struct_set(global.gml_const_val.h_obj, arg0, arg1);
}

function gml_remove_const(arg0)
{
    if (variable_struct_exists(global.gml_const_map.h_obj, arg0))
    {
        haxe__dynamic_access_dynamic_access_impl__remove(global.gml_const_map.h_obj, arg0);
        haxe__dynamic_access_dynamic_access_impl__remove(global.gml_const_val.h_obj, arg0);
        return true;
    }
    else
    {
        return false;
    }
}

function gml_asset_add(arg0, arg1)
{
    variable_struct_set(global.gml_asset_index.h_obj, arg0, arg1);
}

function compile_gml_compile_call_func_proc_lf(arg0, arg1, arg2, arg3)
{
    var l_argc = argc;
    var l_i = arg3[0] - l_argc;
    arg3[0] = l_i;
    arg0.h_result = undefined;
    var l_pr = self.func(arg0, arg2, arg3, l_i + 1, l_argc);
    
    if (l_pr != 3)
    {
        arg2[2] += 1;
        l_i = arg3[0] + 1;
        
        if (l_i >= array_length(arg3))
            arg3[array_length(arg3) * 2] = 0;
        
        arg3[l_i] = arg0.h_result;
        arg3[0] = l_i;
    }
    
    return l_pr;
}

function compile_gml_compile_call_func_proc_lf1(arg0, arg1, arg2, arg3)
{
    var l_argc = argc;
    var l_i = arg3[0] - l_argc;
    arg3[0] = l_i;
    return self.func(arg0, arg2, arg3, l_i + 1, l_argc);
}

function compile_gml_compile_call_func_proc(arg0, arg1, arg2, arg3, arg4)
{
    var l_fname = arg2.h_name;
    var l_argc = array_length(arg3);
    var l_func = arg2.h_func;
    var l_funcFlags = arg2.h_call_type;
    
    if (l_funcFlags == undefined)
        l_funcFlags = 0;
    
    if (l_func == -1)
        return gml_compile_error("Function `" + l_fname + "` is pointing at an invalid script.", arg1);
    
    var l_startArg = 0;
    var l_firstArgVar = -1;
    
    if (l_funcFlags == 0 && l_argc > 0 && l_argc <= 5)
    {
        var l__g = arg3[0];
        
        if (l__g.__enumIndex__ == 42)
        {
            l_firstArgVar = variable_struct_get(global.gml_compile_curr_script.h_local_map.h_obj, l__g.h_name);
            l_startArg++;
        }
    }
    
    compile_gml_compile_args_proc(arg0, arg3, l_startArg);
    
    if (l_funcFlags == -5)
    {
        ds_list_add(arg0, gml_action_call_func(arg1, l_func, l_argc, arg2.h_arg_type_checks, arg2.h_rest_type_check, l_funcFlags, false));
        
        if (arg4)
            ds_list_add(arg0, gml_action_result(arg1));
        
        return false;
    }
    
    if (l_funcFlags == -7)
    {
        if (arg4)
        {
            ds_list_add(arg0, vm_v2_gml_action_closure_bind(arg1, "action call", 
            {
                func: l_func,
                argc: l_argc
            }, compile_gml_compile_call_func_proc_lf));
            ds_list_add(arg0, gml_action_result(arg1));
        }
        else
        {
            ds_list_add(arg0, vm_v2_gml_action_closure_bind(arg1, "action call", 
            {
                func: l_func,
                argc: l_argc
            }, compile_gml_compile_call_func_proc_lf1));
        }
        
        return false;
    }
    
    if (l_firstArgVar >= 0)
    {
        switch (l_argc)
        {
            case 1:
                if (arg4)
                {
                    ds_list_add(arg0, gml_action_call_func_with_local0o(arg1, l_func, l_firstArgVar));
                    return false;
                }
                else
                {
                    ds_list_add(arg0, gml_action_call_func_with_local0(arg1, l_func, l_firstArgVar));
                    return false;
                }
            
            case 2:
                if (arg4)
                {
                    ds_list_add(arg0, gml_action_call_func_with_local1o(arg1, l_func, l_firstArgVar));
                    return false;
                }
                else
                {
                    ds_list_add(arg0, gml_action_call_func_with_local1(arg1, l_func, l_firstArgVar));
                    return false;
                }
            
            case 3:
                if (arg4)
                {
                    ds_list_add(arg0, gml_action_call_func_with_local2o(arg1, l_func, l_firstArgVar));
                    return false;
                }
                else
                {
                    ds_list_add(arg0, gml_action_call_func_with_local2(arg1, l_func, l_firstArgVar));
                    return false;
                }
            
            case 4:
                if (arg4)
                {
                    ds_list_add(arg0, gml_action_call_func_with_local3o(arg1, l_func, l_firstArgVar));
                    return false;
                }
                else
                {
                    ds_list_add(arg0, gml_action_call_func_with_local3(arg1, l_func, l_firstArgVar));
                    return false;
                }
            
            case 5:
                if (arg4)
                {
                    ds_list_add(arg0, gml_action_call_func_with_local4o(arg1, l_func, l_firstArgVar));
                    return false;
                    break;
                }
                
                ds_list_add(arg0, gml_action_call_func_with_local4(arg1, l_func, l_firstArgVar));
                return false;
        }
    }
    
    if (l_funcFlags == 0 && l_argc <= 4)
    {
        switch (l_argc)
        {
            case 0:
                if (arg4)
                {
                    ds_list_add(arg0, gml_action_call_func0o(arg1, l_func));
                    return false;
                }
                else
                {
                    ds_list_add(arg0, gml_action_call_func0(arg1, l_func));
                    return false;
                }
            
            case 1:
                if (arg4)
                {
                    ds_list_add(arg0, gml_action_call_func1o(arg1, l_func));
                    return false;
                }
                else
                {
                    ds_list_add(arg0, gml_action_call_func1(arg1, l_func));
                    return false;
                }
            
            case 2:
                if (arg4)
                {
                    ds_list_add(arg0, gml_action_call_func2o(arg1, l_func));
                    return false;
                }
                else
                {
                    ds_list_add(arg0, gml_action_call_func2(arg1, l_func));
                    return false;
                }
            
            case 3:
                if (arg4)
                {
                    ds_list_add(arg0, gml_action_call_func3o(arg1, l_func));
                    return false;
                }
                else
                {
                    ds_list_add(arg0, gml_action_call_func3(arg1, l_func));
                    return false;
                }
            
            case 4:
                if (arg4)
                {
                    ds_list_add(arg0, gml_action_call_func4o(arg1, l_func));
                    return false;
                    break;
                }
                
                ds_list_add(arg0, gml_action_call_func4(arg1, l_func));
                return false;
        }
    }
    
    ds_list_add(arg0, gml_action_call_func(arg1, l_func, l_argc, arg2.h_arg_type_checks, arg2.h_rest_type_check, l_funcFlags, arg4));
    return false;
}

function vm_v2_gml_action_closure_bind(arg0, arg1, arg2, arg3)
{
    return gml_action_closure(arg0, arg1, arg2, method(arg2, arg3));
}

function compile_gml_compile_adjfix_proc_lf(arg0, arg1, arg2, arg3)
{
    var l_locals = arg2[4];
    var l_tmp = ind;
    var l_v = l_locals[l_tmp] + 1;
    l_locals[l_tmp] = l_v;
    var l_i = arg3[0] + 1;
    
    if (l_i >= array_length(arg3))
        arg3[array_length(arg3) * 2] = 0;
    
    arg3[l_i] = l_v;
    arg3[0] = l_i;
    return 0;
}

function compile_gml_compile_adjfix_proc_lf1(arg0, arg1, arg2, arg3)
{
    var l_locals = arg2[4];
    var l_tmp = ind;
    var l_v = l_locals[l_tmp] - 1;
    l_locals[l_tmp] = l_v;
    var l_i = arg3[0] + 1;
    
    if (l_i >= array_length(arg3))
        arg3[array_length(arg3) * 2] = 0;
    
    arg3[l_i] = l_v;
    arg3[0] = l_i;
    return 0;
}

function compile_gml_compile_adjfix_proc_lf2(arg0, arg1, arg2, arg3)
{
    var l_locals = arg2[4];
    var l_tmp = ind;
    var l_tmp1 = l_locals[l_tmp];
    l_locals[l_tmp] = l_tmp1 + 1;
    var l_i = arg3[0] + 1;
    
    if (l_i >= array_length(arg3))
        arg3[array_length(arg3) * 2] = 0;
    
    arg3[l_i] = l_tmp1;
    arg3[0] = l_i;
    return 0;
}

function compile_gml_compile_adjfix_proc_lf3(arg0, arg1, arg2, arg3)
{
    var l_locals = arg2[4];
    var l_tmp = ind;
    var l_tmp1 = l_locals[l_tmp];
    l_locals[l_tmp] = l_tmp1 - 1;
    var l_i = arg3[0] + 1;
    
    if (l_i >= array_length(arg3))
        arg3[array_length(arg3) * 2] = 0;
    
    arg3[l_i] = l_tmp1;
    arg3[0] = l_i;
    return 0;
}

function compile_gml_compile_adjfix_proc_lf4(arg0, arg1, arg2, arg3)
{
    var l_v = ++self.values[ind];
    var l_i = arg3[0] + 1;
    
    if (l_i >= array_length(arg3))
        arg3[array_length(arg3) * 2] = 0;
    
    arg3[l_i] = l_v;
    arg3[0] = l_i;
    return 0;
}

function compile_gml_compile_adjfix_proc_lf5(arg0, arg1, arg2, arg3)
{
    var l_v = --self.values[ind];
    var l_i = arg3[0] + 1;
    
    if (l_i >= array_length(arg3))
        arg3[array_length(arg3) * 2] = 0;
    
    arg3[l_i] = l_v;
    arg3[0] = l_i;
    return 0;
}

function compile_gml_compile_adjfix_proc_lf6(arg0, arg1, arg2, arg3)
{
    var l_v = self.values[ind]++;
    var l_i = arg3[0] + 1;
    
    if (l_i >= array_length(arg3))
        arg3[array_length(arg3) * 2] = 0;
    
    arg3[l_i] = l_v;
    arg3[0] = l_i;
    return 0;
}

function compile_gml_compile_adjfix_proc_lf7(arg0, arg1, arg2, arg3)
{
    var l_v = self.values[ind]--;
    var l_i = arg3[0] + 1;
    
    if (l_i >= array_length(arg3))
        arg3[array_length(arg3) * 2] = 0;
    
    arg3[l_i] = l_v;
    arg3[0] = l_i;
    return 0;
}

function compile_gml_compile_adjfix_proc(arg0, arg1, arg2, arg3, arg4, arg5)
{
    var l_diff = arg3 ? 1 : -1;
    var l__g = arg1;
    
    switch (l__g.__enumIndex__)
    {
        case 42:
            var l_localInd = variable_struct_get(global.gml_compile_curr_script.h_local_map.h_obj, l__g.h_name);
            
            if (arg2)
            {
                if (arg3)
                {
                    ds_list_add(arg4, vm_v2_gml_action_closure_bind(arg0, "push(++local)", 
                    {
                        ind: l_localInd
                    }, compile_gml_compile_adjfix_proc_lf));
                    return false;
                }
                else
                {
                    ds_list_add(arg4, vm_v2_gml_action_closure_bind(arg0, "push(--local)", 
                    {
                        ind: l_localInd
                    }, compile_gml_compile_adjfix_proc_lf1));
                    return false;
                }
            }
            else if (arg3)
            {
                ds_list_add(arg4, vm_v2_gml_action_closure_bind(arg0, "push(local++)", 
                {
                    ind: l_localInd
                }, compile_gml_compile_adjfix_proc_lf2));
                return false;
            }
            else
            {
                ds_list_add(arg4, vm_v2_gml_action_closure_bind(arg0, "push(local--)", 
                {
                    ind: l_localInd
                }, compile_gml_compile_adjfix_proc_lf3));
                return false;
            }
        
        case 46:
            var l_s = l__g.h_name;
            
            if (global.gml_compile_curr_script.h_is_constructor)
                return compile_groups_gml_compile_group_local_no_static_writes(arg0);
            
            var l_ctx = 
            {
                ind: variable_struct_get(global.gml_compile_curr_script.h_static_map.h_obj, l_s),
                name: l_s,
                values: global.gml_compile_curr_script.h_static_values
            };
            
            if (arg2)
            {
                if (arg3)
                    ds_list_add(arg4, vm_v2_gml_action_closure_bind(arg0, "push(++static)", l_ctx, compile_gml_compile_adjfix_proc_lf4));
                else
                    ds_list_add(arg4, vm_v2_gml_action_closure_bind(arg0, "push(--static)", l_ctx, compile_gml_compile_adjfix_proc_lf5));
            }
            else if (arg3)
            {
                ds_list_add(arg4, vm_v2_gml_action_closure_bind(arg0, "push(static++)", l_ctx, compile_gml_compile_adjfix_proc_lf6));
            }
            else
            {
                ds_list_add(arg4, vm_v2_gml_action_closure_bind(arg0, "push(static--)", l_ctx, compile_gml_compile_adjfix_proc_lf7));
            }
            
            break;
        
        case 49:
            var l_s = l__g.h_name;
            ds_list_add(arg4, gml_action_global_hx(arg0, l_s));
            
            if (arg2)
                ds_list_add(arg4, gml_action_add_int(arg0, l_diff));
            
            if (arg5)
                ds_list_add(arg4, gml_action_dup(arg0));
            
            if (!arg2)
                ds_list_add(arg4, gml_action_add_int(arg0, l_diff));
            
            ds_list_add(arg4, gml_action_global_set(arg0, l_s));
            break;
        
        case 52:
            var l_obj = l__g.h_obj;
            var l_field = l__g.h_field;
            
            if (gml_compile_node(l_obj, arg4, true))
                return true;
            
            var l_fastGetter = variable_struct_get(global.api_api_fast_field_getters.h_obj, l_field);
            var l_fastSetter = variable_struct_get(global.api_api_fast_field_setters.h_obj, l_field);
            
            if (l_fastGetter != undefined && l_fastSetter != undefined)
            {
                ds_list_add(arg4, gml_action_dup(arg0));
                ds_list_add(arg4, gml_action_call_func1o(arg0, l_fastGetter));
                
                if (arg2)
                    ds_list_add(arg4, gml_action_add_int(arg0, l_diff));
                
                if (arg5)
                    ds_list_add(arg4, gml_action_dup_in(arg0, 2));
                
                if (!arg2)
                    ds_list_add(arg4, gml_action_add_int(arg0, l_diff));
                
                ds_list_add(arg4, gml_action_call_func2(arg0, l_fastSetter));
            }
            else
            {
                ds_list_add(arg4, gml_action_dup(arg0));
                ds_list_add(arg4, gml_action_field(arg0, l_field));
                
                if (arg2)
                    ds_list_add(arg4, gml_action_add_int(arg0, l_diff));
                
                if (arg5)
                    ds_list_add(arg4, gml_action_dup_in(arg0, 2));
                
                if (!arg2)
                    ds_list_add(arg4, gml_action_add_int(arg0, l_diff));
                
                ds_list_add(arg4, gml_action_field_set(arg0, l_field));
            }
            
            break;
        
        case 67:
            if (compile_gml_compile_args_proc(arg4, [l__g.h_arr, l__g.h_index]))
                return true;
            
            ds_list_add(arg4, gml_action_dup2x(arg0));
            ds_list_add(arg4, gml_action_index(arg0));
            
            if (arg2)
                ds_list_add(arg4, gml_action_add_int(arg0, l_diff));
            
            if (arg5)
                ds_list_add(arg4, gml_action_dup_in(arg0, 3));
            
            if (!arg2)
                ds_list_add(arg4, gml_action_add_int(arg0, l_diff));
            
            ds_list_add(arg4, gml_action_index_set(arg0));
            break;
        
        case 73:
            if (compile_gml_compile_args_proc(arg4, [l__g.h_arr, l__g.h_index]))
                return true;
            
            ds_list_add(arg4, gml_action_dup2x(arg0));
            ds_list_add(arg4, gml_action_index(arg0));
            
            if (arg2)
                ds_list_add(arg4, gml_action_add_int(arg0, l_diff));
            
            if (arg5)
                ds_list_add(arg4, gml_action_dup_in(arg0, 3));
            
            if (!arg2)
                ds_list_add(arg4, gml_action_add_int(arg0, l_diff));
            
            ds_list_add(arg4, gml_action_index_set(arg0));
            break;
        
        case 70:
            if (compile_gml_compile_args_proc(arg4, [l__g.h_arr, l__g.h_index1, l__g.h_index2]))
                return true;
            
            ds_list_add(arg4, gml_action_dup3x(arg0));
            ds_list_add(arg4, gml_action_index2d(arg0));
            
            if (arg2)
                ds_list_add(arg4, gml_action_add_int(arg0, l_diff));
            
            if (arg5)
                ds_list_add(arg4, gml_action_dup_in(arg0, 4));
            
            if (!arg2)
                ds_list_add(arg4, gml_action_add_int(arg0, l_diff));
            
            ds_list_add(arg4, gml_action_index2d_set(arg0));
            break;
        
        case 76:
            if (compile_gml_compile_args_proc(arg4, [l__g.h_arr, l__g.h_index1, l__g.h_index2]))
                return true;
            
            ds_list_add(arg4, gml_action_dup3x(arg0));
            ds_list_add(arg4, gml_action_index2d(arg0));
            
            if (arg2)
                ds_list_add(arg4, gml_action_add_int(arg0, l_diff));
            
            if (arg5)
                ds_list_add(arg4, gml_action_dup_in(arg0, 4));
            
            if (!arg2)
                ds_list_add(arg4, gml_action_add_int(arg0, l_diff));
            
            ds_list_add(arg4, gml_action_index2d_set(arg0));
            break;
        
        case 88:
            if (compile_gml_compile_args_proc(arg4, [l__g.h_obj, l__g.h_key]))
                return true;
            
            var l_fget = variable_struct_get(global.gml_func_map.h_obj, "variable_struct_get");
            var l_fset = variable_struct_get(global.gml_func_map.h_obj, "variable_struct_set");
            
            if (l_fget != undefined && l_fset != undefined)
            {
                ds_list_add(arg4, gml_action_dup2x(arg0));
                ds_list_add(arg4, gml_action_call_func(arg0, l_fget.h_func, 2, l_fget.h_arg_type_checks, l_fget.h_rest_type_check, 0, true));
                
                if (arg2)
                    ds_list_add(arg4, gml_action_add_int(arg0, l_diff));
                
                if (arg5)
                    ds_list_add(arg4, gml_action_dup_in(arg0, 3));
                
                if (!arg2)
                    ds_list_add(arg4, gml_action_add_int(arg0, l_diff));
                
                ds_list_add(arg4, gml_action_call_func(arg0, l_fset.h_func, 3, l_fset.h_arg_type_checks, l_fset.h_rest_type_check, 0, false));
                return false;
            }
            else
            {
                return gml_compile_error("Operation not supported - requires variable_struct_get and variable_struct_set functions.", arg0);
            }
        
        case 79:
            if (compile_gml_compile_args_proc(arg4, [l__g.h_list, l__g.h_index]))
                return true;
            
            l_fget = variable_struct_get(global.gml_func_map.h_obj, "ds_list_find_value");
            l_fset = variable_struct_get(global.gml_func_map.h_obj, "ds_list_set");
            
            if (l_fget != undefined && l_fset != undefined)
            {
                ds_list_add(arg4, gml_action_dup2x(arg0));
                ds_list_add(arg4, gml_action_call_func(arg0, l_fget.h_func, 2, l_fget.h_arg_type_checks, l_fget.h_rest_type_check, 0, true));
                
                if (arg2)
                    ds_list_add(arg4, gml_action_add_int(arg0, l_diff));
                
                if (arg5)
                    ds_list_add(arg4, gml_action_dup_in(arg0, 3));
                
                if (!arg2)
                    ds_list_add(arg4, gml_action_add_int(arg0, l_diff));
                
                ds_list_add(arg4, gml_action_call_func(arg0, l_fset.h_func, 3, l_fset.h_arg_type_checks, l_fset.h_rest_type_check, 0, false));
                return false;
            }
            else
            {
                return gml_compile_error("Operation not supported - requires ds_list_find_value and ds_list_set functions.", arg0);
            }
        
        case 82:
            if (compile_gml_compile_args_proc(arg4, [l__g.h_map, l__g.h_key]))
                return true;
            
            l_fget = variable_struct_get(global.gml_func_map.h_obj, "ds_map_find_value");
            l_fset = variable_struct_get(global.gml_func_map.h_obj, "ds_map_set");
            
            if (l_fget != undefined && l_fset != undefined)
            {
                ds_list_add(arg4, gml_action_dup2x(arg0));
                ds_list_add(arg4, gml_action_call_func(arg0, l_fget.h_func, 2, l_fget.h_arg_type_checks, l_fget.h_rest_type_check, 0, true));
                
                if (arg2)
                    ds_list_add(arg4, gml_action_add_int(arg0, l_diff));
                
                if (arg5)
                    ds_list_add(arg4, gml_action_dup_in(arg0, 3));
                
                if (!arg2)
                    ds_list_add(arg4, gml_action_add_int(arg0, l_diff));
                
                ds_list_add(arg4, gml_action_call_func(arg0, l_fset.h_func, 3, l_fset.h_arg_type_checks, l_fset.h_rest_type_check, 0, false));
                return false;
            }
            else
            {
                return gml_compile_error("Operation not supported - requires ds_map_find_value and ds_map_set functions.", arg0);
            }
        
        case 85:
            if (compile_gml_compile_args_proc(arg4, [l__g.h_grid, l__g.h_index1, l__g.h_index2]))
                return true;
            
            l_fget = variable_struct_get(global.gml_func_map.h_obj, "ds_grid_get");
            l_fset = variable_struct_get(global.gml_func_map.h_obj, "ds_grid_set");
            
            if (l_fget != undefined && l_fset != undefined)
            {
                ds_list_add(arg4, gml_action_dup3x(arg0));
                ds_list_add(arg4, gml_action_call_func(arg0, l_fget.h_func, 3, l_fget.h_arg_type_checks, l_fget.h_rest_type_check, 0, true));
                
                if (arg2)
                    ds_list_add(arg4, gml_action_add_int(arg0, l_diff));
                
                if (arg5)
                    ds_list_add(arg4, gml_action_dup_in(arg0, 4));
                
                if (!arg2)
                    ds_list_add(arg4, gml_action_add_int(arg0, l_diff));
                
                ds_list_add(arg4, gml_action_call_func(arg0, l_fset.h_func, 4, l_fset.h_arg_type_checks, l_fset.h_rest_type_check, 0, false));
                return false;
            }
            else
            {
                return gml_compile_error("Operation not supported - requires ds_grid_get and ds_grid_set functions.", arg0);
            }
        
        default:
            return gml_compile_error("Can't apply " + (arg2 ? "prefix" : "postfix") + (arg3 ? "++" : "--") + " to " + gml_std_Type_enumConstructor(arg1), arg0);
    }
    
    return false;
}

function compile_groups_gml_compile_group_local_no_static_writes(arg0)
{
    return gml_compile_error("Cannot modify static variables in a constructor", arg0);
}

function compile_groups_gml_compile_group_local_proc_lf(arg0, arg1, arg2, arg3)
{
    arg2[4][ind] = val;
    return 0;
}

function compile_groups_gml_compile_group_local_proc_lf1(arg0, arg1, arg2, arg3)
{
    arg2[4][ind] = val;
    return 0;
}

function compile_groups_gml_compile_group_local_proc_lf2(arg0, arg1, arg2, arg3)
{
    arg2[4][ind] /= num;
    return 0;
}

function compile_groups_gml_compile_group_local_proc_lf3(arg0, arg1, arg2, arg3)
{
    var l_this1 = arg2[4];
    l_this1[ind] = arg2[4][ind] div num;
    return 0;
}

function compile_groups_gml_compile_group_local_proc_lf4(arg0, arg1, arg2, arg3)
{
    arg2[4][ind] -= num;
    return 0;
}

function compile_groups_gml_compile_group_local_proc_lf5(arg0, arg1, arg2, arg3)
{
    arg2[4][ind] = arg2[4][ind] << num;
    return 0;
}

function compile_groups_gml_compile_group_local_proc_lf6(arg0, arg1, arg2, arg3)
{
    arg2[4][ind] = arg2[4][ind] >> num;
    return 0;
}

function compile_groups_gml_compile_group_local_proc_lf7(arg0, arg1, arg2, arg3)
{
    arg2[4][ind] |= num;
    return 0;
}

function compile_groups_gml_compile_group_local_proc_lf8(arg0, arg1, arg2, arg3)
{
    arg2[4][ind] &= num;
    return 0;
}

function compile_groups_gml_compile_group_local_proc_lf9(arg0, arg1, arg2, arg3)
{
    arg2[4][ind] ^= num;
    return 0;
}

function compile_groups_gml_compile_group_local_proc_lf10(arg0, arg1, arg2, arg3)
{
    arg2[4][ind] = arg2[4][ind] == num;
    return 0;
}

function compile_groups_gml_compile_group_local_proc_lf11(arg0, arg1, arg2, arg3)
{
    arg2[4][ind] = arg2[4][ind] != num;
    return 0;
}

function compile_groups_gml_compile_group_local_proc_lf12(arg0, arg1, arg2, arg3)
{
    arg2[4][ind] = arg2[4][ind] <= num;
    return 0;
}

function compile_groups_gml_compile_group_local_proc_lf13(arg0, arg1, arg2, arg3)
{
    arg2[4][ind] = arg2[4][ind] > num;
    return 0;
}

function compile_groups_gml_compile_group_local_proc_lf14(arg0, arg1, arg2, arg3)
{
    arg2[4][ind] = arg2[4][ind] >= num;
    return 0;
}

function compile_groups_gml_compile_group_local_proc_lf15(arg0, arg1, arg2, arg3)
{
    arg2[4][ind] = arg2[4][ind] < num;
    return 0;
}

function compile_groups_gml_compile_group_local_proc_lf16(arg0, arg1, arg2, arg3)
{
    arg2[4][ind] += num;
    return 0;
}

function compile_groups_gml_compile_group_local_proc_lf17(arg0, arg1, arg2, arg3)
{
    arg2[4][ind] /= num;
    return 0;
}

function compile_groups_gml_compile_group_local_proc_lf18(arg0, arg1, arg2, arg3)
{
    arg2[4][ind] *= num;
    return 0;
}

function compile_groups_gml_compile_group_local_proc_lf19(arg0, arg1, arg2, arg3)
{
    var l_ind = ind;
    var l_i = arg3[0];
    var l_r = arg3[l_i];
    arg3[l_i] = 0;
    arg3[0] = l_i - 1;
    self.values[l_ind] = l_r;
    self.ready[l_ind] = true;
    return 0;
}

function compile_groups_gml_compile_group_local_proc_lf20(arg0, arg1, arg2, arg3)
{
    if (self.ready[ind])
    {
        arg2[2] = dest;
        return 2;
    }
    else
    {
        return 0;
    }
}

function compile_groups_gml_compile_group_local_proc_lf21(arg0, arg1, arg2, arg3)
{
    var l_this1 = arg2[6];
    variable_struct_set(array_get(l_this1, l_this1[0]), name, self.values[ind]);
    return 0;
}

function compile_groups_gml_compile_group_local_proc_lf22(arg0, arg1, arg2, arg3)
{
    var l_v = self.values[ind];
    var l_i = arg3[0] + 1;
    
    if (l_i >= array_length(arg3))
        arg3[array_length(arg3) * 2] = 0;
    
    arg3[l_i] = l_v;
    arg3[0] = l_i;
    return 0;
}

function compile_groups_gml_compile_group_local_proc_lf23(arg0, arg1, arg2, arg3)
{
    var l_i = arg3[0];
    var l_r = arg3[l_i];
    arg3[l_i] = 0;
    arg3[0] = l_i - 1;
    self.values[ind] = l_r;
    return 0;
}

function compile_groups_gml_compile_group_local_proc_lf24(arg0, arg1, arg2, arg3)
{
    var l_v = values;
    l_v[ind] = self.op(self.values[ind], gml_stack_pop(arg3));
    return 0;
}

function compile_groups_gml_compile_group_local_proc(arg0, arg1, arg2)
{
    var l__g = arg0;
    
    switch (l__g.__enumIndex__)
    {
        case 91:
            var l_d = l__g.h_d;
            var l_s = l__g.h_name;
            var l_x = l__g.h_val;
            
            if (l_x != undefined)
            {
                var l_i = variable_struct_get(global.gml_compile_curr_script.h_local_map.h_obj, l_s);
                
                if (gml_compile_const_val_of(l_x))
                {
                    ds_list_add(arg1, vm_v2_gml_action_closure_bind(l_d, "local = const", 
                    {
                        ind: l_i,
                        name: l_s,
                        val: global.gml_compile_const_val_of_val
                    }, compile_groups_gml_compile_group_local_proc_lf));
                    return false;
                }
                
                if (gml_compile_node(l_x, arg1, true))
                    return true;
                
                ds_list_add(arg1, gml_action_local_set(l_d, l_i, l_s));
            }
            
            break;
        
        case 42:
            var l_s = l__g.h_name;
            ds_list_add(arg1, gml_action_local_hx(l__g.h_d, variable_struct_get(global.gml_compile_curr_script.h_local_map.h_obj, l_s), l_s));
            break;
        
        case 43:
            var l_d = l__g.h_d;
            var l_s = l__g.h_name;
            var l_x = l__g.h_val;
            var l_i = variable_struct_get(global.gml_compile_curr_script.h_local_map.h_obj, l_s);
            
            if (gml_compile_const_val_of(l_x))
            {
                ds_list_add(arg1, vm_v2_gml_action_closure_bind(l_d, "local = const", 
                {
                    ind: l_i,
                    name: l_s,
                    val: global.gml_compile_const_val_of_val
                }, compile_groups_gml_compile_group_local_proc_lf1));
                return false;
            }
            
            if (gml_compile_node(l_x, arg1, true))
                return true;
            
            ds_list_add(arg1, gml_action_local_set(l_d, l_i, l_s));
            break;
        
        case 44:
            var l_d = l__g.h_d;
            var l_s = l__g.h_name;
            var l_o = l__g.h_op;
            var l_x = l__g.h_val;
            var l_i = variable_struct_get(global.gml_compile_curr_script.h_local_map.h_obj, l_s);
            
            if (gml_compile_const_val_of(l_x))
            {
                switch (l_o)
                {
                    case 2:
                        ds_list_add(arg1, vm_v2_gml_action_closure_bind(l_d, "local %= number", 
                        {
                            ind: l_i,
                            name: l_s,
                            num: global.gml_compile_const_val_of_val,
                            op: l_o
                        }, compile_groups_gml_compile_group_local_proc_lf2));
                        return false;
                    
                    case 3:
                        ds_list_add(arg1, vm_v2_gml_action_closure_bind(l_d, "local div= number", 
                        {
                            ind: l_i,
                            name: l_s,
                            num: global.gml_compile_const_val_of_val,
                            op: l_o
                        }, compile_groups_gml_compile_group_local_proc_lf3));
                        return false;
                    
                    case 17:
                        ds_list_add(arg1, vm_v2_gml_action_closure_bind(l_d, "local -= number", 
                        {
                            ind: l_i,
                            name: l_s,
                            num: global.gml_compile_const_val_of_val,
                            op: l_o
                        }, compile_groups_gml_compile_group_local_proc_lf4));
                        return false;
                    
                    case 32:
                        ds_list_add(arg1, vm_v2_gml_action_closure_bind(l_d, "local <<= number", 
                        {
                            ind: l_i,
                            name: l_s,
                            num: global.gml_compile_const_val_of_val,
                            op: l_o
                        }, compile_groups_gml_compile_group_local_proc_lf5));
                        return false;
                    
                    case 33:
                        ds_list_add(arg1, vm_v2_gml_action_closure_bind(l_d, "local >>= number", 
                        {
                            ind: l_i,
                            name: l_s,
                            num: global.gml_compile_const_val_of_val,
                            op: l_o
                        }, compile_groups_gml_compile_group_local_proc_lf6));
                        return false;
                    
                    case 48:
                        ds_list_add(arg1, vm_v2_gml_action_closure_bind(l_d, "local |= number", 
                        {
                            ind: l_i,
                            name: l_s,
                            num: global.gml_compile_const_val_of_val,
                            op: l_o
                        }, compile_groups_gml_compile_group_local_proc_lf7));
                        return false;
                    
                    case 49:
                        ds_list_add(arg1, vm_v2_gml_action_closure_bind(l_d, "local &= number", 
                        {
                            ind: l_i,
                            name: l_s,
                            num: global.gml_compile_const_val_of_val,
                            op: l_o
                        }, compile_groups_gml_compile_group_local_proc_lf8));
                        return false;
                    
                    case 50:
                        ds_list_add(arg1, vm_v2_gml_action_closure_bind(l_d, "local ^= number", 
                        {
                            ind: l_i,
                            name: l_s,
                            num: global.gml_compile_const_val_of_val,
                            op: l_o
                        }, compile_groups_gml_compile_group_local_proc_lf9));
                        return false;
                    
                    case 64:
                        ds_list_add(arg1, vm_v2_gml_action_closure_bind(l_d, "local eq= number", 
                        {
                            ind: l_i,
                            name: l_s,
                            num: global.gml_compile_const_val_of_val,
                            op: l_o
                        }, compile_groups_gml_compile_group_local_proc_lf10));
                        return false;
                    
                    case 65:
                        ds_list_add(arg1, vm_v2_gml_action_closure_bind(l_d, "local ne= number", 
                        {
                            ind: l_i,
                            name: l_s,
                            num: global.gml_compile_const_val_of_val,
                            op: l_o
                        }, compile_groups_gml_compile_group_local_proc_lf11));
                        return false;
                    
                    case 67:
                        ds_list_add(arg1, vm_v2_gml_action_closure_bind(l_d, "local le= number", 
                        {
                            ind: l_i,
                            name: l_s,
                            num: global.gml_compile_const_val_of_val,
                            op: l_o
                        }, compile_groups_gml_compile_group_local_proc_lf12));
                        return false;
                    
                    case 68:
                        ds_list_add(arg1, vm_v2_gml_action_closure_bind(l_d, "local gt= number", 
                        {
                            ind: l_i,
                            name: l_s,
                            num: global.gml_compile_const_val_of_val,
                            op: l_o
                        }, compile_groups_gml_compile_group_local_proc_lf13));
                        return false;
                    
                    case 69:
                        ds_list_add(arg1, vm_v2_gml_action_closure_bind(l_d, "local ge= number", 
                        {
                            ind: l_i,
                            name: l_s,
                            num: global.gml_compile_const_val_of_val,
                            op: l_o
                        }, compile_groups_gml_compile_group_local_proc_lf14));
                        return false;
                    
                    case 66:
                        ds_list_add(arg1, vm_v2_gml_action_closure_bind(l_d, "local lt= number", 
                        {
                            ind: l_i,
                            name: l_s,
                            num: global.gml_compile_const_val_of_val,
                            op: l_o
                        }, compile_groups_gml_compile_group_local_proc_lf15));
                        return false;
                    
                    case 16:
                        ds_list_add(arg1, vm_v2_gml_action_closure_bind(l_d, "local += number", 
                        {
                            ind: l_i,
                            name: l_s,
                            num: global.gml_compile_const_val_of_val,
                            op: l_o
                        }, compile_groups_gml_compile_group_local_proc_lf16));
                        return false;
                    
                    case 1:
                        ds_list_add(arg1, vm_v2_gml_action_closure_bind(l_d, "local /= number", 
                        {
                            ind: l_i,
                            name: l_s,
                            num: global.gml_compile_const_val_of_val,
                            op: l_o
                        }, compile_groups_gml_compile_group_local_proc_lf17));
                        return false;
                    
                    case 0:
                        ds_list_add(arg1, vm_v2_gml_action_closure_bind(l_d, "local *= number", 
                        {
                            ind: l_i,
                            name: l_s,
                            num: global.gml_compile_const_val_of_val,
                            op: l_o
                        }, compile_groups_gml_compile_group_local_proc_lf18));
                        return false;
                }
            }
            
            if (gml_compile_node(l_x, arg1, true))
                return true;
            
            ds_list_add(arg1, gml_action_local_aop(l_d, l_o, variable_struct_get(global.gml_compile_curr_script.h_local_map.h_obj, l_s), l_s));
            break;
        
        case 45:
            var l_d = l__g.h_d;
            var l_name = l__g.h_name;
            var l_vi = variable_struct_get(global.gml_compile_curr_script.h_static_map.h_obj, l_name);
            ds_list_add(arg1, undefined);
            var l_i = ds_list_size(arg1) - 1;
            
            if (gml_compile_node(l__g.h_val, arg1, true))
                return true;
            
            ds_list_add(arg1, vm_v2_gml_action_closure_bind(l_d, "static[] = pop()", 
            {
                ready: global.gml_compile_curr_script.h_static_ready,
                values: global.gml_compile_curr_script.h_static_values,
                ind: l_vi,
                name: l_name
            }, compile_groups_gml_compile_group_local_proc_lf19));
            arg1[| l_i] = vm_v2_gml_action_closure_bind(l_d, "if static_ready[] jump", 
            {
                ready: global.gml_compile_curr_script.h_static_ready,
                ind: l_vi,
                name: l_name,
                dest: ds_list_size(arg1)
            }, compile_groups_gml_compile_group_local_proc_lf20);
            
            if (global.gml_compile_curr_script.h_is_constructor)
            {
                ds_list_add(arg1, vm_v2_gml_action_closure_bind(l_d, "self[$] = static[]", 
                {
                    values: global.gml_compile_curr_script.h_static_values,
                    ind: l_vi,
                    name: l_name
                }, compile_groups_gml_compile_group_local_proc_lf21));
            }
            
            break;
        
        case 46:
            ds_list_add(arg1, vm_v2_gml_action_closure_bind(l__g.h_d, "static[]", 
            {
                ind: variable_struct_get(global.gml_compile_curr_script.h_static_map.h_obj, l__g.h_name),
                values: global.gml_compile_curr_script.h_static_values
            }, compile_groups_gml_compile_group_local_proc_lf22));
            break;
        
        case 47:
            var l_d = l__g.h_d;
            
            if (global.gml_compile_curr_script.h_is_constructor)
                return compile_groups_gml_compile_group_local_no_static_writes(l_d);
            
            if (gml_compile_node(l__g.h_val, arg1, true))
                return true;
            
            ds_list_add(arg1, vm_v2_gml_action_closure_bind(l_d, "static[] = pop()", 
            {
                ind: variable_struct_get(global.gml_compile_curr_script.h_static_map.h_obj, l__g.h_name),
                values: global.gml_compile_curr_script.h_static_values
            }, compile_groups_gml_compile_group_local_proc_lf23));
            break;
        
        case 48:
            var l_d = l__g.h_d;
            
            if (global.gml_compile_curr_script.h_is_constructor)
                return compile_groups_gml_compile_group_local_no_static_writes(l_d);
            
            if (gml_compile_node(l__g.h_val, arg1, true))
                return true;
            
            ds_list_add(arg1, vm_v2_gml_action_closure_bind(l_d, "static[] op= pop()", 
            {
                ind: variable_struct_get(global.gml_compile_curr_script.h_static_map.h_obj, l__g.h_name),
                values: global.gml_compile_curr_script.h_static_values,
                op: global.gml_op_apply_fns[l__g.h_op]
            }, compile_groups_gml_compile_group_local_proc_lf24));
            break;
        
        default:
            return undefined;
    }
    
    return false;
}

function compile_groups_gml_compile_group_local_init()
{
    gml_compile_set_handlers(compile_groups_gml_compile_group_local_proc, ["var_decl", "static_decl", "local", "local_set", "local_aop", "static", "static_set", "static_aop"]);
}

function gml_func() constructor
{
    static h_name = undefined;
    static h_signature = undefined;
    static h_is_const = undefined;
    static h_func = undefined;
    static h_call_type = undefined;
    static h_arg_count = undefined;
    static h_min_args = undefined;
    static h_max_args = undefined;
    static h_arg_type_checks = undefined;
    static h_rest_type_check = undefined;
    
    static h_copy = function(arg0)
    {
        var l_f = new gml_func();
        var l_sig = h_signature;
        var l_pos = gml_std_string_pos_ext_haxe(l_sig, h_name);
        l_sig = gml_std_string_substring(l_sig, 0, l_pos) + arg0 + gml_std_string_substring(l_sig, l_pos + string_length(h_name));
        l_f.h_name = arg0;
        l_f.h_signature = l_sig;
        l_f.h_is_const = h_is_const;
        l_f.h_func = h_func;
        l_f.h_call_type = h_call_type;
        l_f.h_arg_count = h_arg_count;
        l_f.h_min_args = h_min_args;
        l_f.h_max_args = h_max_args;
        l_f.h_arg_type_checks = h_arg_type_checks;
        l_f.h_rest_type_check = h_rest_type_check;
        return l_f;
    };
    
    static h_set = function(arg0, arg1)
    {
        h_signature = arg0;
        var l_parStart = gml_std_string_pos_ext_haxe(arg0, "(") + 1;
        
        if (l_parStart == 0)
            show_error(h_signature + " has no `(`", true);
        
        var l_parEnd = gml_std_string_pos_ext_haxe(arg0, ")");
        
        if (l_parEnd < 0)
            show_error(h_signature + " has no `)`", true);
        
        var l_argText = gml_std_StringTools_trim(gml_std_string_substring(arg0, l_parStart, l_parEnd));
        var l_flags = gml_std_string_substring(arg0, l_parEnd + 1);
        var l_minArgs = -1;
        var l_restCheck = gml_type_check_any;
        var l_argCount, l_args1, l_maxArgs, l_argCheck;
        
        if (l_argText == "")
        {
            l_argCount = 0;
            l_maxArgs = 0;
            l_argCheck = [];
            l_args1 = undefined;
        }
        else
        {
            l_args1 = gml_std_string_split(l_argText, ",");
            l_argCount = array_length(l_args1);
            l_maxArgs = l_argCount;
            l_argCheck = array_create(l_argCount);
        }
        
        var l_i = 0;
        var l__g1 = l_argCount;
        
        while (l_i < l__g1)
        {
            var l_arg = l_args1[l_i];
            var l_isRest = false;
            l_pos = gml_std_string_pos_ext_haxe(l_arg, "=");
            var l_opt;
            
            if (l_pos >= 0)
            {
                l_opt = true;
                l_arg = gml_std_string_substring(l_arg, 0, l_pos);
            }
            else if (gml_std_string_pos_ext_haxe(l_arg, "...") >= 0)
            {
                l_isRest = true;
                l_opt = true;
                l_maxArgs = 81;
            }
            else
            {
                l_opt = false;
            }
            
            l_pos = gml_std_string_pos_ext_haxe(l_arg, ":");
            
            if (l_pos >= 0)
            {
                var l_typeStr = gml_std_StringTools_trim(gml_std_string_substring(l_arg, l_pos + 1));
                l_arg = gml_std_string_substring(l_arg, 0, l_pos);
                l_argCheck[l_i] = gml_type_check_any;
            }
            else
            {
                l_argCheck[l_i] = gml_type_check_any;
            }
            
            if (gml_std_string_pos_ext_haxe(l_arg, "?") >= 0)
                l_opt = true;
            
            if (l_opt)
            {
                l_argCount = -1;
                
                if (l_minArgs < 0)
                    l_minArgs = l_i;
            }
            
            l_i++;
        }
        
        if (l_argCount < 0)
        {
            if (l_minArgs < 0)
                l_minArgs = 0;
        }
        else
        {
            l_minArgs = l_argCount;
            l_maxArgs = l_argCount;
        }
        
        var l_pos = 0;
        var l_inst = 0;
        
        for (var l__ = 0; l__ < 3; l__++)
        {
            if (string_ord_at(arg0, l_pos + 1) == 58)
            {
                l_pos++;
                l_inst++;
            }
            else
            {
                break;
            }
        }
        
        if (string_ord_at(arg0, l_pos + 1) == 36 && string_ord_at(arg0, l_pos + 1 + 1) == 123)
        {
            var l_start = l_pos + 2;
            l_pos = gml_std_string_pos_ext_haxe(arg0, "}", l_pos) + 1;
            
            switch (gml_std_string_substring(arg0, l_start, l_pos - 1))
            {
                case "raw":
                    l_inst = -5;
                    break;
                
                case "acall":
                    l_inst = -7;
                    break;
                
                default:
                    show_error("Unknown meta ${" + gml_std_string_substring(arg0, l_start, l_pos) + "} in " + arg0, true);
            }
        }
        
        var l_name = gml_parse_name(arg0, l_pos);
        var l_rawFunc;
        
        if (is_method(arg1))
        {
            l_rawFunc = method_get_index(arg1);
            var l__self = method_get_self(arg1);
            
            if (l__self != undefined)
            {
                if (instanceof(l__self) == "instance" || is_numeric(l__self))
                {
                    arg1 = method(undefined, arg1);
                }
                else
                {
                    switch (l_inst)
                    {
                        case 1:
                        case 2:
                        case 3:
                            show_error("self/other functions cannot have struct bindings in " + arg0, true);
                            break;
                    }
                }
            }
        }
        else
        {
            l_rawFunc = arg1;
            arg1 = method(undefined, arg1);
        }
        
        if (!global.gml_std_haxe_boot_isJS)
            global.gml_func_name[? l_rawFunc] = l_name;
        
        h_name = l_name;
        h_func = arg1;
        h_call_type = l_inst;
        h_is_const = gml_std_string_pos_ext_haxe(l_flags, "#") >= 0;
        h_arg_count = l_argCount;
        h_min_args = l_minArgs;
        h_max_args = l_maxArgs;
        h_arg_type_checks = l_argCheck;
        h_rest_type_check = l_restCheck;
    };
    
    static __class__ = global.mt_gml_func;
}

function compile_gml_compile_bin_op_proc_lf(arg0, arg1, arg2, arg3)
{
    var l_v = global.gml_op_apply_fns[op](arg2[4][ind1], arg2[4][ind2]);
    var l_i = arg3[0] + 1;
    
    if (l_i >= array_length(arg3))
        arg3[array_length(arg3) * 2] = 0;
    
    arg3[l_i] = l_v;
    arg3[0] = l_i;
    return 0;
}

function compile_gml_compile_bin_op_proc_lf1(arg0, arg1, arg2, arg3)
{
    var l_v = global.gml_op_apply_fns[op](arg2[4][ind], val);
    var l_i = arg3[0] + 1;
    
    if (l_i >= array_length(arg3))
        arg3[array_length(arg3) * 2] = 0;
    
    arg3[l_i] = l_v;
    arg3[0] = l_i;
    return 0;
}

function compile_gml_compile_bin_op_proc_lf2(arg0, arg1, arg2, arg3)
{
    var l_z = arg3[0];
    arg3[l_z] = global.gml_op_apply_fns[op](arg2[4][ind], arg3[l_z]);
    return 0;
}

function compile_gml_compile_bin_op_proc_lf3(arg0, arg1, arg2, arg3)
{
    var l_v = global.gml_op_apply_fns[op](val, arg2[4][ind]);
    var l_i = arg3[0] + 1;
    
    if (l_i >= array_length(arg3))
        arg3[array_length(arg3) * 2] = 0;
    
    arg3[l_i] = l_v;
    arg3[0] = l_i;
    return 0;
}

function compile_gml_compile_bin_op_proc_lf4(arg0, arg1, arg2, arg3)
{
    var l_z = arg3[0];
    arg3[l_z] = global.gml_op_apply_fns[op](arg3[l_z], arg2[4][ind]);
    return 0;
}

function compile_gml_compile_bin_op_proc_lf5(arg0, arg1, arg2, arg3)
{
    var l_z = arg3[0];
    arg3[l_z] = global.gml_op_apply_fns[op](val, arg3[l_z]);
    return 0;
}

function compile_gml_compile_bin_op_proc_lf6(arg0, arg1, arg2, arg3)
{
    var l_z = arg3[0];
    arg3[l_z] = global.gml_op_apply_fns[op](arg3[l_z], val);
    return 0;
}

function compile_gml_compile_bin_op_proc(arg0, arg1, arg2, arg3, arg4)
{
    if (gml_op_is_simple(arg2))
    {
        var l__g = arg3;
        var l_ai;
        
        if (l__g.__enumIndex__ == 42)
            l_ai = variable_struct_get(global.gml_compile_curr_script.h_local_map.h_obj, l__g.h_name);
        else
            l_ai = -1;
        
        l__g = arg4;
        var l_bi;
        
        if (l__g.__enumIndex__ == 42)
            l_bi = variable_struct_get(global.gml_compile_curr_script.h_local_map.h_obj, l__g.h_name);
        else
            l_bi = -1;
        
        if (l_ai >= 0)
        {
            if (l_bi >= 0)
            {
                ds_list_add(arg0, vm_v2_gml_action_closure_bind(arg1, "push(local " + gml_op_to_string(arg2) + " local)", 
                {
                    ind1: l_ai,
                    ind2: l_bi,
                    op: arg2
                }, compile_gml_compile_bin_op_proc_lf));
                return false;
            }
            
            if (gml_compile_const_val_of(arg4))
            {
                ds_list_add(arg0, vm_v2_gml_action_closure_bind(arg1, "push(local " + gml_op_to_string(arg2) + " const)", 
                {
                    ind: l_ai,
                    val: global.gml_compile_const_val_of_val,
                    op: arg2
                }, compile_gml_compile_bin_op_proc_lf1));
                return false;
            }
            
            if (gml_compile_node(arg4, arg0, true))
                return true;
            
            ds_list_add(arg0, vm_v2_gml_action_closure_bind(arg1, "push(local " + gml_op_to_string(arg2) + " pop())", 
            {
                ind: l_ai,
                op: arg2
            }, compile_gml_compile_bin_op_proc_lf2));
            return false;
        }
        
        if (l_bi >= 0)
        {
            if (gml_compile_const_val_of(arg3))
            {
                ds_list_add(arg0, vm_v2_gml_action_closure_bind(arg1, "push(const " + gml_op_to_string(arg2) + " local)", 
                {
                    ind: l_bi,
                    val: global.gml_compile_const_val_of_val,
                    op: arg2
                }, compile_gml_compile_bin_op_proc_lf3));
                return false;
            }
            
            if (gml_compile_node(arg3, arg0, true))
                return true;
            
            ds_list_add(arg0, vm_v2_gml_action_closure_bind(arg1, "push(pop() " + gml_op_to_string(arg2) + " local)", 
            {
                ind: l_bi,
                op: arg2
            }, compile_gml_compile_bin_op_proc_lf4));
            return false;
        }
        
        if (gml_compile_const_val_of(arg3))
        {
            var l_val = global.gml_compile_const_val_of_val;
            
            if (gml_compile_node(arg4, arg0, true))
                return true;
            
            ds_list_add(arg0, vm_v2_gml_action_closure_bind(arg1, "push(const " + gml_op_to_string(arg2) + " pop())", 
            {
                val: l_val,
                op: arg2
            }, compile_gml_compile_bin_op_proc_lf5));
            return false;
        }
        
        if (gml_compile_const_val_of(arg4))
        {
            var l_val = global.gml_compile_const_val_of_val;
            
            if (gml_compile_node(arg3, arg0, true))
                return true;
            
            ds_list_add(arg0, vm_v2_gml_action_closure_bind(arg1, "push(pop() " + gml_op_to_string(arg2) + " const)", 
            {
                val: l_val,
                op: arg2
            }, compile_gml_compile_bin_op_proc_lf6));
            return false;
        }
    }
    
    switch (arg2)
    {
        case 18:
            if (compile_gml_compile_args_proc(arg0, [arg3, arg4]))
                return true;
            
            ds_list_add(arg0, gml_action_concat(arg1));
            break;
        
        case 64:
            if (compile_gml_compile_args_proc(arg0, [arg3, arg4]))
                return true;
            
            ds_list_add(arg0, gml_action_equ_op(arg1));
            break;
        
        case 65:
            if (compile_gml_compile_args_proc(arg0, [arg3, arg4]))
                return true;
            
            ds_list_add(arg0, gml_action_neq_op(arg1));
            break;
        
        case 80:
            if (gml_compile_node(arg3, arg0, true))
                return true;
            
            var l_p0 = ds_list_size(arg0);
            ds_list_add(arg0, gml_action_bool_and(arg1, 0));
            
            if (gml_compile_node(arg4, arg0, true))
                return true;
            
            arg0[| l_p0] = gml_action_bool_and(arg1, ds_list_size(arg0));
            break;
        
        case 96:
            if (gml_compile_node(arg3, arg0, true))
                return true;
            
            var l_p0 = ds_list_size(arg0);
            ds_list_add(arg0, gml_action_bool_or(arg1, 0));
            
            if (gml_compile_node(arg4, arg0, true))
                return true;
            
            arg0[| l_p0] = gml_action_bool_or(arg1, ds_list_size(arg0));
            break;
        
        default:
            if (compile_gml_compile_args_proc(arg0, [arg3, arg4]))
                return true;
            
            ds_list_add(arg0, gml_action_bin_op(arg1, arg2));
    }
    
    return false;
}

function gml_value_get_type(arg0)
{
    if (arg0 == undefined)
        return "undefined";
    else if (is_numeric(arg0))
        return "number";
    else if (is_string(arg0))
        return "string";
    else if (is_struct(arg0))
        return "struct";
    else if (is_array(arg0))
        return "array";
    else
        return typeof(arg0);
}

function gml_value_print(arg0)
{
    ds_map_clear(global.vm_value_gml_value_printer_print_refs);
    global.vm_value_gml_value_printer_print_num = 0;
    var l_r = vm_value_gml_value_printer_print_rec(arg0, 0);
    ds_map_clear(global.vm_value_gml_value_printer_print_refs);
    return l_r;
}

function gml_value_dump(arg0)
{
    if (instanceof(arg0) == "instance")
        return "`" + gml_value_print(arg0) + "` (instance of " + object_get_name(arg0.object_index) + ")";
    
    return "`" + gml_value_print(arg0) + "` (" + gml_value_get_type(arg0) + ")";
}

function vm_value_gml_value_printer_print_rec(arg0, arg1)
{
    var l_id = global.vm_value_gml_value_printer_print_num++;
    
    if (arg0 == undefined)
        return "undefined";
    
    if (is_int64(arg0))
        return string(arg0);
    
    if (is_bool(arg0))
    {
        if (arg0)
            return "true";
        else
            return "false";
    }
    
    if (is_numeric(arg0))
    {
        if (sign(frac(arg0)) == 0)
            return string(arg0);
        else
            return json_stringify(arg0);
    }
    
    if (is_string(arg0))
    {
        return json_stringify(arg0);
    }
    else if (is_array(arg0))
    {
        var l_r = global.vm_value_gml_value_printer_print_refs[? arg0];
        
        if (l_r != undefined)
            return l_r;
        
        global.vm_value_gml_value_printer_print_refs[? arg0] = "@" + string(l_id);
        var l_n = array_length(arg0);
        
        if (l_n > 0)
        {
            if (++arg1 > 8)
                return "[...]";
            
            l_r = "[" + vm_value_gml_value_printer_print_rec(arg0[0], arg1);
            
            for (var l_i = 1; l_i < l_n; l_i++)
                l_r += (", " + vm_value_gml_value_printer_print_rec(arg0[l_i], arg1));
            
            return l_r + "]";
        }
        else
        {
            return "[]";
        }
    }
    
    if (instanceof(arg0) == "instance")
    {
        var l_q = arg0;
        return "instance#" + string(l_q.id) + "(" + object_get_name(l_q.object_index) + ")";
    }
    
    return string(arg0);
}

function gml_std_Std_stringify(arg0)
{
    if (arg0 == undefined)
        return "null";
    
    if (is_string(arg0))
        return arg0;
    
    if (is_struct(arg0))
    {
        var l_e = variable_struct_get(arg0, "__enum__");
        
        if (l_e == undefined)
            return string(arg0);
        
        var l_ects = l_e.h_constructors;
        var l_s;
        
        if (l_ects != undefined)
        {
            l_i = arg0.__enumIndex__;
            
            if (l_i >= 0 && l_i < array_length(l_ects))
                l_s = l_ects[l_i];
            else
                l_s = "?";
        }
        else
        {
            l_s = instanceof(arg0);
            
            if (string_copy(l_s, 1, 3) == "mc_")
                l_s = string_delete(l_s, 1, 3);
            
            l_n = string_length(l_e.h_name);
            
            if (string_copy(l_s, 1, l_n) == l_e.h_name)
                l_s = string_delete(l_s, 1, l_n + 1);
        }
        
        l_s += "(";
        var l_fields = arg0.__enumParams__;
        var l_n = array_length(l_fields);
        var l_i = -1;
        
        while (++l_i < l_n)
        {
            if (l_i > 0)
                l_s += ", ";
            
            l_s += gml_std_Std_stringify(variable_struct_get(arg0, array_get(l_fields, l_i)));
        }
        
        return l_s + ")";
    }
    
    if (is_real(arg0))
    {
        var l_s = string_format(arg0, 0, 16);
        var l_n = string_byte_length(l_s);
        var l_i = l_n;
        
        while (l_i > 0)
        {
            switch (string_byte_at(l_s, l_i))
            {
                case 48:
                    l_i--;
                    continue;
                
                case 46:
                    l_i--;
                    break;
            }
            
            break;
        }
        
        return string_copy(l_s, 1, l_i);
    }
    
    return string(arg0);
}

function gml_std_Std_parseFloat(arg0)
{
    var l_l = string_length(arg0);
    var l_n = string_length(string_digits(arg0));
    var l_p = string_pos(".", arg0);
    var l_e = string_pos("e", arg0);
    
    if (l_e == 0)
        l_e = string_pos("E", arg0);
    
    switch (l_e)
    {
        case 0:
            break;
        
        case 1:
            return NaN;
        
        case 2:
            if (l_p > 0)
                return NaN;
            
            break;
        
        default:
            if (l_p > 0 && l_e < l_p)
                return NaN;
    }
    
    if (l_e != 0 && l_e < (l_l - 1))
    {
        switch (string_ord_at(arg0, l_e + 1))
        {
            case 43:
            case 45:
                l_l--;
                break;
        }
    }
    
    if (l_n && l_n == (l_l - (string_ord_at(arg0, 1) == 45) - (l_p != 0) - (l_e != 0)))
        return real(arg0);
    else
        return NaN;
}

function gml_std_Std_parseInt(arg0)
{
    var l_n = string_length(string_digits(arg0));
    
    if (l_n && l_n == (string_length(arg0) - (string_ord_at(arg0, 1) == 45)))
        return real(arg0);
    else
        return undefined;
}

function gml_std_string_pos_ext_haxe(arg0, arg1, arg2 = 0)
{
    if (arg2 <= 0)
        return string_pos(arg1, arg0) - 1;
    
    return string_pos_ext(arg1, arg0, arg2) - 1;
}

function gml_std_string_last_pos_haxe(arg0, arg1, arg2)
{
    if (arg2 == undefined || arg2 >= string_length(arg0))
        return string_last_pos(arg1, arg0) - 1;
    
    return string_last_pos_ext(arg1, arg0, arg2) - 1;
}

function gml_std_string_split(arg0, arg1)
{
    var l_str = arg0;
    var l_num = 0;
    var l_arr = array_create(string_count(arg1, l_str) + 1);
    var l_pos = string_pos(arg1, l_str);
    
    while (l_pos > 0)
    {
        l_arr[l_num] = string_copy(l_str, 1, l_pos - 1);
        l_num++;
        l_str = string_delete(l_str, 1, l_pos);
        l_pos = string_pos(arg1, l_str);
    }
    
    l_arr[l_num] = l_str;
    return l_arr;
}

function gml_std_string_substr(arg0, arg1, arg2)
{
    if (arg1 < 0)
        arg1 += string_length(arg0);
    
    if (arg2 == undefined)
        return string_delete(arg0, 1, arg1);
    else
        return string_copy(arg0, 1 + arg1, arg2);
}

function gml_std_string_substring(arg0, arg1, arg2)
{
    if (arg2 == undefined)
    {
        if (arg1 > 0)
            return string_delete(arg0, 1, arg1);
        else
            return arg0;
    }
    
    if (arg1 < 0)
        arg1 = 0;
    
    if (arg2 < 0)
        arg2 = 0;
    
    if (arg1 > arg2)
    {
        var l_tmp = arg1;
        arg1 = arg2;
        arg2 = l_tmp;
    }
    
    var l_len = string_length(arg0);
    
    if (arg1 >= l_len)
    {
        return "";
    }
    else if (arg2 >= l_len)
    {
        if (arg1 > 0)
            return string_delete(arg0, 1, arg1);
        else
            return arg0;
    }
    else
    {
        return string_copy(arg0, arg1 + 1, arg2 - arg1);
    }
}

function gml_op_is_simple(arg0)
{
    switch (arg0)
    {
        case 18:
        case 80:
        case 96:
            return false;
        
        default:
            return true;
    }
}

function gml_op_get_priority(arg0)
{
    return arg0 >> 4;
}

function gml_op_to_string(arg0)
{
    switch (arg0)
    {
        case -1:
            return "";
        
        case 0:
            return "*";
        
        case 1:
            return "/";
        
        case 3:
            return "div";
        
        case 2:
            return "%";
        
        case 16:
            return "+";
        
        case 17:
            return "-";
        
        case 18:
            return "+";
        
        case 32:
            return "<<";
        
        case 33:
            return ">>";
        
        case 48:
            return "|";
        
        case 49:
            return "&";
        
        case 50:
            return "^";
        
        case 64:
            return "==";
        
        case 65:
            return "!=";
        
        case 68:
            return ">";
        
        case 66:
            return "<";
        
        case 69:
            return ">=";
        
        case 67:
            return "<=";
        
        case 80:
            return "&&";
        
        case 96:
            return "||";
        
        default:
            return gml_op_get_name(arg0);
    }
}

function gml_op_apply_init_lf(arg0, arg1)
{
    return arg0 + arg1;
}

function gml_op_apply_init_lf1(arg0, arg1)
{
    return arg0 - arg1;
}

function gml_op_apply_init_lf2(arg0, arg1)
{
    return arg0 * arg1;
}

function gml_op_apply_init_lf3(arg0, arg1)
{
    return arg0 / arg1;
}

function gml_op_apply_init_lf4(arg0, arg1)
{
    return arg0 % arg1;
}

function gml_op_apply_init_lf5(arg0, arg1)
{
    if (arg1 == 0 && is_int64(arg1) && is_int64(arg0))
        show_error("Division by zero", true);
    
    return arg0 / arg1;
}

function gml_op_apply_init_lf6(arg0, arg1)
{
    return arg0 & arg1;
}

function gml_op_apply_init_lf7(arg0, arg1)
{
    return arg0 | arg1;
}

function gml_op_apply_init_lf8(arg0, arg1)
{
    return arg0 ^ arg1;
}

function gml_op_apply_init_lf9(arg0, arg1)
{
    return arg0 << arg1;
}

function gml_op_apply_init_lf10(arg0, arg1)
{
    return arg0 >> arg1;
}

function gml_op_apply_init_lf11(arg0, arg1)
{
    return arg0 == arg1;
}

function gml_op_apply_init_lf12(arg0, arg1)
{
    return arg0 != arg1;
}

function gml_op_apply_init_lf13(arg0, arg1)
{
    return arg0 > arg1;
}

function gml_op_apply_init_lf14(arg0, arg1)
{
    return arg0 >= arg1;
}

function gml_op_apply_init_lf15(arg0, arg1)
{
    return arg0 < arg1;
}

function gml_op_apply_init_lf16(arg0, arg1)
{
    return arg0 <= arg1;
}

function gml_op_apply_init_lf17(arg0, arg1)
{
    if (!is_string(arg1))
        arg1 = gml_value_print(arg1);
    
    if (!is_string(arg0))
        arg0 = gml_value_print(arg0);
    
    return arg0 + arg1;
}

function gml_op_apply_init_lf18(arg0, arg1)
{
    show_error("No handler for operator " + string(ind), true);
    return 0;
}

function gml_op_apply_init()
{
    var l_out = [];
    var l__ = 0;
    var l__g1 = 97;
    
    while (l__ < l__g1)
    {
        array_push(l_out, undefined);
        l__++;
    }
    
    l_out[16] = gml_op_apply_init_lf;
    l_out[17] = gml_op_apply_init_lf1;
    l_out[0] = gml_op_apply_init_lf2;
    l_out[1] = gml_op_apply_init_lf3;
    l_out[2] = gml_op_apply_init_lf4;
    l_out[3] = gml_op_apply_init_lf5;
    l_out[49] = gml_op_apply_init_lf6;
    l_out[48] = gml_op_apply_init_lf7;
    l_out[50] = gml_op_apply_init_lf8;
    l_out[32] = gml_op_apply_init_lf9;
    l_out[33] = gml_op_apply_init_lf10;
    l_out[64] = gml_op_apply_init_lf11;
    l_out[65] = gml_op_apply_init_lf12;
    l_out[68] = gml_op_apply_init_lf13;
    l_out[69] = gml_op_apply_init_lf14;
    l_out[66] = gml_op_apply_init_lf15;
    l_out[67] = gml_op_apply_init_lf16;
    l_out[18] = gml_op_apply_init_lf17;
    var l_oi = 0;
    l__g1 = 97;
    
    while (l_oi < l__g1)
    {
        if (l_out[l_oi] == undefined)
        {
            l_out[l_oi] = method(
            {
                ind: l_oi
            }, gml_op_apply_init_lf18);
        }
        
        l_oi++;
    }
    
    return l_out;
}

function gml_op_get_name(arg0)
{
    switch (arg0)
    {
        case 1:
            return "Div";
        
        case 2:
            return "Mod";
        
        case 7:
            return "priorities";
        
        case 16:
            return "Add";
        
        case 17:
            return "Sub";
        
        case 18:
            return "Cct";
        
        case 32:
            return "Shl";
        
        case 33:
            return "Shr";
        
        case 48:
            return "Or";
        
        case 49:
            return "And";
        
        case 64:
            return "EQ";
        
        case 65:
            return "NE";
        
        case 66:
            return "LT";
        
        case 67:
            return "LE";
        
        case 68:
            return "GT";
        
        case 69:
            return "GE";
        
        case 80:
            return "BAnd";
        
        case 96:
            return "BOr";
        
        case 50:
            return "Xor";
        
        case 3:
            return "IDiv";
        
        case 0:
            return "Mul";
        
        case -1:
            return "Set";
        
        default:
            return undefined;
    }
}

function compile_gml_compile_delete_proc_lf(arg0, arg1, arg2, arg3)
{
    arg2[4][varind] = undefined;
    return 0;
}

function compile_gml_compile_delete_proc_lf1(arg0, arg1, arg2, arg3)
{
    var l_global = -5;
    variable_struct_set(l_global, varname, undefined);
    return 0;
}

function compile_gml_compile_delete_proc_lf2(arg0, arg1, arg2, arg3)
{
    var l_this1 = arg2[6];
    variable_struct_set(array_get(l_this1, l_this1[0]), varname, undefined);
    return 0;
}

function compile_gml_compile_delete_proc_lf3(arg0, arg1, arg2, arg3)
{
    var l_i = arg3[0];
    var l_r = arg3[l_i];
    arg3[l_i] = 0;
    arg3[0] = l_i - 1;
    variable_struct_set(l_r, varname, undefined);
    return 0;
}

function compile_gml_compile_delete_proc_lf4(arg0, arg1, arg2, arg3)
{
    var l_z = arg3[0] - 1;
    arg3[0] = l_z - 1;
    arg3[l_z][arg3[l_z + 1]] = undefined;
    arg3[l_z] = 0;
    arg3[l_z + 1] = 0;
    return 0;
}

function compile_gml_compile_delete_proc_lf5(arg0, arg1, arg2, arg3)
{
    var l_z = arg3[0] - 1;
    arg3[0] = l_z - 1;
    array_get(arg3, l_z)[| array_get(arg3, l_z + 1)] = undefined;
    arg3[l_z] = 0;
    arg3[l_z + 1] = 0;
    return 0;
}

function compile_gml_compile_delete_proc_lf6(arg0, arg1, arg2, arg3)
{
    var l_z = arg3[0] - 1;
    arg3[0] = l_z - 1;
    array_get(arg3, l_z)[? array_get(arg3, l_z + 1)] = undefined;
    arg3[l_z] = 0;
    arg3[l_z + 1] = 0;
    return 0;
}

function compile_gml_compile_delete_proc_lf7(arg0, arg1, arg2, arg3)
{
    var l_z = arg3[0] - 2;
    arg3[0] = l_z - 1;
    array_get(arg3, l_z)[# array_get(arg3, l_z + 1), array_get(arg3, l_z + 2)] = undefined;
    arg3[l_z] = 0;
    arg3[l_z + 1] = 0;
    arg3[l_z + 2] = 0;
    return 0;
}

function compile_gml_compile_delete_proc_lf8(arg0, arg1, arg2, arg3)
{
    var l_z = arg3[0] - 1;
    arg3[0] = l_z - 1;
    variable_struct_set(array_get(arg3, l_z), array_get(arg3, l_z + 1), undefined);
    arg3[l_z] = 0;
    arg3[l_z + 1] = 0;
    return 0;
}

function compile_gml_compile_delete_proc(arg0, arg1, arg2)
{
    var l__g = arg2;
    
    switch (l__g.__enumIndex__)
    {
        case 42:
            var l_s = l__g.h_name;
            ds_list_add(arg0, vm_v2_gml_action_closure_bind(arg1, "delete local", 
            {
                varname: l_s,
                varind: variable_struct_get(global.gml_compile_curr_script.h_local_map.h_obj, l_s)
            }, compile_gml_compile_delete_proc_lf));
            break;
        
        case 49:
            ds_list_add(arg0, vm_v2_gml_action_closure_bind(arg1, "delete global", 
            {
                varname: l__g.h_name
            }, compile_gml_compile_delete_proc_lf1));
            break;
        
        case 52:
            var l__g1 = l__g.h_obj;
            
            if (l__g1.__enumIndex__ == 13)
            {
                if (gml_compile_node(arg2, arg0, true))
                    return true;
                
                ds_list_add(arg0, vm_v2_gml_action_closure_bind(arg1, "delete self.field", 
                {
                    varname: l__g.h_field
                }, compile_gml_compile_delete_proc_lf2));
            }
            else
            {
                if (gml_compile_node(l__g1, arg0, true))
                    return true;
                
                ds_list_add(arg0, vm_v2_gml_action_closure_bind(arg1, "delete field", 
                {
                    varname: l__g.h_field
                }, compile_gml_compile_delete_proc_lf3));
            }
            
            break;
        
        case 67:
            if (compile_gml_compile_args_proc(arg0, [l__g.h_arr, l__g.h_index]))
                return true;
            
            ds_list_add(arg0, vm_v2_gml_action_closure_bind(arg1, "delete array index", {}, compile_gml_compile_delete_proc_lf4));
            break;
        
        case 79:
            if (compile_gml_compile_args_proc(arg0, [l__g.h_list, l__g.h_index]))
                return true;
            
            ds_list_add(arg0, vm_v2_gml_action_closure_bind(arg1, "delete list index", {}, compile_gml_compile_delete_proc_lf5));
            break;
        
        case 82:
            if (compile_gml_compile_args_proc(arg0, [l__g.h_map, l__g.h_key]))
                return true;
            
            ds_list_add(arg0, vm_v2_gml_action_closure_bind(arg1, "delete map index", {}, compile_gml_compile_delete_proc_lf6));
            break;
        
        case 85:
            if (compile_gml_compile_args_proc(arg0, [l__g.h_grid, l__g.h_index1, l__g.h_index2]))
                return true;
            
            ds_list_add(arg0, vm_v2_gml_action_closure_bind(arg1, "delete grid index", {}, compile_gml_compile_delete_proc_lf7));
            break;
        
        case 88:
            if (compile_gml_compile_args_proc(arg0, [l__g.h_obj, l__g.h_key]))
                return true;
            
            ds_list_add(arg0, vm_v2_gml_action_closure_bind(arg1, "delete struct field", {}, compile_gml_compile_delete_proc_lf8));
            break;
        
        default:
            return gml_compile_error("Can't delete " + gml_std_Type_enumConstructor(arg2), gml_std_haxe_enum_tools_getParameter(arg2, 0));
    }
    
    return false;
}

function gml_std_haxe_enum_tools_getParameter(arg0, arg1)
{
    if (is_struct(arg0))
    {
        var l_params = arg0.__enumParams__;
        return variable_struct_get(arg0, array_get(l_params, arg1));
    }
    else if (is_array(arg0))
    {
        return arg0[arg1 + 1];
    }
    else
    {
        show_error("Not an EnumValue", true);
    }
}

function gml_std_haxe_enum_tools_getParameterCount(arg0)
{
    if (is_struct(arg0))
        return array_length(arg0.__enumParams__);
    else if (is_array(arg0))
        return array_length(arg0) - 1;
    else
        show_error("Not an EnumValue", true);
}

function gml_std_haxe_enum_tools_setParameter(arg0, arg1, arg2)
{
    if (is_struct(arg0))
    {
        var l_params = arg0.__enumParams__;
        variable_struct_set(arg0, array_get(l_params, arg1), arg2);
    }
    else if (is_array(arg0))
    {
        arg0[arg1 + 1] = arg2;
    }
    else
    {
        show_error("Not an EnumValue", true);
    }
}

function gml_std_haxe_enum_tools_setTo(arg0, arg1)
{
    if (is_struct(arg0))
    {
        var l_qp = arg0.__enumParams__;
        var l_vp = arg1.__enumParams__;
        var l_n = array_length(l_qp);
        var l_i = -1;
        
        while (++l_i < l_n)
            variable_struct_set(arg0, array_get(l_qp, l_i), undefined);
        
        l_i = -1;
        l_n = array_length(l_vp);
        
        while (++l_i < l_n)
            variable_struct_set(arg0, array_get(l_vp, l_i), variable_struct_get(arg1, array_get(l_vp, l_i)));
        
        arg0.__enumParams__ = l_vp;
        arg0.__enumIndex__ = arg1.__enumIndex__;
    }
    else if (is_array(arg0))
    {
        var l_qx = arg0;
        var l_vx = arg1;
        var l_n = array_length(l_vx);
        
        if (array_length(l_qx) != l_n)
            array_resize(l_qx, l_n);
        
        array_copy(l_qx, 0, l_vx, 0, l_n);
    }
    else
    {
        show_error("Not an EnumValue", true);
    }
}

function compile_groups_gml_compile_group_ds_proc(arg0, arg1, arg2)
{
    var l__g = arg0;
    
    switch (l__g.__enumIndex__)
    {
        case 79:
            var l_fn = variable_struct_get(global.gml_func_map.h_obj, "ds_list_find_value");
            
            if (l_fn != undefined)
                return compile_gml_compile_call_func_proc(arg1, l__g.h_d, l_fn, [l__g.h_list, l__g.h_index], arg2);
            else
                return gml_compile_error("Accessor not supported", l__g.h_d);
        
        case 80:
            l_fn = variable_struct_get(global.gml_func_map.h_obj, "ds_list_set");
            
            if (l_fn != undefined)
                return compile_gml_compile_call_func_proc(arg1, l__g.h_d, l_fn, [l__g.h_list, l__g.h_index, l__g.h_val], arg2);
            else
                return gml_compile_error("Accessor not supported", l__g.h_d);
        
        case 81:
            var l_args1 = [l__g.h_list, l__g.h_index, l__g.h_val];
            l_fn = variable_struct_get(global.gml_func_map.h_obj, "ds_list_find_value");
            var l_fn2 = variable_struct_get(global.gml_func_map.h_obj, "ds_list_set");
            
            if (l_fn != undefined && l_fn2 != undefined)
            {
                compile_gml_compile_args_proc(arg1, l_args1);
                ds_list_add(arg1, gml_action_ds_aop(l__g.h_d, l__g.h_op, array_length(l_args1), l_fn.h_func, l_fn2.h_func, arg2));
                return false;
            }
            else
            {
                return gml_compile_error("Accessor not supported", l__g.h_d);
            }
        
        case 82:
            l_fn = variable_struct_get(global.gml_func_map.h_obj, "ds_map_find_value");
            
            if (l_fn != undefined)
                return compile_gml_compile_call_func_proc(arg1, l__g.h_d, l_fn, [l__g.h_map, l__g.h_key], arg2);
            else
                return gml_compile_error("Accessor not supported", l__g.h_d);
        
        case 83:
            l_fn = variable_struct_get(global.gml_func_map.h_obj, "ds_map_set");
            
            if (l_fn != undefined)
                return compile_gml_compile_call_func_proc(arg1, l__g.h_d, l_fn, [l__g.h_map, l__g.h_key, l__g.h_val], arg2);
            else
                return gml_compile_error("Accessor not supported", l__g.h_d);
        
        case 84:
            l_args1 = [l__g.h_map, l__g.h_key, l__g.h_val];
            l_fn = variable_struct_get(global.gml_func_map.h_obj, "ds_map_find_value");
            l_fn2 = variable_struct_get(global.gml_func_map.h_obj, "ds_map_set");
            
            if (l_fn != undefined && l_fn2 != undefined)
            {
                compile_gml_compile_args_proc(arg1, l_args1);
                ds_list_add(arg1, gml_action_ds_aop(l__g.h_d, l__g.h_op, array_length(l_args1), l_fn.h_func, l_fn2.h_func, arg2));
                return false;
            }
            else
            {
                return gml_compile_error("Accessor not supported", l__g.h_d);
            }
        
        case 88:
            l_fn = variable_struct_get(global.gml_func_map.h_obj, "variable_struct_get");
            
            if (l_fn != undefined)
                return compile_gml_compile_call_func_proc(arg1, l__g.h_d, l_fn, [l__g.h_obj, l__g.h_key], arg2);
            else
                return gml_compile_error("Accessor not supported", l__g.h_d);
        
        case 89:
            l_fn = variable_struct_get(global.gml_func_map.h_obj, "variable_struct_set");
            
            if (l_fn != undefined)
                return compile_gml_compile_call_func_proc(arg1, l__g.h_d, l_fn, [l__g.h_obj, l__g.h_key, l__g.h_val], arg2);
            else
                return gml_compile_error("Accessor not supported", l__g.h_d);
        
        case 90:
            l_args1 = [l__g.h_obj, l__g.h_key, l__g.h_val];
            l_fn = variable_struct_get(global.gml_func_map.h_obj, "variable_struct_get");
            l_fn2 = variable_struct_get(global.gml_func_map.h_obj, "variable_struct_set");
            
            if (l_fn != undefined && l_fn2 != undefined)
            {
                compile_gml_compile_args_proc(arg1, l_args1);
                ds_list_add(arg1, gml_action_ds_aop(l__g.h_d, l__g.h_op, array_length(l_args1), l_fn.h_func, l_fn2.h_func, arg2));
                return false;
            }
            else
            {
                return gml_compile_error("Accessor not supported", l__g.h_d);
            }
        
        case 85:
            l_fn = variable_struct_get(global.gml_func_map.h_obj, "ds_grid_get");
            
            if (l_fn != undefined)
                return compile_gml_compile_call_func_proc(arg1, l__g.h_d, l_fn, [l__g.h_grid, l__g.h_index1, l__g.h_index2], arg2);
            else
                return gml_compile_error("Accessor not supported", l__g.h_d);
        
        case 86:
            l_fn = variable_struct_get(global.gml_func_map.h_obj, "ds_grid_set");
            
            if (l_fn != undefined)
                return compile_gml_compile_call_func_proc(arg1, l__g.h_d, l_fn, [l__g.h_grid, l__g.h_index1, l__g.h_index2, l__g.h_val], arg2);
            else
                return gml_compile_error("Accessor not supported", l__g.h_d);
        
        case 87:
            l_args1 = [l__g.h_grid, l__g.h_index1, l__g.h_index2, l__g.h_val];
            l_fn = variable_struct_get(global.gml_func_map.h_obj, "ds_grid_get");
            l_fn2 = variable_struct_get(global.gml_func_map.h_obj, "ds_grid_set");
            
            if (l_fn != undefined && l_fn2 != undefined)
            {
                compile_gml_compile_args_proc(arg1, l_args1);
                ds_list_add(arg1, gml_action_ds_aop(l__g.h_d, l__g.h_op, array_length(l_args1), l_fn.h_func, l_fn2.h_func, arg2));
                return false;
            }
            else
            {
                return gml_compile_error("Accessor not supported", l__g.h_d);
            }
        
        default:
            return undefined;
    }
}

function compile_groups_gml_compile_group_ds_init()
{
    gml_compile_set_handlers(compile_groups_gml_compile_group_ds_proc, ["ds_list", "ds_list_set", "ds_list_aop", "ds_map", "ds_map_set", "ds_map_aop", "ds_grid", "ds_grid_set", "ds_grid_aop", "key_id", "key_id_set", "key_id_aop"]);
}

function compile_groups_gml_compile_group_array_proc_lf(arg0, arg1, arg2, arg3)
{
    var l_z = arg3[0];
    arg3[l_z] = arg2[4][ind][arg3[l_z] | 0];
    return 0;
}

function compile_groups_gml_compile_group_array_proc_lf1(arg0, arg1, arg2, arg3)
{
    var l_z = arg3[0];
    var l_this1 = arg2[6];
    arg3[l_z] = array_get(self.func(l_this1[l_this1[0]]), arg3[l_z]);
    return 0;
}

function compile_groups_gml_compile_group_array_proc_lf2(arg0, arg1, arg2, arg3)
{
    var l_z = arg3[0];
    var l_this1 = arg2[6];
    arg3[l_z] = array_get(variable_struct_get(array_get(l_this1, l_this1[0]), field), arg3[l_z]);
    return 0;
}

function compile_groups_gml_compile_group_array_proc_lf3(arg0, arg1, arg2, arg3)
{
    var l_z = arg3[0];
    arg3[l_z] = arg2[4][ind][arg3[l_z] | 0];
    return 0;
}

function compile_groups_gml_compile_group_array_proc_lf4(arg0, arg1, arg2, arg3)
{
    var l_z = arg3[0];
    var l_this1 = arg2[6];
    arg3[l_z] = array_get(self.func(l_this1[l_this1[0]]), arg3[l_z]);
    return 0;
}

function compile_groups_gml_compile_group_array_proc_lf5(arg0, arg1, arg2, arg3)
{
    var l_z = arg3[0];
    var l_this1 = arg2[6];
    arg3[l_z] = array_get(variable_struct_get(array_get(l_this1, l_this1[0]), field), arg3[l_z]);
    return 0;
}

function compile_groups_gml_compile_group_array_proc_lf6(arg0, arg1, arg2, arg3)
{
    var l_z = arg3[0] - 1;
    arg3[0] = l_z - 1;
    arg2[4][ind][arg3[l_z]] = arg3[l_z + 1];
    arg3[l_z] = 0;
    arg3[l_z + 1] = 0;
    return 0;
}

function compile_groups_gml_compile_group_array_proc_lf7(arg0, arg1, arg2, arg3)
{
    var l_z = arg3[0] - 1;
    arg3[0] = l_z - 1;
    var l_this1 = arg2[6];
    var l_this2 = self.func(l_this1[l_this1[0]]);
    l_this2[arg3[l_z]] = arg3[l_z + 1];
    arg3[l_z] = 0;
    arg3[l_z + 1] = 0;
    return 0;
}

function compile_groups_gml_compile_group_array_proc_lf8(arg0, arg1, arg2, arg3)
{
    var l_z = arg3[0] - 1;
    arg3[0] = l_z - 1;
    var l_this1 = arg2[6];
    var l_arr = variable_struct_get(array_get(l_this1, l_this1[0]), field);
    l_arr[arg3[l_z]] = arg3[l_z + 1];
    arg3[l_z] = 0;
    arg3[l_z + 1] = 0;
    return 0;
}

function compile_groups_gml_compile_group_array_proc_lf9(arg0, arg1, arg2, arg3)
{
    var l_z = arg3[0] - 1;
    arg3[0] = l_z - 1;
    arg2[4][ind][arg3[l_z]] = arg3[l_z + 1];
    arg3[l_z] = 0;
    arg3[l_z + 1] = 0;
    return 0;
}

function compile_groups_gml_compile_group_array_proc_lf10(arg0, arg1, arg2, arg3)
{
    var l_z = arg3[0] - 1;
    arg3[0] = l_z - 1;
    var l_this1 = arg2[6];
    var l_this2 = self.func(l_this1[l_this1[0]]);
    l_this2[arg3[l_z]] = arg3[l_z + 1];
    arg3[l_z] = 0;
    arg3[l_z + 1] = 0;
    return 0;
}

function compile_groups_gml_compile_group_array_proc_lf11(arg0, arg1, arg2, arg3)
{
    var l_z = arg3[0] - 1;
    arg3[0] = l_z - 1;
    var l_this1 = arg2[6];
    var l_arr = variable_struct_get(array_get(l_this1, l_this1[0]), field);
    l_arr[arg3[l_z]] = arg3[l_z + 1];
    arg3[l_z] = 0;
    arg3[l_z + 1] = 0;
    return 0;
}

function compile_groups_gml_compile_group_array_proc_lf12(arg0, arg1, arg2, arg3)
{
    var l_z = arg3[0] - 1;
    arg3[0] = l_z - 1;
    var l_w = arg2[4][ind];
    var l_k = arg3[l_z];
    l_w[l_k] = global.gml_op_apply_fns[op](l_w[l_k], arg3[l_z + 1]);
    arg3[l_z] = 0;
    arg3[l_z + 1] = 0;
    return 0;
}

function compile_groups_gml_compile_group_array_proc_lf13(arg0, arg1, arg2, arg3)
{
    var l_z = arg3[0] - 1;
    arg3[0] = l_z - 1;
    var l_this1 = arg2[6];
    var l_w = self.func(l_this1[l_this1[0]]);
    var l_k = arg3[l_z];
    l_w[l_k] = global.gml_op_apply_fns[op](l_w[l_k], arg3[l_z + 1]);
    arg3[l_z] = 0;
    arg3[l_z + 1] = 0;
    return 0;
}

function compile_groups_gml_compile_group_array_proc_lf14(arg0, arg1, arg2, arg3)
{
    var l_z = arg3[0] - 1;
    arg3[0] = l_z - 1;
    var l_this1 = arg2[6];
    var l_w = variable_struct_get(array_get(l_this1, l_this1[0]), field);
    var l_k = arg3[l_z];
    l_w[l_k] = global.gml_op_apply_fns[op](l_w[l_k], arg3[l_z + 1]);
    arg3[l_z] = 0;
    arg3[l_z + 1] = 0;
    return 0;
}

function compile_groups_gml_compile_group_array_proc_lf15(arg0, arg1, arg2, arg3)
{
    var l_z = arg3[0] - 1;
    arg3[0] = l_z - 1;
    var l_w = arg2[4][ind];
    var l_k = arg3[l_z];
    l_w[l_k] = global.gml_op_apply_fns[op](l_w[l_k], arg3[l_z + 1]);
    arg3[l_z] = 0;
    arg3[l_z + 1] = 0;
    return 0;
}

function compile_groups_gml_compile_group_array_proc_lf16(arg0, arg1, arg2, arg3)
{
    var l_z = arg3[0] - 1;
    arg3[0] = l_z - 1;
    var l_this1 = arg2[6];
    var l_w = self.func(l_this1[l_this1[0]]);
    var l_k = arg3[l_z];
    l_w[l_k] = global.gml_op_apply_fns[op](l_w[l_k], arg3[l_z + 1]);
    arg3[l_z] = 0;
    arg3[l_z + 1] = 0;
    return 0;
}

function compile_groups_gml_compile_group_array_proc_lf17(arg0, arg1, arg2, arg3)
{
    var l_z = arg3[0] - 1;
    arg3[0] = l_z - 1;
    var l_this1 = arg2[6];
    var l_w = variable_struct_get(array_get(l_this1, l_this1[0]), field);
    var l_k = arg3[l_z];
    l_w[l_k] = global.gml_op_apply_fns[op](l_w[l_k], arg3[l_z + 1]);
    arg3[l_z] = 0;
    arg3[l_z + 1] = 0;
    return 0;
}

function compile_groups_gml_compile_group_array_proc(arg0, arg1, arg2)
{
    var l__g = arg0;
    
    switch (l__g.__enumIndex__)
    {
        case 67:
            var l_d = l__g.h_d;
            var l_arr = l__g.h_arr;
            var l_ind = l__g.h_index;
            var l__g1 = l_arr;
            var l_i;
            
            if (l__g1.__enumIndex__ == 42)
                l_i = variable_struct_get(global.gml_compile_curr_script.h_local_map.h_obj, l__g1.h_name);
            else
                l_i = -1;
            
            if (l_i >= 0)
            {
                if (gml_compile_node(l_ind, arg1, true))
                    return true;
                
                ds_list_add(arg1, vm_v2_gml_action_closure_bind(l_d, "local[]", 
                {
                    ind: l_i
                }, compile_groups_gml_compile_group_array_proc_lf3));
                return false;
            }
            
            l__g1 = l_arr;
            
            if (l__g1.__enumIndex__ == 52)
            {
                if (l__g1.h_obj.__enumIndex__ == 13)
                {
                    var l_s = l__g1.h_field;
                    
                    if (gml_compile_node(l_ind, arg1, true))
                        return true;
                    
                    var l_fastGetter = variable_struct_get(global.api_api_fast_field_getters.h_obj, l_s);
                    
                    if (l_fastGetter != undefined)
                    {
                        ds_list_add(arg1, vm_v2_gml_action_closure_bind(l_d, "self.fast_field[]", 
                        {
                            func: l_fastGetter
                        }, compile_groups_gml_compile_group_array_proc_lf4));
                        return false;
                    }
                    else
                    {
                        ds_list_add(arg1, vm_v2_gml_action_closure_bind(l_d, "self.field[]", 
                        {
                            field: l_s
                        }, compile_groups_gml_compile_group_array_proc_lf5));
                        return false;
                    }
                }
            }
            
            if (compile_gml_compile_args_proc(arg1, [l_arr, l_ind]))
                return true;
            
            ds_list_add(arg1, gml_action_index(l_d));
            break;
        
        case 73:
            var l_d = l__g.h_d;
            var l_arr = l__g.h_arr;
            var l_ind = l__g.h_index;
            var l__g1 = l_arr;
            var l_i;
            
            if (l__g1.__enumIndex__ == 42)
                l_i = variable_struct_get(global.gml_compile_curr_script.h_local_map.h_obj, l__g1.h_name);
            else
                l_i = -1;
            
            if (l_i >= 0)
            {
                if (gml_compile_node(l_ind, arg1, true))
                    return true;
                
                ds_list_add(arg1, vm_v2_gml_action_closure_bind(l_d, "local[]", 
                {
                    ind: l_i
                }, compile_groups_gml_compile_group_array_proc_lf));
                return false;
            }
            
            l__g1 = l_arr;
            
            if (l__g1.__enumIndex__ == 52)
            {
                if (l__g1.h_obj.__enumIndex__ == 13)
                {
                    var l_s = l__g1.h_field;
                    
                    if (gml_compile_node(l_ind, arg1, true))
                        return true;
                    
                    var l_fastGetter = variable_struct_get(global.api_api_fast_field_getters.h_obj, l_s);
                    
                    if (l_fastGetter != undefined)
                    {
                        ds_list_add(arg1, vm_v2_gml_action_closure_bind(l_d, "self.fast_field[]", 
                        {
                            func: l_fastGetter
                        }, compile_groups_gml_compile_group_array_proc_lf1));
                        return false;
                    }
                    else
                    {
                        ds_list_add(arg1, vm_v2_gml_action_closure_bind(l_d, "self.field[]", 
                        {
                            field: l_s
                        }, compile_groups_gml_compile_group_array_proc_lf2));
                        return false;
                    }
                }
            }
            
            if (compile_gml_compile_args_proc(arg1, [l_arr, l_ind]))
                return true;
            
            ds_list_add(arg1, gml_action_index(l_d));
            break;
        
        case 68:
            var l_d = l__g.h_d;
            var l_arr = l__g.h_arr;
            var l_ind = l__g.h_index;
            var l_val = l__g.h_val;
            var l__g1 = l_arr;
            var l_i;
            
            if (l__g1.__enumIndex__ == 42)
                l_i = variable_struct_get(global.gml_compile_curr_script.h_local_map.h_obj, l__g1.h_name);
            else
                l_i = -1;
            
            if (l_i >= 0)
            {
                if (compile_gml_compile_args_proc(arg1, [l_ind, l_val]))
                    return true;
                
                ds_list_add(arg1, vm_v2_gml_action_closure_bind(l_d, "local[]=", 
                {
                    ind: l_i
                }, compile_groups_gml_compile_group_array_proc_lf9));
                return false;
            }
            
            l__g1 = l_arr;
            
            if (l__g1.__enumIndex__ == 52)
            {
                if (l__g1.h_obj.__enumIndex__ == 13)
                {
                    var l_s = l__g1.h_field;
                    
                    if (compile_gml_compile_args_proc(arg1, [l_ind, l_val]))
                        return true;
                    
                    var l_fastGetter = variable_struct_get(global.api_api_fast_field_getters.h_obj, l_s);
                    
                    if (l_fastGetter != undefined)
                    {
                        ds_list_add(arg1, vm_v2_gml_action_closure_bind(l_d, "self.fast_field[]=", 
                        {
                            func: l_fastGetter
                        }, compile_groups_gml_compile_group_array_proc_lf10));
                        return false;
                    }
                    else
                    {
                        ds_list_add(arg1, vm_v2_gml_action_closure_bind(l_d, "self.field[]=", 
                        {
                            field: l_s
                        }, compile_groups_gml_compile_group_array_proc_lf11));
                        return false;
                    }
                }
            }
            
            if (compile_gml_compile_args_proc(arg1, [l_arr, l_ind, l_val]))
                return true;
            
            ds_list_add(arg1, gml_action_index_set(l_d));
            break;
        
        case 74:
            var l_d = l__g.h_d;
            var l_arr = l__g.h_arr;
            var l_ind = l__g.h_index;
            var l_val = l__g.h_val;
            var l__g1 = l_arr;
            var l_i;
            
            if (l__g1.__enumIndex__ == 42)
                l_i = variable_struct_get(global.gml_compile_curr_script.h_local_map.h_obj, l__g1.h_name);
            else
                l_i = -1;
            
            if (l_i >= 0)
            {
                if (compile_gml_compile_args_proc(arg1, [l_ind, l_val]))
                    return true;
                
                ds_list_add(arg1, vm_v2_gml_action_closure_bind(l_d, "local[]=", 
                {
                    ind: l_i
                }, compile_groups_gml_compile_group_array_proc_lf6));
                return false;
            }
            
            l__g1 = l_arr;
            
            if (l__g1.__enumIndex__ == 52)
            {
                if (l__g1.h_obj.__enumIndex__ == 13)
                {
                    var l_s = l__g1.h_field;
                    
                    if (compile_gml_compile_args_proc(arg1, [l_ind, l_val]))
                        return true;
                    
                    var l_fastGetter = variable_struct_get(global.api_api_fast_field_getters.h_obj, l_s);
                    
                    if (l_fastGetter != undefined)
                    {
                        ds_list_add(arg1, vm_v2_gml_action_closure_bind(l_d, "self.fast_field[]=", 
                        {
                            func: l_fastGetter
                        }, compile_groups_gml_compile_group_array_proc_lf7));
                        return false;
                    }
                    else
                    {
                        ds_list_add(arg1, vm_v2_gml_action_closure_bind(l_d, "self.field[]=", 
                        {
                            field: l_s
                        }, compile_groups_gml_compile_group_array_proc_lf8));
                        return false;
                    }
                }
            }
            
            if (compile_gml_compile_args_proc(arg1, [l_arr, l_ind, l_val]))
                return true;
            
            ds_list_add(arg1, gml_action_index_set(l_d));
            break;
        
        case 69:
            var l_d = l__g.h_d;
            var l_arr = l__g.h_arr;
            var l_ind = l__g.h_index;
            var l_op = l__g.h_op;
            var l_val = l__g.h_val;
            var l__g1 = l_arr;
            var l_i;
            
            if (l__g1.__enumIndex__ == 42)
                l_i = variable_struct_get(global.gml_compile_curr_script.h_local_map.h_obj, l__g1.h_name);
            else
                l_i = -1;
            
            if (l_i >= 0)
            {
                if (compile_gml_compile_args_proc(arg1, [l_ind, l_val]))
                    return true;
                
                ds_list_add(arg1, vm_v2_gml_action_closure_bind(l_d, "local[]=", 
                {
                    ind: l_i,
                    op: l_op
                }, compile_groups_gml_compile_group_array_proc_lf12));
                return false;
            }
            
            l__g1 = l_arr;
            
            if (l__g1.__enumIndex__ == 52)
            {
                if (l__g1.h_obj.__enumIndex__ == 13)
                {
                    var l_s = l__g1.h_field;
                    
                    if (compile_gml_compile_args_proc(arg1, [l_ind, l_val]))
                        return true;
                    
                    var l_fastGetter = variable_struct_get(global.api_api_fast_field_getters.h_obj, l_s);
                    
                    if (l_fastGetter != undefined)
                    {
                        ds_list_add(arg1, vm_v2_gml_action_closure_bind(l_d, "self.fast_field[]=", 
                        {
                            func: l_fastGetter,
                            op: l_op
                        }, compile_groups_gml_compile_group_array_proc_lf13));
                        return false;
                    }
                    else
                    {
                        ds_list_add(arg1, vm_v2_gml_action_closure_bind(l_d, "self.field[]=", 
                        {
                            field: l_s,
                            op: l_op
                        }, compile_groups_gml_compile_group_array_proc_lf14));
                        return false;
                    }
                }
            }
            
            if (compile_gml_compile_args_proc(arg1, [l_arr, l_ind, l_val]))
                return true;
            
            ds_list_add(arg1, gml_action_index_aop(l_d, l_op));
            break;
        
        case 75:
            var l_d = l__g.h_d;
            var l_arr = l__g.h_arr;
            var l_ind = l__g.h_index;
            var l_op = l__g.h_op;
            var l_val = l__g.h_val;
            var l__g1 = l_arr;
            var l_i;
            
            if (l__g1.__enumIndex__ == 42)
                l_i = variable_struct_get(global.gml_compile_curr_script.h_local_map.h_obj, l__g1.h_name);
            else
                l_i = -1;
            
            if (l_i >= 0)
            {
                if (compile_gml_compile_args_proc(arg1, [l_ind, l_val]))
                    return true;
                
                ds_list_add(arg1, vm_v2_gml_action_closure_bind(l_d, "local[]=", 
                {
                    ind: l_i,
                    op: l_op
                }, compile_groups_gml_compile_group_array_proc_lf15));
                return false;
            }
            
            l__g1 = l_arr;
            
            if (l__g1.__enumIndex__ == 52)
            {
                if (l__g1.h_obj.__enumIndex__ == 13)
                {
                    var l_s = l__g1.h_field;
                    
                    if (compile_gml_compile_args_proc(arg1, [l_ind, l_val]))
                        return true;
                    
                    var l_fastGetter = variable_struct_get(global.api_api_fast_field_getters.h_obj, l_s);
                    
                    if (l_fastGetter != undefined)
                    {
                        ds_list_add(arg1, vm_v2_gml_action_closure_bind(l_d, "self.fast_field[]=", 
                        {
                            func: l_fastGetter,
                            op: l_op
                        }, compile_groups_gml_compile_group_array_proc_lf16));
                        return false;
                    }
                    else
                    {
                        ds_list_add(arg1, vm_v2_gml_action_closure_bind(l_d, "self.field[]=", 
                        {
                            field: l_s,
                            op: l_op
                        }, compile_groups_gml_compile_group_array_proc_lf17));
                        return false;
                    }
                }
            }
            
            if (compile_gml_compile_args_proc(arg1, [l_arr, l_ind, l_val]))
                return true;
            
            ds_list_add(arg1, gml_action_index_aop(l_d, l_op));
            break;
        
        case 70:
            if (compile_gml_compile_args_proc(arg1, [l__g.h_arr, l__g.h_index1, l__g.h_index2]))
                return true;
            
            ds_list_add(arg1, gml_action_index2d(l__g.h_d));
            break;
        
        case 76:
            if (compile_gml_compile_args_proc(arg1, [l__g.h_arr, l__g.h_index1, l__g.h_index2]))
                return true;
            
            ds_list_add(arg1, gml_action_index2d(l__g.h_d));
            break;
        
        case 71:
            if (compile_gml_compile_args_proc(arg1, [l__g.h_arr, l__g.h_index1, l__g.h_index2, l__g.h_val]))
                return true;
            
            ds_list_add(arg1, gml_action_index2d_set(l__g.h_d));
            break;
        
        case 77:
            if (compile_gml_compile_args_proc(arg1, [l__g.h_arr, l__g.h_index1, l__g.h_index2, l__g.h_val]))
                return true;
            
            ds_list_add(arg1, gml_action_index2d_set(l__g.h_d));
            break;
        
        case 72:
            if (compile_gml_compile_args_proc(arg1, [l__g.h_arr, l__g.h_index1, l__g.h_index2, l__g.h_val]))
                return true;
            
            ds_list_add(arg1, gml_action_index2d_aop(l__g.h_d, l__g.h_op));
            break;
        
        case 78:
            if (compile_gml_compile_args_proc(arg1, [l__g.h_arr, l__g.h_index1, l__g.h_index2, l__g.h_val]))
                return true;
            
            ds_list_add(arg1, gml_action_index2d_aop(l__g.h_d, l__g.h_op));
            break;
        
        default:
            return undefined;
    }
    
    return false;
}

function compile_groups_gml_compile_group_array_init()
{
    gml_compile_set_handlers(compile_groups_gml_compile_group_array_proc, ["index", "index_set", "index_aop", "raw_id", "raw_id_set", "raw_id_aop", "index2d", "index2d_set", "index2d_aop", "raw_id2d", "raw_id2d_set", "raw_id2d_aop"]);
}

function gml_stack_push(arg0, arg1)
{
    var l_i = arg0[0] + 1;
    
    if (l_i >= array_length(arg0))
        arg0[array_length(arg0) * 2] = 0;
    
    arg0[l_i] = arg1;
    arg0[0] = l_i;
}

function gml_stack_pop(arg0)
{
    var l_i = arg0[0];
    var l_r = arg0[l_i];
    arg0[l_i] = 0;
    arg0[0] = l_i - 1;
    return l_r;
}

function gml_stack_pop_multi(arg0, arg1)
{
    var l_arr = [];
    var l_k = arg0[0] - arg1;
    array_copy(l_arr, 0, arg0, l_k + 1, arg1);
    array_copy(arg0, l_k + 1, global.gml_stack_fill_value_arr, 0, arg1);
    arg0[0] = l_k;
    return l_arr;
}

function gml_stack_discard(arg0)
{
    var l_i = arg0[0];
    arg0[l_i] = 0;
    arg0[0] = l_i - 1;
}

function gml_stack_discard_multi(arg0, arg1)
{
    var l_i = arg0[0] - arg1;
    array_copy(arg0, l_i + 1, global.gml_stack_fill_value_arr, 0, arg1);
    arg0[0] = l_i;
}

function api_api_version(arg0) constructor
{
    static h_name = undefined;
    static h_has_string_escape_characters = undefined;
    static h_has_literal_strings = undefined;
    static h_has_func_literal = undefined;
    static h_has_constructor = undefined;
    static h_has_try_catch = undefined;
    static h_has_value_calls = undefined;
    static h_has_delete = undefined;
    static h_default_ret_value = undefined;
    static h_expr_macros = undefined;
    static h_int_self = undefined;
    
    static h_to_string = function()
    {
        return "ApiVersion(\"" + h_name + "\")";
    };
    
    static __class__ = global.mt_api_api_version;
    
    h_int_self = false;
    h_expr_macros = false;
    h_default_ret_value = undefined;
    h_has_delete = false;
    h_has_value_calls = false;
    h_has_try_catch = false;
    h_has_constructor = false;
    h_has_func_literal = false;
    h_has_literal_strings = false;
    h_has_string_escape_characters = false;
    h_name = arg0;
}

function api_api_version_create(arg0)
{
    var l_v = new api_api_version("v" + gml_std_Std_stringify(arg0 / 10));
    var l_v2 = arg0 >= 20;
    var l_v23 = arg0 >= 23;
    var l_mod = false;
    l_v.h_int_self = !l_v23;
    l_v.h_has_string_escape_characters = l_v2;
    l_v.h_has_literal_strings = l_v2;
    l_v.h_has_func_literal = l_v23;
    l_v.h_has_constructor = l_v23;
    l_v.h_has_try_catch = l_v23 || l_mod;
    l_v.h_has_value_calls = l_v23;
    l_v.h_expr_macros = !l_v23;
    l_v.h_has_delete = l_v23;
    l_v.h_default_ret_value = l_v23 ? undefined : 0;
    return l_v;
}

function gml_parser_macro(arg0, arg1, arg2) constructor
{
    static h_pos = undefined;
    static h_name = undefined;
    static h_config = undefined;
    static h_tokens = undefined;
    static __class__ = global.mt_gml_parser_macro;
    
    h_tokens = [];
    h_name = arg0;
    h_config = arg1;
    h_pos = arg2;
}

function gml_std_StringBuf() constructor
{
    static h_str = undefined;
    static h_strLen = undefined;
    static h_arr = undefined;
    static h_arrLen = undefined;
    static h_arrMax = undefined;
    static h_length = undefined;
    
    static h_store = function()
    {
        var l_i = h_arrLen++;
        var l_m = h_arrMax;
        var l_arr = h_arr;
        
        if (l_i >= l_m)
        {
            l_m *= 2;
            l_arr[l_m - 1] = undefined;
            h_arrMax = l_m;
        }
        
        l_arr[l_i] = h_str;
        h_str = "";
        h_strLen = 0;
    };
    
    static h_addChar = function(arg0)
    {
        h_str += chr(arg0);
        h_length += 1;
        
        if (++h_strLen >= 128)
            self.h_store();
    };
    
    static h_add = function(arg0)
    {
        var l_s = gml_std_Std_stringify(arg0);
        var l_n = string_byte_length(l_s);
        h_str += l_s;
        h_length += l_n;
        h_strLen += l_n;
        
        if (h_strLen >= 128)
            self.h_store();
    };
    
    static h_toString = function()
    {
        var l_arr = h_arr;
        var l_buf = global.gml_std_StringBuf_buffer;
        buffer_seek(l_buf, buffer_seek_start, 0);
        var l_i = 0;
        var l__g1 = h_arrLen;
        
        while (l_i < l__g1)
        {
            buffer_write(l_buf, buffer_text, l_arr[l_i]);
            l_i++;
        }
        
        buffer_write(l_buf, buffer_string, h_str);
        buffer_seek(l_buf, buffer_seek_start, 0);
        return buffer_read(l_buf, buffer_string);
    };
    
    static __class__ = global.mt_gml_std_StringBuf;
    
    h_length = 0;
    h_arrMax = 4;
    h_arrLen = 0;
    h_arr = array_create(4);
    h_strLen = 0;
    h_str = "";
}

function api_api_var() constructor
{
    static h_name = undefined;
    static h_flags = undefined;
    static h_func = undefined;
    static h_type_check = undefined;
    
    static h_set = function(arg0, arg1)
    {
        var l_flags = 0;
        
        if (string_ord_at(arg0, 1) == 58)
        {
            arg0 = gml_std_string_substring(arg0, 1);
            l_flags |= 4;
        }
        
        var l_typeCheck = gml_type_check_any;
        var l_pos = gml_std_string_pos_ext_haxe(arg0, ":");
        
        if (l_pos >= 0)
        {
            var l_typeStr = gml_std_string_substring(arg0, l_pos + 1);
            l_typeCheck = variable_struct_get(global.gml_type_check_map.h_obj, l_typeStr);
            
            if (l_typeCheck == undefined)
                show_error("`" + l_typeStr + "` is not a known type in `" + arg0 + "`", true);
            
            arg0 = gml_std_string_substring(arg0, 0, l_pos);
        }
        
        h_name = gml_parse_name(arg0, 0);
        
        if (gml_std_string_pos_ext_haxe(arg0, "[") >= 0)
            l_flags |= 2;
        
        if (gml_std_string_pos_ext_haxe(arg0, "*") >= 0)
            l_flags |= 1;
        
        h_flags = l_flags;
        h_func = arg1;
        h_type_check = l_typeCheck;
    };
    
    static __class__ = global.mt_api_api_var;
    
    h_flags = 0;
}

function gml_enum(arg0, arg1) constructor
{
    static h_name = undefined;
    static h_pos = undefined;
    static h_ctr_list = undefined;
    static h_ctr_map = undefined;
    static h_has_values = undefined;
    
    static h_add = function(arg0, arg1)
    {
        var l_ctr = new gml_enum_ctr(arg0, h_pos, gml_node_number(h_pos, arg1, string(arg1)));
        l_ctr.h_value = arg1;
        array_push(h_ctr_list, l_ctr);
        variable_struct_set(h_ctr_map.h_obj, arg0, l_ctr);
    };
    
    static h_print = function()
    {
        var l_r = "(enum " + h_name + " { ";
        var l_z = false;
        var l__g = 0;
        var l__g1 = h_ctr_list;
        
        while (l__g < array_length(l__g1))
        {
            var l_ctr = l__g1[l__g];
            l__g++;
            
            if (l_z)
                l_r += ", ";
            else
                l_z = true;
            
            l_r += (l_ctr.h_name + " = " + gml_std_Std_stringify(l_ctr.h_value));
        }
        
        return l_r + " })";
    };
    
    h_has_values = false;
    h_ctr_map = new haxe_ds_string_map();
    h_ctr_list = [];
    h_name = arg0;
    h_pos = arg1;
}

function gml_enum_create_builtin(arg0)
{
    var l_e = new gml_enum(arg0, new gml_pos(new gml_source("built-in", ""), 0, 0));
    variable_struct_set(global.gml_enum_map.h_obj, arg0, l_e);
    return l_e;
}

function gml_enum_ctr(arg0, arg1, arg2) constructor
{
    static h_name = undefined;
    static h_pos = undefined;
    static h_node = undefined;
    static h_value = undefined;
    static __class__ = global.mt_gml_enum_ctr;
    
    h_value = undefined;
    h_name = arg0;
    h_pos = arg1;
    h_node = arg2;
}

function gml_macro(arg0, arg1, arg2, arg3) constructor
{
    static h_name = undefined;
    static h_node = undefined;
    static h_is_expr = undefined;
    static h_is_stat = undefined;
    static __class__ = global.mt_gml_macro;
    
    h_name = arg0;
    h_node = arg1;
    h_is_expr = arg2;
    h_is_stat = arg3;
}

function ast_gml_macro_proc_patch(arg0, arg1)
{
    var l_changed = false;
    var l_i = -1;
    var l_n = array_length(arg0);
    
    if (arg1)
    {
        ds_list_clear(global.ast_gml_macro_proc_next_exclude_list);
        global.ast_gml_macro_proc_next_exclude_map.h_clear();
    }
    
    while (++l_i < l_n)
    {
        var l_tk = arg0[l_i];
        var l_id;
        
        if (l_tk.__enumIndex__ == 12)
        {
            var l_pos = l_tk.h_d;
            l_id = l_tk.h_id;
        }
        else
        {
            continue;
        }
        
        var l_nm = variable_struct_get(global.ast_gml_macro_proc_map.h_obj, l_id);
        
        if (l_nm == undefined)
            continue;
        
        if (variable_struct_exists(global.ast_gml_macro_proc_exclude_map.h_obj, l_id))
            continue;
        
        if (!variable_struct_exists(global.ast_gml_macro_proc_next_exclude_map.h_obj, l_id))
        {
            variable_struct_set(global.ast_gml_macro_proc_next_exclude_map.h_obj, l_id, true);
            ds_list_add(global.ast_gml_macro_proc_next_exclude_list, l_id);
        }
        
        var l_ntks = l_nm.h_tokens;
        var l_ntkn = array_length(l_ntks);
        
        switch (l_ntkn)
        {
            case 0:
                gml_std_gml_internal_ArrayImpl_splice(arg0, l_i, 1);
                l_i--;
                l_n--;
                break;
            
            case 1:
                arg0[l_i] = l_ntks[0];
                break;
            
            default:
                arg0[l_i] = l_ntks[0];
                l_n += (l_ntkn - 1);
                var l_k = l_ntkn;
                
                while (--l_k >= 1)
                    array_insert(arg0, l_i + 1, l_ntks[l_k]);
        }
        
        l_changed = true;
    }
    
    if (l_changed && arg1)
    {
        var l_k = 0;
        var l__g1 = ds_list_size(global.ast_gml_macro_proc_next_exclude_list);
        
        while (l_k < l__g1)
        {
            variable_struct_set(global.ast_gml_macro_proc_exclude_map.h_obj, global.ast_gml_macro_proc_next_exclude_list[| l_k], true);
            l_k++;
        }
    }
    
    return l_changed;
}

function ast_gml_macro_proc_run(arg0, arg1)
{
    global.ast_gml_macro_proc_map.h_clear();
    ds_list_clear(global.ast_gml_macro_proc_list);
    var l__g = 0;
    
    while (l__g < array_length(arg1))
    {
        var l_b = arg1[l__g];
        l__g++;
        
        if (l_b.h_error_text == undefined)
        {
            var l_macros = l_b.h_source.h_parser.h_macros;
            var l_i = 0;
            var l__g2 = array_length(l_macros);
            
            while (l_i < l__g2)
            {
                var l_m = l_macros[l_i];
                var l_config = l_m.h_config;
                
                if (l_config != undefined && l_config != global.live_config)
                {
                }
                else
                {
                    if (variable_struct_exists(global.ast_gml_macro_proc_map.h_obj, l_m.h_name))
                    {
                        arg0.h_error_text = "Macro redifinition (first at " + variable_struct_get(global.ast_gml_macro_proc_map.h_obj, l_m.h_name).h_pos.h_to_string() + ")";
                        arg0.h_error_pos = l_m.h_pos;
                        return true;
                    }
                    
                    variable_struct_set(global.ast_gml_macro_proc_map.h_obj, l_m.h_name, l_m);
                    ds_list_add(global.ast_gml_macro_proc_list, l_m);
                }
                
                l_i++;
            }
        }
    }
    
    l__g = 0;
    var l__g1 = global.ast_gml_macro_proc_list;
    
    while (l__g < ds_list_size(l__g1))
    {
        var l_m = l__g1[| l__g];
        l__g++;
        global.ast_gml_macro_proc_exclude_map.h_clear();
        variable_struct_set(global.ast_gml_macro_proc_exclude_map.h_obj, l_m.h_name, true);
        var l_tks = l_m.h_tokens;
        
        for (var l_step = 0; l_step < 64; l_step++)
        {
            if (!ast_gml_macro_proc_patch(l_tks, true))
                break;
        }
    }
    
    global.ast_gml_macro_proc_exclude_map.h_clear();
    l__g = 0;
    
    while (l__g < array_length(arg1))
    {
        var l_b = arg1[l__g];
        l__g++;
        
        if (l_b.h_error_text == undefined)
        {
            if (ast_gml_macro_proc_patch(l_b.h_tokens, false))
                l_b.h_length = array_length(l_b.h_tokens);
        }
    }
    
    return false;
}

function ast_gml_node_def_param(arg0, arg1) constructor
{
    static h_name = undefined;
    static h_type = undefined;
    static __class__ = global.mt_ast_gml_node_def_param;
    
    h_name = arg0;
    h_type = arg1;
}

function ast_gml_node_def_ctr(arg0, arg1) constructor
{
    static h_name = undefined;
    static h_params = undefined;
    static h_has_children = undefined;
    static __class__ = global.mt_ast_gml_node_def_ctr;
    
    h_has_children = false;
    h_name = arg0;
    h_params = arg1;
    var l__g = 0;
    
    while (l__g < array_length(arg1))
    {
        var l_param = arg1[l__g];
        l__g++;
        var l_t = l_param.h_type;
        
        if (l_t == 2 || l_t == 1)
        {
            h_has_children = true;
            break;
        }
    }
}

function ast_gml_node_tools_ni_concat_pos_iter(arg0, arg1)
{
    gml_std_haxe_enum_tools_setParameter(arg0, 0, gml_std_haxe_enum_tools_getParameter(arg0, 0).h_concat(global.ast_gml_node_tools_ni_concat_pos_pos));
    return gml_node_tools_seek(arg0, undefined, ast_gml_node_tools_ni_concat_pos_iter);
}

function ast_gml_node_tools_ni_concat_pos_rec(arg0, arg1)
{
    global.ast_gml_node_tools_ni_concat_pos_pos = arg1;
    ast_gml_node_tools_ni_concat_pos_iter(arg0, undefined);
}

function ast_gml_node_tools_ni_get_pos_string(arg0)
{
    return gml_std_haxe_enum_tools_getParameter(arg0, 0).h_to_string();
}

function gml_pos(arg0, arg1, arg2) constructor
{
    static h_src = undefined;
    static h_row = undefined;
    static h_col = undefined;
    static h_next = undefined;
    
    static h_copy = function()
    {
        var l_r = new gml_pos(h_src, h_row, h_col);
        
        if (h_next != undefined)
            l_r.h_next = h_next.h_copy();
        
        return l_r;
    };
    
    static h_concat = function(arg0)
    {
        var l_r = arg0.h_copy();
        var l_l = l_r;
        
        while (l_l.h_next != undefined)
            l_l = l_l.h_next;
        
        l_l.h_next = self;
        return l_r;
    };
    
    static h_to_string = function()
    {
        var l_r = h_src.h_name + ("[L" + string(h_row) + ",c" + string(h_col) + "]");
        
        if (h_next != undefined)
            l_r += (">" + h_next.h_to_string());
        
        return l_r;
    };
    
    static __class__ = global.mt_gml_pos;
    
    h_next = undefined;
    h_src = arg0;
    h_row = arg1;
    h_col = arg2;
}

function gml_script(arg0, arg1, arg2) constructor
{
    static h_name = undefined;
    static h_pos = undefined;
    static h_index = undefined;
    static h_node = undefined;
    static h_source = undefined;
    static h_local_map = undefined;
    static h_local_names = undefined;
    static h_locals = undefined;
    static h_prefix_statements = undefined;
    static h_is_function = undefined;
    static h_is_constructor = undefined;
    static h_parent_name = undefined;
    static h_parent_is_global = undefined;
    static h_parent_argc = undefined;
    static h_static_map = undefined;
    static h_static_count = undefined;
    static h_static_values = undefined;
    static h_static_ready = undefined;
    static h_arguments = undefined;
    static h_named_args = undefined;
    static h_actions = undefined;
    
    static h_destroy = function()
    {
        h_local_map = undefined;
        h_static_map = undefined;
        
        if (h_actions != undefined)
        {
            var l_this1 = h_actions;
            var l_i = 0;
            var l__g1 = ds_list_size(l_this1);
            
            while (l_i < l__g1)
            {
                var l_q = l_this1[| l_i];
                
                if (l_q.__enumIndex__ == 97)
                    ds_map_destroy(l_q.h_jumptable);
                
                l_i++;
            }
            
            ds_list_destroy(l_this1);
            h_actions = undefined;
        }
    };
    
    static h_is_valid = function()
    {
        return h_actions != undefined;
    };
    
    static h_seek = function(arg0, arg1)
    {
        var l__scr = global.gml_program_seek_script;
        global.gml_program_seek_script = self;
        arg0(h_node, arg1);
        global.gml_program_seek_script = l__scr;
    };
    
    static __class__ = global.mt_gml_script;
    
    h_actions = undefined;
    h_named_args = undefined;
    h_arguments = 0;
    h_static_ready = [];
    h_static_values = [];
    h_static_count = 0;
    h_static_map = new haxe_ds_string_map();
    h_parent_argc = 0;
    h_parent_is_global = false;
    h_parent_name = undefined;
    h_is_constructor = false;
    h_is_function = false;
    h_prefix_statements = undefined;
    h_locals = 0;
    h_local_names = [];
    h_local_map = new haxe_ds_string_map();
    h_source = arg0;
    h_name = arg1;
    h_pos = arg2;
}

function gml_source(arg0, arg1, arg2, arg3) constructor
{
    static h_name = undefined;
    static h_code = undefined;
    static h_main = undefined;
    static h_length = undefined;
    static h_opt = undefined;
    static h_parser = undefined;
    static h___eof = undefined;
    
    static h_get_eof = function()
    {
        if (h___eof == undefined)
            h___eof = new gml_pos(self, string_count("\n", h_code) + 2, 1);
        
        return h___eof;
    };
    
    static h_version = undefined;
    
    static h_to_string = function()
    {
        return "GmlSource(\"" + h_name + "\")";
    };
    
    static __class__ = global.mt_gml_source;
    
    if (arg3 == undefined)
        arg3 = false;
    
    h_version = undefined;
    h___eof = undefined;
    h_name = arg0;
    h_code = arg1;
    h_opt = arg3;
    
    if (arg2 == undefined)
    {
        arg2 = arg0;
        var l_i = gml_std_string_last_pos_haxe(arg2, "/");
        var l_k = gml_std_string_last_pos_haxe(arg2, "\\");
        
        if (l_i < 0 || l_k > l_i)
            l_i = l_k;
        
        l_i = gml_std_string_pos_ext_haxe(arg2, ".");
        
        if (l_i >= 0)
            arg2 = gml_std_string_substring(arg2, 0, l_i);
    }
    
    h_main = arg2;
    h_length = string_length(arg1);
}

function data_gml_keyword_mapper_init_v(arg0)
{
    return gml_token_keyword(arg0, 0);
}

function data_gml_keyword_mapper_init_v1(arg0)
{
    return gml_token_number(arg0, 1, undefined);
}

function data_gml_keyword_mapper_init_v2(arg0)
{
    return gml_token_number(arg0, 0, undefined);
}

function data_gml_keyword_mapper_init_v3(arg0)
{
    return gml_token_number(arg0, -3, undefined);
}

function data_gml_keyword_mapper_init_v4(arg0)
{
    return gml_token_number(arg0, -4, undefined);
}

function data_gml_keyword_mapper_init_v5(arg0)
{
    return gml_token_undefined_hx(arg0);
}

function data_gml_keyword_mapper_init_v6(arg0)
{
    return gml_token_cub_open(arg0);
}

function data_gml_keyword_mapper_init_v7(arg0)
{
    return gml_token_cub_close(arg0);
}

function data_gml_keyword_mapper_init_v8(arg0)
{
    return gml_token_keyword(arg0, 1);
}

function data_gml_keyword_mapper_init_v9(arg0)
{
    return gml_token_keyword(arg0, 2);
}

function data_gml_keyword_mapper_init_v10(arg0)
{
    return gml_token_keyword(arg0, 3);
}

function data_gml_keyword_mapper_init_v11(arg0)
{
    return gml_token_keyword(arg0, 4);
}

function data_gml_keyword_mapper_init_v12(arg0)
{
    return gml_token_keyword(arg0, 5);
}

function data_gml_keyword_mapper_init_v13(arg0)
{
    return gml_token_keyword(arg0, 6);
}

function data_gml_keyword_mapper_init_v14(arg0)
{
    return gml_token_keyword(arg0, 7);
}

function data_gml_keyword_mapper_init_v15(arg0)
{
    return gml_token_keyword(arg0, 8);
}

function data_gml_keyword_mapper_init_v16(arg0)
{
    return gml_token_keyword(arg0, 9);
}

function data_gml_keyword_mapper_init_v17(arg0)
{
    return gml_token_keyword(arg0, 14);
}

function data_gml_keyword_mapper_init_v18(arg0)
{
    return gml_token_keyword(arg0, 10);
}

function data_gml_keyword_mapper_init_v19(arg0)
{
    return gml_token_keyword(arg0, 11);
}

function data_gml_keyword_mapper_init_v20(arg0)
{
    return gml_token_keyword(arg0, 13);
}

function data_gml_keyword_mapper_init_v21(arg0)
{
    return gml_token_keyword(arg0, 12);
}

function data_gml_keyword_mapper_init_v22(arg0)
{
    return gml_token_keyword(arg0, 15);
}

function data_gml_keyword_mapper_init_v23(arg0)
{
    return gml_token_keyword(arg0, 19);
}

function data_gml_keyword_mapper_init_v24(arg0)
{
    return gml_token_keyword(arg0, 18);
}

function data_gml_keyword_mapper_init_v25(arg0)
{
    return gml_token_keyword(arg0, 17);
}

function data_gml_keyword_mapper_init_v26(arg0)
{
    return gml_token_keyword(arg0, 16);
}

function data_gml_keyword_mapper_init_v27(arg0)
{
    if (global.gml_parser_curr_version.h_has_try_catch)
        return gml_token_keyword(arg0, 21);
    else
        return undefined;
}

function data_gml_keyword_mapper_init_v28(arg0)
{
    if (global.gml_parser_curr_version.h_has_try_catch)
        return gml_token_keyword(arg0, 22);
    else
        return undefined;
}

function data_gml_keyword_mapper_init_v29(arg0)
{
    if (global.gml_parser_curr_version.h_has_try_catch)
        return gml_token_keyword(arg0, 23);
    else
        return undefined;
}

function data_gml_keyword_mapper_init_v30(arg0)
{
    if (global.gml_parser_curr_version.h_has_constructor)
        return gml_token_keyword(arg0, 25);
    else
        return undefined;
}

function data_gml_keyword_mapper_init_v31(arg0)
{
    if (global.gml_parser_curr_version.h_has_delete)
        return gml_token_keyword(arg0, 29);
    else
        return undefined;
}

function data_gml_keyword_mapper_init_v32(arg0)
{
    if (global.gml_parser_curr_version.h_has_func_literal)
        return gml_token_keyword(arg0, 24);
    else
        return undefined;
}

function data_gml_keyword_mapper_init_v33(arg0)
{
    return gml_token_bin_op(arg0, 3);
}

function data_gml_keyword_mapper_init_v34(arg0)
{
    return gml_token_bin_op(arg0, 2);
}

function data_gml_keyword_mapper_init_v35(arg0)
{
    return gml_token_bin_op(arg0, 80);
}

function data_gml_keyword_mapper_init_v36(arg0)
{
    return gml_token_bin_op(arg0, 96);
}

function data_gml_keyword_mapper_init_v37(arg0)
{
    return gml_token_bin_op(arg0, 65);
}

function data_gml_keyword_mapper_init_v38(arg0)
{
    return gml_token_un_op(arg0, 1);
}

function data_gml_keyword_mapper_init_v39(arg0)
{
    return gml_token_keyword(arg0, 26);
}

function data_gml_keyword_mapper_init_v40(arg0)
{
    return gml_token_keyword(arg0, 27);
}

function data_gml_keyword_mapper_init()
{
    var l_m = new haxe_ds_string_map();
    variable_struct_set(l_m.h_obj, "global", data_gml_keyword_mapper_init_v);
    variable_struct_set(l_m.h_obj, "true", data_gml_keyword_mapper_init_v1);
    variable_struct_set(l_m.h_obj, "false", data_gml_keyword_mapper_init_v2);
    variable_struct_set(l_m.h_obj, "all", data_gml_keyword_mapper_init_v3);
    variable_struct_set(l_m.h_obj, "noone", data_gml_keyword_mapper_init_v4);
    variable_struct_set(l_m.h_obj, "undefined", data_gml_keyword_mapper_init_v5);
    variable_struct_set(l_m.h_obj, "begin", data_gml_keyword_mapper_init_v6);
    variable_struct_set(l_m.h_obj, "end", data_gml_keyword_mapper_init_v7);
    variable_struct_set(l_m.h_obj, "globalvar", data_gml_keyword_mapper_init_v8);
    variable_struct_set(l_m.h_obj, "var", data_gml_keyword_mapper_init_v9);
    variable_struct_set(l_m.h_obj, "enum", data_gml_keyword_mapper_init_v10);
    variable_struct_set(l_m.h_obj, "if", data_gml_keyword_mapper_init_v11);
    variable_struct_set(l_m.h_obj, "then", data_gml_keyword_mapper_init_v12);
    variable_struct_set(l_m.h_obj, "else", data_gml_keyword_mapper_init_v13);
    variable_struct_set(l_m.h_obj, "switch", data_gml_keyword_mapper_init_v14);
    variable_struct_set(l_m.h_obj, "case", data_gml_keyword_mapper_init_v15);
    variable_struct_set(l_m.h_obj, "default", data_gml_keyword_mapper_init_v16);
    variable_struct_set(l_m.h_obj, "for", data_gml_keyword_mapper_init_v17);
    variable_struct_set(l_m.h_obj, "repeat", data_gml_keyword_mapper_init_v18);
    variable_struct_set(l_m.h_obj, "while", data_gml_keyword_mapper_init_v19);
    variable_struct_set(l_m.h_obj, "do", data_gml_keyword_mapper_init_v20);
    variable_struct_set(l_m.h_obj, "until", data_gml_keyword_mapper_init_v21);
    variable_struct_set(l_m.h_obj, "with", data_gml_keyword_mapper_init_v22);
    variable_struct_set(l_m.h_obj, "exit", data_gml_keyword_mapper_init_v23);
    variable_struct_set(l_m.h_obj, "return", data_gml_keyword_mapper_init_v24);
    variable_struct_set(l_m.h_obj, "break", data_gml_keyword_mapper_init_v25);
    variable_struct_set(l_m.h_obj, "continue", data_gml_keyword_mapper_init_v26);
    variable_struct_set(l_m.h_obj, "try", data_gml_keyword_mapper_init_v27);
    variable_struct_set(l_m.h_obj, "catch", data_gml_keyword_mapper_init_v28);
    variable_struct_set(l_m.h_obj, "throw", data_gml_keyword_mapper_init_v29);
    variable_struct_set(l_m.h_obj, "new", data_gml_keyword_mapper_init_v30);
    variable_struct_set(l_m.h_obj, "delete", data_gml_keyword_mapper_init_v31);
    variable_struct_set(l_m.h_obj, "function", data_gml_keyword_mapper_init_v32);
    variable_struct_set(l_m.h_obj, "div", data_gml_keyword_mapper_init_v33);
    variable_struct_set(l_m.h_obj, "mod", data_gml_keyword_mapper_init_v34);
    variable_struct_set(l_m.h_obj, "and", data_gml_keyword_mapper_init_v35);
    variable_struct_set(l_m.h_obj, "or", data_gml_keyword_mapper_init_v36);
    variable_struct_set(l_m.h_obj, "xor", data_gml_keyword_mapper_init_v37);
    variable_struct_set(l_m.h_obj, "not", data_gml_keyword_mapper_init_v38);
    variable_struct_set(l_m.h_obj, "argument", data_gml_keyword_mapper_init_v39);
    variable_struct_set(l_m.h_obj, "argument_count", data_gml_keyword_mapper_init_v40);
    return l_m;
}

function gml_std_haxe_class(arg0, arg1) constructor
{
    static h_superClass = undefined;
    static h_marker = undefined;
    static h_index = undefined;
    static h_name = undefined;
    static __class__ = "class";
    
    h_superClass = undefined;
    h_marker = global.gml_std_haxe_type_markerValue;
    h_index = arg0;
    h_name = arg1;
}

function gml_std_haxe_enum(arg0, arg1, arg2, arg3) constructor
{
    static h_constructors = undefined;
    static h_functions = undefined;
    static h_marker = undefined;
    static h_index = undefined;
    static h_name = undefined;
    static __class__ = "enum";
    
    h_marker = global.gml_std_haxe_type_markerValue;
    h_index = arg0;
    h_name = arg1;
    h_constructors = arg2;
    h_functions = arg3;
}

function gml_seek_adjfix_proc(arg0, arg1)
{
    var l__g = arg0;
    
    switch (l__g.__enumIndex__)
    {
        case 32:
            var l_d = l__g.h_d;
            var l_x = l__g.h_expr;
            var l_pre = arg0.__enumIndex__ == 32;
            var l_inBlock = gml_node_tools_is_in_block(arg0, arg1[| 0]);
            
            if (l_pre || l_inBlock)
            {
                var l__g1 = l_x;
                
                switch (l__g1.__enumIndex__)
                {
                    case 82:
                        var l_o = l__g.h_inc ? 16 : 17;
                        gml_std_haxe_enum_tools_setTo(arg0, gml_node_ds_map_aop(l_d, l__g1.h_map, l__g1.h_key, l_o, gml_node_number(l_d, 1, undefined)));
                        break;
                    
                    case 79:
                        var l_o = l__g.h_inc ? 16 : 17;
                        gml_std_haxe_enum_tools_setTo(arg0, gml_node_ds_list_aop(l_d, l__g1.h_list, l__g1.h_index, l_o, gml_node_number(l_d, 1, undefined)));
                        break;
                    
                    case 85:
                        var l_o = l__g.h_inc ? 16 : 17;
                        gml_std_haxe_enum_tools_setTo(arg0, gml_node_ds_grid_aop(l_d, l__g1.h_grid, l__g1.h_index1, l__g1.h_index2, l_o, gml_node_number(l_d, 1, undefined)));
                        break;
                    
                    case 88:
                        var l_o = l__g.h_inc ? 16 : 17;
                        gml_std_haxe_enum_tools_setTo(arg0, gml_node_key_id_aop(l_d, l__g1.h_obj, l__g1.h_key, l_o, gml_node_number(l_d, 1, undefined)));
                        break;
                    
                    default:
                        if (l_inBlock)
                        {
                            var l_o = l__g.h_inc ? 16 : 17;
                            gml_std_haxe_enum_tools_setTo(arg0, gml_node_set_op(l_d, l_o, l_x, gml_node_number(l_d, 1, undefined)));
                        }
                }
            }
            
            break;
        
        case 33:
            var l_d = l__g.h_d;
            var l_x = l__g.h_expr;
            var l_b = l__g.h_inc;
            var l_pre = arg0.__enumIndex__ == 32;
            var l_inBlock = gml_node_tools_is_in_block(arg0, arg1[| 0]);
            
            if (l_pre || l_inBlock)
            {
                l__g = l_x;
                
                switch (l__g.__enumIndex__)
                {
                    case 82:
                        var l_o = l_b ? 16 : 17;
                        gml_std_haxe_enum_tools_setTo(arg0, gml_node_ds_map_aop(l_d, l__g.h_map, l__g.h_key, l_o, gml_node_number(l_d, 1, undefined)));
                        break;
                    
                    case 79:
                        var l_o = l_b ? 16 : 17;
                        gml_std_haxe_enum_tools_setTo(arg0, gml_node_ds_list_aop(l_d, l__g.h_list, l__g.h_index, l_o, gml_node_number(l_d, 1, undefined)));
                        break;
                    
                    case 85:
                        var l_o = l_b ? 16 : 17;
                        gml_std_haxe_enum_tools_setTo(arg0, gml_node_ds_grid_aop(l_d, l__g.h_grid, l__g.h_index1, l__g.h_index2, l_o, gml_node_number(l_d, 1, undefined)));
                        break;
                    
                    case 88:
                        var l_o = l_b ? 16 : 17;
                        gml_std_haxe_enum_tools_setTo(arg0, gml_node_key_id_aop(l_d, l__g.h_obj, l__g.h_key, l_o, gml_node_number(l_d, 1, undefined)));
                        break;
                    
                    default:
                        if (l_inBlock)
                        {
                            var l_o = l_b ? 16 : 17;
                            gml_std_haxe_enum_tools_setTo(arg0, gml_node_set_op(l_d, l_o, l_x, gml_node_number(l_d, 1, undefined)));
                        }
                }
            }
            
            break;
    }
    
    return gml_node_tools_seek(arg0, arg1, global.gml_program_seek_func);
}

function gml_seek_alarms_check(arg0)
{
    var l__g = arg0;
    
    if (l__g.__enumIndex__ == 52)
    {
        if (l__g.h_field == "alarm")
            return l__g.h_obj;
        else
            return undefined;
    }
    else
    {
        return undefined;
    }
}

function gml_seek_alarms_proc(arg0, arg1)
{
    var l__g = arg0;
    
    switch (l__g.__enumIndex__)
    {
        case 67:
            var l_r = gml_seek_alarms_check(l__g.h_arr);
            
            if (l_r != undefined)
                gml_std_haxe_enum_tools_setTo(arg0, gml_node_alarm(l__g.h_d, l_r, l__g.h_index));
            
            break;
        
        case 73:
            var l_r = gml_seek_alarms_check(l__g.h_arr);
            
            if (l_r != undefined)
                gml_std_haxe_enum_tools_setTo(arg0, gml_node_alarm(l__g.h_d, l_r, l__g.h_index));
            
            break;
    }
    
    return gml_node_tools_seek(arg0, arg1, global.gml_program_seek_func);
}

function gml_seek_arguments_proc(arg0, arg1)
{
    gml_node_tools_seek(arg0, arg1, global.gml_program_seek_func);
    var l__g = arg0;
    
    if (l__g.__enumIndex__ == 19)
    {
        var l_i = l__g.h_index;
        
        if (global.gml_program_seek_script.h_arguments <= l_i)
            global.gml_program_seek_script.h_arguments = l_i + 1;
    }
    
    return false;
}

function gml_seek_calls_proc_func(arg0, arg1, arg2, arg3)
{
    var l_fname = arg2.h_name;
    var l_argCount = array_length(arg3);
    var l_minArgs = arg2.h_min_args;
    var l_maxArgs = arg2.h_max_args;
    
    if (l_argCount < l_minArgs || l_argCount > l_maxArgs)
    {
        var l_e;
        
        if (l_minArgs == l_maxArgs)
        {
            l_e = "`" + l_fname + "` takes " + string(l_minArgs) + " argument";
            
            if (l_minArgs != 1)
                l_e += "s";
        }
        else if (l_argCount < l_minArgs)
        {
            l_e = "`" + l_fname + "` requires at least " + string(l_minArgs) + " argument";
            
            if (l_minArgs != 1)
                l_e += "s";
        }
        else
        {
            l_e = "`" + l_fname + "` takes no more than " + string(l_maxArgs) + " argument";
            
            if (l_maxArgs != 1)
                l_e += "s";
        }
        
        l_e += (", got " + string(l_argCount));
        return global.gml_program_seek_inst.h_error(l_e, gml_std_haxe_enum_tools_getParameter(arg0, 0));
    }
    
    gml_std_haxe_enum_tools_setTo(arg0, gml_node_call_func(arg1, arg2, arg3));
    return false;
}

function gml_seek_calls_proc(arg0, arg1)
{
    var l__g = arg0;
    
    if (l__g.__enumIndex__ == 22)
    {
        var l_d = l__g.h_d;
        var l_x = l__g.h_expr;
        var l_args1 = l__g.h_args;
        l__g = l_x;
        
        switch (l__g.__enumIndex__)
        {
            case 16:
                var l_o = l__g.h_ref;
                var l_n = l_o.h_arguments;
                var l_s = l_o.h_name;
                gml_std_haxe_enum_tools_setTo(arg0, gml_node_call_script(l_d, l_s, l_args1));
                break;
            
            case 52:
                gml_std_haxe_enum_tools_setTo(arg0, gml_node_call_field(l_d, l__g.h_obj, l__g.h_field, l_args1));
                break;
            
            case 12:
                var l_s1 = l__g.h_id;
                var l_fn = variable_struct_get(global.gml_func_map.h_obj, l_s1);
                
                if (l_fn == undefined)
                {
                    if (l_d.h_src.h_version.h_has_value_calls)
                        gml_std_haxe_enum_tools_setTo(arg0, gml_node_call_script_id(l_d, l_x, l_args1));
                    else
                        return global.gml_program_seek_inst.h_error("`" + l_s1 + "` is not a function or script", gml_std_haxe_enum_tools_getParameter(l_x, 0));
                }
                else if (gml_seek_calls_proc_func(arg0, l_d, l_fn, l_args1))
                {
                    return true;
                }
                
                break;
            
            case 17:
                var l_s = l__g.h_name;
                var l_fn = variable_struct_get(global.gml_func_map.h_obj, l_s);
                
                if (l_fn == undefined)
                {
                    if (l_d.h_src.h_version.h_has_value_calls)
                        gml_std_haxe_enum_tools_setTo(arg0, gml_node_call_script_id(l_d, l_x, l_args1));
                    else
                        return global.gml_program_seek_inst.h_error("`" + l_s + "` is not a function or script", gml_std_haxe_enum_tools_getParameter(l_x, 0));
                }
                else if (gml_seek_calls_proc_func(arg0, l_d, l_fn, l_args1))
                {
                    return true;
                }
                
                break;
            
            default:
                if (l_d.h_src.h_version.h_has_value_calls)
                {
                    gml_std_haxe_enum_tools_setTo(arg0, gml_node_call_script_id(l_d, l_x, l_args1));
                    break;
                }
                
                return global.gml_program_seek_inst.h_error("Expression is not callable", gml_std_haxe_enum_tools_getParameter(l_x, 0));
        }
    }
    
    return gml_node_tools_seek(arg0, arg1, global.gml_program_seek_func);
}

function gml_seek_enum_fields_proc_one(arg0, arg1)
{
    var l__g = arg0;
    
    if (l__g.__enumIndex__ == 52)
    {
        var l_d = l__g.h_d;
        var l_x = l__g.h_obj;
        var l_f = l__g.h_field;
        l__g = l_x;
        
        if (l__g.__enumIndex__ == 12)
        {
            var l_s = l__g.h_id;
            var l_e = variable_struct_get(global.gml_program_seek_inst.h_enum_map.h_obj, l_s);
            
            if (l_e == undefined)
                l_e = variable_struct_get(global.gml_enum_map.h_obj, l_s);
            
            if (l_e != undefined)
            {
                if (!l_e.h_has_values)
                    gml_seek_enum_values_proc_one(l_e);
                
                var l_c = variable_struct_get(l_e.h_ctr_map.h_obj, l_f);
                
                if (l_c != undefined)
                {
                    if (l_c.h_value == undefined)
                        return global.gml_program_seek_inst.h_error("Recursive enum reference to " + l_s + "." + l_f, l_d);
                    
                    gml_std_haxe_enum_tools_setTo(arg0, gml_node_number(l_d, l_c.h_value, undefined));
                    return false;
                }
                else
                {
                    return global.gml_program_seek_inst.h_error("Enum `" + l_s + "` does not contain field `" + l_f + "`", l_d);
                }
            }
        }
        
        var l_av = variable_struct_get(global.api_api_var_map.h_obj, l_f);
        
        if (l_av != undefined)
        {
            if ((l_av.h_flags & 4) == 0)
                return global.gml_program_seek_inst.h_error("`" + l_f + "` is not an instance-specific variable.", l_d);
        }
    }
    
    return gml_node_tools_seek(arg0, arg1, gml_seek_enum_fields_proc_one);
}

function gml_seek_enum_fields_proc(arg0, arg1)
{
    return gml_seek_enum_fields_proc_one(arg0, arg1);
}

function gml_seek_enum_values_proc_one(arg0)
{
    arg0.h_has_values = true;
    var l_next = 0;
    var l__g = 0;
    var l__g1 = arg0.h_ctr_list;
    
    while (l__g < array_length(l__g1))
    {
        var l_c = l__g1[l__g];
        l__g++;
        
        if (l_c.h_node != undefined)
        {
            var l_st = ds_list_create();
            var l__seekFunc = global.gml_program_seek_func;
            global.gml_program_seek_func = gml_seek_idents_proc;
            global.gml_program_seek_script = undefined;
            gml_seek_idents_proc(l_c.h_node, l_st);
            global.gml_program_seek_func = l__seekFunc;
            ds_list_destroy(l_st);
            gml_seek_enum_fields_proc_one(l_c.h_node, undefined);
            gml_seek_eval_eval(l_c.h_node);
            var l_node = l_c.h_node;
            var l_v = gml_seek_eval_node_to_value(l_node);
            
            if (is_numeric(l_v))
            {
                l_c.h_value = floor(l_v);
                l_next = l_c.h_value + 1;
            }
            else if (l_v != global.gml_seek_eval_invalid_value)
            {
                return global.gml_program_seek_inst.h_error("Enum values should be integer", gml_std_haxe_enum_tools_getParameter(l_node, 0));
            }
            else
            {
                return global.gml_program_seek_inst.h_error("Enum values should be constant" + gml_std_Type_enumConstructor(l_node), gml_std_haxe_enum_tools_getParameter(l_c.h_node, 0));
            }
        }
        else
        {
            l_c.h_value = l_next++;
        }
    }
    
    return false;
}

function gml_seek_enum_values_proc()
{
    var l__g = 0;
    var l__g1 = global.gml_program_seek_inst.h_enum_array;
    
    while (l__g < array_length(l__g1))
    {
        var l_e = l__g1[l__g];
        l__g++;
        
        if (gml_seek_enum_values_proc_one(l_e))
            return true;
    }
    
    return false;
}

function gml_seek_fields_proc(arg0, arg1)
{
    var l__g = arg0;
    
    if (l__g.__enumIndex__ == 52)
    {
        var l_d = l__g.h_d;
        var l_x = l__g.h_obj;
        var l_s = l__g.h_field;
        
        if (l_x.__enumIndex__ == 15)
            gml_std_haxe_enum_tools_setTo(arg0, gml_node_global_hx(l_d, l_s));
    }
    
    return gml_node_tools_seek(arg0, arg1, global.gml_program_seek_func);
}

function gml_seek_idents_proc(arg0, arg1)
{
    var l__g = arg0;
    var l_d, l_s;
    
    if (l__g.__enumIndex__ == 12)
    {
        l_d = l__g.h_d;
        l_s = l__g.h_id;
    }
    else
    {
        l_d = undefined;
        l_s = undefined;
    }
    
    if (l_d != undefined)
    {
        while (true)
        {
            var l_scr = global.gml_program_seek_script;
            
            if (l_scr != undefined)
            {
                var l_i = variable_struct_get(l_scr.h_named_args.h_obj, l_s);
                
                if (l_i != undefined)
                {
                    gml_std_haxe_enum_tools_setTo(arg0, gml_node_arg_const(l_d, l_i));
                    break;
                }
                
                l_i = variable_struct_get(l_scr.h_local_map.h_obj, l_s);
                
                if (l_i != undefined)
                {
                    gml_std_haxe_enum_tools_setTo(arg0, gml_node_local_hx(l_d, l_s));
                    break;
                }
                
                l_i = variable_struct_get(l_scr.h_static_map.h_obj, l_s);
                
                if (l_i != undefined)
                {
                    gml_std_haxe_enum_tools_setTo(arg0, gml_node_static(l_d, l_s));
                    break;
                }
            }
            
            var l_mcr = variable_struct_get(global.gml_program_seek_inst.h_macro_map.h_obj, l_s);
            
            if (l_mcr != undefined)
            {
                gml_std_haxe_enum_tools_setTo(arg0, gml_node_tools_clone(l_mcr.h_node));
                ast_gml_node_tools_ni_concat_pos_rec(arg0, l_d);
                gml_seek_idents_proc(arg0, arg1);
                break;
            }
            
            if (variable_struct_get(global.gml_const_map.h_obj, l_s) == true)
            {
                var l_val = variable_struct_get(global.gml_const_val.h_obj, l_s);
                var l_valNode = gml_seek_eval_value_to_node(l_val, l_d);
                
                if (l_valNode != undefined)
                    gml_std_haxe_enum_tools_setTo(arg0, l_valNode);
                else
                    return global.gml_program_seek_inst.h_error("Cannot create a node for `" + l_s + "` (" + typeof(l_val) + ")", l_d);
                
                break;
            }
            
            var l_v = variable_struct_get(global.api_api_var_map.h_obj, l_s);
            
            if (l_v != undefined)
            {
                var l_flags = l_v.h_flags;
                
                if ((l_flags & 4) != 0)
                    gml_std_haxe_enum_tools_setTo(arg0, gml_node_env_fd(l_d, gml_node_self_hx(l_d), l_v));
                else
                    gml_std_haxe_enum_tools_setTo(arg0, gml_node_env(l_d, l_v));
                
                if (ds_list_size(arg1) > 0)
                {
                    l__g = arg1[| 0];
                    
                    switch (l__g.__enumIndex__)
                    {
                        case 67:
                            var l_d1 = l__g.h_d;
                            var l_k = l__g.h_index;
                            
                            if ((l_flags & 2) != 0)
                                gml_std_haxe_enum_tools_setTo(arg1[| 0], gml_node_env1d(l_d1, l_v, l_k));
                            else
                                return global.gml_program_seek_inst.h_error("`" + l_s + "` is not an array.", l_d1);
                            
                            break;
                        
                        case 70:
                            return global.gml_program_seek_inst.h_error("`" + l_s + "` is not a 2d array.", l__g.h_d);
                        
                        default:
                            if ((l_flags & 2) != 0)
                                gml_std_haxe_enum_tools_setTo(arg0, gml_node_env1d(l_d, l_v, gml_node_number(l_d, 0, undefined)));
                    }
                }
                
                break;
            }
            
            var l_scr1 = variable_struct_get(global.gml_program_seek_inst.h_script_map.h_obj, l_s);
            
            if (l_scr1 != undefined)
            {
                gml_std_haxe_enum_tools_setTo(arg0, gml_node_script(l_d, l_scr1));
                break;
            }
            
            var l_fscr = variable_struct_get(global.gml_func_script_id.h_obj, l_s);
            
            if (l_fscr != undefined)
            {
                gml_std_haxe_enum_tools_setTo(arg0, gml_node_native_script(l_d, l_s, l_fscr));
                break;
            }
            
            break;
        }
    }
    
    return gml_node_tools_seek(arg0, arg1, global.gml_program_seek_func);
}

function gml_seek_locals_proc(arg0, arg1)
{
    var l__g = arg0;
    
    switch (l__g.__enumIndex__)
    {
        case 91:
            var l_s = l__g.h_name;
            
            if (!variable_struct_exists(global.gml_program_seek_script.h_local_map.h_obj, l_s))
            {
                variable_struct_set(global.gml_program_seek_script.h_local_map.h_obj, l_s, global.gml_program_seek_script.h_locals++);
                array_push(global.gml_program_seek_script.h_local_names, l_s);
            }
            
            break;
        
        case 110:
            var l_s = l__g.h_capvar;
            
            if (!variable_struct_exists(global.gml_program_seek_script.h_local_map.h_obj, l_s))
            {
                variable_struct_set(global.gml_program_seek_script.h_local_map.h_obj, l_s, global.gml_program_seek_script.h_locals++);
                array_push(global.gml_program_seek_script.h_local_names, l_s);
            }
            
            break;
    }
    
    return gml_node_tools_seek(arg0, arg1, global.gml_program_seek_func);
}

function gml_seek_self_fields_proc(arg0, arg1)
{
    var l__g = arg0;
    
    if (l__g.__enumIndex__ == 12)
    {
        var l_d = l__g.h_d;
        gml_std_haxe_enum_tools_setTo(arg0, gml_node_field(l_d, gml_node_self_hx(l_d), l__g.h_id));
    }
    
    return gml_node_tools_seek(arg0, arg1, global.gml_program_seek_func);
}

function gml_std_gml_internal_ArrayImpl_shift(arg0)
{
    if (array_length(arg0) == 0)
        return undefined;
    
    var l_result = arg0[0];
    array_delete(arg0, 0, 1);
    return l_result;
}

function gml_std_gml_internal_ArrayImpl_splice(arg0, arg1, arg2)
{
    if (arg1 < 0)
    {
        arg1 += array_length(arg0);
        
        if (arg1 < 0)
            arg1 = 0;
    }
    
    var l_n = array_length(arg0);
    
    if ((arg1 + arg2) > l_n)
        arg2 = l_n - arg1;
    
    if (arg2 <= 0)
        return [];
    
    var l_r = array_create(arg2);
    array_copy(l_r, 0, arg0, arg1, arg2);
    array_delete(arg0, arg1, arg2);
    return l_r;
}

function gml_std_gml_internal_ArrayImpl_indexOf(arg0, arg1, arg2 = 0)
{
    var l_len = array_length(arg0);
    
    if (arg2 < 0)
    {
        arg2 += l_len;
        
        if (arg2 < 0)
            arg2 = 0;
    }
    
    while (arg2 < l_len)
    {
        if (arg0[arg2] == arg1)
            return arg2;
        
        arg2++;
    }
    
    return -1;
}

function gml_std_gml_internal_ArrayImpl_join(arg0, arg1)
{
    var l_len = array_length(arg0);
    
    if (l_len == 0)
        return "";
    
    var l_buf = global.gml_std_gml_internal_ArrayImpl_join_buf;
    
    if (l_buf == undefined)
    {
        l_buf = buffer_create(1024, buffer_grow, 1);
        global.gml_std_gml_internal_ArrayImpl_join_buf = l_buf;
    }
    
    buffer_seek(l_buf, buffer_seek_start, 0);
    buffer_write(l_buf, buffer_text, gml_std_Std_stringify(arg0[0]));
    var l_i = 1;
    var l__g1 = l_len;
    
    while (l_i < l__g1)
    {
        buffer_write(l_buf, buffer_text, arg1);
        buffer_write(l_buf, buffer_text, gml_std_Std_stringify(arg0[l_i]));
        l_i++;
    }
    
    buffer_write(l_buf, buffer_u8, 0);
    buffer_seek(l_buf, buffer_seek_start, 0);
    return buffer_read(l_buf, buffer_string);
}

function gml_std_gml_internal_ArrayImpl_copy(arg0)
{
    var l_len = array_length(arg0);
    var l_out;
    
    if (l_len > 0)
    {
        l_out = array_create(l_len);
        array_copy(l_out, 0, arg0, 0, l_len);
    }
    else
    {
        l_out = [];
    }
    
    return l_out;
}

function gml_internal_native_function_invoke_call(arg0, arg1, arg2 = array_length(arg1))
{
    if (arg2 > 32)
        show_error("Too many arguments!", true);
    
    return global.gml_internal_native_function_invoke_funcs[arg2](arg0, arg1);
}

function gml_internal_native_function_invoke_funcs_with0(arg0, arg1)
{
    return arg0();
}

function gml_internal_native_function_invoke_funcs_with1(arg0, arg1)
{
    return arg0(arg1[0]);
}

function gml_internal_native_function_invoke_funcs_with2(arg0, arg1)
{
    return arg0(arg1[0], arg1[1]);
}

function gml_internal_native_function_invoke_funcs_with3(arg0, arg1)
{
    return arg0(arg1[0], arg1[1], arg1[2]);
}

function gml_internal_native_function_invoke_funcs_with4(arg0, arg1)
{
    return arg0(arg1[0], arg1[1], arg1[2], arg1[3]);
}

function gml_internal_native_function_invoke_funcs_with5(arg0, arg1)
{
    return arg0(arg1[0], arg1[1], arg1[2], arg1[3], arg1[4]);
}

function gml_internal_native_function_invoke_funcs_with6(arg0, arg1)
{
    return arg0(arg1[0], arg1[1], arg1[2], arg1[3], arg1[4], arg1[5]);
}

function gml_internal_native_function_invoke_funcs_with7(arg0, arg1)
{
    return arg0(arg1[0], arg1[1], arg1[2], arg1[3], arg1[4], arg1[5], arg1[6]);
}

function gml_internal_native_function_invoke_funcs_with8(arg0, arg1)
{
    return arg0(arg1[0], arg1[1], arg1[2], arg1[3], arg1[4], arg1[5], arg1[6], arg1[7]);
}

function haxe__dynamic_access_dynamic_access_impl__remove(arg0, arg1)
{
    var l_result = variable_struct_exists(arg0, arg1);
    variable_struct_remove(arg0, arg1);
    return l_result;
}

function haxe__dynamic_access_dynamic_access_impl__copy(arg0)
{
    var l_fields = variable_struct_get_names(arg0);
    var l_r = {};
    var l_i = 0;
    var l__g1 = array_length(l_fields);
    
    while (l_i < l__g1)
    {
        var l_fd = l_fields[l_i];
        variable_struct_set(l_r, l_fd, variable_struct_get(arg0, l_fd));
        l_i++;
    }
    
    return l_r;
}

function gml_std_haxe_Exception_new(arg0, arg1, arg2)
{
    h_message = arg0;
    h_previous = arg1;
    
    if (arg2 == undefined)
    {
        var l_natEx = undefined;
        
        try
        {
            show_error(arg0, true);
        }
        catch (_e)
        {
            l_natEx = _e;
        }
        
        array_delete(l_natEx.stacktrace, 0, 1);
        l_natEx.hxException = self;
        arg2 = l_natEx;
    }
    
    h_native = arg2;
}

function gml_std_haxe_Exception(arg0, arg1, arg2) constructor
{
    static h_message = undefined;
    static h_previous = undefined;
    static h_native = undefined;
    static h_unwrap = method(undefined, gml_std_haxe_Exception_h_unwrap);
    static h_toString = method(undefined, gml_std_haxe_Exception_h_toString);
    static __class__ = global.mt_gml_std_haxe_Exception;
    
    switch (argument_count)
    {
        case 1:
            method(self, gml_std_haxe_Exception_new)(argument[0]);
            break;
        
        case 2:
            method(self, gml_std_haxe_Exception_new)(argument[0], argument[1]);
            break;
        
        case 3:
            method(self, gml_std_haxe_Exception_new)(argument[0], argument[1], argument[2]);
            break;
        
        default:
            show_error("Expected 1..3 arguments.", true);
    }
}

function gml_std_haxe_Exception_caught(arg0)
{
    if (is_struct(arg0))
    {
        if (variable_struct_exists(arg0, "stack"))
            return arg0;
        
        var l_hxEx = variable_struct_get(arg0, "hxException");
        
        if (l_hxEx != undefined)
            return l_hxEx;
        
        if (variable_struct_exists(arg0, "stacktrace"))
        {
            l_hxEx = new gml_std_haxe_Exception(arg0.message, undefined, arg0);
            arg0.hxException = l_hxEx;
            return l_hxEx;
        }
    }
    
    return new gml_std_haxe_Exception(string(arg0));
}

function gml_std_haxe_Exception_thrown(arg0)
{
    if (is_struct(arg0))
    {
        if (variable_struct_exists(arg0, "stack"))
            return arg0.h_native;
        
        if (variable_struct_exists(arg0, "stacktrace"))
            return arg0;
    }
    
    var l_message = is_string(arg0) ? arg0 : string(arg0);
    var l_natEx = undefined;
    
    try
    {
        show_error(l_message, true);
    }
    catch (_e)
    {
        l_natEx = _e;
    }
    
    return l_natEx;
}

function gml_std_haxe_Exception_h_unwrap()
{
    return h_native;
}

function gml_std_haxe_Exception_h_toString()
{
    return h_message;
}

function haxe_ds_basic_map_new()
{
    h_obj = {};
}

function haxe_ds_basic_map() constructor
{
    static h_obj = undefined;
    static h_clear = method(undefined, haxe_ds_basic_map_h_clear);
    static __class__ = global.mt_haxe_ds_basic_map;
    
    method(self, haxe_ds_basic_map_new)();
}

function haxe_ds_basic_map_h_clear()
{
    var l__g = 0;
    var l__g1 = variable_struct_get_names(h_obj);
    
    while (l__g < array_length(l__g1))
    {
        var l_key = l__g1[l__g];
        l__g++;
        haxe__dynamic_access_dynamic_access_impl__remove(h_obj, l_key);
    }
}

function haxe_ds_string_map() constructor
{
    static h_obj = undefined;
    static h_clear = method(undefined, haxe_ds_basic_map_h_clear);
    static __class__ = global.mt_haxe_ds_string_map;
    
    method(self, haxe_ds_basic_map_new)();
}

function live_gmlive_patcher_add_source(arg0, arg1, arg2, arg3)
{
    variable_struct_set(arg2.h_obj, arg0, true);
    var l_parser = arg3.h_parser;
    var l_tokens;
    
    if (l_parser != undefined)
    {
        if (l_parser.h_token_count < 0)
            exit;
        
        l_tokens = l_parser.h_tokens;
    }
    else
    {
        l_parser = new gml_parser(arg3);
        arg3.h_parser = l_parser;
        l_tokens = l_parser.h_run();
        
        if (l_tokens == undefined)
            exit;
    }
    
    var l_tokenCount = l_parser.h_token_count;
    ds_list_add(arg1, arg3);
    live_gmlive_patcher_index_rec(l_tokens, l_tokenCount, arg1, arg2);
}

function live_gmlive_patcher_index_rec(arg0, arg1, arg2, arg3)
{
    var l_tokensLen1 = arg1 - 1;
    var l_tokensPos = -1;
    var l_macros = global.live_live_macros;
    var l_enums = global.live_live_enums;
    
    while (++l_tokensPos < arg1)
    {
        var l_tk = arg0[l_tokensPos];
        var l_id;
        
        if (l_tk.__enumIndex__ == 12)
            l_id = l_tk.h_id;
        else
            continue;
        
        if (variable_struct_exists(arg3.h_obj, l_id))
            continue;
        
        var l_src = variable_struct_get(l_macros.h_obj, l_id);
        
        if (l_src != undefined)
        {
            live_gmlive_patcher_add_source(l_id, arg2, arg3, l_src);
            continue;
        }
        
        l_src = variable_struct_get(l_enums.h_obj, l_id);
        
        if (l_src != undefined)
        {
            if (l_tokensPos > 0)
            {
                var l__g1 = arg0[l_tokensPos - 1];
                
                if (l__g1.__enumIndex__ == 6)
                    continue;
            }
            
            if (l_tokensPos < l_tokensLen1)
            {
                var l__g3 = arg0[l_tokensPos + 1];
                
                if (l__g3.__enumIndex__ == 6)
                    live_gmlive_patcher_add_source(l_id, arg2, arg3, l_src);
            }
            
            continue;
        }
        
        variable_struct_set(arg3.h_obj, l_id, true);
    }
}

function live_gmlive_patcher_compile_ex(arg0, arg1)
{
    var l_source = new gml_source(arg0, arg1, arg0);
    var l_parser = new gml_parser(l_source);
    var l_tokens = l_parser.h_run();
    
    if (l_tokens == undefined)
    {
        global.live_gmlive_patcher_error_text = global.gml_parser_error_text;
        return undefined;
    }
    
    var l_found = global.live_async_http_1_found;
    var l_acc = global.live_async_http_1_acc;
    l_found.h_clear();
    ds_list_clear(l_acc);
    
    if (global.live_live_globals != undefined)
        ds_list_add(l_acc, global.live_live_globals);
    
    l_source.h_parser = l_parser;
    live_gmlive_patcher_index_rec(l_tokens, l_parser.h_token_count, l_acc, l_found);
    ds_list_add(l_acc, l_source);
    var l_srci = ds_list_size(l_acc);
    var l_srcs = array_create(l_srci);
    
    while (--l_srci >= 0)
        l_srcs[l_srci] = l_acc[| l_srci];
    
    var l_pg = new gml_program(l_srcs);
    global.live_gmlive_patcher_error_text = l_pg.h_error_text;
    
    if (!l_pg.h_is_ready)
    {
        l_pg.h_destroy();
        return undefined;
    }
    
    l_pg.h_tag = arg0;
    return l_pg;
}

function live_shader_updated_default()
{
    show_error("Can't update shader! You have not assigned a script to live_shader_updated. Please check documentation", true);
}

function shader_set_live(arg0, arg1)
{
    if (arg1)
    {
        if (ds_map_exists(global.live_shader_live_shaders, arg0))
            exit;
        
        global.live_shader_live_shaders[? arg0] = true;
        var l_i = ds_list_find_index(global.live_shader_live_shaders_stop, arg0);
        
        if (l_i >= 0)
            ds_list_delete(global.live_shader_live_shaders_stop, l_i);
        
        ds_list_add(global.live_shader_live_shaders_start, arg0);
    }
    else
    {
        if (!ds_map_exists(global.live_shader_live_shaders, arg0))
            exit;
        
        ds_map_delete(global.live_shader_live_shaders, arg0);
        var l_i = ds_list_find_index(global.live_shader_live_shaders_start, arg0);
        
        if (l_i >= 0)
            ds_list_delete(global.live_shader_live_shaders_start, l_i);
        
        ds_list_add(global.live_shader_live_shaders_stop, arg0);
    }
}

function live_validate_scripts()
{
    var l_names = ["GMLive_call", "live_call", "GMLive_tools", "live_execute_string", "GMLive_token", "mc_gml_token", "GMLive_parser", "gml_parser_buf_sub", "GMLive_node", "mc_gml_node", "GMLive_nodeTools", "gml_node_tools_seek", "GMLive_builder", "gml_builder", "GMLive_compiler", "gml_compile_program", "GMLive_seekEval", "gml_seek_eval_eval", "GMLive_seekSetOp", "gml_seek_set_op_proc", "GMLive_action", "mc_gml_action", "GMLive_new", "vm_impl_gml_thread_construct_init", "GMLive_exec", "vm_gml_thread_exec_slice_init", "GMLive_program", "gml_program", "GMLive_thread", "gml_thread", "GMLive_vm", "vm_group_op_impl", "GMLive_vm_init", "vm_v2_gml_thread_v2_handlers_init", "GMLive_vm_call", "live_method", "GMLiveAPI", "live_preinit_api", "GMLive_roomLoader", "live_room_start", "GMLive_http", "live_async_http"];
    var l_i = 0;
    var l_count = array_length(l_names);
    
    while (l_i < l_count)
    {
        var l_scr = l_names[l_i++];
        var l_ref = l_names[l_i++];
        
        if (-1 == asset_get_index(l_ref))
            show_error("Function `" + l_ref + "` is missing!" + ("\nCheck that script resource `" + l_scr + "` exists (Ctrl+T) and is not just a single empty function;") + "\ndelete and re-import if necessary!", false);
    }
}

function live_cache_data_create()
{
    var l_this = array_create(1);
    l_this[0] = undefined;
    return l_this;
}

function live_bits_gmlive_indexer_add_assets()
{
    for (var l_i = 0; sprite_exists(l_i); l_i++)
        gml_asset_add(sprite_get_name(l_i), l_i);
    
    for (var l_i = 0; font_exists(l_i); l_i++)
        gml_asset_add(font_get_name(l_i), l_i);
    
    for (var l_i = 0; object_exists(l_i); l_i++)
        gml_asset_add(object_get_name(l_i), l_i);
    
    for (var l_i = 0; audio_exists(l_i); l_i++)
        gml_asset_add(audio_get_name(l_i), l_i);
    
    for (var l_i = 0; l_i < 1024 && string_ord_at(tileset_get_name(l_i), 1) != 60; l_i++)
        gml_asset_add(tileset_get_name(l_i), l_i);
    
    for (var l_i = 0; room_exists(l_i); l_i++)
        gml_asset_add(room_get_name(l_i), l_i);
    
    for (var l_i = 0; path_exists(l_i); l_i++)
        gml_asset_add(path_get_name(l_i), l_i);
    
    for (var l_i = 0; timeline_exists(l_i); l_i++)
        gml_asset_add(timeline_get_name(l_i), l_i);
    
    for (var l_i = 0; l_i < 256; l_i++)
    {
        var l_s = audio_group_name(l_i);
        
        if (l_s == "<undefined>" || l_s == "" || l_s == undefined)
            break;
        
        gml_asset_add(l_s, l_i);
    }
}

function live_bits_gmlive_indexer_add_scripts()
{
    for (var l_i = 100000; script_exists(l_i); l_i++)
    {
        var l_s = script_get_name(l_i);
        gml_func_add(l_s + "(...)", l_i);
        variable_struct_set(global.gml_func_script_id.h_obj, l_s, l_i);
    }
}

function live_bits_gmlive_ready_run()
{
    global.vm_gml_thread_exec_slice_funcs = vm_gml_thread_exec_slice_init();
    global.vm_impl_gml_thread_construct_funcs = vm_impl_gml_thread_construct_init();
    global.vm_group_op_funcs = vm_group_op_impl();
    global.vm_v2_gml_thread_v2_handlers = vm_v2_gml_thread_v2_handlers_init();
}

function gml_link(arg0, arg1) constructor
{
    static h_value = undefined;
    static h_next = undefined;
    
    h_value = arg0;
    h_next = arg1;
}

function gml_action_list_print_action_value(arg0)
{
    if (arg0 == undefined)
    {
        return "null";
    }
    else if (is_numeric(arg0))
    {
        if (!is_real(arg0) || sign(frac(arg0)) == 0)
            return string(arg0);
        else
            return json_stringify(arg0);
    }
    else if (is_string(arg0))
    {
        return json_stringify(arg0);
    }
    else
    {
        if (is_struct(arg0) && variable_struct_exists(arg0, "dump"))
            return arg0.dump();
        
        return gml_std_Std_stringify(arg0);
    }
}

function gml_action_list_print_action_get_func_name(arg0)
{
    var l_label = undefined;
    var l_name;
    
    if (is_method(arg0))
    {
        var l_scr = method_get_index(arg0);
        l_name = script_get_name(l_scr);
        l_label = global.gml_func_name[? l_scr];
    }
    else if (is_numeric(arg0) && script_exists(arg0))
    {
        l_name = script_get_name(arg0);
        l_label = global.gml_func_name[? arg0];
    }
    else
    {
        l_name = string(arg0);
    }
    
    if (l_label == undefined || l_label == l_name)
        return l_name;
    else
        return l_label + "@" + l_name;
}

function gml_action_list_print_action(arg0)
{
    var l_pos = gml_std_haxe_enum_tools_getParameter(arg0, 0);
    var l_pre = "L" + string(l_pos.h_row) + "\tc" + string(l_pos.h_col) + "\t";
    var l_r = l_pre + gml_std_Type_enumConstructor(arg0);
    
    switch (arg0.__enumIndex__)
    {
        case 123:
            return l_pre + ("{ tag : \"" + arg0.h_tag + "\",") + string_delete(string(arg0.h_ctx), 1, 1);
        
        case 63:
            return l_r + "(" + arg0.h_script.h_name + ", " + string(arg0.h_argc) + ")";
        
        case 9:
            return l_r + "(" + gml_std_gml_internal_ArrayImpl_join(arg0.h_fields, ",") + ")";
        
        case 42:
            return l_r + "(\"" + gml_action_list_print_action_get_func_name(arg0.h_f) + "\", \"" + gml_action_list_print_action_get_func_name(arg0.h_ch) + "\")";
        
        case 41:
            return l_r + "(\"" + gml_action_list_print_action_get_func_name(arg0.h_f) + "\")";
        
        case 66:
            var l_args1 = arg0.h_args;
            l_r += ("(\"" + gml_action_list_print_action_get_func_name(arg0.h_func) + "\", " + string(arg0.h_argc) + ", [");
            var l_sep = false;
            var l__g = 0;
            
            while (l__g < array_length(l_args1))
            {
                var l_f = l_args1[l__g];
                l__g++;
                
                if (l_sep)
                    l_r += ",";
                else
                    l_sep = true;
                
                l_r += script_get_name(l_f);
            }
            
            l_r += ("], " + script_get_name(arg0.h_rest) + (", " + gml_std_Std_stringify(arg0.h_inst) + ", " + string(arg0.h_out) + ")"));
            return l_r;
        
        case 97:
            return l_r + "(jt: " + vm__gml_value_map_gml_value_map_impl__print(arg0.h_jumptable) + ", default: " + string(arg0.h_defaultPos) + ")";
        
        case 67:
            return l_r + "(func: " + gml_action_list_print_action_get_func_name(arg0.h_func) + ")";
        
        case 68:
            return l_r + "(func: " + gml_action_list_print_action_get_func_name(arg0.h_func) + ")";
        
        case 69:
            return l_r + "(func: " + gml_action_list_print_action_get_func_name(arg0.h_func) + ")";
        
        case 70:
            return l_r + "(func: " + gml_action_list_print_action_get_func_name(arg0.h_func) + ")";
        
        case 71:
            return l_r + "(func: " + gml_action_list_print_action_get_func_name(arg0.h_func) + ")";
        
        case 72:
            return l_r + "(func: " + gml_action_list_print_action_get_func_name(arg0.h_func) + ")";
        
        case 73:
            return l_r + "(func: " + gml_action_list_print_action_get_func_name(arg0.h_func) + ")";
        
        case 74:
            return l_r + "(func: " + gml_action_list_print_action_get_func_name(arg0.h_func) + ")";
        
        case 75:
            return l_r + "(func: " + gml_action_list_print_action_get_func_name(arg0.h_func) + ")";
        
        case 76:
            return l_r + "(func: " + gml_action_list_print_action_get_func_name(arg0.h_func) + ")";
        
        case 77:
            return l_r + "(ind: " + string(arg0.h_local) + ", func: " + gml_action_list_print_action_get_func_name(arg0.h_func) + ")";
        
        case 78:
            return l_r + "(ind: " + string(arg0.h_local) + ", func: " + gml_action_list_print_action_get_func_name(arg0.h_func) + ")";
        
        case 79:
            return l_r + "(ind: " + string(arg0.h_local) + ", func: " + gml_action_list_print_action_get_func_name(arg0.h_func) + ")";
        
        case 80:
            return l_r + "(ind: " + string(arg0.h_local) + ", func: " + gml_action_list_print_action_get_func_name(arg0.h_func) + ")";
        
        case 81:
            return l_r + "(ind: " + string(arg0.h_local) + ", func: " + gml_action_list_print_action_get_func_name(arg0.h_func) + ")";
        
        case 82:
            return l_r + "(ind: " + string(arg0.h_local) + ", func: " + gml_action_list_print_action_get_func_name(arg0.h_func) + ")";
        
        case 83:
            return l_r + "(ind: " + string(arg0.h_local) + ", func: " + gml_action_list_print_action_get_func_name(arg0.h_func) + ")";
        
        case 84:
            return l_r + "(ind: " + string(arg0.h_local) + ", func: " + gml_action_list_print_action_get_func_name(arg0.h_func) + ")";
        
        case 85:
            return l_r + "(ind: " + string(arg0.h_local) + ", func: " + gml_action_list_print_action_get_func_name(arg0.h_func) + ")";
        
        case 86:
            return l_r + "(ind: " + string(arg0.h_local) + ", func: " + gml_action_list_print_action_get_func_name(arg0.h_func) + ")";
    }
    
    if (is_struct(arg0))
    {
        var l_enumParams = arg0.__enumParams__;
        l_argc = array_length(l_enumParams);
        
        if (l_argc > 1)
        {
            l_r += "(";
            var l_k = 1;
            var l__g1 = l_argc;
            
            while (l_k < l__g1)
            {
                if (l_k > 1)
                    l_r += ", ";
                
                var l_f = l_enumParams[l_k];
                l_r += (l_f + ": " + gml_action_list_print_action_value(variable_struct_get(arg0, l_f)));
                l_k++;
            }
            
            l_r += ")";
        }
        
        return l_r;
    }
    
    var l_argc = gml_std_haxe_enum_tools_getParameterCount(arg0);
    
    if (l_argc > 1)
    {
        l_r += "(";
        var l_k = 1;
        var l__g1 = l_argc;
        
        while (l_k < l__g1)
        {
            if (l_k > 1)
                l_r += ", ";
            
            l_r += gml_action_list_print_action_value(gml_std_haxe_enum_tools_getParameter(arg0, l_k));
            l_k++;
        }
        
        l_r += ")";
    }
    
    return l_r;
}

function gml_action_list_print(arg0)
{
    var l_r = new gml_std_StringBuf();
    var l_i = 0;
    var l__g1 = ds_list_size(arg0);
    
    while (l_i < l__g1)
    {
        var l_act = arg0[| l_i];
        
        if (l_i > 0)
            l_r.h_addChar(10);
        
        var l_actStr = gml_action_list_print_action(l_act);
        l_act.__string__ = l_actStr;
        l_r.h_add(l_i);
        l_r.h_addChar(9);
        l_r.h_add(l_actStr);
        l_i++;
    }
    
    return l_r.h_toString();
}

function gml_thread_scope_create(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7)
{
    var l_this = [global.mt_gml_thread_scope];
    array_copy(l_this, 1, global.mq_gml_thread_scope, 1, 10);
    l_this[8] = undefined;
    l_this[7] = undefined;
    l_this[5] = array_create(16);
    l_this[1] = arg0;
    l_this[2] = arg1;
    l_this[3] = arg2;
    l_this[4] = arg3;
    l_this[9] = arg7;
    l_this[6] = [2, arg5, arg4];
    l_this[10] = arg6;
    return l_this;
}

function gml_type_check_init()
{
    var l_r = new haxe_ds_string_map();
    variable_struct_set(l_r.h_obj, "any", gml_type_check_any);
    variable_struct_set(l_r.h_obj, "bool", gml_type_check_number);
    variable_struct_set(l_r.h_obj, "number", gml_type_check_number);
    variable_struct_set(l_r.h_obj, "?number", gml_type_check_z_number);
    variable_struct_set(l_r.h_obj, "float", gml_type_check_number);
    variable_struct_set(l_r.h_obj, "?float", gml_type_check_z_number);
    variable_struct_set(l_r.h_obj, "real", gml_type_check_number);
    variable_struct_set(l_r.h_obj, "?real", gml_type_check_z_number);
    variable_struct_set(l_r.h_obj, "color", gml_type_check_number);
    variable_struct_set(l_r.h_obj, "date", gml_type_check_number);
    variable_struct_set(l_r.h_obj, "int", gml_type_check_int);
    variable_struct_set(l_r.h_obj, "index", gml_type_check_index);
    variable_struct_set(l_r.h_obj, "id", gml_type_check_index);
    variable_struct_set(l_r.h_obj, "sprite", gml_type_check_index);
    variable_struct_set(l_r.h_obj, "background", gml_type_check_index);
    variable_struct_set(l_r.h_obj, "sound", gml_type_check_index);
    variable_struct_set(l_r.h_obj, "font", gml_type_check_index);
    variable_struct_set(l_r.h_obj, "script", gml_type_check_index);
    variable_struct_set(l_r.h_obj, "shader", gml_type_check_index);
    variable_struct_set(l_r.h_obj, "timeline", gml_type_check_index);
    variable_struct_set(l_r.h_obj, "object", gml_type_check_index);
    variable_struct_set(l_r.h_obj, "room", gml_type_check_index);
    variable_struct_set(l_r.h_obj, "buffer", gml_type_check_index);
    variable_struct_set(l_r.h_obj, "list", gml_type_check_index);
    variable_struct_set(l_r.h_obj, "grid", gml_type_check_index);
    variable_struct_set(l_r.h_obj, "string", gml_type_check_string);
    variable_struct_set(l_r.h_obj, "?string", gml_type_check_z_string);
    variable_struct_set(l_r.h_obj, "array", gml_type_check_array);
    variable_struct_set(l_r.h_obj, "?array", gml_type_check_z_array);
    variable_struct_set(l_r.h_obj, "sprite", gml_type_check_index);
    variable_struct_set(l_r.h_obj, "background", gml_type_check_index);
    variable_struct_set(l_r.h_obj, "sound", gml_type_check_index);
    variable_struct_set(l_r.h_obj, "font", gml_type_check_index);
    variable_struct_set(l_r.h_obj, "path", gml_type_check_index);
    variable_struct_set(l_r.h_obj, "timeline", gml_type_check_index);
    variable_struct_set(l_r.h_obj, "script", gml_type_check_index);
    variable_struct_set(l_r.h_obj, "object", gml_type_check_index);
    variable_struct_set(l_r.h_obj, "room", gml_type_check_index);
    return l_r;
}

function gml_type_check_any(arg0)
{
    return "";
}

function gml_type_check_number(arg0)
{
    if (is_numeric(arg0))
        return "";
    
    return "Expected a number";
}

function gml_type_check_int(arg0)
{
    if (is_real(arg0) && (arg0 % 1) == 0)
        return "";
    
    if (is_numeric(arg0))
        return "";
    
    if (is_string(arg0))
        return "";
    
    return "Expected an integer";
}

function gml_type_check_index(arg0)
{
    if (is_real(arg0) && (arg0 % 1) == 0)
        return "";
    
    if (is_numeric(arg0))
        return "";
    
    if (is_string(arg0))
        return "";
    
    return "Expected an index";
}

function gml_type_check_string(arg0)
{
    if (is_string(arg0))
        return "";
    
    if (is_numeric(arg0))
        return "";
    
    return "Expected a string";
}

function gml_type_check_array(arg0)
{
    if (is_array(arg0))
        return "";
    
    return "Expected an array";
}

function gml_type_check_z_number(arg0)
{
    if (arg0 == undefined || is_numeric(arg0))
        return "";
    
    if (is_string(arg0))
        return "";
    
    return "Expected a number or null";
}

function gml_type_check_z_string(arg0)
{
    if (arg0 == undefined || is_string(arg0))
        return "";
    
    if (is_numeric(arg0))
        return "";
    
    return "Expected a string or null";
}

function gml_type_check_z_array(arg0)
{
    if (arg0 == undefined || is_array(arg0))
        return "";
    
    return "Expected an array or null";
}

function gml_value_list_copy(arg0)
{
    var l_n = array_length(arg0);
    var l_r = array_create(l_n);
    array_copy(l_r, 0, arg0, 0, l_n);
    return l_r;
}

function gml_value_list_pad_to_size_with_null(arg0, arg1)
{
    var l_curSize = array_length(arg0);
    
    if (l_curSize < arg1)
    {
        array_resize(arg0, arg1);
        
        while (l_curSize < arg1)
        {
            arg0[l_curSize] = undefined;
            l_curSize++;
        }
    }
}

function vm__gml_value_map_gml_value_map_impl__print(arg0)
{
    var l_r = "{";
    var l_keys = ds_map_keys_to_array(arg0);
    var l_i = 0;
    var l__g1 = array_length(l_keys);
    
    while (l_i < l__g1)
    {
        var l_k = l_keys[l_i];
        
        if (l_i > 0)
            l_r += ", ";
        else
            l_r += " ";
        
        l_r += (gml_value_print(l_keys[l_i]) + ": " + gml_std_Std_stringify(arg0[? l_k]));
        l_i++;
    }
    
    return l_r + " }";
}

function gml_with_scope(arg0, arg1) constructor
{
    static h_index = undefined;
    static h_length = undefined;
    static h_array = undefined;
    static h_next = undefined;
    static h_data = undefined;
    static __class__ = global.mt_gml_with_scope;
    
    h_index = 0;
    h_data = arg0;
    h_length = arg0.length;
    h_array = arg0.items;
    h_next = arg1;
}

function gml_with_scope_copy(arg0)
{
    if (arg0 == undefined)
        return undefined;
    
    var l_q_data = arg0.h_data;
    l_q_data.refc++;
    var l_r = new gml_with_scope(l_q_data, gml_with_scope_copy(arg0.h_next));
    l_r.h_index = arg0.h_index;
    return l_r;
}

function gml_with_scope_destroy(arg0)
{
    while (arg0 != undefined)
    {
        vm__gml_with_data_gml_with_data_impl__destroy(arg0.h_data);
        arg0 = arg0.h_next;
    }
}

function vm__gml_with_data_gml_with_data_impl__init()
{
    var l_pools = array_create(5, undefined);
    l_pools[0] = ds_stack_create();
    l_pools[1] = ds_stack_create();
    l_pools[2] = ds_stack_create();
    l_pools[3] = ds_stack_create();
    l_pools[4] = ds_stack_create();
    return l_pools;
}

function vm__gml_with_data_gml_with_data_impl__alloc(arg0)
{
    var l_sln = (arg0 > 0) ? (log10(arg0) | 0) : 0;
    
    if (l_sln >= 5)
        return array_create(arg0);
    
    var l_pool = global.vm__gml_with_data_gml_with_data_impl__pools[l_sln];
    
    if (ds_stack_empty(l_pool))
        return array_create(power(10, l_sln) | 0);
    else
        return ds_stack_pop(l_pool);
}

function vm__gml_with_data_gml_with_data_impl__destroy(arg0)
{
    var refc;
    
    if (--arg0.refc != 0)
        exit;
    
    var l_size = arg0.length;
    var l_sln = (l_size > 0) ? (log10(l_size) | 0) : 0;
    
    if (l_sln >= 5)
        exit;
    
    ds_stack_push(global.vm__gml_with_data_gml_with_data_impl__pools[l_sln], arg0.items);
}

function gml_type_ref(arg0, arg1) constructor
{
    static h_name = undefined;
    static h_path = undefined;
    static __class__ = global.mt_gml_type_ref;
    
    if (arg1 == undefined)
        arg1 = "";
    
    h_name = arg0;
    h_path = arg1;
    variable_struct_set(self, "\a", global.gml_type_ref_root);
}

function gml_type_ref_init()
{
    global.gml_type_ref_root = undefined;
    var l_t = new gml_type_ref("typeref");
    variable_struct_set(l_t, "\a", l_t);
    return l_t;
}

function vm_v2_GmlStructBase() constructor
{
    static __class__ = global.mt_vm_v2_GmlStructBase;
}

function vm_v2_gml_thread_group_call_gml23_init()
{
    var l_arr = [];
    var l__ = 0;
    var l__g1 = 11;
    
    while (l__ < l__g1)
    {
        array_push(l_arr, vm_v2_gml_thread_group_call_gml23_call_unknown);
        l__++;
    }
    
    l_arr[7] = vm_v2_gml_thread_group_call_gml23_call_basic;
    l_arr[10] = vm_v2_gml_thread_group_call_gml23_call_self_other_soft;
    l_arr[9] = vm_v2_gml_thread_group_call_gml23_call_self_other_soft;
    l_arr[8] = vm_v2_gml_thread_group_call_gml23_call_self;
    l_arr[2] = vm_v2_gml_thread_group_call_gml23_call_raw;
    l_arr[1] = vm_v2_gml_thread_group_call_gml23_call_construct;
    return l_arr;
}

function vm_v2_gml_thread_group_call_gml23_call_unknown(arg0, arg1, arg2, arg3, arg4, arg5)
{
    global.vm_group_call_call_func_result = undefined;
    global.vm_group_call_call_func_status = arg0.h_proc_error2("Call type not supported", arg1);
    return false;
}

function vm_v2_gml_thread_group_call_gml23_call_basic(arg0, arg1, arg2, arg3, arg4, arg5)
{
    global.vm_group_call_call_func_result = (arg5 < 81) ? global.vm_gml_thread_exec_slice_funcs[arg5](arg2, arg3, arg4) : vm_gml_thread_exec_slice_longcall(arg2, arg3, arg4, arg5);
    global.vm_group_call_call_func_status = 0;
    return true;
}

function vm_v2_gml_thread_group_call_gml23_call_self_other_soft(arg0, arg1, arg2, arg3, arg4, arg5)
{
    var l_inst = arg0.h_scope[6];
    
    with (l_inst[l_inst[0] - 1])
    {
        with (l_inst[l_inst[0]])
        {
            global.vm_group_call_call_func_result = (arg5 < 81) ? global.vm_gml_thread_exec_slice_funcs[arg5](arg2, arg3, arg4) : vm_gml_thread_exec_slice_longcall(arg2, arg3, arg4, arg5);
            global.vm_group_call_call_func_status = 0;
            return true;
        }
    }
    
    return arg0.h_proc_error("Can't call instance-specific function - instance `" + gml_value_print(l_inst[l_inst[0]]) + ("` (" + gml_value_get_type(l_inst[l_inst[0]]) + ") does not exist."), arg1);
}

function vm_v2_gml_thread_group_call_gml23_call_self(arg0, arg1, arg2, arg3, arg4, arg5)
{
    var l_inst = arg0.h_scope[6];
    
    with (l_inst[l_inst[0]])
    {
        global.vm_group_call_call_func_result = (arg5 < 81) ? global.vm_gml_thread_exec_slice_funcs[arg5](arg2, arg3, arg4) : vm_gml_thread_exec_slice_longcall(arg2, arg3, arg4, arg5);
        global.vm_group_call_call_func_status = 0;
        return true;
    }
    
    return arg0.h_proc_error("Can't call instance-specific function - instance `" + gml_value_print(l_inst[l_inst[0]]) + ("` (" + gml_value_get_type(l_inst[l_inst[0]]) + ") does not exist."), arg1);
}

function vm_v2_gml_thread_group_call_gml23_call_construct(arg0, arg1, arg2, arg3, arg4, arg5)
{
    global.vm_group_call_call_func_status = 0;
    var l_inst = arg0.h_scope[6];
    var l_tmp;
    
    with (l_inst[l_inst[0]])
    {
        if (arg5 < 81)
            l_tmp = global.vm_impl_gml_thread_construct_funcs[arg5](arg2, arg3, arg4);
        else
            l_tmp = vm_impl_gml_thread_construct_error();
        
        global.vm_group_call_call_func_result = l_tmp;
        return true;
    }
    
    if (arg5 < 81)
        l_tmp = global.vm_impl_gml_thread_construct_funcs[arg5](arg2, arg3, arg4);
    else
        l_tmp = vm_impl_gml_thread_construct_error();
    
    global.vm_group_call_call_func_result = l_tmp;
    return true;
}

function vm_v2_gml_thread_group_call_gml23_call_raw(arg0, arg1, arg2, arg3, arg4, arg5)
{
    arg0.h_result = undefined;
    global.vm_group_call_call_func_result = undefined;
    global.vm_group_call_call_func_status = arg2(arg3, arg4, arg5);
    return true;
}

function vm_v2_gml_thread_group_fast_call_with_local_on_call_func_with_local0(arg0, arg1, arg2, arg3)
{
    if (arg1.__enumIndex__ == 77)
        arg1.h_func(arg2[4][arg1.h_local]);
    
    return 0;
}

function vm_v2_gml_thread_group_fast_call_with_local_on_call_func_with_local0o(arg0, arg1, arg2, arg3)
{
    if (arg1.__enumIndex__ == 78)
    {
        var l_v = arg1.h_func(arg2[4][arg1.h_local]);
        var l_i = arg3[0] + 1;
        
        if (l_i >= array_length(arg3))
            arg3[array_length(arg3) * 2] = 0;
        
        arg3[l_i] = l_v;
        arg3[0] = l_i;
    }
    
    return 0;
}

function vm_v2_gml_thread_group_fast_call_with_local_on_call_func_with_local1(arg0, arg1, arg2, arg3)
{
    if (arg1.__enumIndex__ == 79)
    {
        var l__func = arg1.h_func;
        var l_scope1 = arg2[4][arg1.h_local];
        var l_i = arg3[0];
        var l_r = arg3[l_i];
        arg3[l_i] = 0;
        arg3[0] = l_i - 1;
        l__func(l_scope1, l_r);
    }
    
    return 0;
}

function vm_v2_gml_thread_group_fast_call_with_local_on_call_func_with_local1o(arg0, arg1, arg2, arg3)
{
    if (arg1.__enumIndex__ == 80)
    {
        var l_z = arg3[0];
        arg3[l_z] = arg1.h_func(arg2[4][arg1.h_local], arg3[l_z]);
    }
    
    return 0;
}

function vm_v2_gml_thread_group_fast_call_with_local_on_call_func_with_local2(arg0, arg1, arg2, arg3)
{
    if (arg1.__enumIndex__ == 81)
    {
        var l_z = arg3[0] - 1;
        arg3[0] = l_z - 1;
        arg1.h_func(arg2[4][arg1.h_local], arg3[l_z], arg3[l_z + 1]);
        arg3[l_z] = 0;
        arg3[l_z + 1] = 0;
    }
    
    return 0;
}

function vm_v2_gml_thread_group_fast_call_with_local_on_call_func_with_local2o(arg0, arg1, arg2, arg3)
{
    if (arg1.__enumIndex__ == 82)
    {
        var l_z = arg3[0] - 1;
        arg3[0] = l_z;
        arg3[l_z] = arg1.h_func(arg2[4][arg1.h_local], arg3[l_z], arg3[l_z + 1]);
        arg3[l_z + 1] = 0;
    }
    
    return 0;
}

function vm_v2_gml_thread_group_fast_call_with_local_on_call_func_with_local3(arg0, arg1, arg2, arg3)
{
    if (arg1.__enumIndex__ == 83)
    {
        var l_z = arg3[0] - 2;
        arg3[0] = l_z - 1;
        arg1.h_func(arg2[4][arg1.h_local], arg3[l_z], arg3[l_z + 1], arg3[l_z + 2]);
        arg3[l_z] = 0;
        arg3[l_z + 1] = 0;
        arg3[l_z + 2] = 0;
    }
    
    return 0;
}

function vm_v2_gml_thread_group_fast_call_with_local_on_call_func_with_local3o(arg0, arg1, arg2, arg3)
{
    if (arg1.__enumIndex__ == 84)
    {
        var l_z = arg3[0] - 2;
        arg3[0] = l_z;
        arg3[l_z] = arg1.h_func(arg2[4][arg1.h_local], arg3[l_z], arg3[l_z + 1], arg3[l_z + 2]);
        arg3[l_z + 1] = 0;
        arg3[l_z + 2] = 0;
    }
    
    return 0;
}

function vm_v2_gml_thread_group_fast_call_with_local_on_call_func_with_local4(arg0, arg1, arg2, arg3)
{
    if (arg1.__enumIndex__ == 85)
    {
        var l_z = arg3[0] - 3;
        arg3[0] = l_z - 1;
        arg1.h_func(arg2[4][arg1.h_local], arg3[l_z], arg3[l_z + 1], arg3[l_z + 2], arg3[l_z + 3]);
        arg3[l_z] = 0;
        arg3[l_z + 1] = 0;
        arg3[l_z + 2] = 0;
        arg3[l_z + 3] = 0;
    }
    
    return 0;
}

function vm_v2_gml_thread_group_fast_call_with_local_on_call_func_with_local4o(arg0, arg1, arg2, arg3)
{
    if (arg1.__enumIndex__ == 86)
    {
        var l_z = arg3[0] - 3;
        arg3[0] = l_z;
        arg3[l_z] = arg1.h_func(arg2[4][arg1.h_local], arg3[l_z], arg3[l_z + 1], arg3[l_z + 2], arg3[l_z + 3]);
        arg3[l_z + 1] = 0;
        arg3[l_z + 2] = 0;
        arg3[l_z + 3] = 0;
    }
    
    return 0;
}

function live_method(arg0, arg1)
{
    if (is_method(arg1))
    {
        var l_meta = method_get_self(arg1);
        
        if (is_struct(l_meta) && variable_struct_exists(l_meta, "live:self"))
        {
            var l_nmeta = haxe__dynamic_access_dynamic_access_impl__copy(l_meta);
            variable_struct_set(l_nmeta, "live:self", arg0);
            return method(l_nmeta, arg1);
        }
    }
    
    return method(arg0, arg1);
}

function live_method_get_self(arg0)
{
    var l_fnSelf = method_get_self(arg0);
    
    if (is_struct(l_fnSelf) && variable_struct_exists(l_fnSelf, "live:self"))
        return variable_struct_get(l_fnSelf, "live:self");
    
    return l_fnSelf;
}

function gml_thread_method_script()
{
    var l_meta = self;
    var l_ctx = variable_struct_get(l_meta, "live:context");
    var l_pg;
    
    if (l_ctx != undefined)
    {
        var l_livedata = variable_struct_get(global.live_live_map.h_obj, l_ctx);
        
        if (l_livedata == undefined)
            show_error("Trying to call a nonexistent GMLive program: " + l_ctx, true);
        
        l_pg = l_livedata[0];
        
        if (l_pg == undefined)
        {
            live_log("Trying to call a broken GMLive program " + l_ctx + ", returning undefined", 2);
            return undefined;
        }
    }
    else
    {
        l_pg = variable_struct_get(l_meta, "live:program");
        
        if (l_pg == undefined)
            show_error("It would appear that you've re-bound a GMLive function to a different scope. Please use live_method() rather than method() to do so.", true);
    }
    
    var l_argc = argument_count;
    var l_args1 = array_create(l_argc);
    var l_i = 0;
    var l__g1 = l_argc;
    
    while (l_i < l__g1)
    {
        l_args1[l_i] = argument[l_i];
        l_i++;
    }
    
    global.live_custom_self = variable_struct_get(l_meta, "live:self");
    global.live_custom_other = other;
    var l_th = l_pg.h_call_v(variable_struct_get(l_meta, "live:function"), l_args1, false);
    
    if (l_th == undefined)
        return undefined;
    
    if (l_th.h_status == 3)
    {
        return l_th.h_result;
    }
    else if (l_th.h_status == 4)
    {
        live_log("Runtime error: " + l_th.h_get_error(), 2);
        return undefined;
    }
    else
    {
        return undefined;
    }
}

function vm_v2_gml_thread_group_func_literal_ctr_impl()
{
    show_error("\"live\" constructors should be invoked through live_new", true);
}

function vm_v2_gml_thread_group_func_literal_create_function(arg0, arg1, arg2)
{
    var l_meta = {};
    var l_funcSelf = arg2;
    
    if (!is_struct(l_funcSelf) && instanceof(l_funcSelf) == "instance")
        l_funcSelf = l_funcSelf.id;
    
    variable_struct_set(l_meta, "live:self", l_funcSelf);
    var l_th = global.gml_thread_current;
    
    if (l_th.h_scope[9].h_live_ident != undefined)
        variable_struct_set(l_meta, "live:context", l_th.h_scope[9].h_live_ident);
    else
        variable_struct_set(l_meta, "live:program", l_th.h_scope[9]);
    
    variable_struct_set(l_meta, "live:function", arg1);
    var l_isCtr = variable_struct_get(arg0.h_script_map.h_obj, arg1).h_is_constructor;
    variable_struct_set(l_meta, "live:isConstructor", l_isCtr);
    
    if (l_isCtr)
        return method(l_meta, vm_v2_gml_thread_group_func_literal_ctr_impl);
    else
        return method(l_meta, gml_thread_method_script);
}

function vm_v2_gml_thread_group_func_literal_on_func_literal(arg0, arg1, arg2, arg3)
{
    if (arg1.__enumIndex__ == 89)
    {
        var l__name = arg1.h_name;
        var l_this1 = arg2[6];
        gml_stack_push(arg3, vm_v2_gml_thread_group_func_literal_create_function(arg2[9], l__name, l_this1[l_this1[0]]));
    }
    
    return 0;
}

global.api_api_fast_field_getters = new haxe_ds_string_map();
global.api_api_fast_field_setters = new haxe_ds_string_map();
global.gml_func_name = ds_map_create();
global.gml_func_script_id = new haxe_ds_string_map();
global.gml_const_map = new haxe_ds_string_map();
global.gml_const_val = new haxe_ds_string_map();
global.gml_asset_index = new haxe_ds_string_map();
global.gml_enum_map = new haxe_ds_string_map();
global.gml_func_map = new haxe_ds_string_map();
global.vm_value_gml_value_printer_print_refs = ds_map_create();
global.vm_value_gml_value_printer_print_num = 0;
global.gml_op_apply_fns = gml_op_apply_init();
global.gml_thread_default_callback = undefined;
global.gml_thread_current = undefined;
global.gml_stack_fill_value_arr = array_create(1024, 0);
global.gml_compile_curr_script = gml_compile_init();
global.gml_compile_curr_break = -1;
global.gml_compile_curr_continue = -1;
global.api_api_version_v1 = api_api_version_create(14);
global.api_api_version_v2 = api_api_version_create(22);
global.api_api_version_v23 = api_api_version_create(23);
global.gml_parser_default_version = global.api_api_version_v23;
global.gml_parser_src_buf = buffer_create(1024, buffer_fast, 1);
global.gml_parser_str_buf = buffer_create(1024, buffer_grow, 1);
global.gml_parser_buf_sub_buf = buffer_create(1024, buffer_grow, 1);
global.gml_parser_curr_version = undefined;
global.gml_std_StringBuf_buffer = buffer_create(128, buffer_grow, 1);
global.api_api_var_map = new haxe_ds_string_map();
global.ast_gml_macro_proc_list = ds_list_create();
global.ast_gml_macro_proc_map = new haxe_ds_string_map();
global.ast_gml_macro_proc_exclude_map = new haxe_ds_string_map();
global.ast_gml_macro_proc_next_exclude_list = ds_list_create();
global.ast_gml_macro_proc_next_exclude_map = new haxe_ds_string_map();
global.ast_gml_node_def_info_array = [new ast_gml_node_def_ctr("Undefined", [new ast_gml_node_def_param("pos", 2)]), new ast_gml_node_def_ctr("Number", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("value", 13), new ast_gml_node_def_param("src", 13)]), new ast_gml_node_def_ctr("CString", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("value", 13)]), new ast_gml_node_def_ctr("OtherConst", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("value", 13)]), new ast_gml_node_def_ctr("EnumCtr", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("e", 6), new ast_gml_node_def_param("ctr", 7)]), new ast_gml_node_def_ctr("ArrayDecl", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("values", 1)]), new ast_gml_node_def_ctr("ObjectDecl", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("keys", 14), new ast_gml_node_def_param("values", 1)]), new ast_gml_node_def_ctr("EnsureArrayForLocal", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("name", 13)]), new ast_gml_node_def_ctr("EnsureArrayForGlobal", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("name", 13)]), new ast_gml_node_def_ctr("EnsureArrayForField", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("obj", 0), new ast_gml_node_def_param("fd", 13)]), new ast_gml_node_def_ctr("EnsureArrayForIndex", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("arr", 0), new ast_gml_node_def_param("ind", 0)]), new ast_gml_node_def_ctr("EnsureArrayForIndex2d", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("arr", 0), new ast_gml_node_def_param("ind1", 0), new ast_gml_node_def_param("ind2", 0)]), new ast_gml_node_def_ctr("Ident", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("id", 13)]), new ast_gml_node_def_ctr("Self", [new ast_gml_node_def_param("pos", 2)]), new ast_gml_node_def_ctr("Other", [new ast_gml_node_def_param("pos", 2)]), new ast_gml_node_def_ctr("GlobalRef", [new ast_gml_node_def_param("pos", 2)]), new ast_gml_node_def_ctr("Script", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("ref", 5)]), new ast_gml_node_def_ctr("NativeScript", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("name", 13), new ast_gml_node_def_param("id", 12)]), new ast_gml_node_def_ctr("Const", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("name", 13)]), new ast_gml_node_def_ctr("ArgConst", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("index", 13)]), new ast_gml_node_def_ctr("ArgIndex", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("index", 0)]), new ast_gml_node_def_ctr("ArgCount", [new ast_gml_node_def_param("pos", 2)]), new ast_gml_node_def_ctr("Call", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("expr", 0), new ast_gml_node_def_param("args", 1)]), new ast_gml_node_def_ctr("CallScript", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("name", 13), new ast_gml_node_def_param("args", 1)]), new ast_gml_node_def_ctr("CallScriptAt", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("inst", 0), new ast_gml_node_def_param("script", 13), new ast_gml_node_def_param("args", 1)]), new ast_gml_node_def_ctr("CallScriptId", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("index", 0), new ast_gml_node_def_param("args", 1)]), new ast_gml_node_def_ctr("CallScriptWithArray", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("index", 0), new ast_gml_node_def_param("array", 0)]), new ast_gml_node_def_ctr("CallField", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("obj", 0), new ast_gml_node_def_param("field", 13), new ast_gml_node_def_param("args", 1)]), new ast_gml_node_def_ctr("CallFunc", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("func", 11), new ast_gml_node_def_param("args", 1)]), new ast_gml_node_def_ctr("CallFuncAt", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("expr", 0), new ast_gml_node_def_param("fname", 13), new ast_gml_node_def_param("args", 1)]), new ast_gml_node_def_ctr("Construct", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("ctr", 0), new ast_gml_node_def_param("args", 1)]), new ast_gml_node_def_ctr("FuncLiteral", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("name", 13)]), new ast_gml_node_def_ctr("Prefix", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("expr", 0), new ast_gml_node_def_param("inc", 13)]), new ast_gml_node_def_ctr("Postfix", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("expr", 0), new ast_gml_node_def_param("inc", 13)]), new ast_gml_node_def_ctr("UnOp", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("expr", 0), new ast_gml_node_def_param("op", 8)]), new ast_gml_node_def_ctr("BinOp", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("op", 9), new ast_gml_node_def_param("a", 0), new ast_gml_node_def_param("b", 0)]), new ast_gml_node_def_ctr("SetOp", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("op", 9), new ast_gml_node_def_param("a", 0), new ast_gml_node_def_param("b", 0)]), new ast_gml_node_def_ctr("Delete", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("expr", 0)]), new ast_gml_node_def_ctr("NullCo", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("a", 0), new ast_gml_node_def_param("b", 0)]), new ast_gml_node_def_ctr("ToBool", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("val", 0)]), new ast_gml_node_def_ctr("FromBool", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("val", 0)]), new ast_gml_node_def_ctr("In", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("fd", 0), new ast_gml_node_def_param("obj", 0), new ast_gml_node_def_param("not", 13)]), new ast_gml_node_def_ctr("Local", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("name", 13)]), new ast_gml_node_def_ctr("LocalSet", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("name", 13), new ast_gml_node_def_param("val", 0)]), new ast_gml_node_def_ctr("LocalAop", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("name", 13), new ast_gml_node_def_param("op", 9), new ast_gml_node_def_param("val", 0)]), new ast_gml_node_def_ctr("StaticDecl", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("name", 13), new ast_gml_node_def_param("val", 0)]), new ast_gml_node_def_ctr("Static", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("name", 13)]), new ast_gml_node_def_ctr("StaticSet", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("name", 13), new ast_gml_node_def_param("val", 0)]), new ast_gml_node_def_ctr("StaticAop", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("name", 13), new ast_gml_node_def_param("op", 9), new ast_gml_node_def_param("val", 0)]), new ast_gml_node_def_ctr("Global", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("name", 13)]), new ast_gml_node_def_ctr("GlobalSet", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("name", 13), new ast_gml_node_def_param("val", 0)]), new ast_gml_node_def_ctr("GlobalAop", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("name", 13), new ast_gml_node_def_param("op", 9), new ast_gml_node_def_param("val", 0)]), new ast_gml_node_def_ctr("Field", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("obj", 0), new ast_gml_node_def_param("field", 13)]), new ast_gml_node_def_ctr("FieldSet", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("obj", 0), new ast_gml_node_def_param("field", 13), new ast_gml_node_def_param("val", 0)]), new ast_gml_node_def_ctr("FieldAop", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("obj", 0), new ast_gml_node_def_param("field", 13), new ast_gml_node_def_param("op", 9), new ast_gml_node_def_param("val", 0)]), new ast_gml_node_def_ctr("Env", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("v", 10)]), new ast_gml_node_def_ctr("EnvSet", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("v", 10), new ast_gml_node_def_param("val", 0)]), new ast_gml_node_def_ctr("EnvAop", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("v", 10), new ast_gml_node_def_param("op", 9), new ast_gml_node_def_param("val", 0)]), new ast_gml_node_def_ctr("EnvFd", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("obj", 0), new ast_gml_node_def_param("v", 10)]), new ast_gml_node_def_ctr("EnvFdSet", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("obj", 0), new ast_gml_node_def_param("v", 10), new ast_gml_node_def_param("val", 0)]), new ast_gml_node_def_ctr("EnvFdAop", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("obj", 0), new ast_gml_node_def_param("v", 10), new ast_gml_node_def_param("op", 9), new ast_gml_node_def_param("val", 0)]), new ast_gml_node_def_ctr("Env1d", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("v", 10), new ast_gml_node_def_param("index", 0)]), new ast_gml_node_def_ctr("Env1dSet", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("v", 10), new ast_gml_node_def_param("index", 0), new ast_gml_node_def_param("val", 0)]), new ast_gml_node_def_ctr("Env1dAop", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("v", 10), new ast_gml_node_def_param("index", 0), new ast_gml_node_def_param("op", 9), new ast_gml_node_def_param("val", 0)]), new ast_gml_node_def_ctr("Alarm", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("obj", 0), new ast_gml_node_def_param("index", 0)]), new ast_gml_node_def_ctr("AlarmSet", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("obj", 0), new ast_gml_node_def_param("index", 0), new ast_gml_node_def_param("val", 0)]), new ast_gml_node_def_ctr("AlarmAop", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("obj", 0), new ast_gml_node_def_param("index", 0), new ast_gml_node_def_param("op", 9), new ast_gml_node_def_param("val", 0)]), new ast_gml_node_def_ctr("Index", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("arr", 0), new ast_gml_node_def_param("index", 0)]), new ast_gml_node_def_ctr("IndexSet", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("arr", 0), new ast_gml_node_def_param("index", 0), new ast_gml_node_def_param("val", 0)]), new ast_gml_node_def_ctr("IndexAop", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("arr", 0), new ast_gml_node_def_param("index", 0), new ast_gml_node_def_param("op", 9), new ast_gml_node_def_param("val", 0)]), new ast_gml_node_def_ctr("Index2d", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("arr", 0), new ast_gml_node_def_param("index1", 0), new ast_gml_node_def_param("index2", 0)]), new ast_gml_node_def_ctr("Index2dSet", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("arr", 0), new ast_gml_node_def_param("index1", 0), new ast_gml_node_def_param("index2", 0), new ast_gml_node_def_param("val", 0)]), new ast_gml_node_def_ctr("Index2dAop", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("arr", 0), new ast_gml_node_def_param("index1", 0), new ast_gml_node_def_param("index2", 0), new ast_gml_node_def_param("op", 9), new ast_gml_node_def_param("val", 0)]), new ast_gml_node_def_ctr("RawId", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("arr", 0), new ast_gml_node_def_param("index", 0)]), new ast_gml_node_def_ctr("RawIdSet", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("arr", 0), new ast_gml_node_def_param("index", 0), new ast_gml_node_def_param("val", 0)]), new ast_gml_node_def_ctr("RawIdAop", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("arr", 0), new ast_gml_node_def_param("index", 0), new ast_gml_node_def_param("op", 9), new ast_gml_node_def_param("val", 0)]), new ast_gml_node_def_ctr("RawId2d", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("arr", 0), new ast_gml_node_def_param("index1", 0), new ast_gml_node_def_param("index2", 0)]), new ast_gml_node_def_ctr("RawId2dSet", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("arr", 0), new ast_gml_node_def_param("index1", 0), new ast_gml_node_def_param("index2", 0), new ast_gml_node_def_param("val", 0)]), new ast_gml_node_def_ctr("RawId2dAop", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("arr", 0), new ast_gml_node_def_param("index1", 0), new ast_gml_node_def_param("index2", 0), new ast_gml_node_def_param("op", 9), new ast_gml_node_def_param("val", 0)]), new ast_gml_node_def_ctr("DsList", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("list", 0), new ast_gml_node_def_param("index", 0)]), new ast_gml_node_def_ctr("DsListSet", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("list", 0), new ast_gml_node_def_param("index", 0), new ast_gml_node_def_param("val", 0)]), new ast_gml_node_def_ctr("DsListAop", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("list", 0), new ast_gml_node_def_param("index", 0), new ast_gml_node_def_param("op", 9), new ast_gml_node_def_param("val", 0)]), new ast_gml_node_def_ctr("DsMap", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("map", 0), new ast_gml_node_def_param("key", 0)]), new ast_gml_node_def_ctr("DsMapSet", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("map", 0), new ast_gml_node_def_param("key", 0), new ast_gml_node_def_param("val", 0)]), new ast_gml_node_def_ctr("DsMapAop", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("map", 0), new ast_gml_node_def_param("key", 0), new ast_gml_node_def_param("op", 9), new ast_gml_node_def_param("val", 0)]), new ast_gml_node_def_ctr("DsGrid", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("grid", 0), new ast_gml_node_def_param("index1", 0), new ast_gml_node_def_param("index2", 0)]), new ast_gml_node_def_ctr("DsGridSet", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("grid", 0), new ast_gml_node_def_param("index1", 0), new ast_gml_node_def_param("index2", 0), new ast_gml_node_def_param("val", 0)]), new ast_gml_node_def_ctr("DsGridAop", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("grid", 0), new ast_gml_node_def_param("index1", 0), new ast_gml_node_def_param("index2", 0), new ast_gml_node_def_param("op", 9), new ast_gml_node_def_param("val", 0)]), new ast_gml_node_def_ctr("KeyId", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("obj", 0), new ast_gml_node_def_param("key", 0)]), new ast_gml_node_def_ctr("KeyIdSet", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("obj", 0), new ast_gml_node_def_param("key", 0), new ast_gml_node_def_param("val", 0)]), new ast_gml_node_def_ctr("KeyIdAop", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("obj", 0), new ast_gml_node_def_param("key", 0), new ast_gml_node_def_param("op", 9), new ast_gml_node_def_param("val", 0)]), new ast_gml_node_def_ctr("VarDecl", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("name", 13), new ast_gml_node_def_param("val", 0)]), new ast_gml_node_def_ctr("Block", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("nodes", 1)]), new ast_gml_node_def_ctr("IfThen", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("cond", 0), new ast_gml_node_def_param("then", 0), new ast_gml_node_def_param("not", 0)]), new ast_gml_node_def_ctr("Ternary", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("cond", 0), new ast_gml_node_def_param("then", 0), new ast_gml_node_def_param("not", 0)]), new ast_gml_node_def_ctr("Switch", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("expr", 0), new ast_gml_node_def_param("cases", 4), new ast_gml_node_def_param("def", 0)]), new ast_gml_node_def_ctr("Wait", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("time", 0)]), new ast_gml_node_def_ctr("Fork", [new ast_gml_node_def_param("pos", 2)]), new ast_gml_node_def_ctr("While", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("cond", 0), new ast_gml_node_def_param("loop", 0)]), new ast_gml_node_def_ctr("DoUntil", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("loop", 0), new ast_gml_node_def_param("cond", 0)]), new ast_gml_node_def_ctr("DoWhile", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("loop", 0), new ast_gml_node_def_param("cond", 0)]), new ast_gml_node_def_ctr("Repeat", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("times", 0), new ast_gml_node_def_param("loop", 0)]), new ast_gml_node_def_ctr("For", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("pre", 0), new ast_gml_node_def_param("cond", 0), new ast_gml_node_def_param("post", 0), new ast_gml_node_def_param("loop", 0)]), new ast_gml_node_def_ctr("With", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("ctx", 0), new ast_gml_node_def_param("loop", 0)]), new ast_gml_node_def_ctr("Once", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("loop", 0)]), new ast_gml_node_def_ctr("Return", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("val", 0)]), new ast_gml_node_def_ctr("Exit", [new ast_gml_node_def_param("pos", 2)]), new ast_gml_node_def_ctr("Break", [new ast_gml_node_def_param("pos", 2)]), new ast_gml_node_def_ctr("Continue", [new ast_gml_node_def_param("pos", 2)]), new ast_gml_node_def_ctr("Debugger", [new ast_gml_node_def_param("pos", 2)]), new ast_gml_node_def_ctr("TryCatch", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("block", 0), new ast_gml_node_def_param("capvar", 13), new ast_gml_node_def_param("catcher", 0)]), new ast_gml_node_def_ctr("Throw", [new ast_gml_node_def_param("pos", 2), new ast_gml_node_def_param("err", 0)])];
global.gml_script_index_offset = 0;
global.data_gml_keyword_mapper_map = data_gml_keyword_mapper_init();
global.gml_seek_eval_eval_thread = undefined;
global.gml_seek_eval_eval_actions = ds_list_create();
global.gml_seek_eval_invalid_value = [];
global.gml_std_gml_internal_ArrayImpl_join_buf = undefined;
global.gml_internal_native_function_invoke_funcs = (function()
{
    return [gml_internal_native_function_invoke_funcs_with0, gml_internal_native_function_invoke_funcs_with1, gml_internal_native_function_invoke_funcs_with2, gml_internal_native_function_invoke_funcs_with3, gml_internal_native_function_invoke_funcs_with4, gml_internal_native_function_invoke_funcs_with5, gml_internal_native_function_invoke_funcs_with6, gml_internal_native_function_invoke_funcs_with7, gml_internal_native_function_invoke_funcs_with8];
})();
global.gml_std_haxe_boot_isJS = false;
global.live_live_sprites = ds_map_create();
global.live_live_sprites_start = ds_list_create();
global.live_live_sprites_stop = ds_list_create();
global.live_live_point_paths = ds_map_create();
global.live_live_point_paths_start = ds_list_create();
global.live_live_point_paths_stop = ds_list_create();
global.live_live_included_files = ds_map_create();
global.live_live_included_files_start = ds_list_create();
global.live_live_included_files_stop = ds_list_create();
global.live_live_room = -1;
global.live_live_room_data = ds_map_create();
global.live_live_rooms = ds_map_create();
global.live_live_rooms_start = ds_list_create();
global.live_live_rooms_stop = ds_list_create();
global.live_blank_object = -1;
global.live_blank_room = -1;
global.live_room_updated = live_room_updated_impl;
global.live_last_warn_at = 0;
global.live_async_http_1_found = new haxe_ds_string_map();
global.live_async_http_1_acc = ds_list_create();
global.live_shader_updated = live_shader_updated_default;
global.live_shader_live_shaders = ds_map_create();
global.live_shader_live_shaders_start = ds_list_create();
global.live_shader_live_shaders_stop = ds_list_create();
global.live_is_ready = false;
global.live_request_url = undefined;
global.live_request_guid = undefined;
global.live_request_id = undefined;
global.live_config = undefined;
global.live_runtime_version = "";
global.live_build_date = 0;
global.live_request_time = 0;
global.live_request_rate = 1;
global.live_request_password = "";
global.live_result = "";
global.live_live_map = new haxe_ds_string_map();
global.live_live_enums = new haxe_ds_string_map();
global.live_live_macros = new haxe_ds_string_map();
global.live_live_globals = undefined;
global.live_temp_path = live_temp_path_init();
global.live_log_script = live_log_impl;
global.live_update_script = live_update_script_impl;
global.live_name = undefined;
global.live_custom_self = undefined;
global.live_custom_other = undefined;
global.live_last_update_at = 0;
global.live_room_loader_object_cache = ds_map_create();
global.live_room_loader_sprite_cache = ds_map_create();
global.live_room_loader_use_physics = false;
global.live_room_loader_room_x = 0;
global.live_room_loader_room_y = 0;
global.live_room_loader_apply_backgrounds = true;
global.live_room_loader_apply_instances = true;
global.live_room_loader_apply_tiles = true;
global.live_room_loader_apply_views = true;
global.live_room_loader_apply_settings = true;
global.live_room_loader_apply_sprites = true;
global.live_room_loader_apply_filters = true;
global.live_room_loader_inst_map_gml = ds_map_create();
global.live_room_loader_inst_map_yy = ds_map_create();
global.gml_thread_current_kind = 0;
global.gml_type_check_map = gml_type_check_init();
global.vm__gml_with_data_gml_with_data_impl__pools = vm__gml_with_data_gml_with_data_impl__init();
global.gml_type_ref_root = gml_type_ref_init();
global.vm_v2_gml_thread_group_call_gml23_funcs = vm_v2_gml_thread_group_call_gml23_init();
live_validate_scripts();
gml_parser_set_version(23);
live_bits_gmlive_ready_run();
live_preinit_api();
live_preinit_project();
