[@@@ocaml.warning "-27-30-39"]

let rec pp_instruction_operation fmt (v:Program_types.instruction_operation) =
  match v with
  | Program_types.Op_idx x -> Format.fprintf fmt "@[<hv2>Op_idx(@,%a)@]" Pbrt.Pp.pp_int32 x
  | Program_types.Load_integer x -> Format.fprintf fmt "@[<hv2>Load_integer(@,%a)@]" Operations_pp.pp_load_integer x
  | Program_types.Load_big_int x -> Format.fprintf fmt "@[<hv2>Load_big_int(@,%a)@]" Operations_pp.pp_load_big_int x
  | Program_types.Load_float x -> Format.fprintf fmt "@[<hv2>Load_float(@,%a)@]" Operations_pp.pp_load_float x
  | Program_types.Load_string x -> Format.fprintf fmt "@[<hv2>Load_string(@,%a)@]" Operations_pp.pp_load_string x
  | Program_types.Load_boolean x -> Format.fprintf fmt "@[<hv2>Load_boolean(@,%a)@]" Operations_pp.pp_load_boolean x
  | Program_types.Load_undefined  -> Format.fprintf fmt "Load_undefined"
  | Program_types.Load_null  -> Format.fprintf fmt "Load_null"
  | Program_types.Load_this  -> Format.fprintf fmt "Load_this"
  | Program_types.Load_arguments  -> Format.fprintf fmt "Load_arguments"
  | Program_types.Load_reg_exp x -> Format.fprintf fmt "@[<hv2>Load_reg_exp(@,%a)@]" Operations_pp.pp_load_reg_exp x
  | Program_types.Create_object x -> Format.fprintf fmt "@[<hv2>Create_object(@,%a)@]" Operations_pp.pp_create_object x
  | Program_types.Create_array  -> Format.fprintf fmt "Create_array"
  | Program_types.Create_template_string x -> Format.fprintf fmt "@[<hv2>Create_template_string(@,%a)@]" Operations_pp.pp_create_template_string x
  | Program_types.Create_object_with_spread x -> Format.fprintf fmt "@[<hv2>Create_object_with_spread(@,%a)@]" Operations_pp.pp_create_object_with_spread x
  | Program_types.Create_array_with_spread x -> Format.fprintf fmt "@[<hv2>Create_array_with_spread(@,%a)@]" Operations_pp.pp_create_array_with_spread x
  | Program_types.Load_builtin x -> Format.fprintf fmt "@[<hv2>Load_builtin(@,%a)@]" Operations_pp.pp_load_builtin x
  | Program_types.Load_property x -> Format.fprintf fmt "@[<hv2>Load_property(@,%a)@]" Operations_pp.pp_load_property x
  | Program_types.Store_property x -> Format.fprintf fmt "@[<hv2>Store_property(@,%a)@]" Operations_pp.pp_store_property x
  | Program_types.Store_property_with_binop x -> Format.fprintf fmt "@[<hv2>Store_property_with_binop(@,%a)@]" Operations_pp.pp_store_property_with_binop x
  | Program_types.Delete_property x -> Format.fprintf fmt "@[<hv2>Delete_property(@,%a)@]" Operations_pp.pp_delete_property x
  | Program_types.Configure_property x -> Format.fprintf fmt "@[<hv2>Configure_property(@,%a)@]" Operations_pp.pp_configure_property x
  | Program_types.Load_element x -> Format.fprintf fmt "@[<hv2>Load_element(@,%a)@]" Operations_pp.pp_load_element x
  | Program_types.Store_element x -> Format.fprintf fmt "@[<hv2>Store_element(@,%a)@]" Operations_pp.pp_store_element x
  | Program_types.Store_element_with_binop x -> Format.fprintf fmt "@[<hv2>Store_element_with_binop(@,%a)@]" Operations_pp.pp_store_element_with_binop x
  | Program_types.Delete_element x -> Format.fprintf fmt "@[<hv2>Delete_element(@,%a)@]" Operations_pp.pp_delete_element x
  | Program_types.Configure_element x -> Format.fprintf fmt "@[<hv2>Configure_element(@,%a)@]" Operations_pp.pp_configure_element x
  | Program_types.Load_computed_property  -> Format.fprintf fmt "Load_computed_property"
  | Program_types.Store_computed_property  -> Format.fprintf fmt "Store_computed_property"
  | Program_types.Store_computed_property_with_binop x -> Format.fprintf fmt "@[<hv2>Store_computed_property_with_binop(@,%a)@]" Operations_pp.pp_store_computed_property_with_binop x
  | Program_types.Delete_computed_property  -> Format.fprintf fmt "Delete_computed_property"
  | Program_types.Configure_computed_property x -> Format.fprintf fmt "@[<hv2>Configure_computed_property(@,%a)@]" Operations_pp.pp_configure_computed_property x
  | Program_types.Type_of  -> Format.fprintf fmt "Type_of"
  | Program_types.Test_instance_of  -> Format.fprintf fmt "Test_instance_of"
  | Program_types.Test_in  -> Format.fprintf fmt "Test_in"
  | Program_types.Begin_plain_function x -> Format.fprintf fmt "@[<hv2>Begin_plain_function(@,%a)@]" Operations_pp.pp_begin_plain_function x
  | Program_types.End_plain_function  -> Format.fprintf fmt "End_plain_function"
  | Program_types.Begin_arrow_function x -> Format.fprintf fmt "@[<hv2>Begin_arrow_function(@,%a)@]" Operations_pp.pp_begin_arrow_function x
  | Program_types.End_arrow_function  -> Format.fprintf fmt "End_arrow_function"
  | Program_types.Begin_generator_function x -> Format.fprintf fmt "@[<hv2>Begin_generator_function(@,%a)@]" Operations_pp.pp_begin_generator_function x
  | Program_types.End_generator_function  -> Format.fprintf fmt "End_generator_function"
  | Program_types.Begin_async_function x -> Format.fprintf fmt "@[<hv2>Begin_async_function(@,%a)@]" Operations_pp.pp_begin_async_function x
  | Program_types.End_async_function  -> Format.fprintf fmt "End_async_function"
  | Program_types.Begin_async_arrow_function x -> Format.fprintf fmt "@[<hv2>Begin_async_arrow_function(@,%a)@]" Operations_pp.pp_begin_async_arrow_function x
  | Program_types.End_async_arrow_function  -> Format.fprintf fmt "End_async_arrow_function"
  | Program_types.Begin_async_generator_function x -> Format.fprintf fmt "@[<hv2>Begin_async_generator_function(@,%a)@]" Operations_pp.pp_begin_async_generator_function x
  | Program_types.End_async_generator_function  -> Format.fprintf fmt "End_async_generator_function"
  | Program_types.Begin_constructor x -> Format.fprintf fmt "@[<hv2>Begin_constructor(@,%a)@]" Operations_pp.pp_begin_constructor x
  | Program_types.End_constructor  -> Format.fprintf fmt "End_constructor"
  | Program_types.Return  -> Format.fprintf fmt "Return"
  | Program_types.Yield  -> Format.fprintf fmt "Yield"
  | Program_types.Yield_each  -> Format.fprintf fmt "Yield_each"
  | Program_types.Await  -> Format.fprintf fmt "Await"
  | Program_types.Call_function  -> Format.fprintf fmt "Call_function"
  | Program_types.Call_function_with_spread x -> Format.fprintf fmt "@[<hv2>Call_function_with_spread(@,%a)@]" Operations_pp.pp_call_function_with_spread x
  | Program_types.Construct  -> Format.fprintf fmt "Construct"
  | Program_types.Construct_with_spread x -> Format.fprintf fmt "@[<hv2>Construct_with_spread(@,%a)@]" Operations_pp.pp_construct_with_spread x
  | Program_types.Call_method x -> Format.fprintf fmt "@[<hv2>Call_method(@,%a)@]" Operations_pp.pp_call_method x
  | Program_types.Call_method_with_spread x -> Format.fprintf fmt "@[<hv2>Call_method_with_spread(@,%a)@]" Operations_pp.pp_call_method_with_spread x
  | Program_types.Call_computed_method  -> Format.fprintf fmt "Call_computed_method"
  | Program_types.Call_computed_method_with_spread x -> Format.fprintf fmt "@[<hv2>Call_computed_method_with_spread(@,%a)@]" Operations_pp.pp_call_computed_method_with_spread x
  | Program_types.Unary_operation x -> Format.fprintf fmt "@[<hv2>Unary_operation(@,%a)@]" Operations_pp.pp_unary_operation x
  | Program_types.Binary_operation x -> Format.fprintf fmt "@[<hv2>Binary_operation(@,%a)@]" Operations_pp.pp_binary_operation x
  | Program_types.Reassign_with_binop x -> Format.fprintf fmt "@[<hv2>Reassign_with_binop(@,%a)@]" Operations_pp.pp_reassign_with_binop x
  | Program_types.Dup  -> Format.fprintf fmt "Dup"
  | Program_types.Reassign  -> Format.fprintf fmt "Reassign"
  | Program_types.Destruct_array x -> Format.fprintf fmt "@[<hv2>Destruct_array(@,%a)@]" Operations_pp.pp_destruct_array x
  | Program_types.Destruct_array_and_reassign x -> Format.fprintf fmt "@[<hv2>Destruct_array_and_reassign(@,%a)@]" Operations_pp.pp_destruct_array_and_reassign x
  | Program_types.Destruct_object x -> Format.fprintf fmt "@[<hv2>Destruct_object(@,%a)@]" Operations_pp.pp_destruct_object x
  | Program_types.Destruct_object_and_reassign x -> Format.fprintf fmt "@[<hv2>Destruct_object_and_reassign(@,%a)@]" Operations_pp.pp_destruct_object_and_reassign x
  | Program_types.Compare x -> Format.fprintf fmt "@[<hv2>Compare(@,%a)@]" Operations_pp.pp_compare x
  | Program_types.Conditional_operation  -> Format.fprintf fmt "Conditional_operation"
  | Program_types.Eval x -> Format.fprintf fmt "@[<hv2>Eval(@,%a)@]" Operations_pp.pp_eval x
  | Program_types.Begin_class x -> Format.fprintf fmt "@[<hv2>Begin_class(@,%a)@]" Operations_pp.pp_begin_class x
  | Program_types.Begin_method x -> Format.fprintf fmt "@[<hv2>Begin_method(@,%a)@]" Operations_pp.pp_begin_method x
  | Program_types.End_class  -> Format.fprintf fmt "End_class"
  | Program_types.Call_super_constructor x -> Format.fprintf fmt "@[<hv2>Call_super_constructor(@,%a)@]" Operations_pp.pp_call_super_constructor x
  | Program_types.Call_super_method x -> Format.fprintf fmt "@[<hv2>Call_super_method(@,%a)@]" Operations_pp.pp_call_super_method x
  | Program_types.Load_super_property x -> Format.fprintf fmt "@[<hv2>Load_super_property(@,%a)@]" Operations_pp.pp_load_super_property x
  | Program_types.Store_super_property x -> Format.fprintf fmt "@[<hv2>Store_super_property(@,%a)@]" Operations_pp.pp_store_super_property x
  | Program_types.Store_super_property_with_binop x -> Format.fprintf fmt "@[<hv2>Store_super_property_with_binop(@,%a)@]" Operations_pp.pp_store_super_property_with_binop x
  | Program_types.Begin_with  -> Format.fprintf fmt "Begin_with"
  | Program_types.End_with  -> Format.fprintf fmt "End_with"
  | Program_types.Load_from_scope x -> Format.fprintf fmt "@[<hv2>Load_from_scope(@,%a)@]" Operations_pp.pp_load_from_scope x
  | Program_types.Store_to_scope x -> Format.fprintf fmt "@[<hv2>Store_to_scope(@,%a)@]" Operations_pp.pp_store_to_scope x
  | Program_types.Begin_if x -> Format.fprintf fmt "@[<hv2>Begin_if(@,%a)@]" Operations_pp.pp_begin_if x
  | Program_types.Begin_else  -> Format.fprintf fmt "Begin_else"
  | Program_types.End_if  -> Format.fprintf fmt "End_if"
  | Program_types.Begin_switch  -> Format.fprintf fmt "Begin_switch"
  | Program_types.Begin_switch_case  -> Format.fprintf fmt "Begin_switch_case"
  | Program_types.Begin_switch_default_case  -> Format.fprintf fmt "Begin_switch_default_case"
  | Program_types.Switch_break  -> Format.fprintf fmt "Switch_break"
  | Program_types.End_switch  -> Format.fprintf fmt "End_switch"
  | Program_types.End_switch_case x -> Format.fprintf fmt "@[<hv2>End_switch_case(@,%a)@]" Operations_pp.pp_end_switch_case x
  | Program_types.Begin_while x -> Format.fprintf fmt "@[<hv2>Begin_while(@,%a)@]" Operations_pp.pp_begin_while x
  | Program_types.End_while  -> Format.fprintf fmt "End_while"
  | Program_types.Begin_do_while x -> Format.fprintf fmt "@[<hv2>Begin_do_while(@,%a)@]" Operations_pp.pp_begin_do_while x
  | Program_types.End_do_while  -> Format.fprintf fmt "End_do_while"
  | Program_types.Begin_for x -> Format.fprintf fmt "@[<hv2>Begin_for(@,%a)@]" Operations_pp.pp_begin_for x
  | Program_types.End_for  -> Format.fprintf fmt "End_for"
  | Program_types.Begin_for_in  -> Format.fprintf fmt "Begin_for_in"
  | Program_types.End_for_in  -> Format.fprintf fmt "End_for_in"
  | Program_types.Begin_for_of  -> Format.fprintf fmt "Begin_for_of"
  | Program_types.Begin_for_of_with_destruct x -> Format.fprintf fmt "@[<hv2>Begin_for_of_with_destruct(@,%a)@]" Operations_pp.pp_begin_for_of_with_destruct x
  | Program_types.End_for_of  -> Format.fprintf fmt "End_for_of"
  | Program_types.Begin_repeat x -> Format.fprintf fmt "@[<hv2>Begin_repeat(@,%a)@]" Operations_pp.pp_begin_repeat x
  | Program_types.End_repeat  -> Format.fprintf fmt "End_repeat"
  | Program_types.Loop_break  -> Format.fprintf fmt "Loop_break"
  | Program_types.Loop_continue  -> Format.fprintf fmt "Loop_continue"
  | Program_types.Begin_try  -> Format.fprintf fmt "Begin_try"
  | Program_types.Begin_catch  -> Format.fprintf fmt "Begin_catch"
  | Program_types.Begin_finally  -> Format.fprintf fmt "Begin_finally"
  | Program_types.End_try_catch  -> Format.fprintf fmt "End_try_catch"
  | Program_types.Throw_exception  -> Format.fprintf fmt "Throw_exception"
  | Program_types.Begin_code_string  -> Format.fprintf fmt "Begin_code_string"
  | Program_types.End_code_string  -> Format.fprintf fmt "End_code_string"
  | Program_types.Begin_block_statement  -> Format.fprintf fmt "Begin_block_statement"
  | Program_types.End_block_statement  -> Format.fprintf fmt "End_block_statement"
  | Program_types.Explore x -> Format.fprintf fmt "@[<hv2>Explore(@,%a)@]" Operations_pp.pp_explore x
  | Program_types.Probe x -> Format.fprintf fmt "@[<hv2>Probe(@,%a)@]" Operations_pp.pp_probe x
  | Program_types.Nop  -> Format.fprintf fmt "Nop"

and pp_instruction fmt (v:Program_types.instruction) = 
  let pp_i fmt () =
    Pbrt.Pp.pp_record_field ~first:true "inouts" (Pbrt.Pp.pp_list Pbrt.Pp.pp_int32) fmt v.Program_types.inouts;
    Pbrt.Pp.pp_record_field ~first:false "operation" pp_instruction_operation fmt v.Program_types.operation;
  in
  Pbrt.Pp.pp_brk pp_i fmt ()

let rec pp_program fmt (v:Program_types.program) = 
  let pp_i fmt () =
    Pbrt.Pp.pp_record_field ~first:true "uuid" Pbrt.Pp.pp_bytes fmt v.Program_types.uuid;
    Pbrt.Pp.pp_record_field ~first:false "code" (Pbrt.Pp.pp_list pp_instruction) fmt v.Program_types.code;
    Pbrt.Pp.pp_record_field ~first:false "comments" (Pbrt.Pp.pp_associative_list Pbrt.Pp.pp_int32 Pbrt.Pp.pp_string) fmt v.Program_types.comments;
    Pbrt.Pp.pp_record_field ~first:false "parent" (Pbrt.Pp.pp_option pp_program) fmt v.Program_types.parent;
  in
  Pbrt.Pp.pp_brk pp_i fmt ()
