[@@@ocaml.warning "-27-30-39"]


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

let rec default_load_integer 
  ?value:((value:int64) = 0L)
  () : load_integer  = {
  value;
}

let rec default_load_big_int 
  ?value:((value:int64) = 0L)
  () : load_big_int  = {
  value;
}

let rec default_load_float 
  ?value:((value:float) = 0.)
  () : load_float  = {
  value;
}

let rec default_load_string 
  ?value:((value:string) = "")
  () : load_string  = {
  value;
}

let rec default_load_boolean 
  ?value:((value:bool) = false)
  () : load_boolean  = {
  value;
}

let rec default_load_reg_exp 
  ?value:((value:string) = "")
  ?flags:((flags:int32) = 0l)
  () : load_reg_exp  = {
  value;
  flags;
}

let rec default_create_object 
  ?property_names:((property_names:string list) = [])
  () : create_object  = {
  property_names;
}

let rec default_create_template_string 
  ?parts:((parts:string list) = [])
  () : create_template_string  = {
  parts;
}

let rec default_create_object_with_spread 
  ?property_names:((property_names:string list) = [])
  () : create_object_with_spread  = {
  property_names;
}

let rec default_create_array_with_spread 
  ?spreads:((spreads:bool list) = [])
  () : create_array_with_spread  = {
  spreads;
}

let rec default_load_builtin 
  ?builtin_name:((builtin_name:string) = "")
  () : load_builtin  = {
  builtin_name;
}

let rec default_load_property 
  ?property_name:((property_name:string) = "")
  () : load_property  = {
  property_name;
}

let rec default_store_property 
  ?property_name:((property_name:string) = "")
  () : store_property  = {
  property_name;
}

let rec default_binary_operator () = (Add:binary_operator)

let rec default_store_property_with_binop 
  ?property_name:((property_name:string) = "")
  ?op:((op:binary_operator) = default_binary_operator ())
  () : store_property_with_binop  = {
  property_name;
  op;
}

let rec default_delete_property 
  ?property_name:((property_name:string) = "")
  () : delete_property  = {
  property_name;
}

let rec default_property_type () = (Value:property_type)

let rec default_configure_property 
  ?property_name:((property_name:string) = "")
  ?is_writable:((is_writable:bool) = false)
  ?is_configurable:((is_configurable:bool) = false)
  ?is_enumerable:((is_enumerable:bool) = false)
  ?type_:((type_:property_type) = default_property_type ())
  () : configure_property  = {
  property_name;
  is_writable;
  is_configurable;
  is_enumerable;
  type_;
}

let rec default_load_element 
  ?index:((index:int64) = 0L)
  () : load_element  = {
  index;
}

let rec default_store_element 
  ?index:((index:int64) = 0L)
  () : store_element  = {
  index;
}

let rec default_store_element_with_binop 
  ?index:((index:int64) = 0L)
  ?op:((op:binary_operator) = default_binary_operator ())
  () : store_element_with_binop  = {
  index;
  op;
}

let rec default_delete_element 
  ?index:((index:int64) = 0L)
  () : delete_element  = {
  index;
}

let rec default_configure_element 
  ?index:((index:int64) = 0L)
  ?is_writable:((is_writable:bool) = false)
  ?is_configurable:((is_configurable:bool) = false)
  ?is_enumerable:((is_enumerable:bool) = false)
  ?type_:((type_:property_type) = default_property_type ())
  () : configure_element  = {
  index;
  is_writable;
  is_configurable;
  is_enumerable;
  type_;
}

let rec default_store_computed_property_with_binop 
  ?op:((op:binary_operator) = default_binary_operator ())
  () : store_computed_property_with_binop  = {
  op;
}

let rec default_configure_computed_property 
  ?is_writable:((is_writable:bool) = false)
  ?is_configurable:((is_configurable:bool) = false)
  ?is_enumerable:((is_enumerable:bool) = false)
  ?type_:((type_:property_type) = default_property_type ())
  () : configure_computed_property  = {
  is_writable;
  is_configurable;
  is_enumerable;
  type_;
}

let rec default_parameters 
  ?count:((count:int32) = 0l)
  ?has_rest:((has_rest:bool) = false)
  () : parameters  = {
  count;
  has_rest;
}

let rec default_begin_plain_function 
  ?parameters:((parameters:parameters option) = None)
  ?is_strict:((is_strict:bool) = false)
  () : begin_plain_function  = {
  parameters;
  is_strict;
}

let rec default_begin_arrow_function 
  ?parameters:((parameters:parameters option) = None)
  ?is_strict:((is_strict:bool) = false)
  () : begin_arrow_function  = {
  parameters;
  is_strict;
}

let rec default_begin_generator_function 
  ?parameters:((parameters:parameters option) = None)
  ?is_strict:((is_strict:bool) = false)
  () : begin_generator_function  = {
  parameters;
  is_strict;
}

let rec default_begin_async_function 
  ?parameters:((parameters:parameters option) = None)
  ?is_strict:((is_strict:bool) = false)
  () : begin_async_function  = {
  parameters;
  is_strict;
}

let rec default_begin_async_arrow_function 
  ?parameters:((parameters:parameters option) = None)
  ?is_strict:((is_strict:bool) = false)
  () : begin_async_arrow_function  = {
  parameters;
  is_strict;
}

let rec default_begin_async_generator_function 
  ?parameters:((parameters:parameters option) = None)
  ?is_strict:((is_strict:bool) = false)
  () : begin_async_generator_function  = {
  parameters;
  is_strict;
}

let rec default_begin_constructor 
  ?parameters:((parameters:parameters option) = None)
  () : begin_constructor  = {
  parameters;
}

let rec default_call_function_with_spread 
  ?spreads:((spreads:bool list) = [])
  () : call_function_with_spread  = {
  spreads;
}

let rec default_construct_with_spread 
  ?spreads:((spreads:bool list) = [])
  () : construct_with_spread  = {
  spreads;
}

let rec default_call_method 
  ?method_name:((method_name:string) = "")
  () : call_method  = {
  method_name;
}

let rec default_call_method_with_spread 
  ?method_name:((method_name:string) = "")
  ?spreads:((spreads:bool list) = [])
  () : call_method_with_spread  = {
  method_name;
  spreads;
}

let rec default_call_computed_method_with_spread 
  ?spreads:((spreads:bool list) = [])
  () : call_computed_method_with_spread  = {
  spreads;
}

let rec default_unary_operator () = (Pre_inc:unary_operator)

let rec default_unary_operation 
  ?op:((op:unary_operator) = default_unary_operator ())
  () : unary_operation  = {
  op;
}

let rec default_binary_operation 
  ?op:((op:binary_operator) = default_binary_operator ())
  () : binary_operation  = {
  op;
}

let rec default_reassign_with_binop 
  ?op:((op:binary_operator) = default_binary_operator ())
  () : reassign_with_binop  = {
  op;
}

let rec default_destruct_array 
  ?indices:((indices:int32 list) = [])
  ?has_rest_element:((has_rest_element:bool) = false)
  () : destruct_array  = {
  indices;
  has_rest_element;
}

let rec default_destruct_array_and_reassign 
  ?indices:((indices:int32 list) = [])
  ?has_rest_element:((has_rest_element:bool) = false)
  () : destruct_array_and_reassign  = {
  indices;
  has_rest_element;
}

let rec default_destruct_object 
  ?properties:((properties:string list) = [])
  ?has_rest_element:((has_rest_element:bool) = false)
  () : destruct_object  = {
  properties;
  has_rest_element;
}

let rec default_destruct_object_and_reassign 
  ?properties:((properties:string list) = [])
  ?has_rest_element:((has_rest_element:bool) = false)
  () : destruct_object_and_reassign  = {
  properties;
  has_rest_element;
}

let rec default_comparator () = (Equal:comparator)

let rec default_compare 
  ?op:((op:comparator) = default_comparator ())
  () : compare  = {
  op;
}

let rec default_eval 
  ?code:((code:string) = "")
  () : eval  = {
  code;
}

let rec default_begin_class 
  ?has_superclass:((has_superclass:bool) = false)
  ?constructor_parameters:((constructor_parameters:parameters option) = None)
  ?instance_properties:((instance_properties:string list) = [])
  ?instance_method_names:((instance_method_names:string list) = [])
  ?instance_method_parameters:((instance_method_parameters:parameters list) = [])
  () : begin_class  = {
  has_superclass;
  constructor_parameters;
  instance_properties;
  instance_method_names;
  instance_method_parameters;
}

let rec default_begin_method 
  ?num_parameters:((num_parameters:int32) = 0l)
  () : begin_method  = {
  num_parameters;
}

let rec default_call_super_constructor 
  ?spreads:((spreads:bool list) = [])
  () : call_super_constructor  = {
  spreads;
}

let rec default_call_super_method 
  ?method_name:((method_name:string) = "")
  () : call_super_method  = {
  method_name;
}

let rec default_load_super_property 
  ?property_name:((property_name:string) = "")
  () : load_super_property  = {
  property_name;
}

let rec default_store_super_property 
  ?property_name:((property_name:string) = "")
  () : store_super_property  = {
  property_name;
}

let rec default_store_super_property_with_binop 
  ?property_name:((property_name:string) = "")
  ?op:((op:binary_operator) = default_binary_operator ())
  () : store_super_property_with_binop  = {
  property_name;
  op;
}

let rec default_explore 
  ?id:((id:string) = "")
  () : explore  = {
  id;
}

let rec default_probe 
  ?id:((id:string) = "")
  () : probe  = {
  id;
}

let rec default_load_from_scope 
  ?id:((id:string) = "")
  () : load_from_scope  = {
  id;
}

let rec default_store_to_scope 
  ?id:((id:string) = "")
  () : store_to_scope  = {
  id;
}

let rec default_begin_if 
  ?inverted:((inverted:bool) = false)
  () : begin_if  = {
  inverted;
}

let rec default_end_switch_case 
  ?falls_through:((falls_through:bool) = false)
  () : end_switch_case  = {
  falls_through;
}

let rec default_begin_while 
  ?comparator:((comparator:comparator) = default_comparator ())
  () : begin_while  = {
  comparator;
}

let rec default_begin_do_while 
  ?comparator:((comparator:comparator) = default_comparator ())
  () : begin_do_while  = {
  comparator;
}

let rec default_begin_for 
  ?comparator:((comparator:comparator) = default_comparator ())
  ?op:((op:binary_operator) = default_binary_operator ())
  () : begin_for  = {
  comparator;
  op;
}

let rec default_begin_for_of_with_destruct 
  ?indices:((indices:int32 list) = [])
  ?has_rest_element:((has_rest_element:bool) = false)
  () : begin_for_of_with_destruct  = {
  indices;
  has_rest_element;
}

let rec default_begin_repeat 
  ?iterations:((iterations:int64) = 0L)
  () : begin_repeat  = {
  iterations;
}
