[@@@ocaml.warning "-27-30-39"]

let rec pp_load_integer fmt (v:Operations_types.load_integer) = 
  let pp_i fmt () =
    Pbrt.Pp.pp_record_field ~first:true "value" Pbrt.Pp.pp_int64 fmt v.Operations_types.value;
  in
  Pbrt.Pp.pp_brk pp_i fmt ()

let rec pp_load_big_int fmt (v:Operations_types.load_big_int) = 
  let pp_i fmt () =
    Pbrt.Pp.pp_record_field ~first:true "value" Pbrt.Pp.pp_int64 fmt v.Operations_types.value;
  in
  Pbrt.Pp.pp_brk pp_i fmt ()

let rec pp_load_float fmt (v:Operations_types.load_float) = 
  let pp_i fmt () =
    Pbrt.Pp.pp_record_field ~first:true "value" Pbrt.Pp.pp_float fmt v.Operations_types.value;
  in
  Pbrt.Pp.pp_brk pp_i fmt ()

let rec pp_load_string fmt (v:Operations_types.load_string) = 
  let pp_i fmt () =
    Pbrt.Pp.pp_record_field ~first:true "value" Pbrt.Pp.pp_string fmt v.Operations_types.value;
  in
  Pbrt.Pp.pp_brk pp_i fmt ()

let rec pp_load_boolean fmt (v:Operations_types.load_boolean) = 
  let pp_i fmt () =
    Pbrt.Pp.pp_record_field ~first:true "value" Pbrt.Pp.pp_bool fmt v.Operations_types.value;
  in
  Pbrt.Pp.pp_brk pp_i fmt ()

let rec pp_load_reg_exp fmt (v:Operations_types.load_reg_exp) = 
  let pp_i fmt () =
    Pbrt.Pp.pp_record_field ~first:true "value" Pbrt.Pp.pp_string fmt v.Operations_types.value;
    Pbrt.Pp.pp_record_field ~first:false "flags" Pbrt.Pp.pp_int32 fmt v.Operations_types.flags;
  in
  Pbrt.Pp.pp_brk pp_i fmt ()

let rec pp_create_object fmt (v:Operations_types.create_object) = 
  let pp_i fmt () =
    Pbrt.Pp.pp_record_field ~first:true "property_names" (Pbrt.Pp.pp_list Pbrt.Pp.pp_string) fmt v.Operations_types.property_names;
  in
  Pbrt.Pp.pp_brk pp_i fmt ()

let rec pp_create_template_string fmt (v:Operations_types.create_template_string) = 
  let pp_i fmt () =
    Pbrt.Pp.pp_record_field ~first:true "parts" (Pbrt.Pp.pp_list Pbrt.Pp.pp_string) fmt v.Operations_types.parts;
  in
  Pbrt.Pp.pp_brk pp_i fmt ()

let rec pp_create_object_with_spread fmt (v:Operations_types.create_object_with_spread) = 
  let pp_i fmt () =
    Pbrt.Pp.pp_record_field ~first:true "property_names" (Pbrt.Pp.pp_list Pbrt.Pp.pp_string) fmt v.Operations_types.property_names;
  in
  Pbrt.Pp.pp_brk pp_i fmt ()

let rec pp_create_array_with_spread fmt (v:Operations_types.create_array_with_spread) = 
  let pp_i fmt () =
    Pbrt.Pp.pp_record_field ~first:true "spreads" (Pbrt.Pp.pp_list Pbrt.Pp.pp_bool) fmt v.Operations_types.spreads;
  in
  Pbrt.Pp.pp_brk pp_i fmt ()

let rec pp_load_builtin fmt (v:Operations_types.load_builtin) = 
  let pp_i fmt () =
    Pbrt.Pp.pp_record_field ~first:true "builtin_name" Pbrt.Pp.pp_string fmt v.Operations_types.builtin_name;
  in
  Pbrt.Pp.pp_brk pp_i fmt ()

let rec pp_load_property fmt (v:Operations_types.load_property) = 
  let pp_i fmt () =
    Pbrt.Pp.pp_record_field ~first:true "property_name" Pbrt.Pp.pp_string fmt v.Operations_types.property_name;
  in
  Pbrt.Pp.pp_brk pp_i fmt ()

let rec pp_store_property fmt (v:Operations_types.store_property) = 
  let pp_i fmt () =
    Pbrt.Pp.pp_record_field ~first:true "property_name" Pbrt.Pp.pp_string fmt v.Operations_types.property_name;
  in
  Pbrt.Pp.pp_brk pp_i fmt ()

let rec pp_binary_operator fmt (v:Operations_types.binary_operator) =
  match v with
  | Operations_types.Add -> Format.fprintf fmt "Add"
  | Operations_types.Sub -> Format.fprintf fmt "Sub"
  | Operations_types.Mul -> Format.fprintf fmt "Mul"
  | Operations_types.Div -> Format.fprintf fmt "Div"
  | Operations_types.Mod -> Format.fprintf fmt "Mod"
  | Operations_types.Bit_and -> Format.fprintf fmt "Bit_and"
  | Operations_types.Bit_or -> Format.fprintf fmt "Bit_or"
  | Operations_types.Logical_and -> Format.fprintf fmt "Logical_and"
  | Operations_types.Logical_or -> Format.fprintf fmt "Logical_or"
  | Operations_types.Xor -> Format.fprintf fmt "Xor"
  | Operations_types.Lshift -> Format.fprintf fmt "Lshift"
  | Operations_types.Rshift -> Format.fprintf fmt "Rshift"
  | Operations_types.Exp -> Format.fprintf fmt "Exp"
  | Operations_types.Unrshift -> Format.fprintf fmt "Unrshift"

let rec pp_store_property_with_binop fmt (v:Operations_types.store_property_with_binop) = 
  let pp_i fmt () =
    Pbrt.Pp.pp_record_field ~first:true "property_name" Pbrt.Pp.pp_string fmt v.Operations_types.property_name;
    Pbrt.Pp.pp_record_field ~first:false "op" pp_binary_operator fmt v.Operations_types.op;
  in
  Pbrt.Pp.pp_brk pp_i fmt ()

let rec pp_delete_property fmt (v:Operations_types.delete_property) = 
  let pp_i fmt () =
    Pbrt.Pp.pp_record_field ~first:true "property_name" Pbrt.Pp.pp_string fmt v.Operations_types.property_name;
  in
  Pbrt.Pp.pp_brk pp_i fmt ()

let rec pp_property_type fmt (v:Operations_types.property_type) =
  match v with
  | Operations_types.Value -> Format.fprintf fmt "Value"
  | Operations_types.Getter -> Format.fprintf fmt "Getter"
  | Operations_types.Setter -> Format.fprintf fmt "Setter"
  | Operations_types.Gettersetter -> Format.fprintf fmt "Gettersetter"

let rec pp_configure_property fmt (v:Operations_types.configure_property) = 
  let pp_i fmt () =
    Pbrt.Pp.pp_record_field ~first:true "property_name" Pbrt.Pp.pp_string fmt v.Operations_types.property_name;
    Pbrt.Pp.pp_record_field ~first:false "is_writable" Pbrt.Pp.pp_bool fmt v.Operations_types.is_writable;
    Pbrt.Pp.pp_record_field ~first:false "is_configurable" Pbrt.Pp.pp_bool fmt v.Operations_types.is_configurable;
    Pbrt.Pp.pp_record_field ~first:false "is_enumerable" Pbrt.Pp.pp_bool fmt v.Operations_types.is_enumerable;
    Pbrt.Pp.pp_record_field ~first:false "type_" pp_property_type fmt v.Operations_types.type_;
  in
  Pbrt.Pp.pp_brk pp_i fmt ()

let rec pp_load_element fmt (v:Operations_types.load_element) = 
  let pp_i fmt () =
    Pbrt.Pp.pp_record_field ~first:true "index" Pbrt.Pp.pp_int64 fmt v.Operations_types.index;
  in
  Pbrt.Pp.pp_brk pp_i fmt ()

let rec pp_store_element fmt (v:Operations_types.store_element) = 
  let pp_i fmt () =
    Pbrt.Pp.pp_record_field ~first:true "index" Pbrt.Pp.pp_int64 fmt v.Operations_types.index;
  in
  Pbrt.Pp.pp_brk pp_i fmt ()

let rec pp_store_element_with_binop fmt (v:Operations_types.store_element_with_binop) = 
  let pp_i fmt () =
    Pbrt.Pp.pp_record_field ~first:true "index" Pbrt.Pp.pp_int64 fmt v.Operations_types.index;
    Pbrt.Pp.pp_record_field ~first:false "op" pp_binary_operator fmt v.Operations_types.op;
  in
  Pbrt.Pp.pp_brk pp_i fmt ()

let rec pp_delete_element fmt (v:Operations_types.delete_element) = 
  let pp_i fmt () =
    Pbrt.Pp.pp_record_field ~first:true "index" Pbrt.Pp.pp_int64 fmt v.Operations_types.index;
  in
  Pbrt.Pp.pp_brk pp_i fmt ()

let rec pp_configure_element fmt (v:Operations_types.configure_element) = 
  let pp_i fmt () =
    Pbrt.Pp.pp_record_field ~first:true "index" Pbrt.Pp.pp_int64 fmt v.Operations_types.index;
    Pbrt.Pp.pp_record_field ~first:false "is_writable" Pbrt.Pp.pp_bool fmt v.Operations_types.is_writable;
    Pbrt.Pp.pp_record_field ~first:false "is_configurable" Pbrt.Pp.pp_bool fmt v.Operations_types.is_configurable;
    Pbrt.Pp.pp_record_field ~first:false "is_enumerable" Pbrt.Pp.pp_bool fmt v.Operations_types.is_enumerable;
    Pbrt.Pp.pp_record_field ~first:false "type_" pp_property_type fmt v.Operations_types.type_;
  in
  Pbrt.Pp.pp_brk pp_i fmt ()

let rec pp_store_computed_property_with_binop fmt (v:Operations_types.store_computed_property_with_binop) = 
  let pp_i fmt () =
    Pbrt.Pp.pp_record_field ~first:true "op" pp_binary_operator fmt v.Operations_types.op;
  in
  Pbrt.Pp.pp_brk pp_i fmt ()

let rec pp_configure_computed_property fmt (v:Operations_types.configure_computed_property) = 
  let pp_i fmt () =
    Pbrt.Pp.pp_record_field ~first:true "is_writable" Pbrt.Pp.pp_bool fmt v.Operations_types.is_writable;
    Pbrt.Pp.pp_record_field ~first:false "is_configurable" Pbrt.Pp.pp_bool fmt v.Operations_types.is_configurable;
    Pbrt.Pp.pp_record_field ~first:false "is_enumerable" Pbrt.Pp.pp_bool fmt v.Operations_types.is_enumerable;
    Pbrt.Pp.pp_record_field ~first:false "type_" pp_property_type fmt v.Operations_types.type_;
  in
  Pbrt.Pp.pp_brk pp_i fmt ()

let rec pp_parameters fmt (v:Operations_types.parameters) = 
  let pp_i fmt () =
    Pbrt.Pp.pp_record_field ~first:true "count" Pbrt.Pp.pp_int32 fmt v.Operations_types.count;
    Pbrt.Pp.pp_record_field ~first:false "has_rest" Pbrt.Pp.pp_bool fmt v.Operations_types.has_rest;
  in
  Pbrt.Pp.pp_brk pp_i fmt ()

let rec pp_begin_plain_function fmt (v:Operations_types.begin_plain_function) = 
  let pp_i fmt () =
    Pbrt.Pp.pp_record_field ~first:true "parameters" (Pbrt.Pp.pp_option pp_parameters) fmt v.Operations_types.parameters;
    Pbrt.Pp.pp_record_field ~first:false "is_strict" Pbrt.Pp.pp_bool fmt v.Operations_types.is_strict;
  in
  Pbrt.Pp.pp_brk pp_i fmt ()

let rec pp_begin_arrow_function fmt (v:Operations_types.begin_arrow_function) = 
  let pp_i fmt () =
    Pbrt.Pp.pp_record_field ~first:true "parameters" (Pbrt.Pp.pp_option pp_parameters) fmt v.Operations_types.parameters;
    Pbrt.Pp.pp_record_field ~first:false "is_strict" Pbrt.Pp.pp_bool fmt v.Operations_types.is_strict;
  in
  Pbrt.Pp.pp_brk pp_i fmt ()

let rec pp_begin_generator_function fmt (v:Operations_types.begin_generator_function) = 
  let pp_i fmt () =
    Pbrt.Pp.pp_record_field ~first:true "parameters" (Pbrt.Pp.pp_option pp_parameters) fmt v.Operations_types.parameters;
    Pbrt.Pp.pp_record_field ~first:false "is_strict" Pbrt.Pp.pp_bool fmt v.Operations_types.is_strict;
  in
  Pbrt.Pp.pp_brk pp_i fmt ()

let rec pp_begin_async_function fmt (v:Operations_types.begin_async_function) = 
  let pp_i fmt () =
    Pbrt.Pp.pp_record_field ~first:true "parameters" (Pbrt.Pp.pp_option pp_parameters) fmt v.Operations_types.parameters;
    Pbrt.Pp.pp_record_field ~first:false "is_strict" Pbrt.Pp.pp_bool fmt v.Operations_types.is_strict;
  in
  Pbrt.Pp.pp_brk pp_i fmt ()

let rec pp_begin_async_arrow_function fmt (v:Operations_types.begin_async_arrow_function) = 
  let pp_i fmt () =
    Pbrt.Pp.pp_record_field ~first:true "parameters" (Pbrt.Pp.pp_option pp_parameters) fmt v.Operations_types.parameters;
    Pbrt.Pp.pp_record_field ~first:false "is_strict" Pbrt.Pp.pp_bool fmt v.Operations_types.is_strict;
  in
  Pbrt.Pp.pp_brk pp_i fmt ()

let rec pp_begin_async_generator_function fmt (v:Operations_types.begin_async_generator_function) = 
  let pp_i fmt () =
    Pbrt.Pp.pp_record_field ~first:true "parameters" (Pbrt.Pp.pp_option pp_parameters) fmt v.Operations_types.parameters;
    Pbrt.Pp.pp_record_field ~first:false "is_strict" Pbrt.Pp.pp_bool fmt v.Operations_types.is_strict;
  in
  Pbrt.Pp.pp_brk pp_i fmt ()

let rec pp_begin_constructor fmt (v:Operations_types.begin_constructor) = 
  let pp_i fmt () =
    Pbrt.Pp.pp_record_field ~first:true "parameters" (Pbrt.Pp.pp_option pp_parameters) fmt v.Operations_types.parameters;
  in
  Pbrt.Pp.pp_brk pp_i fmt ()

let rec pp_call_function_with_spread fmt (v:Operations_types.call_function_with_spread) = 
  let pp_i fmt () =
    Pbrt.Pp.pp_record_field ~first:true "spreads" (Pbrt.Pp.pp_list Pbrt.Pp.pp_bool) fmt v.Operations_types.spreads;
  in
  Pbrt.Pp.pp_brk pp_i fmt ()

let rec pp_construct_with_spread fmt (v:Operations_types.construct_with_spread) = 
  let pp_i fmt () =
    Pbrt.Pp.pp_record_field ~first:true "spreads" (Pbrt.Pp.pp_list Pbrt.Pp.pp_bool) fmt v.Operations_types.spreads;
  in
  Pbrt.Pp.pp_brk pp_i fmt ()

let rec pp_call_method fmt (v:Operations_types.call_method) = 
  let pp_i fmt () =
    Pbrt.Pp.pp_record_field ~first:true "method_name" Pbrt.Pp.pp_string fmt v.Operations_types.method_name;
  in
  Pbrt.Pp.pp_brk pp_i fmt ()

let rec pp_call_method_with_spread fmt (v:Operations_types.call_method_with_spread) = 
  let pp_i fmt () =
    Pbrt.Pp.pp_record_field ~first:true "method_name" Pbrt.Pp.pp_string fmt v.Operations_types.method_name;
    Pbrt.Pp.pp_record_field ~first:false "spreads" (Pbrt.Pp.pp_list Pbrt.Pp.pp_bool) fmt v.Operations_types.spreads;
  in
  Pbrt.Pp.pp_brk pp_i fmt ()

let rec pp_call_computed_method_with_spread fmt (v:Operations_types.call_computed_method_with_spread) = 
  let pp_i fmt () =
    Pbrt.Pp.pp_record_field ~first:true "spreads" (Pbrt.Pp.pp_list Pbrt.Pp.pp_bool) fmt v.Operations_types.spreads;
  in
  Pbrt.Pp.pp_brk pp_i fmt ()

let rec pp_unary_operator fmt (v:Operations_types.unary_operator) =
  match v with
  | Operations_types.Pre_inc -> Format.fprintf fmt "Pre_inc"
  | Operations_types.Pre_dec -> Format.fprintf fmt "Pre_dec"
  | Operations_types.Post_inc -> Format.fprintf fmt "Post_inc"
  | Operations_types.Post_dec -> Format.fprintf fmt "Post_dec"
  | Operations_types.Logical_not -> Format.fprintf fmt "Logical_not"
  | Operations_types.Bitwise_not -> Format.fprintf fmt "Bitwise_not"
  | Operations_types.Plus -> Format.fprintf fmt "Plus"
  | Operations_types.Minus -> Format.fprintf fmt "Minus"

let rec pp_unary_operation fmt (v:Operations_types.unary_operation) = 
  let pp_i fmt () =
    Pbrt.Pp.pp_record_field ~first:true "op" pp_unary_operator fmt v.Operations_types.op;
  in
  Pbrt.Pp.pp_brk pp_i fmt ()

let rec pp_binary_operation fmt (v:Operations_types.binary_operation) = 
  let pp_i fmt () =
    Pbrt.Pp.pp_record_field ~first:true "op" pp_binary_operator fmt v.Operations_types.op;
  in
  Pbrt.Pp.pp_brk pp_i fmt ()

let rec pp_reassign_with_binop fmt (v:Operations_types.reassign_with_binop) = 
  let pp_i fmt () =
    Pbrt.Pp.pp_record_field ~first:true "op" pp_binary_operator fmt v.Operations_types.op;
  in
  Pbrt.Pp.pp_brk pp_i fmt ()

let rec pp_destruct_array fmt (v:Operations_types.destruct_array) = 
  let pp_i fmt () =
    Pbrt.Pp.pp_record_field ~first:true "indices" (Pbrt.Pp.pp_list Pbrt.Pp.pp_int32) fmt v.Operations_types.indices;
    Pbrt.Pp.pp_record_field ~first:false "has_rest_element" Pbrt.Pp.pp_bool fmt v.Operations_types.has_rest_element;
  in
  Pbrt.Pp.pp_brk pp_i fmt ()

let rec pp_destruct_array_and_reassign fmt (v:Operations_types.destruct_array_and_reassign) = 
  let pp_i fmt () =
    Pbrt.Pp.pp_record_field ~first:true "indices" (Pbrt.Pp.pp_list Pbrt.Pp.pp_int32) fmt v.Operations_types.indices;
    Pbrt.Pp.pp_record_field ~first:false "has_rest_element" Pbrt.Pp.pp_bool fmt v.Operations_types.has_rest_element;
  in
  Pbrt.Pp.pp_brk pp_i fmt ()

let rec pp_destruct_object fmt (v:Operations_types.destruct_object) = 
  let pp_i fmt () =
    Pbrt.Pp.pp_record_field ~first:true "properties" (Pbrt.Pp.pp_list Pbrt.Pp.pp_string) fmt v.Operations_types.properties;
    Pbrt.Pp.pp_record_field ~first:false "has_rest_element" Pbrt.Pp.pp_bool fmt v.Operations_types.has_rest_element;
  in
  Pbrt.Pp.pp_brk pp_i fmt ()

let rec pp_destruct_object_and_reassign fmt (v:Operations_types.destruct_object_and_reassign) = 
  let pp_i fmt () =
    Pbrt.Pp.pp_record_field ~first:true "properties" (Pbrt.Pp.pp_list Pbrt.Pp.pp_string) fmt v.Operations_types.properties;
    Pbrt.Pp.pp_record_field ~first:false "has_rest_element" Pbrt.Pp.pp_bool fmt v.Operations_types.has_rest_element;
  in
  Pbrt.Pp.pp_brk pp_i fmt ()

let rec pp_comparator fmt (v:Operations_types.comparator) =
  match v with
  | Operations_types.Equal -> Format.fprintf fmt "Equal"
  | Operations_types.Strict_equal -> Format.fprintf fmt "Strict_equal"
  | Operations_types.Not_equal -> Format.fprintf fmt "Not_equal"
  | Operations_types.Strict_not_equal -> Format.fprintf fmt "Strict_not_equal"
  | Operations_types.Less_than -> Format.fprintf fmt "Less_than"
  | Operations_types.Less_than_or_equal -> Format.fprintf fmt "Less_than_or_equal"
  | Operations_types.Greater_than -> Format.fprintf fmt "Greater_than"
  | Operations_types.Greater_than_or_equal -> Format.fprintf fmt "Greater_than_or_equal"

let rec pp_compare fmt (v:Operations_types.compare) = 
  let pp_i fmt () =
    Pbrt.Pp.pp_record_field ~first:true "op" pp_comparator fmt v.Operations_types.op;
  in
  Pbrt.Pp.pp_brk pp_i fmt ()

let rec pp_eval fmt (v:Operations_types.eval) = 
  let pp_i fmt () =
    Pbrt.Pp.pp_record_field ~first:true "code" Pbrt.Pp.pp_string fmt v.Operations_types.code;
  in
  Pbrt.Pp.pp_brk pp_i fmt ()

let rec pp_begin_class fmt (v:Operations_types.begin_class) = 
  let pp_i fmt () =
    Pbrt.Pp.pp_record_field ~first:true "has_superclass" Pbrt.Pp.pp_bool fmt v.Operations_types.has_superclass;
    Pbrt.Pp.pp_record_field ~first:false "constructor_parameters" (Pbrt.Pp.pp_option pp_parameters) fmt v.Operations_types.constructor_parameters;
    Pbrt.Pp.pp_record_field ~first:false "instance_properties" (Pbrt.Pp.pp_list Pbrt.Pp.pp_string) fmt v.Operations_types.instance_properties;
    Pbrt.Pp.pp_record_field ~first:false "instance_method_names" (Pbrt.Pp.pp_list Pbrt.Pp.pp_string) fmt v.Operations_types.instance_method_names;
    Pbrt.Pp.pp_record_field ~first:false "instance_method_parameters" (Pbrt.Pp.pp_list pp_parameters) fmt v.Operations_types.instance_method_parameters;
  in
  Pbrt.Pp.pp_brk pp_i fmt ()

let rec pp_begin_method fmt (v:Operations_types.begin_method) = 
  let pp_i fmt () =
    Pbrt.Pp.pp_record_field ~first:true "num_parameters" Pbrt.Pp.pp_int32 fmt v.Operations_types.num_parameters;
  in
  Pbrt.Pp.pp_brk pp_i fmt ()

let rec pp_call_super_constructor fmt (v:Operations_types.call_super_constructor) = 
  let pp_i fmt () =
    Pbrt.Pp.pp_record_field ~first:true "spreads" (Pbrt.Pp.pp_list Pbrt.Pp.pp_bool) fmt v.Operations_types.spreads;
  in
  Pbrt.Pp.pp_brk pp_i fmt ()

let rec pp_call_super_method fmt (v:Operations_types.call_super_method) = 
  let pp_i fmt () =
    Pbrt.Pp.pp_record_field ~first:true "method_name" Pbrt.Pp.pp_string fmt v.Operations_types.method_name;
  in
  Pbrt.Pp.pp_brk pp_i fmt ()

let rec pp_load_super_property fmt (v:Operations_types.load_super_property) = 
  let pp_i fmt () =
    Pbrt.Pp.pp_record_field ~first:true "property_name" Pbrt.Pp.pp_string fmt v.Operations_types.property_name;
  in
  Pbrt.Pp.pp_brk pp_i fmt ()

let rec pp_store_super_property fmt (v:Operations_types.store_super_property) = 
  let pp_i fmt () =
    Pbrt.Pp.pp_record_field ~first:true "property_name" Pbrt.Pp.pp_string fmt v.Operations_types.property_name;
  in
  Pbrt.Pp.pp_brk pp_i fmt ()

let rec pp_store_super_property_with_binop fmt (v:Operations_types.store_super_property_with_binop) = 
  let pp_i fmt () =
    Pbrt.Pp.pp_record_field ~first:true "property_name" Pbrt.Pp.pp_string fmt v.Operations_types.property_name;
    Pbrt.Pp.pp_record_field ~first:false "op" pp_binary_operator fmt v.Operations_types.op;
  in
  Pbrt.Pp.pp_brk pp_i fmt ()

let rec pp_explore fmt (v:Operations_types.explore) = 
  let pp_i fmt () =
    Pbrt.Pp.pp_record_field ~first:true "id" Pbrt.Pp.pp_string fmt v.Operations_types.id;
  in
  Pbrt.Pp.pp_brk pp_i fmt ()

let rec pp_probe fmt (v:Operations_types.probe) = 
  let pp_i fmt () =
    Pbrt.Pp.pp_record_field ~first:true "id" Pbrt.Pp.pp_string fmt v.Operations_types.id;
  in
  Pbrt.Pp.pp_brk pp_i fmt ()

let rec pp_load_from_scope fmt (v:Operations_types.load_from_scope) = 
  let pp_i fmt () =
    Pbrt.Pp.pp_record_field ~first:true "id" Pbrt.Pp.pp_string fmt v.Operations_types.id;
  in
  Pbrt.Pp.pp_brk pp_i fmt ()

let rec pp_store_to_scope fmt (v:Operations_types.store_to_scope) = 
  let pp_i fmt () =
    Pbrt.Pp.pp_record_field ~first:true "id" Pbrt.Pp.pp_string fmt v.Operations_types.id;
  in
  Pbrt.Pp.pp_brk pp_i fmt ()

let rec pp_begin_if fmt (v:Operations_types.begin_if) = 
  let pp_i fmt () =
    Pbrt.Pp.pp_record_field ~first:true "inverted" Pbrt.Pp.pp_bool fmt v.Operations_types.inverted;
  in
  Pbrt.Pp.pp_brk pp_i fmt ()

let rec pp_end_switch_case fmt (v:Operations_types.end_switch_case) = 
  let pp_i fmt () =
    Pbrt.Pp.pp_record_field ~first:true "falls_through" Pbrt.Pp.pp_bool fmt v.Operations_types.falls_through;
  in
  Pbrt.Pp.pp_brk pp_i fmt ()

let rec pp_begin_while fmt (v:Operations_types.begin_while) = 
  let pp_i fmt () =
    Pbrt.Pp.pp_record_field ~first:true "comparator" pp_comparator fmt v.Operations_types.comparator;
  in
  Pbrt.Pp.pp_brk pp_i fmt ()

let rec pp_begin_do_while fmt (v:Operations_types.begin_do_while) = 
  let pp_i fmt () =
    Pbrt.Pp.pp_record_field ~first:true "comparator" pp_comparator fmt v.Operations_types.comparator;
  in
  Pbrt.Pp.pp_brk pp_i fmt ()

let rec pp_begin_for fmt (v:Operations_types.begin_for) = 
  let pp_i fmt () =
    Pbrt.Pp.pp_record_field ~first:true "comparator" pp_comparator fmt v.Operations_types.comparator;
    Pbrt.Pp.pp_record_field ~first:false "op" pp_binary_operator fmt v.Operations_types.op;
  in
  Pbrt.Pp.pp_brk pp_i fmt ()

let rec pp_begin_for_of_with_destruct fmt (v:Operations_types.begin_for_of_with_destruct) = 
  let pp_i fmt () =
    Pbrt.Pp.pp_record_field ~first:true "indices" (Pbrt.Pp.pp_list Pbrt.Pp.pp_int32) fmt v.Operations_types.indices;
    Pbrt.Pp.pp_record_field ~first:false "has_rest_element" Pbrt.Pp.pp_bool fmt v.Operations_types.has_rest_element;
  in
  Pbrt.Pp.pp_brk pp_i fmt ()

let rec pp_begin_repeat fmt (v:Operations_types.begin_repeat) = 
  let pp_i fmt () =
    Pbrt.Pp.pp_record_field ~first:true "iterations" Pbrt.Pp.pp_int64 fmt v.Operations_types.iterations;
  in
  Pbrt.Pp.pp_brk pp_i fmt ()
