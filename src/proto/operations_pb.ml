[@@@ocaml.warning "-27-30-39"]

type load_integer_mutable = {
  mutable value : int64;
}

let default_load_integer_mutable () : load_integer_mutable = {
  value = 0L;
}

type load_big_int_mutable = {
  mutable value : int64;
}

let default_load_big_int_mutable () : load_big_int_mutable = {
  value = 0L;
}

type load_float_mutable = {
  mutable value : float;
}

let default_load_float_mutable () : load_float_mutable = {
  value = 0.;
}

type load_string_mutable = {
  mutable value : string;
}

let default_load_string_mutable () : load_string_mutable = {
  value = "";
}

type load_boolean_mutable = {
  mutable value : bool;
}

let default_load_boolean_mutable () : load_boolean_mutable = {
  value = false;
}

type load_reg_exp_mutable = {
  mutable value : string;
  mutable flags : int32;
}

let default_load_reg_exp_mutable () : load_reg_exp_mutable = {
  value = "";
  flags = 0l;
}

type create_object_mutable = {
  mutable property_names : string list;
}

let default_create_object_mutable () : create_object_mutable = {
  property_names = [];
}

type create_template_string_mutable = {
  mutable parts : string list;
}

let default_create_template_string_mutable () : create_template_string_mutable = {
  parts = [];
}

type create_object_with_spread_mutable = {
  mutable property_names : string list;
}

let default_create_object_with_spread_mutable () : create_object_with_spread_mutable = {
  property_names = [];
}

type create_array_with_spread_mutable = {
  mutable spreads : bool list;
}

let default_create_array_with_spread_mutable () : create_array_with_spread_mutable = {
  spreads = [];
}

type load_builtin_mutable = {
  mutable builtin_name : string;
}

let default_load_builtin_mutable () : load_builtin_mutable = {
  builtin_name = "";
}

type load_property_mutable = {
  mutable property_name : string;
}

let default_load_property_mutable () : load_property_mutable = {
  property_name = "";
}

type store_property_mutable = {
  mutable property_name : string;
}

let default_store_property_mutable () : store_property_mutable = {
  property_name = "";
}

type store_property_with_binop_mutable = {
  mutable property_name : string;
  mutable op : Operations_types.binary_operator;
}

let default_store_property_with_binop_mutable () : store_property_with_binop_mutable = {
  property_name = "";
  op = Operations_types.default_binary_operator ();
}

type delete_property_mutable = {
  mutable property_name : string;
}

let default_delete_property_mutable () : delete_property_mutable = {
  property_name = "";
}

type configure_property_mutable = {
  mutable property_name : string;
  mutable is_writable : bool;
  mutable is_configurable : bool;
  mutable is_enumerable : bool;
  mutable type_ : Operations_types.property_type;
}

let default_configure_property_mutable () : configure_property_mutable = {
  property_name = "";
  is_writable = false;
  is_configurable = false;
  is_enumerable = false;
  type_ = Operations_types.default_property_type ();
}

type load_element_mutable = {
  mutable index : int64;
}

let default_load_element_mutable () : load_element_mutable = {
  index = 0L;
}

type store_element_mutable = {
  mutable index : int64;
}

let default_store_element_mutable () : store_element_mutable = {
  index = 0L;
}

type store_element_with_binop_mutable = {
  mutable index : int64;
  mutable op : Operations_types.binary_operator;
}

let default_store_element_with_binop_mutable () : store_element_with_binop_mutable = {
  index = 0L;
  op = Operations_types.default_binary_operator ();
}

type delete_element_mutable = {
  mutable index : int64;
}

let default_delete_element_mutable () : delete_element_mutable = {
  index = 0L;
}

type configure_element_mutable = {
  mutable index : int64;
  mutable is_writable : bool;
  mutable is_configurable : bool;
  mutable is_enumerable : bool;
  mutable type_ : Operations_types.property_type;
}

let default_configure_element_mutable () : configure_element_mutable = {
  index = 0L;
  is_writable = false;
  is_configurable = false;
  is_enumerable = false;
  type_ = Operations_types.default_property_type ();
}

type store_computed_property_with_binop_mutable = {
  mutable op : Operations_types.binary_operator;
}

let default_store_computed_property_with_binop_mutable () : store_computed_property_with_binop_mutable = {
  op = Operations_types.default_binary_operator ();
}

type configure_computed_property_mutable = {
  mutable is_writable : bool;
  mutable is_configurable : bool;
  mutable is_enumerable : bool;
  mutable type_ : Operations_types.property_type;
}

let default_configure_computed_property_mutable () : configure_computed_property_mutable = {
  is_writable = false;
  is_configurable = false;
  is_enumerable = false;
  type_ = Operations_types.default_property_type ();
}

type parameters_mutable = {
  mutable count : int32;
  mutable has_rest : bool;
}

let default_parameters_mutable () : parameters_mutable = {
  count = 0l;
  has_rest = false;
}

type begin_plain_function_mutable = {
  mutable parameters : Operations_types.parameters option;
  mutable is_strict : bool;
}

let default_begin_plain_function_mutable () : begin_plain_function_mutable = {
  parameters = None;
  is_strict = false;
}

type begin_arrow_function_mutable = {
  mutable parameters : Operations_types.parameters option;
  mutable is_strict : bool;
}

let default_begin_arrow_function_mutable () : begin_arrow_function_mutable = {
  parameters = None;
  is_strict = false;
}

type begin_generator_function_mutable = {
  mutable parameters : Operations_types.parameters option;
  mutable is_strict : bool;
}

let default_begin_generator_function_mutable () : begin_generator_function_mutable = {
  parameters = None;
  is_strict = false;
}

type begin_async_function_mutable = {
  mutable parameters : Operations_types.parameters option;
  mutable is_strict : bool;
}

let default_begin_async_function_mutable () : begin_async_function_mutable = {
  parameters = None;
  is_strict = false;
}

type begin_async_arrow_function_mutable = {
  mutable parameters : Operations_types.parameters option;
  mutable is_strict : bool;
}

let default_begin_async_arrow_function_mutable () : begin_async_arrow_function_mutable = {
  parameters = None;
  is_strict = false;
}

type begin_async_generator_function_mutable = {
  mutable parameters : Operations_types.parameters option;
  mutable is_strict : bool;
}

let default_begin_async_generator_function_mutable () : begin_async_generator_function_mutable = {
  parameters = None;
  is_strict = false;
}

type begin_constructor_mutable = {
  mutable parameters : Operations_types.parameters option;
}

let default_begin_constructor_mutable () : begin_constructor_mutable = {
  parameters = None;
}

type call_function_with_spread_mutable = {
  mutable spreads : bool list;
}

let default_call_function_with_spread_mutable () : call_function_with_spread_mutable = {
  spreads = [];
}

type construct_with_spread_mutable = {
  mutable spreads : bool list;
}

let default_construct_with_spread_mutable () : construct_with_spread_mutable = {
  spreads = [];
}

type call_method_mutable = {
  mutable method_name : string;
}

let default_call_method_mutable () : call_method_mutable = {
  method_name = "";
}

type call_method_with_spread_mutable = {
  mutable method_name : string;
  mutable spreads : bool list;
}

let default_call_method_with_spread_mutable () : call_method_with_spread_mutable = {
  method_name = "";
  spreads = [];
}

type call_computed_method_with_spread_mutable = {
  mutable spreads : bool list;
}

let default_call_computed_method_with_spread_mutable () : call_computed_method_with_spread_mutable = {
  spreads = [];
}

type unary_operation_mutable = {
  mutable op : Operations_types.unary_operator;
}

let default_unary_operation_mutable () : unary_operation_mutable = {
  op = Operations_types.default_unary_operator ();
}

type binary_operation_mutable = {
  mutable op : Operations_types.binary_operator;
}

let default_binary_operation_mutable () : binary_operation_mutable = {
  op = Operations_types.default_binary_operator ();
}

type reassign_with_binop_mutable = {
  mutable op : Operations_types.binary_operator;
}

let default_reassign_with_binop_mutable () : reassign_with_binop_mutable = {
  op = Operations_types.default_binary_operator ();
}

type destruct_array_mutable = {
  mutable indices : int32 list;
  mutable has_rest_element : bool;
}

let default_destruct_array_mutable () : destruct_array_mutable = {
  indices = [];
  has_rest_element = false;
}

type destruct_array_and_reassign_mutable = {
  mutable indices : int32 list;
  mutable has_rest_element : bool;
}

let default_destruct_array_and_reassign_mutable () : destruct_array_and_reassign_mutable = {
  indices = [];
  has_rest_element = false;
}

type destruct_object_mutable = {
  mutable properties : string list;
  mutable has_rest_element : bool;
}

let default_destruct_object_mutable () : destruct_object_mutable = {
  properties = [];
  has_rest_element = false;
}

type destruct_object_and_reassign_mutable = {
  mutable properties : string list;
  mutable has_rest_element : bool;
}

let default_destruct_object_and_reassign_mutable () : destruct_object_and_reassign_mutable = {
  properties = [];
  has_rest_element = false;
}

type compare_mutable = {
  mutable op : Operations_types.comparator;
}

let default_compare_mutable () : compare_mutable = {
  op = Operations_types.default_comparator ();
}

type eval_mutable = {
  mutable code : string;
}

let default_eval_mutable () : eval_mutable = {
  code = "";
}

type begin_class_mutable = {
  mutable has_superclass : bool;
  mutable constructor_parameters : Operations_types.parameters option;
  mutable instance_properties : string list;
  mutable instance_method_names : string list;
  mutable instance_method_parameters : Operations_types.parameters list;
}

let default_begin_class_mutable () : begin_class_mutable = {
  has_superclass = false;
  constructor_parameters = None;
  instance_properties = [];
  instance_method_names = [];
  instance_method_parameters = [];
}

type begin_method_mutable = {
  mutable num_parameters : int32;
}

let default_begin_method_mutable () : begin_method_mutable = {
  num_parameters = 0l;
}

type call_super_constructor_mutable = {
  mutable spreads : bool list;
}

let default_call_super_constructor_mutable () : call_super_constructor_mutable = {
  spreads = [];
}

type call_super_method_mutable = {
  mutable method_name : string;
}

let default_call_super_method_mutable () : call_super_method_mutable = {
  method_name = "";
}

type load_super_property_mutable = {
  mutable property_name : string;
}

let default_load_super_property_mutable () : load_super_property_mutable = {
  property_name = "";
}

type store_super_property_mutable = {
  mutable property_name : string;
}

let default_store_super_property_mutable () : store_super_property_mutable = {
  property_name = "";
}

type store_super_property_with_binop_mutable = {
  mutable property_name : string;
  mutable op : Operations_types.binary_operator;
}

let default_store_super_property_with_binop_mutable () : store_super_property_with_binop_mutable = {
  property_name = "";
  op = Operations_types.default_binary_operator ();
}

type explore_mutable = {
  mutable id : string;
}

let default_explore_mutable () : explore_mutable = {
  id = "";
}

type probe_mutable = {
  mutable id : string;
}

let default_probe_mutable () : probe_mutable = {
  id = "";
}

type load_from_scope_mutable = {
  mutable id : string;
}

let default_load_from_scope_mutable () : load_from_scope_mutable = {
  id = "";
}

type store_to_scope_mutable = {
  mutable id : string;
}

let default_store_to_scope_mutable () : store_to_scope_mutable = {
  id = "";
}

type begin_if_mutable = {
  mutable inverted : bool;
}

let default_begin_if_mutable () : begin_if_mutable = {
  inverted = false;
}

type end_switch_case_mutable = {
  mutable falls_through : bool;
}

let default_end_switch_case_mutable () : end_switch_case_mutable = {
  falls_through = false;
}

type begin_while_mutable = {
  mutable comparator : Operations_types.comparator;
}

let default_begin_while_mutable () : begin_while_mutable = {
  comparator = Operations_types.default_comparator ();
}

type begin_do_while_mutable = {
  mutable comparator : Operations_types.comparator;
}

let default_begin_do_while_mutable () : begin_do_while_mutable = {
  comparator = Operations_types.default_comparator ();
}

type begin_for_mutable = {
  mutable comparator : Operations_types.comparator;
  mutable op : Operations_types.binary_operator;
}

let default_begin_for_mutable () : begin_for_mutable = {
  comparator = Operations_types.default_comparator ();
  op = Operations_types.default_binary_operator ();
}

type begin_for_of_with_destruct_mutable = {
  mutable indices : int32 list;
  mutable has_rest_element : bool;
}

let default_begin_for_of_with_destruct_mutable () : begin_for_of_with_destruct_mutable = {
  indices = [];
  has_rest_element = false;
}

type begin_repeat_mutable = {
  mutable iterations : int64;
}

let default_begin_repeat_mutable () : begin_repeat_mutable = {
  iterations = 0L;
}


let rec decode_load_integer d =
  let v = default_load_integer_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Varint) -> begin
      v.value <- Pbrt.Decoder.int64_as_varint d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(load_integer), field(1)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Operations_types.value = v.value;
  } : Operations_types.load_integer)

let rec decode_load_big_int d =
  let v = default_load_big_int_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Varint) -> begin
      v.value <- Pbrt.Decoder.int64_as_varint d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(load_big_int), field(1)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Operations_types.value = v.value;
  } : Operations_types.load_big_int)

let rec decode_load_float d =
  let v = default_load_float_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bits64) -> begin
      v.value <- Pbrt.Decoder.float_as_bits64 d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(load_float), field(1)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Operations_types.value = v.value;
  } : Operations_types.load_float)

let rec decode_load_string d =
  let v = default_load_string_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.value <- Pbrt.Decoder.string d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(load_string), field(1)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Operations_types.value = v.value;
  } : Operations_types.load_string)

let rec decode_load_boolean d =
  let v = default_load_boolean_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Varint) -> begin
      v.value <- Pbrt.Decoder.bool d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(load_boolean), field(1)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Operations_types.value = v.value;
  } : Operations_types.load_boolean)

let rec decode_load_reg_exp d =
  let v = default_load_reg_exp_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.value <- Pbrt.Decoder.string d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(load_reg_exp), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.flags <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(load_reg_exp), field(2)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Operations_types.value = v.value;
    Operations_types.flags = v.flags;
  } : Operations_types.load_reg_exp)

let rec decode_create_object d =
  let v = default_create_object_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.property_names <- List.rev v.property_names;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.property_names <- (Pbrt.Decoder.string d) :: v.property_names;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_object), field(1)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Operations_types.property_names = v.property_names;
  } : Operations_types.create_object)

let rec decode_create_template_string d =
  let v = default_create_template_string_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.parts <- List.rev v.parts;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.parts <- (Pbrt.Decoder.string d) :: v.parts;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_template_string), field(1)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Operations_types.parts = v.parts;
  } : Operations_types.create_template_string)

let rec decode_create_object_with_spread d =
  let v = default_create_object_with_spread_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.property_names <- List.rev v.property_names;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.property_names <- (Pbrt.Decoder.string d) :: v.property_names;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_object_with_spread), field(1)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Operations_types.property_names = v.property_names;
  } : Operations_types.create_object_with_spread)

let rec decode_create_array_with_spread d =
  let v = default_create_array_with_spread_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.spreads <- List.rev v.spreads;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.spreads <- Pbrt.Decoder.packed_fold (fun l d -> (Pbrt.Decoder.bool d)::l) [] d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(create_array_with_spread), field(1)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Operations_types.spreads = v.spreads;
  } : Operations_types.create_array_with_spread)

let rec decode_load_builtin d =
  let v = default_load_builtin_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.builtin_name <- Pbrt.Decoder.string d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(load_builtin), field(1)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Operations_types.builtin_name = v.builtin_name;
  } : Operations_types.load_builtin)

let rec decode_load_property d =
  let v = default_load_property_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.property_name <- Pbrt.Decoder.string d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(load_property), field(1)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Operations_types.property_name = v.property_name;
  } : Operations_types.load_property)

let rec decode_store_property d =
  let v = default_store_property_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.property_name <- Pbrt.Decoder.string d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(store_property), field(1)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Operations_types.property_name = v.property_name;
  } : Operations_types.store_property)

let rec decode_binary_operator d = 
  match Pbrt.Decoder.int_as_varint d with
  | 0 -> (Operations_types.Add:Operations_types.binary_operator)
  | 1 -> (Operations_types.Sub:Operations_types.binary_operator)
  | 2 -> (Operations_types.Mul:Operations_types.binary_operator)
  | 3 -> (Operations_types.Div:Operations_types.binary_operator)
  | 4 -> (Operations_types.Mod:Operations_types.binary_operator)
  | 5 -> (Operations_types.Bit_and:Operations_types.binary_operator)
  | 6 -> (Operations_types.Bit_or:Operations_types.binary_operator)
  | 7 -> (Operations_types.Logical_and:Operations_types.binary_operator)
  | 8 -> (Operations_types.Logical_or:Operations_types.binary_operator)
  | 9 -> (Operations_types.Xor:Operations_types.binary_operator)
  | 10 -> (Operations_types.Lshift:Operations_types.binary_operator)
  | 11 -> (Operations_types.Rshift:Operations_types.binary_operator)
  | 12 -> (Operations_types.Exp:Operations_types.binary_operator)
  | 13 -> (Operations_types.Unrshift:Operations_types.binary_operator)
  | _ -> Pbrt.Decoder.malformed_variant "binary_operator"

let rec decode_store_property_with_binop d =
  let v = default_store_property_with_binop_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.property_name <- Pbrt.Decoder.string d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(store_property_with_binop), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.op <- decode_binary_operator d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(store_property_with_binop), field(2)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Operations_types.property_name = v.property_name;
    Operations_types.op = v.op;
  } : Operations_types.store_property_with_binop)

let rec decode_delete_property d =
  let v = default_delete_property_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.property_name <- Pbrt.Decoder.string d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(delete_property), field(1)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Operations_types.property_name = v.property_name;
  } : Operations_types.delete_property)

let rec decode_property_type d = 
  match Pbrt.Decoder.int_as_varint d with
  | 0 -> (Operations_types.Value:Operations_types.property_type)
  | 1 -> (Operations_types.Getter:Operations_types.property_type)
  | 2 -> (Operations_types.Setter:Operations_types.property_type)
  | 3 -> (Operations_types.Gettersetter:Operations_types.property_type)
  | _ -> Pbrt.Decoder.malformed_variant "property_type"

let rec decode_configure_property d =
  let v = default_configure_property_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.property_name <- Pbrt.Decoder.string d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(configure_property), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.is_writable <- Pbrt.Decoder.bool d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(configure_property), field(2)" pk
    | Some (3, Pbrt.Varint) -> begin
      v.is_configurable <- Pbrt.Decoder.bool d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(configure_property), field(3)" pk
    | Some (4, Pbrt.Varint) -> begin
      v.is_enumerable <- Pbrt.Decoder.bool d;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(configure_property), field(4)" pk
    | Some (5, Pbrt.Varint) -> begin
      v.type_ <- decode_property_type d;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(configure_property), field(5)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Operations_types.property_name = v.property_name;
    Operations_types.is_writable = v.is_writable;
    Operations_types.is_configurable = v.is_configurable;
    Operations_types.is_enumerable = v.is_enumerable;
    Operations_types.type_ = v.type_;
  } : Operations_types.configure_property)

let rec decode_load_element d =
  let v = default_load_element_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Varint) -> begin
      v.index <- Pbrt.Decoder.int64_as_varint d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(load_element), field(1)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Operations_types.index = v.index;
  } : Operations_types.load_element)

let rec decode_store_element d =
  let v = default_store_element_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Varint) -> begin
      v.index <- Pbrt.Decoder.int64_as_varint d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(store_element), field(1)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Operations_types.index = v.index;
  } : Operations_types.store_element)

let rec decode_store_element_with_binop d =
  let v = default_store_element_with_binop_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Varint) -> begin
      v.index <- Pbrt.Decoder.int64_as_varint d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(store_element_with_binop), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.op <- decode_binary_operator d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(store_element_with_binop), field(2)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Operations_types.index = v.index;
    Operations_types.op = v.op;
  } : Operations_types.store_element_with_binop)

let rec decode_delete_element d =
  let v = default_delete_element_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Varint) -> begin
      v.index <- Pbrt.Decoder.int64_as_varint d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(delete_element), field(1)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Operations_types.index = v.index;
  } : Operations_types.delete_element)

let rec decode_configure_element d =
  let v = default_configure_element_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Varint) -> begin
      v.index <- Pbrt.Decoder.int64_as_varint d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(configure_element), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.is_writable <- Pbrt.Decoder.bool d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(configure_element), field(2)" pk
    | Some (3, Pbrt.Varint) -> begin
      v.is_configurable <- Pbrt.Decoder.bool d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(configure_element), field(3)" pk
    | Some (4, Pbrt.Varint) -> begin
      v.is_enumerable <- Pbrt.Decoder.bool d;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(configure_element), field(4)" pk
    | Some (5, Pbrt.Varint) -> begin
      v.type_ <- decode_property_type d;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(configure_element), field(5)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Operations_types.index = v.index;
    Operations_types.is_writable = v.is_writable;
    Operations_types.is_configurable = v.is_configurable;
    Operations_types.is_enumerable = v.is_enumerable;
    Operations_types.type_ = v.type_;
  } : Operations_types.configure_element)

let rec decode_store_computed_property_with_binop d =
  let v = default_store_computed_property_with_binop_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Varint) -> begin
      v.op <- decode_binary_operator d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(store_computed_property_with_binop), field(1)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Operations_types.op = v.op;
  } : Operations_types.store_computed_property_with_binop)

let rec decode_configure_computed_property d =
  let v = default_configure_computed_property_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Varint) -> begin
      v.is_writable <- Pbrt.Decoder.bool d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(configure_computed_property), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.is_configurable <- Pbrt.Decoder.bool d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(configure_computed_property), field(2)" pk
    | Some (3, Pbrt.Varint) -> begin
      v.is_enumerable <- Pbrt.Decoder.bool d;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(configure_computed_property), field(3)" pk
    | Some (4, Pbrt.Varint) -> begin
      v.type_ <- decode_property_type d;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(configure_computed_property), field(4)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Operations_types.is_writable = v.is_writable;
    Operations_types.is_configurable = v.is_configurable;
    Operations_types.is_enumerable = v.is_enumerable;
    Operations_types.type_ = v.type_;
  } : Operations_types.configure_computed_property)

let rec decode_parameters d =
  let v = default_parameters_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Varint) -> begin
      v.count <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(parameters), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.has_rest <- Pbrt.Decoder.bool d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(parameters), field(2)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Operations_types.count = v.count;
    Operations_types.has_rest = v.has_rest;
  } : Operations_types.parameters)

let rec decode_begin_plain_function d =
  let v = default_begin_plain_function_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.parameters <- Some (decode_parameters (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(begin_plain_function), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.is_strict <- Pbrt.Decoder.bool d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(begin_plain_function), field(2)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Operations_types.parameters = v.parameters;
    Operations_types.is_strict = v.is_strict;
  } : Operations_types.begin_plain_function)

let rec decode_begin_arrow_function d =
  let v = default_begin_arrow_function_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.parameters <- Some (decode_parameters (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(begin_arrow_function), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.is_strict <- Pbrt.Decoder.bool d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(begin_arrow_function), field(2)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Operations_types.parameters = v.parameters;
    Operations_types.is_strict = v.is_strict;
  } : Operations_types.begin_arrow_function)

let rec decode_begin_generator_function d =
  let v = default_begin_generator_function_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.parameters <- Some (decode_parameters (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(begin_generator_function), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.is_strict <- Pbrt.Decoder.bool d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(begin_generator_function), field(2)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Operations_types.parameters = v.parameters;
    Operations_types.is_strict = v.is_strict;
  } : Operations_types.begin_generator_function)

let rec decode_begin_async_function d =
  let v = default_begin_async_function_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.parameters <- Some (decode_parameters (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(begin_async_function), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.is_strict <- Pbrt.Decoder.bool d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(begin_async_function), field(2)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Operations_types.parameters = v.parameters;
    Operations_types.is_strict = v.is_strict;
  } : Operations_types.begin_async_function)

let rec decode_begin_async_arrow_function d =
  let v = default_begin_async_arrow_function_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.parameters <- Some (decode_parameters (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(begin_async_arrow_function), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.is_strict <- Pbrt.Decoder.bool d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(begin_async_arrow_function), field(2)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Operations_types.parameters = v.parameters;
    Operations_types.is_strict = v.is_strict;
  } : Operations_types.begin_async_arrow_function)

let rec decode_begin_async_generator_function d =
  let v = default_begin_async_generator_function_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.parameters <- Some (decode_parameters (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(begin_async_generator_function), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.is_strict <- Pbrt.Decoder.bool d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(begin_async_generator_function), field(2)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Operations_types.parameters = v.parameters;
    Operations_types.is_strict = v.is_strict;
  } : Operations_types.begin_async_generator_function)

let rec decode_begin_constructor d =
  let v = default_begin_constructor_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.parameters <- Some (decode_parameters (Pbrt.Decoder.nested d));
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(begin_constructor), field(1)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Operations_types.parameters = v.parameters;
  } : Operations_types.begin_constructor)

let rec decode_call_function_with_spread d =
  let v = default_call_function_with_spread_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.spreads <- List.rev v.spreads;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.spreads <- Pbrt.Decoder.packed_fold (fun l d -> (Pbrt.Decoder.bool d)::l) [] d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(call_function_with_spread), field(1)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Operations_types.spreads = v.spreads;
  } : Operations_types.call_function_with_spread)

let rec decode_construct_with_spread d =
  let v = default_construct_with_spread_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.spreads <- List.rev v.spreads;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.spreads <- Pbrt.Decoder.packed_fold (fun l d -> (Pbrt.Decoder.bool d)::l) [] d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(construct_with_spread), field(1)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Operations_types.spreads = v.spreads;
  } : Operations_types.construct_with_spread)

let rec decode_call_method d =
  let v = default_call_method_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.method_name <- Pbrt.Decoder.string d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(call_method), field(1)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Operations_types.method_name = v.method_name;
  } : Operations_types.call_method)

let rec decode_call_method_with_spread d =
  let v = default_call_method_with_spread_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.spreads <- List.rev v.spreads;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.method_name <- Pbrt.Decoder.string d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(call_method_with_spread), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.spreads <- Pbrt.Decoder.packed_fold (fun l d -> (Pbrt.Decoder.bool d)::l) [] d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(call_method_with_spread), field(2)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Operations_types.method_name = v.method_name;
    Operations_types.spreads = v.spreads;
  } : Operations_types.call_method_with_spread)

let rec decode_call_computed_method_with_spread d =
  let v = default_call_computed_method_with_spread_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.spreads <- List.rev v.spreads;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.spreads <- Pbrt.Decoder.packed_fold (fun l d -> (Pbrt.Decoder.bool d)::l) [] d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(call_computed_method_with_spread), field(1)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Operations_types.spreads = v.spreads;
  } : Operations_types.call_computed_method_with_spread)

let rec decode_unary_operator d = 
  match Pbrt.Decoder.int_as_varint d with
  | 0 -> (Operations_types.Pre_inc:Operations_types.unary_operator)
  | 1 -> (Operations_types.Pre_dec:Operations_types.unary_operator)
  | 2 -> (Operations_types.Post_inc:Operations_types.unary_operator)
  | 3 -> (Operations_types.Post_dec:Operations_types.unary_operator)
  | 4 -> (Operations_types.Logical_not:Operations_types.unary_operator)
  | 5 -> (Operations_types.Bitwise_not:Operations_types.unary_operator)
  | 6 -> (Operations_types.Plus:Operations_types.unary_operator)
  | 7 -> (Operations_types.Minus:Operations_types.unary_operator)
  | _ -> Pbrt.Decoder.malformed_variant "unary_operator"

let rec decode_unary_operation d =
  let v = default_unary_operation_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Varint) -> begin
      v.op <- decode_unary_operator d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(unary_operation), field(1)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Operations_types.op = v.op;
  } : Operations_types.unary_operation)

let rec decode_binary_operation d =
  let v = default_binary_operation_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Varint) -> begin
      v.op <- decode_binary_operator d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(binary_operation), field(1)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Operations_types.op = v.op;
  } : Operations_types.binary_operation)

let rec decode_reassign_with_binop d =
  let v = default_reassign_with_binop_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Varint) -> begin
      v.op <- decode_binary_operator d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(reassign_with_binop), field(1)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Operations_types.op = v.op;
  } : Operations_types.reassign_with_binop)

let rec decode_destruct_array d =
  let v = default_destruct_array_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.indices <- List.rev v.indices;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.indices <- Pbrt.Decoder.packed_fold (fun l d -> (Pbrt.Decoder.int32_as_varint d)::l) [] d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(destruct_array), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.has_rest_element <- Pbrt.Decoder.bool d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(destruct_array), field(2)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Operations_types.indices = v.indices;
    Operations_types.has_rest_element = v.has_rest_element;
  } : Operations_types.destruct_array)

let rec decode_destruct_array_and_reassign d =
  let v = default_destruct_array_and_reassign_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.indices <- List.rev v.indices;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.indices <- Pbrt.Decoder.packed_fold (fun l d -> (Pbrt.Decoder.int32_as_varint d)::l) [] d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(destruct_array_and_reassign), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.has_rest_element <- Pbrt.Decoder.bool d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(destruct_array_and_reassign), field(2)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Operations_types.indices = v.indices;
    Operations_types.has_rest_element = v.has_rest_element;
  } : Operations_types.destruct_array_and_reassign)

let rec decode_destruct_object d =
  let v = default_destruct_object_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.properties <- List.rev v.properties;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.properties <- (Pbrt.Decoder.string d) :: v.properties;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(destruct_object), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.has_rest_element <- Pbrt.Decoder.bool d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(destruct_object), field(2)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Operations_types.properties = v.properties;
    Operations_types.has_rest_element = v.has_rest_element;
  } : Operations_types.destruct_object)

let rec decode_destruct_object_and_reassign d =
  let v = default_destruct_object_and_reassign_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.properties <- List.rev v.properties;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.properties <- (Pbrt.Decoder.string d) :: v.properties;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(destruct_object_and_reassign), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.has_rest_element <- Pbrt.Decoder.bool d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(destruct_object_and_reassign), field(2)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Operations_types.properties = v.properties;
    Operations_types.has_rest_element = v.has_rest_element;
  } : Operations_types.destruct_object_and_reassign)

let rec decode_comparator d = 
  match Pbrt.Decoder.int_as_varint d with
  | 0 -> (Operations_types.Equal:Operations_types.comparator)
  | 1 -> (Operations_types.Strict_equal:Operations_types.comparator)
  | 2 -> (Operations_types.Not_equal:Operations_types.comparator)
  | 3 -> (Operations_types.Strict_not_equal:Operations_types.comparator)
  | 4 -> (Operations_types.Less_than:Operations_types.comparator)
  | 5 -> (Operations_types.Less_than_or_equal:Operations_types.comparator)
  | 6 -> (Operations_types.Greater_than:Operations_types.comparator)
  | 7 -> (Operations_types.Greater_than_or_equal:Operations_types.comparator)
  | _ -> Pbrt.Decoder.malformed_variant "comparator"

let rec decode_compare d =
  let v = default_compare_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Varint) -> begin
      v.op <- decode_comparator d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(compare), field(1)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Operations_types.op = v.op;
  } : Operations_types.compare)

let rec decode_eval d =
  let v = default_eval_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.code <- Pbrt.Decoder.string d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(eval), field(1)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Operations_types.code = v.code;
  } : Operations_types.eval)

let rec decode_begin_class d =
  let v = default_begin_class_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.instance_method_parameters <- List.rev v.instance_method_parameters;
      v.instance_method_names <- List.rev v.instance_method_names;
      v.instance_properties <- List.rev v.instance_properties;
    ); continue__ := false
    | Some (1, Pbrt.Varint) -> begin
      v.has_superclass <- Pbrt.Decoder.bool d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(begin_class), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.constructor_parameters <- Some (decode_parameters (Pbrt.Decoder.nested d));
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(begin_class), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      v.instance_properties <- (Pbrt.Decoder.string d) :: v.instance_properties;
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(begin_class), field(3)" pk
    | Some (4, Pbrt.Bytes) -> begin
      v.instance_method_names <- (Pbrt.Decoder.string d) :: v.instance_method_names;
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(begin_class), field(4)" pk
    | Some (5, Pbrt.Bytes) -> begin
      v.instance_method_parameters <- (decode_parameters (Pbrt.Decoder.nested d)) :: v.instance_method_parameters;
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(begin_class), field(5)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Operations_types.has_superclass = v.has_superclass;
    Operations_types.constructor_parameters = v.constructor_parameters;
    Operations_types.instance_properties = v.instance_properties;
    Operations_types.instance_method_names = v.instance_method_names;
    Operations_types.instance_method_parameters = v.instance_method_parameters;
  } : Operations_types.begin_class)

let rec decode_begin_method d =
  let v = default_begin_method_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Varint) -> begin
      v.num_parameters <- Pbrt.Decoder.int32_as_varint d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(begin_method), field(1)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Operations_types.num_parameters = v.num_parameters;
  } : Operations_types.begin_method)

let rec decode_call_super_constructor d =
  let v = default_call_super_constructor_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.spreads <- List.rev v.spreads;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.spreads <- Pbrt.Decoder.packed_fold (fun l d -> (Pbrt.Decoder.bool d)::l) [] d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(call_super_constructor), field(1)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Operations_types.spreads = v.spreads;
  } : Operations_types.call_super_constructor)

let rec decode_call_super_method d =
  let v = default_call_super_method_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.method_name <- Pbrt.Decoder.string d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(call_super_method), field(1)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Operations_types.method_name = v.method_name;
  } : Operations_types.call_super_method)

let rec decode_load_super_property d =
  let v = default_load_super_property_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.property_name <- Pbrt.Decoder.string d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(load_super_property), field(1)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Operations_types.property_name = v.property_name;
  } : Operations_types.load_super_property)

let rec decode_store_super_property d =
  let v = default_store_super_property_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.property_name <- Pbrt.Decoder.string d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(store_super_property), field(1)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Operations_types.property_name = v.property_name;
  } : Operations_types.store_super_property)

let rec decode_store_super_property_with_binop d =
  let v = default_store_super_property_with_binop_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.property_name <- Pbrt.Decoder.string d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(store_super_property_with_binop), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.op <- decode_binary_operator d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(store_super_property_with_binop), field(2)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Operations_types.property_name = v.property_name;
    Operations_types.op = v.op;
  } : Operations_types.store_super_property_with_binop)

let rec decode_explore d =
  let v = default_explore_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.id <- Pbrt.Decoder.string d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(explore), field(1)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Operations_types.id = v.id;
  } : Operations_types.explore)

let rec decode_probe d =
  let v = default_probe_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.id <- Pbrt.Decoder.string d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(probe), field(1)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Operations_types.id = v.id;
  } : Operations_types.probe)

let rec decode_load_from_scope d =
  let v = default_load_from_scope_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.id <- Pbrt.Decoder.string d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(load_from_scope), field(1)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Operations_types.id = v.id;
  } : Operations_types.load_from_scope)

let rec decode_store_to_scope d =
  let v = default_store_to_scope_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.id <- Pbrt.Decoder.string d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(store_to_scope), field(1)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Operations_types.id = v.id;
  } : Operations_types.store_to_scope)

let rec decode_begin_if d =
  let v = default_begin_if_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Varint) -> begin
      v.inverted <- Pbrt.Decoder.bool d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(begin_if), field(1)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Operations_types.inverted = v.inverted;
  } : Operations_types.begin_if)

let rec decode_end_switch_case d =
  let v = default_end_switch_case_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Varint) -> begin
      v.falls_through <- Pbrt.Decoder.bool d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(end_switch_case), field(1)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Operations_types.falls_through = v.falls_through;
  } : Operations_types.end_switch_case)

let rec decode_begin_while d =
  let v = default_begin_while_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Varint) -> begin
      v.comparator <- decode_comparator d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(begin_while), field(1)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Operations_types.comparator = v.comparator;
  } : Operations_types.begin_while)

let rec decode_begin_do_while d =
  let v = default_begin_do_while_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Varint) -> begin
      v.comparator <- decode_comparator d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(begin_do_while), field(1)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Operations_types.comparator = v.comparator;
  } : Operations_types.begin_do_while)

let rec decode_begin_for d =
  let v = default_begin_for_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Varint) -> begin
      v.comparator <- decode_comparator d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(begin_for), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.op <- decode_binary_operator d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(begin_for), field(2)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Operations_types.comparator = v.comparator;
    Operations_types.op = v.op;
  } : Operations_types.begin_for)

let rec decode_begin_for_of_with_destruct d =
  let v = default_begin_for_of_with_destruct_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.indices <- List.rev v.indices;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.indices <- Pbrt.Decoder.packed_fold (fun l d -> (Pbrt.Decoder.int32_as_varint d)::l) [] d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(begin_for_of_with_destruct), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.has_rest_element <- Pbrt.Decoder.bool d;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(begin_for_of_with_destruct), field(2)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Operations_types.indices = v.indices;
    Operations_types.has_rest_element = v.has_rest_element;
  } : Operations_types.begin_for_of_with_destruct)

let rec decode_begin_repeat d =
  let v = default_begin_repeat_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
    ); continue__ := false
    | Some (1, Pbrt.Varint) -> begin
      v.iterations <- Pbrt.Decoder.int64_as_varint d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(begin_repeat), field(1)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Operations_types.iterations = v.iterations;
  } : Operations_types.begin_repeat)

let rec encode_load_integer (v:Operations_types.load_integer) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int64_as_varint v.Operations_types.value encoder;
  ()

let rec encode_load_big_int (v:Operations_types.load_big_int) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int64_as_varint v.Operations_types.value encoder;
  ()

let rec encode_load_float (v:Operations_types.load_float) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bits64) encoder; 
  Pbrt.Encoder.float_as_bits64 v.Operations_types.value encoder;
  ()

let rec encode_load_string (v:Operations_types.load_string) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Operations_types.value encoder;
  ()

let rec encode_load_boolean (v:Operations_types.load_boolean) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Operations_types.value encoder;
  ()

let rec encode_load_reg_exp (v:Operations_types.load_reg_exp) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Operations_types.value encoder;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Operations_types.flags encoder;
  ()

let rec encode_create_object (v:Operations_types.create_object) encoder = 
  List.iter (fun x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.string x encoder;
  ) v.Operations_types.property_names;
  ()

let rec encode_create_template_string (v:Operations_types.create_template_string) encoder = 
  List.iter (fun x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.string x encoder;
  ) v.Operations_types.parts;
  ()

let rec encode_create_object_with_spread (v:Operations_types.create_object_with_spread) encoder = 
  List.iter (fun x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.string x encoder;
  ) v.Operations_types.property_names;
  ()

let rec encode_create_array_with_spread (v:Operations_types.create_array_with_spread) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.nested (fun encoder ->
    List.iter (fun x -> 
      Pbrt.Encoder.bool x encoder;
    ) v.Operations_types.spreads;
  ) encoder;
  ()

let rec encode_load_builtin (v:Operations_types.load_builtin) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Operations_types.builtin_name encoder;
  ()

let rec encode_load_property (v:Operations_types.load_property) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Operations_types.property_name encoder;
  ()

let rec encode_store_property (v:Operations_types.store_property) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Operations_types.property_name encoder;
  ()

let rec encode_binary_operator (v:Operations_types.binary_operator) encoder =
  match v with
  | Operations_types.Add -> Pbrt.Encoder.int_as_varint (0) encoder
  | Operations_types.Sub -> Pbrt.Encoder.int_as_varint 1 encoder
  | Operations_types.Mul -> Pbrt.Encoder.int_as_varint 2 encoder
  | Operations_types.Div -> Pbrt.Encoder.int_as_varint 3 encoder
  | Operations_types.Mod -> Pbrt.Encoder.int_as_varint 4 encoder
  | Operations_types.Bit_and -> Pbrt.Encoder.int_as_varint 5 encoder
  | Operations_types.Bit_or -> Pbrt.Encoder.int_as_varint 6 encoder
  | Operations_types.Logical_and -> Pbrt.Encoder.int_as_varint 7 encoder
  | Operations_types.Logical_or -> Pbrt.Encoder.int_as_varint 8 encoder
  | Operations_types.Xor -> Pbrt.Encoder.int_as_varint 9 encoder
  | Operations_types.Lshift -> Pbrt.Encoder.int_as_varint 10 encoder
  | Operations_types.Rshift -> Pbrt.Encoder.int_as_varint 11 encoder
  | Operations_types.Exp -> Pbrt.Encoder.int_as_varint 12 encoder
  | Operations_types.Unrshift -> Pbrt.Encoder.int_as_varint 13 encoder

let rec encode_store_property_with_binop (v:Operations_types.store_property_with_binop) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Operations_types.property_name encoder;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  encode_binary_operator v.Operations_types.op encoder;
  ()

let rec encode_delete_property (v:Operations_types.delete_property) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Operations_types.property_name encoder;
  ()

let rec encode_property_type (v:Operations_types.property_type) encoder =
  match v with
  | Operations_types.Value -> Pbrt.Encoder.int_as_varint (0) encoder
  | Operations_types.Getter -> Pbrt.Encoder.int_as_varint 1 encoder
  | Operations_types.Setter -> Pbrt.Encoder.int_as_varint 2 encoder
  | Operations_types.Gettersetter -> Pbrt.Encoder.int_as_varint 3 encoder

let rec encode_configure_property (v:Operations_types.configure_property) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Operations_types.property_name encoder;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Operations_types.is_writable encoder;
  Pbrt.Encoder.key (3, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Operations_types.is_configurable encoder;
  Pbrt.Encoder.key (4, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Operations_types.is_enumerable encoder;
  Pbrt.Encoder.key (5, Pbrt.Varint) encoder; 
  encode_property_type v.Operations_types.type_ encoder;
  ()

let rec encode_load_element (v:Operations_types.load_element) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int64_as_varint v.Operations_types.index encoder;
  ()

let rec encode_store_element (v:Operations_types.store_element) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int64_as_varint v.Operations_types.index encoder;
  ()

let rec encode_store_element_with_binop (v:Operations_types.store_element_with_binop) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int64_as_varint v.Operations_types.index encoder;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  encode_binary_operator v.Operations_types.op encoder;
  ()

let rec encode_delete_element (v:Operations_types.delete_element) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int64_as_varint v.Operations_types.index encoder;
  ()

let rec encode_configure_element (v:Operations_types.configure_element) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int64_as_varint v.Operations_types.index encoder;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Operations_types.is_writable encoder;
  Pbrt.Encoder.key (3, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Operations_types.is_configurable encoder;
  Pbrt.Encoder.key (4, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Operations_types.is_enumerable encoder;
  Pbrt.Encoder.key (5, Pbrt.Varint) encoder; 
  encode_property_type v.Operations_types.type_ encoder;
  ()

let rec encode_store_computed_property_with_binop (v:Operations_types.store_computed_property_with_binop) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Varint) encoder; 
  encode_binary_operator v.Operations_types.op encoder;
  ()

let rec encode_configure_computed_property (v:Operations_types.configure_computed_property) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Operations_types.is_writable encoder;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Operations_types.is_configurable encoder;
  Pbrt.Encoder.key (3, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Operations_types.is_enumerable encoder;
  Pbrt.Encoder.key (4, Pbrt.Varint) encoder; 
  encode_property_type v.Operations_types.type_ encoder;
  ()

let rec encode_parameters (v:Operations_types.parameters) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Operations_types.count encoder;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Operations_types.has_rest encoder;
  ()

let rec encode_begin_plain_function (v:Operations_types.begin_plain_function) encoder = 
  begin match v.Operations_types.parameters with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_parameters x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Operations_types.is_strict encoder;
  ()

let rec encode_begin_arrow_function (v:Operations_types.begin_arrow_function) encoder = 
  begin match v.Operations_types.parameters with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_parameters x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Operations_types.is_strict encoder;
  ()

let rec encode_begin_generator_function (v:Operations_types.begin_generator_function) encoder = 
  begin match v.Operations_types.parameters with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_parameters x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Operations_types.is_strict encoder;
  ()

let rec encode_begin_async_function (v:Operations_types.begin_async_function) encoder = 
  begin match v.Operations_types.parameters with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_parameters x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Operations_types.is_strict encoder;
  ()

let rec encode_begin_async_arrow_function (v:Operations_types.begin_async_arrow_function) encoder = 
  begin match v.Operations_types.parameters with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_parameters x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Operations_types.is_strict encoder;
  ()

let rec encode_begin_async_generator_function (v:Operations_types.begin_async_generator_function) encoder = 
  begin match v.Operations_types.parameters with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_parameters x) encoder;
  | None -> ();
  end;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Operations_types.is_strict encoder;
  ()

let rec encode_begin_constructor (v:Operations_types.begin_constructor) encoder = 
  begin match v.Operations_types.parameters with
  | Some x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_parameters x) encoder;
  | None -> ();
  end;
  ()

let rec encode_call_function_with_spread (v:Operations_types.call_function_with_spread) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.nested (fun encoder ->
    List.iter (fun x -> 
      Pbrt.Encoder.bool x encoder;
    ) v.Operations_types.spreads;
  ) encoder;
  ()

let rec encode_construct_with_spread (v:Operations_types.construct_with_spread) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.nested (fun encoder ->
    List.iter (fun x -> 
      Pbrt.Encoder.bool x encoder;
    ) v.Operations_types.spreads;
  ) encoder;
  ()

let rec encode_call_method (v:Operations_types.call_method) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Operations_types.method_name encoder;
  ()

let rec encode_call_method_with_spread (v:Operations_types.call_method_with_spread) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Operations_types.method_name encoder;
  Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.nested (fun encoder ->
    List.iter (fun x -> 
      Pbrt.Encoder.bool x encoder;
    ) v.Operations_types.spreads;
  ) encoder;
  ()

let rec encode_call_computed_method_with_spread (v:Operations_types.call_computed_method_with_spread) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.nested (fun encoder ->
    List.iter (fun x -> 
      Pbrt.Encoder.bool x encoder;
    ) v.Operations_types.spreads;
  ) encoder;
  ()

let rec encode_unary_operator (v:Operations_types.unary_operator) encoder =
  match v with
  | Operations_types.Pre_inc -> Pbrt.Encoder.int_as_varint (0) encoder
  | Operations_types.Pre_dec -> Pbrt.Encoder.int_as_varint 1 encoder
  | Operations_types.Post_inc -> Pbrt.Encoder.int_as_varint 2 encoder
  | Operations_types.Post_dec -> Pbrt.Encoder.int_as_varint 3 encoder
  | Operations_types.Logical_not -> Pbrt.Encoder.int_as_varint 4 encoder
  | Operations_types.Bitwise_not -> Pbrt.Encoder.int_as_varint 5 encoder
  | Operations_types.Plus -> Pbrt.Encoder.int_as_varint 6 encoder
  | Operations_types.Minus -> Pbrt.Encoder.int_as_varint 7 encoder

let rec encode_unary_operation (v:Operations_types.unary_operation) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Varint) encoder; 
  encode_unary_operator v.Operations_types.op encoder;
  ()

let rec encode_binary_operation (v:Operations_types.binary_operation) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Varint) encoder; 
  encode_binary_operator v.Operations_types.op encoder;
  ()

let rec encode_reassign_with_binop (v:Operations_types.reassign_with_binop) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Varint) encoder; 
  encode_binary_operator v.Operations_types.op encoder;
  ()

let rec encode_destruct_array (v:Operations_types.destruct_array) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.nested (fun encoder ->
    List.iter (fun x -> 
      Pbrt.Encoder.int32_as_varint x encoder;
    ) v.Operations_types.indices;
  ) encoder;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Operations_types.has_rest_element encoder;
  ()

let rec encode_destruct_array_and_reassign (v:Operations_types.destruct_array_and_reassign) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.nested (fun encoder ->
    List.iter (fun x -> 
      Pbrt.Encoder.int32_as_varint x encoder;
    ) v.Operations_types.indices;
  ) encoder;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Operations_types.has_rest_element encoder;
  ()

let rec encode_destruct_object (v:Operations_types.destruct_object) encoder = 
  List.iter (fun x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.string x encoder;
  ) v.Operations_types.properties;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Operations_types.has_rest_element encoder;
  ()

let rec encode_destruct_object_and_reassign (v:Operations_types.destruct_object_and_reassign) encoder = 
  List.iter (fun x -> 
    Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.string x encoder;
  ) v.Operations_types.properties;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Operations_types.has_rest_element encoder;
  ()

let rec encode_comparator (v:Operations_types.comparator) encoder =
  match v with
  | Operations_types.Equal -> Pbrt.Encoder.int_as_varint (0) encoder
  | Operations_types.Strict_equal -> Pbrt.Encoder.int_as_varint 1 encoder
  | Operations_types.Not_equal -> Pbrt.Encoder.int_as_varint 2 encoder
  | Operations_types.Strict_not_equal -> Pbrt.Encoder.int_as_varint 3 encoder
  | Operations_types.Less_than -> Pbrt.Encoder.int_as_varint 4 encoder
  | Operations_types.Less_than_or_equal -> Pbrt.Encoder.int_as_varint 5 encoder
  | Operations_types.Greater_than -> Pbrt.Encoder.int_as_varint 6 encoder
  | Operations_types.Greater_than_or_equal -> Pbrt.Encoder.int_as_varint 7 encoder

let rec encode_compare (v:Operations_types.compare) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Varint) encoder; 
  encode_comparator v.Operations_types.op encoder;
  ()

let rec encode_eval (v:Operations_types.eval) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Operations_types.code encoder;
  ()

let rec encode_begin_class (v:Operations_types.begin_class) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Operations_types.has_superclass encoder;
  begin match v.Operations_types.constructor_parameters with
  | Some x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_parameters x) encoder;
  | None -> ();
  end;
  List.iter (fun x -> 
    Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.string x encoder;
  ) v.Operations_types.instance_properties;
  List.iter (fun x -> 
    Pbrt.Encoder.key (4, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.string x encoder;
  ) v.Operations_types.instance_method_names;
  List.iter (fun x -> 
    Pbrt.Encoder.key (5, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_parameters x) encoder;
  ) v.Operations_types.instance_method_parameters;
  ()

let rec encode_begin_method (v:Operations_types.begin_method) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int32_as_varint v.Operations_types.num_parameters encoder;
  ()

let rec encode_call_super_constructor (v:Operations_types.call_super_constructor) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.nested (fun encoder ->
    List.iter (fun x -> 
      Pbrt.Encoder.bool x encoder;
    ) v.Operations_types.spreads;
  ) encoder;
  ()

let rec encode_call_super_method (v:Operations_types.call_super_method) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Operations_types.method_name encoder;
  ()

let rec encode_load_super_property (v:Operations_types.load_super_property) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Operations_types.property_name encoder;
  ()

let rec encode_store_super_property (v:Operations_types.store_super_property) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Operations_types.property_name encoder;
  ()

let rec encode_store_super_property_with_binop (v:Operations_types.store_super_property_with_binop) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Operations_types.property_name encoder;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  encode_binary_operator v.Operations_types.op encoder;
  ()

let rec encode_explore (v:Operations_types.explore) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Operations_types.id encoder;
  ()

let rec encode_probe (v:Operations_types.probe) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Operations_types.id encoder;
  ()

let rec encode_load_from_scope (v:Operations_types.load_from_scope) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Operations_types.id encoder;
  ()

let rec encode_store_to_scope (v:Operations_types.store_to_scope) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.string v.Operations_types.id encoder;
  ()

let rec encode_begin_if (v:Operations_types.begin_if) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Operations_types.inverted encoder;
  ()

let rec encode_end_switch_case (v:Operations_types.end_switch_case) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Operations_types.falls_through encoder;
  ()

let rec encode_begin_while (v:Operations_types.begin_while) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Varint) encoder; 
  encode_comparator v.Operations_types.comparator encoder;
  ()

let rec encode_begin_do_while (v:Operations_types.begin_do_while) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Varint) encoder; 
  encode_comparator v.Operations_types.comparator encoder;
  ()

let rec encode_begin_for (v:Operations_types.begin_for) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Varint) encoder; 
  encode_comparator v.Operations_types.comparator encoder;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  encode_binary_operator v.Operations_types.op encoder;
  ()

let rec encode_begin_for_of_with_destruct (v:Operations_types.begin_for_of_with_destruct) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.nested (fun encoder ->
    List.iter (fun x -> 
      Pbrt.Encoder.int32_as_varint x encoder;
    ) v.Operations_types.indices;
  ) encoder;
  Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
  Pbrt.Encoder.bool v.Operations_types.has_rest_element encoder;
  ()

let rec encode_begin_repeat (v:Operations_types.begin_repeat) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Varint) encoder; 
  Pbrt.Encoder.int64_as_varint v.Operations_types.iterations encoder;
  ()
