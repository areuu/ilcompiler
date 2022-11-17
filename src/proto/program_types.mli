(** program.proto Types *)



(** {2 Types} *)

type instruction_operation =
  | Op_idx of int32
  | Load_integer of Operations_types.load_integer
  | Load_big_int of Operations_types.load_big_int
  | Load_float of Operations_types.load_float
  | Load_string of Operations_types.load_string
  | Load_boolean of Operations_types.load_boolean
  | Load_undefined
  | Load_null
  | Load_this
  | Load_arguments
  | Load_reg_exp of Operations_types.load_reg_exp
  | Create_object of Operations_types.create_object
  | Create_array
  | Create_template_string of Operations_types.create_template_string
  | Create_object_with_spread of Operations_types.create_object_with_spread
  | Create_array_with_spread of Operations_types.create_array_with_spread
  | Load_builtin of Operations_types.load_builtin
  | Load_property of Operations_types.load_property
  | Store_property of Operations_types.store_property
  | Store_property_with_binop of Operations_types.store_property_with_binop
  | Delete_property of Operations_types.delete_property
  | Configure_property of Operations_types.configure_property
  | Load_element of Operations_types.load_element
  | Store_element of Operations_types.store_element
  | Store_element_with_binop of Operations_types.store_element_with_binop
  | Delete_element of Operations_types.delete_element
  | Configure_element of Operations_types.configure_element
  | Load_computed_property
  | Store_computed_property
  | Store_computed_property_with_binop of Operations_types.store_computed_property_with_binop
  | Delete_computed_property
  | Configure_computed_property of Operations_types.configure_computed_property
  | Type_of
  | Test_instance_of
  | Test_in
  | Begin_plain_function of Operations_types.begin_plain_function
  | End_plain_function
  | Begin_arrow_function of Operations_types.begin_arrow_function
  | End_arrow_function
  | Begin_generator_function of Operations_types.begin_generator_function
  | End_generator_function
  | Begin_async_function of Operations_types.begin_async_function
  | End_async_function
  | Begin_async_arrow_function of Operations_types.begin_async_arrow_function
  | End_async_arrow_function
  | Begin_async_generator_function of Operations_types.begin_async_generator_function
  | End_async_generator_function
  | Begin_constructor of Operations_types.begin_constructor
  | End_constructor
  | Return
  | Yield
  | Yield_each
  | Await
  | Call_function
  | Call_function_with_spread of Operations_types.call_function_with_spread
  | Construct
  | Construct_with_spread of Operations_types.construct_with_spread
  | Call_method of Operations_types.call_method
  | Call_method_with_spread of Operations_types.call_method_with_spread
  | Call_computed_method
  | Call_computed_method_with_spread of Operations_types.call_computed_method_with_spread
  | Unary_operation of Operations_types.unary_operation
  | Binary_operation of Operations_types.binary_operation
  | Reassign_with_binop of Operations_types.reassign_with_binop
  | Dup
  | Reassign
  | Destruct_array of Operations_types.destruct_array
  | Destruct_array_and_reassign of Operations_types.destruct_array_and_reassign
  | Destruct_object of Operations_types.destruct_object
  | Destruct_object_and_reassign of Operations_types.destruct_object_and_reassign
  | Compare of Operations_types.compare
  | Conditional_operation
  | Eval of Operations_types.eval
  | Begin_class of Operations_types.begin_class
  | Begin_method of Operations_types.begin_method
  | End_class
  | Call_super_constructor of Operations_types.call_super_constructor
  | Call_super_method of Operations_types.call_super_method
  | Load_super_property of Operations_types.load_super_property
  | Store_super_property of Operations_types.store_super_property
  | Store_super_property_with_binop of Operations_types.store_super_property_with_binop
  | Begin_with
  | End_with
  | Load_from_scope of Operations_types.load_from_scope
  | Store_to_scope of Operations_types.store_to_scope
  | Begin_if of Operations_types.begin_if
  | Begin_else
  | End_if
  | Begin_switch
  | Begin_switch_case
  | Begin_switch_default_case
  | Switch_break
  | End_switch
  | End_switch_case of Operations_types.end_switch_case
  | Begin_while of Operations_types.begin_while
  | End_while
  | Begin_do_while of Operations_types.begin_do_while
  | End_do_while
  | Begin_for of Operations_types.begin_for
  | End_for
  | Begin_for_in
  | End_for_in
  | Begin_for_of
  | Begin_for_of_with_destruct of Operations_types.begin_for_of_with_destruct
  | End_for_of
  | Begin_repeat of Operations_types.begin_repeat
  | End_repeat
  | Loop_break
  | Loop_continue
  | Begin_try
  | Begin_catch
  | Begin_finally
  | End_try_catch
  | Throw_exception
  | Begin_code_string
  | End_code_string
  | Begin_block_statement
  | End_block_statement
  | Explore of Operations_types.explore
  | Probe of Operations_types.probe
  | Nop

and instruction = {
  inouts : int32 list;
  operation : instruction_operation;
}

type program = {
  uuid : bytes;
  code : instruction list;
  comments : (int32 * string) list;
  parent : program option;
}


(** {2 Default values} *)

val default_instruction_operation : unit -> instruction_operation
(** [default_instruction_operation ()] is the default value for type [instruction_operation] *)

val default_instruction : 
  ?inouts:int32 list ->
  ?operation:instruction_operation ->
  unit ->
  instruction
(** [default_instruction ()] is the default value for type [instruction] *)

val default_program : 
  ?uuid:bytes ->
  ?code:instruction list ->
  ?comments:(int32 * string) list ->
  ?parent:program option ->
  unit ->
  program
(** [default_program ()] is the default value for type [program] *)
