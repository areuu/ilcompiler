(** operations.proto Types *)



(** {2 Types} *)

type load_integer = {
  value : int64;
}

type load_big_int = {
  value : int64;
}

type load_float = {
  value : float;
}

type load_string = {
  value : string;
}

type load_boolean = {
  value : bool;
}

type load_reg_exp = {
  value : string;
  flags : int32;
}

type create_object = {
  property_names : string list;
}

type create_template_string = {
  parts : string list;
}

type create_object_with_spread = {
  property_names : string list;
}

type create_array_with_spread = {
  spreads : bool list;
}

type load_builtin = {
  builtin_name : string;
}

type load_property = {
  property_name : string;
}

type store_property = {
  property_name : string;
}

type binary_operator =
  | Add 
  | Sub 
  | Mul 
  | Div 
  | Mod 
  | Bit_and 
  | Bit_or 
  | Logical_and 
  | Logical_or 
  | Xor 
  | Lshift 
  | Rshift 
  | Exp 
  | Unrshift 

type store_property_with_binop = {
  property_name : string;
  op : binary_operator;
}

type delete_property = {
  property_name : string;
}

type property_type =
  | Value 
  | Getter 
  | Setter 
  | Gettersetter 

type configure_property = {
  property_name : string;
  is_writable : bool;
  is_configurable : bool;
  is_enumerable : bool;
  type_ : property_type;
}

type load_element = {
  index : int64;
}

type store_element = {
  index : int64;
}

type store_element_with_binop = {
  index : int64;
  op : binary_operator;
}

type delete_element = {
  index : int64;
}

type configure_element = {
  index : int64;
  is_writable : bool;
  is_configurable : bool;
  is_enumerable : bool;
  type_ : property_type;
}

type store_computed_property_with_binop = {
  op : binary_operator;
}

type configure_computed_property = {
  is_writable : bool;
  is_configurable : bool;
  is_enumerable : bool;
  type_ : property_type;
}

type parameters = {
  count : int32;
  has_rest : bool;
}

type begin_plain_function = {
  parameters : parameters option;
  is_strict : bool;
}

type begin_arrow_function = {
  parameters : parameters option;
  is_strict : bool;
}

type begin_generator_function = {
  parameters : parameters option;
  is_strict : bool;
}

type begin_async_function = {
  parameters : parameters option;
  is_strict : bool;
}

type begin_async_arrow_function = {
  parameters : parameters option;
  is_strict : bool;
}

type begin_async_generator_function = {
  parameters : parameters option;
  is_strict : bool;
}

type begin_constructor = {
  parameters : parameters option;
}

type call_function_with_spread = {
  spreads : bool list;
}

type construct_with_spread = {
  spreads : bool list;
}

type call_method = {
  method_name : string;
}

type call_method_with_spread = {
  method_name : string;
  spreads : bool list;
}

type call_computed_method_with_spread = {
  spreads : bool list;
}

type unary_operator =
  | Pre_inc 
  | Pre_dec 
  | Post_inc 
  | Post_dec 
  | Logical_not 
  | Bitwise_not 
  | Plus 
  | Minus 

type unary_operation = {
  op : unary_operator;
}

type binary_operation = {
  op : binary_operator;
}

type reassign_with_binop = {
  op : binary_operator;
}

type destruct_array = {
  indices : int32 list;
  has_rest_element : bool;
}

type destruct_array_and_reassign = {
  indices : int32 list;
  has_rest_element : bool;
}

type destruct_object = {
  properties : string list;
  has_rest_element : bool;
}

type destruct_object_and_reassign = {
  properties : string list;
  has_rest_element : bool;
}

type comparator =
  | Equal 
  | Strict_equal 
  | Not_equal 
  | Strict_not_equal 
  | Less_than 
  | Less_than_or_equal 
  | Greater_than 
  | Greater_than_or_equal 

type compare = {
  op : comparator;
}

type eval = {
  code : string;
}

type begin_class = {
  has_superclass : bool;
  constructor_parameters : parameters option;
  instance_properties : string list;
  instance_method_names : string list;
  instance_method_parameters : parameters list;
}

type begin_method = {
  num_parameters : int32;
}

type call_super_constructor = {
  spreads : bool list;
}

type call_super_method = {
  method_name : string;
}

type load_super_property = {
  property_name : string;
}

type store_super_property = {
  property_name : string;
}

type store_super_property_with_binop = {
  property_name : string;
  op : binary_operator;
}

type explore = {
  id : string;
}

type probe = {
  id : string;
}

type load_from_scope = {
  id : string;
}

type store_to_scope = {
  id : string;
}

type begin_if = {
  inverted : bool;
}

type end_switch_case = {
  falls_through : bool;
}

type begin_while = {
  comparator : comparator;
}

type begin_do_while = {
  comparator : comparator;
}

type begin_for = {
  comparator : comparator;
  op : binary_operator;
}

type begin_for_of_with_destruct = {
  indices : int32 list;
  has_rest_element : bool;
}

type begin_repeat = {
  iterations : int64;
}


(** {2 Default values} *)

val default_load_integer : 
  ?value:int64 ->
  unit ->
  load_integer
(** [default_load_integer ()] is the default value for type [load_integer] *)

val default_load_big_int : 
  ?value:int64 ->
  unit ->
  load_big_int
(** [default_load_big_int ()] is the default value for type [load_big_int] *)

val default_load_float : 
  ?value:float ->
  unit ->
  load_float
(** [default_load_float ()] is the default value for type [load_float] *)

val default_load_string : 
  ?value:string ->
  unit ->
  load_string
(** [default_load_string ()] is the default value for type [load_string] *)

val default_load_boolean : 
  ?value:bool ->
  unit ->
  load_boolean
(** [default_load_boolean ()] is the default value for type [load_boolean] *)

val default_load_reg_exp : 
  ?value:string ->
  ?flags:int32 ->
  unit ->
  load_reg_exp
(** [default_load_reg_exp ()] is the default value for type [load_reg_exp] *)

val default_create_object : 
  ?property_names:string list ->
  unit ->
  create_object
(** [default_create_object ()] is the default value for type [create_object] *)

val default_create_template_string : 
  ?parts:string list ->
  unit ->
  create_template_string
(** [default_create_template_string ()] is the default value for type [create_template_string] *)

val default_create_object_with_spread : 
  ?property_names:string list ->
  unit ->
  create_object_with_spread
(** [default_create_object_with_spread ()] is the default value for type [create_object_with_spread] *)

val default_create_array_with_spread : 
  ?spreads:bool list ->
  unit ->
  create_array_with_spread
(** [default_create_array_with_spread ()] is the default value for type [create_array_with_spread] *)

val default_load_builtin : 
  ?builtin_name:string ->
  unit ->
  load_builtin
(** [default_load_builtin ()] is the default value for type [load_builtin] *)

val default_load_property : 
  ?property_name:string ->
  unit ->
  load_property
(** [default_load_property ()] is the default value for type [load_property] *)

val default_store_property : 
  ?property_name:string ->
  unit ->
  store_property
(** [default_store_property ()] is the default value for type [store_property] *)

val default_binary_operator : unit -> binary_operator
(** [default_binary_operator ()] is the default value for type [binary_operator] *)

val default_store_property_with_binop : 
  ?property_name:string ->
  ?op:binary_operator ->
  unit ->
  store_property_with_binop
(** [default_store_property_with_binop ()] is the default value for type [store_property_with_binop] *)

val default_delete_property : 
  ?property_name:string ->
  unit ->
  delete_property
(** [default_delete_property ()] is the default value for type [delete_property] *)

val default_property_type : unit -> property_type
(** [default_property_type ()] is the default value for type [property_type] *)

val default_configure_property : 
  ?property_name:string ->
  ?is_writable:bool ->
  ?is_configurable:bool ->
  ?is_enumerable:bool ->
  ?type_:property_type ->
  unit ->
  configure_property
(** [default_configure_property ()] is the default value for type [configure_property] *)

val default_load_element : 
  ?index:int64 ->
  unit ->
  load_element
(** [default_load_element ()] is the default value for type [load_element] *)

val default_store_element : 
  ?index:int64 ->
  unit ->
  store_element
(** [default_store_element ()] is the default value for type [store_element] *)

val default_store_element_with_binop : 
  ?index:int64 ->
  ?op:binary_operator ->
  unit ->
  store_element_with_binop
(** [default_store_element_with_binop ()] is the default value for type [store_element_with_binop] *)

val default_delete_element : 
  ?index:int64 ->
  unit ->
  delete_element
(** [default_delete_element ()] is the default value for type [delete_element] *)

val default_configure_element : 
  ?index:int64 ->
  ?is_writable:bool ->
  ?is_configurable:bool ->
  ?is_enumerable:bool ->
  ?type_:property_type ->
  unit ->
  configure_element
(** [default_configure_element ()] is the default value for type [configure_element] *)

val default_store_computed_property_with_binop : 
  ?op:binary_operator ->
  unit ->
  store_computed_property_with_binop
(** [default_store_computed_property_with_binop ()] is the default value for type [store_computed_property_with_binop] *)

val default_configure_computed_property : 
  ?is_writable:bool ->
  ?is_configurable:bool ->
  ?is_enumerable:bool ->
  ?type_:property_type ->
  unit ->
  configure_computed_property
(** [default_configure_computed_property ()] is the default value for type [configure_computed_property] *)

val default_parameters : 
  ?count:int32 ->
  ?has_rest:bool ->
  unit ->
  parameters
(** [default_parameters ()] is the default value for type [parameters] *)

val default_begin_plain_function : 
  ?parameters:parameters option ->
  ?is_strict:bool ->
  unit ->
  begin_plain_function
(** [default_begin_plain_function ()] is the default value for type [begin_plain_function] *)

val default_begin_arrow_function : 
  ?parameters:parameters option ->
  ?is_strict:bool ->
  unit ->
  begin_arrow_function
(** [default_begin_arrow_function ()] is the default value for type [begin_arrow_function] *)

val default_begin_generator_function : 
  ?parameters:parameters option ->
  ?is_strict:bool ->
  unit ->
  begin_generator_function
(** [default_begin_generator_function ()] is the default value for type [begin_generator_function] *)

val default_begin_async_function : 
  ?parameters:parameters option ->
  ?is_strict:bool ->
  unit ->
  begin_async_function
(** [default_begin_async_function ()] is the default value for type [begin_async_function] *)

val default_begin_async_arrow_function : 
  ?parameters:parameters option ->
  ?is_strict:bool ->
  unit ->
  begin_async_arrow_function
(** [default_begin_async_arrow_function ()] is the default value for type [begin_async_arrow_function] *)

val default_begin_async_generator_function : 
  ?parameters:parameters option ->
  ?is_strict:bool ->
  unit ->
  begin_async_generator_function
(** [default_begin_async_generator_function ()] is the default value for type [begin_async_generator_function] *)

val default_begin_constructor : 
  ?parameters:parameters option ->
  unit ->
  begin_constructor
(** [default_begin_constructor ()] is the default value for type [begin_constructor] *)

val default_call_function_with_spread : 
  ?spreads:bool list ->
  unit ->
  call_function_with_spread
(** [default_call_function_with_spread ()] is the default value for type [call_function_with_spread] *)

val default_construct_with_spread : 
  ?spreads:bool list ->
  unit ->
  construct_with_spread
(** [default_construct_with_spread ()] is the default value for type [construct_with_spread] *)

val default_call_method : 
  ?method_name:string ->
  unit ->
  call_method
(** [default_call_method ()] is the default value for type [call_method] *)

val default_call_method_with_spread : 
  ?method_name:string ->
  ?spreads:bool list ->
  unit ->
  call_method_with_spread
(** [default_call_method_with_spread ()] is the default value for type [call_method_with_spread] *)

val default_call_computed_method_with_spread : 
  ?spreads:bool list ->
  unit ->
  call_computed_method_with_spread
(** [default_call_computed_method_with_spread ()] is the default value for type [call_computed_method_with_spread] *)

val default_unary_operator : unit -> unary_operator
(** [default_unary_operator ()] is the default value for type [unary_operator] *)

val default_unary_operation : 
  ?op:unary_operator ->
  unit ->
  unary_operation
(** [default_unary_operation ()] is the default value for type [unary_operation] *)

val default_binary_operation : 
  ?op:binary_operator ->
  unit ->
  binary_operation
(** [default_binary_operation ()] is the default value for type [binary_operation] *)

val default_reassign_with_binop : 
  ?op:binary_operator ->
  unit ->
  reassign_with_binop
(** [default_reassign_with_binop ()] is the default value for type [reassign_with_binop] *)

val default_destruct_array : 
  ?indices:int32 list ->
  ?has_rest_element:bool ->
  unit ->
  destruct_array
(** [default_destruct_array ()] is the default value for type [destruct_array] *)

val default_destruct_array_and_reassign : 
  ?indices:int32 list ->
  ?has_rest_element:bool ->
  unit ->
  destruct_array_and_reassign
(** [default_destruct_array_and_reassign ()] is the default value for type [destruct_array_and_reassign] *)

val default_destruct_object : 
  ?properties:string list ->
  ?has_rest_element:bool ->
  unit ->
  destruct_object
(** [default_destruct_object ()] is the default value for type [destruct_object] *)

val default_destruct_object_and_reassign : 
  ?properties:string list ->
  ?has_rest_element:bool ->
  unit ->
  destruct_object_and_reassign
(** [default_destruct_object_and_reassign ()] is the default value for type [destruct_object_and_reassign] *)

val default_comparator : unit -> comparator
(** [default_comparator ()] is the default value for type [comparator] *)

val default_compare : 
  ?op:comparator ->
  unit ->
  compare
(** [default_compare ()] is the default value for type [compare] *)

val default_eval : 
  ?code:string ->
  unit ->
  eval
(** [default_eval ()] is the default value for type [eval] *)

val default_begin_class : 
  ?has_superclass:bool ->
  ?constructor_parameters:parameters option ->
  ?instance_properties:string list ->
  ?instance_method_names:string list ->
  ?instance_method_parameters:parameters list ->
  unit ->
  begin_class
(** [default_begin_class ()] is the default value for type [begin_class] *)

val default_begin_method : 
  ?num_parameters:int32 ->
  unit ->
  begin_method
(** [default_begin_method ()] is the default value for type [begin_method] *)

val default_call_super_constructor : 
  ?spreads:bool list ->
  unit ->
  call_super_constructor
(** [default_call_super_constructor ()] is the default value for type [call_super_constructor] *)

val default_call_super_method : 
  ?method_name:string ->
  unit ->
  call_super_method
(** [default_call_super_method ()] is the default value for type [call_super_method] *)

val default_load_super_property : 
  ?property_name:string ->
  unit ->
  load_super_property
(** [default_load_super_property ()] is the default value for type [load_super_property] *)

val default_store_super_property : 
  ?property_name:string ->
  unit ->
  store_super_property
(** [default_store_super_property ()] is the default value for type [store_super_property] *)

val default_store_super_property_with_binop : 
  ?property_name:string ->
  ?op:binary_operator ->
  unit ->
  store_super_property_with_binop
(** [default_store_super_property_with_binop ()] is the default value for type [store_super_property_with_binop] *)

val default_explore : 
  ?id:string ->
  unit ->
  explore
(** [default_explore ()] is the default value for type [explore] *)

val default_probe : 
  ?id:string ->
  unit ->
  probe
(** [default_probe ()] is the default value for type [probe] *)

val default_load_from_scope : 
  ?id:string ->
  unit ->
  load_from_scope
(** [default_load_from_scope ()] is the default value for type [load_from_scope] *)

val default_store_to_scope : 
  ?id:string ->
  unit ->
  store_to_scope
(** [default_store_to_scope ()] is the default value for type [store_to_scope] *)

val default_begin_if : 
  ?inverted:bool ->
  unit ->
  begin_if
(** [default_begin_if ()] is the default value for type [begin_if] *)

val default_end_switch_case : 
  ?falls_through:bool ->
  unit ->
  end_switch_case
(** [default_end_switch_case ()] is the default value for type [end_switch_case] *)

val default_begin_while : 
  ?comparator:comparator ->
  unit ->
  begin_while
(** [default_begin_while ()] is the default value for type [begin_while] *)

val default_begin_do_while : 
  ?comparator:comparator ->
  unit ->
  begin_do_while
(** [default_begin_do_while ()] is the default value for type [begin_do_while] *)

val default_begin_for : 
  ?comparator:comparator ->
  ?op:binary_operator ->
  unit ->
  begin_for
(** [default_begin_for ()] is the default value for type [begin_for] *)

val default_begin_for_of_with_destruct : 
  ?indices:int32 list ->
  ?has_rest_element:bool ->
  unit ->
  begin_for_of_with_destruct
(** [default_begin_for_of_with_destruct ()] is the default value for type [begin_for_of_with_destruct] *)

val default_begin_repeat : 
  ?iterations:int64 ->
  unit ->
  begin_repeat
(** [default_begin_repeat ()] is the default value for type [begin_repeat] *)
