(** operations.proto Pretty Printing *)


(** {2 Formatters} *)

val pp_load_integer : Format.formatter -> Operations_types.load_integer -> unit 
(** [pp_load_integer v] formats v *)

val pp_load_big_int : Format.formatter -> Operations_types.load_big_int -> unit 
(** [pp_load_big_int v] formats v *)

val pp_load_float : Format.formatter -> Operations_types.load_float -> unit 
(** [pp_load_float v] formats v *)

val pp_load_string : Format.formatter -> Operations_types.load_string -> unit 
(** [pp_load_string v] formats v *)

val pp_load_boolean : Format.formatter -> Operations_types.load_boolean -> unit 
(** [pp_load_boolean v] formats v *)

val pp_load_reg_exp : Format.formatter -> Operations_types.load_reg_exp -> unit 
(** [pp_load_reg_exp v] formats v *)

val pp_create_object : Format.formatter -> Operations_types.create_object -> unit 
(** [pp_create_object v] formats v *)

val pp_create_template_string : Format.formatter -> Operations_types.create_template_string -> unit 
(** [pp_create_template_string v] formats v *)

val pp_create_object_with_spread : Format.formatter -> Operations_types.create_object_with_spread -> unit 
(** [pp_create_object_with_spread v] formats v *)

val pp_create_array_with_spread : Format.formatter -> Operations_types.create_array_with_spread -> unit 
(** [pp_create_array_with_spread v] formats v *)

val pp_load_builtin : Format.formatter -> Operations_types.load_builtin -> unit 
(** [pp_load_builtin v] formats v *)

val pp_load_property : Format.formatter -> Operations_types.load_property -> unit 
(** [pp_load_property v] formats v *)

val pp_store_property : Format.formatter -> Operations_types.store_property -> unit 
(** [pp_store_property v] formats v *)

val pp_binary_operator : Format.formatter -> Operations_types.binary_operator -> unit 
(** [pp_binary_operator v] formats v *)

val pp_store_property_with_binop : Format.formatter -> Operations_types.store_property_with_binop -> unit 
(** [pp_store_property_with_binop v] formats v *)

val pp_delete_property : Format.formatter -> Operations_types.delete_property -> unit 
(** [pp_delete_property v] formats v *)

val pp_property_type : Format.formatter -> Operations_types.property_type -> unit 
(** [pp_property_type v] formats v *)

val pp_configure_property : Format.formatter -> Operations_types.configure_property -> unit 
(** [pp_configure_property v] formats v *)

val pp_load_element : Format.formatter -> Operations_types.load_element -> unit 
(** [pp_load_element v] formats v *)

val pp_store_element : Format.formatter -> Operations_types.store_element -> unit 
(** [pp_store_element v] formats v *)

val pp_store_element_with_binop : Format.formatter -> Operations_types.store_element_with_binop -> unit 
(** [pp_store_element_with_binop v] formats v *)

val pp_delete_element : Format.formatter -> Operations_types.delete_element -> unit 
(** [pp_delete_element v] formats v *)

val pp_configure_element : Format.formatter -> Operations_types.configure_element -> unit 
(** [pp_configure_element v] formats v *)

val pp_store_computed_property_with_binop : Format.formatter -> Operations_types.store_computed_property_with_binop -> unit 
(** [pp_store_computed_property_with_binop v] formats v *)

val pp_configure_computed_property : Format.formatter -> Operations_types.configure_computed_property -> unit 
(** [pp_configure_computed_property v] formats v *)

val pp_parameters : Format.formatter -> Operations_types.parameters -> unit 
(** [pp_parameters v] formats v *)

val pp_begin_plain_function : Format.formatter -> Operations_types.begin_plain_function -> unit 
(** [pp_begin_plain_function v] formats v *)

val pp_begin_arrow_function : Format.formatter -> Operations_types.begin_arrow_function -> unit 
(** [pp_begin_arrow_function v] formats v *)

val pp_begin_generator_function : Format.formatter -> Operations_types.begin_generator_function -> unit 
(** [pp_begin_generator_function v] formats v *)

val pp_begin_async_function : Format.formatter -> Operations_types.begin_async_function -> unit 
(** [pp_begin_async_function v] formats v *)

val pp_begin_async_arrow_function : Format.formatter -> Operations_types.begin_async_arrow_function -> unit 
(** [pp_begin_async_arrow_function v] formats v *)

val pp_begin_async_generator_function : Format.formatter -> Operations_types.begin_async_generator_function -> unit 
(** [pp_begin_async_generator_function v] formats v *)

val pp_begin_constructor : Format.formatter -> Operations_types.begin_constructor -> unit 
(** [pp_begin_constructor v] formats v *)

val pp_call_function_with_spread : Format.formatter -> Operations_types.call_function_with_spread -> unit 
(** [pp_call_function_with_spread v] formats v *)

val pp_construct_with_spread : Format.formatter -> Operations_types.construct_with_spread -> unit 
(** [pp_construct_with_spread v] formats v *)

val pp_call_method : Format.formatter -> Operations_types.call_method -> unit 
(** [pp_call_method v] formats v *)

val pp_call_method_with_spread : Format.formatter -> Operations_types.call_method_with_spread -> unit 
(** [pp_call_method_with_spread v] formats v *)

val pp_call_computed_method_with_spread : Format.formatter -> Operations_types.call_computed_method_with_spread -> unit 
(** [pp_call_computed_method_with_spread v] formats v *)

val pp_unary_operator : Format.formatter -> Operations_types.unary_operator -> unit 
(** [pp_unary_operator v] formats v *)

val pp_unary_operation : Format.formatter -> Operations_types.unary_operation -> unit 
(** [pp_unary_operation v] formats v *)

val pp_binary_operation : Format.formatter -> Operations_types.binary_operation -> unit 
(** [pp_binary_operation v] formats v *)

val pp_reassign_with_binop : Format.formatter -> Operations_types.reassign_with_binop -> unit 
(** [pp_reassign_with_binop v] formats v *)

val pp_destruct_array : Format.formatter -> Operations_types.destruct_array -> unit 
(** [pp_destruct_array v] formats v *)

val pp_destruct_array_and_reassign : Format.formatter -> Operations_types.destruct_array_and_reassign -> unit 
(** [pp_destruct_array_and_reassign v] formats v *)

val pp_destruct_object : Format.formatter -> Operations_types.destruct_object -> unit 
(** [pp_destruct_object v] formats v *)

val pp_destruct_object_and_reassign : Format.formatter -> Operations_types.destruct_object_and_reassign -> unit 
(** [pp_destruct_object_and_reassign v] formats v *)

val pp_comparator : Format.formatter -> Operations_types.comparator -> unit 
(** [pp_comparator v] formats v *)

val pp_compare : Format.formatter -> Operations_types.compare -> unit 
(** [pp_compare v] formats v *)

val pp_eval : Format.formatter -> Operations_types.eval -> unit 
(** [pp_eval v] formats v *)

val pp_begin_class : Format.formatter -> Operations_types.begin_class -> unit 
(** [pp_begin_class v] formats v *)

val pp_begin_method : Format.formatter -> Operations_types.begin_method -> unit 
(** [pp_begin_method v] formats v *)

val pp_call_super_constructor : Format.formatter -> Operations_types.call_super_constructor -> unit 
(** [pp_call_super_constructor v] formats v *)

val pp_call_super_method : Format.formatter -> Operations_types.call_super_method -> unit 
(** [pp_call_super_method v] formats v *)

val pp_load_super_property : Format.formatter -> Operations_types.load_super_property -> unit 
(** [pp_load_super_property v] formats v *)

val pp_store_super_property : Format.formatter -> Operations_types.store_super_property -> unit 
(** [pp_store_super_property v] formats v *)

val pp_store_super_property_with_binop : Format.formatter -> Operations_types.store_super_property_with_binop -> unit 
(** [pp_store_super_property_with_binop v] formats v *)

val pp_explore : Format.formatter -> Operations_types.explore -> unit 
(** [pp_explore v] formats v *)

val pp_probe : Format.formatter -> Operations_types.probe -> unit 
(** [pp_probe v] formats v *)

val pp_load_from_scope : Format.formatter -> Operations_types.load_from_scope -> unit 
(** [pp_load_from_scope v] formats v *)

val pp_store_to_scope : Format.formatter -> Operations_types.store_to_scope -> unit 
(** [pp_store_to_scope v] formats v *)

val pp_begin_if : Format.formatter -> Operations_types.begin_if -> unit 
(** [pp_begin_if v] formats v *)

val pp_end_switch_case : Format.formatter -> Operations_types.end_switch_case -> unit 
(** [pp_end_switch_case v] formats v *)

val pp_begin_while : Format.formatter -> Operations_types.begin_while -> unit 
(** [pp_begin_while v] formats v *)

val pp_begin_do_while : Format.formatter -> Operations_types.begin_do_while -> unit 
(** [pp_begin_do_while v] formats v *)

val pp_begin_for : Format.formatter -> Operations_types.begin_for -> unit 
(** [pp_begin_for v] formats v *)

val pp_begin_for_of_with_destruct : Format.formatter -> Operations_types.begin_for_of_with_destruct -> unit 
(** [pp_begin_for_of_with_destruct v] formats v *)

val pp_begin_repeat : Format.formatter -> Operations_types.begin_repeat -> unit 
(** [pp_begin_repeat v] formats v *)
