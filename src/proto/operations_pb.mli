(** operations.proto Binary Encoding *)


(** {2 Protobuf Encoding} *)

val encode_load_integer : Operations_types.load_integer -> Pbrt.Encoder.t -> unit
(** [encode_load_integer v encoder] encodes [v] with the given [encoder] *)

val encode_load_big_int : Operations_types.load_big_int -> Pbrt.Encoder.t -> unit
(** [encode_load_big_int v encoder] encodes [v] with the given [encoder] *)

val encode_load_float : Operations_types.load_float -> Pbrt.Encoder.t -> unit
(** [encode_load_float v encoder] encodes [v] with the given [encoder] *)

val encode_load_string : Operations_types.load_string -> Pbrt.Encoder.t -> unit
(** [encode_load_string v encoder] encodes [v] with the given [encoder] *)

val encode_load_boolean : Operations_types.load_boolean -> Pbrt.Encoder.t -> unit
(** [encode_load_boolean v encoder] encodes [v] with the given [encoder] *)

val encode_load_reg_exp : Operations_types.load_reg_exp -> Pbrt.Encoder.t -> unit
(** [encode_load_reg_exp v encoder] encodes [v] with the given [encoder] *)

val encode_create_object : Operations_types.create_object -> Pbrt.Encoder.t -> unit
(** [encode_create_object v encoder] encodes [v] with the given [encoder] *)

val encode_create_template_string : Operations_types.create_template_string -> Pbrt.Encoder.t -> unit
(** [encode_create_template_string v encoder] encodes [v] with the given [encoder] *)

val encode_create_object_with_spread : Operations_types.create_object_with_spread -> Pbrt.Encoder.t -> unit
(** [encode_create_object_with_spread v encoder] encodes [v] with the given [encoder] *)

val encode_create_array_with_spread : Operations_types.create_array_with_spread -> Pbrt.Encoder.t -> unit
(** [encode_create_array_with_spread v encoder] encodes [v] with the given [encoder] *)

val encode_load_builtin : Operations_types.load_builtin -> Pbrt.Encoder.t -> unit
(** [encode_load_builtin v encoder] encodes [v] with the given [encoder] *)

val encode_load_property : Operations_types.load_property -> Pbrt.Encoder.t -> unit
(** [encode_load_property v encoder] encodes [v] with the given [encoder] *)

val encode_store_property : Operations_types.store_property -> Pbrt.Encoder.t -> unit
(** [encode_store_property v encoder] encodes [v] with the given [encoder] *)

val encode_binary_operator : Operations_types.binary_operator -> Pbrt.Encoder.t -> unit
(** [encode_binary_operator v encoder] encodes [v] with the given [encoder] *)

val encode_store_property_with_binop : Operations_types.store_property_with_binop -> Pbrt.Encoder.t -> unit
(** [encode_store_property_with_binop v encoder] encodes [v] with the given [encoder] *)

val encode_delete_property : Operations_types.delete_property -> Pbrt.Encoder.t -> unit
(** [encode_delete_property v encoder] encodes [v] with the given [encoder] *)

val encode_property_type : Operations_types.property_type -> Pbrt.Encoder.t -> unit
(** [encode_property_type v encoder] encodes [v] with the given [encoder] *)

val encode_configure_property : Operations_types.configure_property -> Pbrt.Encoder.t -> unit
(** [encode_configure_property v encoder] encodes [v] with the given [encoder] *)

val encode_load_element : Operations_types.load_element -> Pbrt.Encoder.t -> unit
(** [encode_load_element v encoder] encodes [v] with the given [encoder] *)

val encode_store_element : Operations_types.store_element -> Pbrt.Encoder.t -> unit
(** [encode_store_element v encoder] encodes [v] with the given [encoder] *)

val encode_store_element_with_binop : Operations_types.store_element_with_binop -> Pbrt.Encoder.t -> unit
(** [encode_store_element_with_binop v encoder] encodes [v] with the given [encoder] *)

val encode_delete_element : Operations_types.delete_element -> Pbrt.Encoder.t -> unit
(** [encode_delete_element v encoder] encodes [v] with the given [encoder] *)

val encode_configure_element : Operations_types.configure_element -> Pbrt.Encoder.t -> unit
(** [encode_configure_element v encoder] encodes [v] with the given [encoder] *)

val encode_store_computed_property_with_binop : Operations_types.store_computed_property_with_binop -> Pbrt.Encoder.t -> unit
(** [encode_store_computed_property_with_binop v encoder] encodes [v] with the given [encoder] *)

val encode_configure_computed_property : Operations_types.configure_computed_property -> Pbrt.Encoder.t -> unit
(** [encode_configure_computed_property v encoder] encodes [v] with the given [encoder] *)

val encode_parameters : Operations_types.parameters -> Pbrt.Encoder.t -> unit
(** [encode_parameters v encoder] encodes [v] with the given [encoder] *)

val encode_begin_plain_function : Operations_types.begin_plain_function -> Pbrt.Encoder.t -> unit
(** [encode_begin_plain_function v encoder] encodes [v] with the given [encoder] *)

val encode_begin_arrow_function : Operations_types.begin_arrow_function -> Pbrt.Encoder.t -> unit
(** [encode_begin_arrow_function v encoder] encodes [v] with the given [encoder] *)

val encode_begin_generator_function : Operations_types.begin_generator_function -> Pbrt.Encoder.t -> unit
(** [encode_begin_generator_function v encoder] encodes [v] with the given [encoder] *)

val encode_begin_async_function : Operations_types.begin_async_function -> Pbrt.Encoder.t -> unit
(** [encode_begin_async_function v encoder] encodes [v] with the given [encoder] *)

val encode_begin_async_arrow_function : Operations_types.begin_async_arrow_function -> Pbrt.Encoder.t -> unit
(** [encode_begin_async_arrow_function v encoder] encodes [v] with the given [encoder] *)

val encode_begin_async_generator_function : Operations_types.begin_async_generator_function -> Pbrt.Encoder.t -> unit
(** [encode_begin_async_generator_function v encoder] encodes [v] with the given [encoder] *)

val encode_begin_constructor : Operations_types.begin_constructor -> Pbrt.Encoder.t -> unit
(** [encode_begin_constructor v encoder] encodes [v] with the given [encoder] *)

val encode_call_function_with_spread : Operations_types.call_function_with_spread -> Pbrt.Encoder.t -> unit
(** [encode_call_function_with_spread v encoder] encodes [v] with the given [encoder] *)

val encode_construct_with_spread : Operations_types.construct_with_spread -> Pbrt.Encoder.t -> unit
(** [encode_construct_with_spread v encoder] encodes [v] with the given [encoder] *)

val encode_call_method : Operations_types.call_method -> Pbrt.Encoder.t -> unit
(** [encode_call_method v encoder] encodes [v] with the given [encoder] *)

val encode_call_method_with_spread : Operations_types.call_method_with_spread -> Pbrt.Encoder.t -> unit
(** [encode_call_method_with_spread v encoder] encodes [v] with the given [encoder] *)

val encode_call_computed_method_with_spread : Operations_types.call_computed_method_with_spread -> Pbrt.Encoder.t -> unit
(** [encode_call_computed_method_with_spread v encoder] encodes [v] with the given [encoder] *)

val encode_unary_operator : Operations_types.unary_operator -> Pbrt.Encoder.t -> unit
(** [encode_unary_operator v encoder] encodes [v] with the given [encoder] *)

val encode_unary_operation : Operations_types.unary_operation -> Pbrt.Encoder.t -> unit
(** [encode_unary_operation v encoder] encodes [v] with the given [encoder] *)

val encode_binary_operation : Operations_types.binary_operation -> Pbrt.Encoder.t -> unit
(** [encode_binary_operation v encoder] encodes [v] with the given [encoder] *)

val encode_reassign_with_binop : Operations_types.reassign_with_binop -> Pbrt.Encoder.t -> unit
(** [encode_reassign_with_binop v encoder] encodes [v] with the given [encoder] *)

val encode_destruct_array : Operations_types.destruct_array -> Pbrt.Encoder.t -> unit
(** [encode_destruct_array v encoder] encodes [v] with the given [encoder] *)

val encode_destruct_array_and_reassign : Operations_types.destruct_array_and_reassign -> Pbrt.Encoder.t -> unit
(** [encode_destruct_array_and_reassign v encoder] encodes [v] with the given [encoder] *)

val encode_destruct_object : Operations_types.destruct_object -> Pbrt.Encoder.t -> unit
(** [encode_destruct_object v encoder] encodes [v] with the given [encoder] *)

val encode_destruct_object_and_reassign : Operations_types.destruct_object_and_reassign -> Pbrt.Encoder.t -> unit
(** [encode_destruct_object_and_reassign v encoder] encodes [v] with the given [encoder] *)

val encode_comparator : Operations_types.comparator -> Pbrt.Encoder.t -> unit
(** [encode_comparator v encoder] encodes [v] with the given [encoder] *)

val encode_compare : Operations_types.compare -> Pbrt.Encoder.t -> unit
(** [encode_compare v encoder] encodes [v] with the given [encoder] *)

val encode_eval : Operations_types.eval -> Pbrt.Encoder.t -> unit
(** [encode_eval v encoder] encodes [v] with the given [encoder] *)

val encode_begin_class : Operations_types.begin_class -> Pbrt.Encoder.t -> unit
(** [encode_begin_class v encoder] encodes [v] with the given [encoder] *)

val encode_begin_method : Operations_types.begin_method -> Pbrt.Encoder.t -> unit
(** [encode_begin_method v encoder] encodes [v] with the given [encoder] *)

val encode_call_super_constructor : Operations_types.call_super_constructor -> Pbrt.Encoder.t -> unit
(** [encode_call_super_constructor v encoder] encodes [v] with the given [encoder] *)

val encode_call_super_method : Operations_types.call_super_method -> Pbrt.Encoder.t -> unit
(** [encode_call_super_method v encoder] encodes [v] with the given [encoder] *)

val encode_load_super_property : Operations_types.load_super_property -> Pbrt.Encoder.t -> unit
(** [encode_load_super_property v encoder] encodes [v] with the given [encoder] *)

val encode_store_super_property : Operations_types.store_super_property -> Pbrt.Encoder.t -> unit
(** [encode_store_super_property v encoder] encodes [v] with the given [encoder] *)

val encode_store_super_property_with_binop : Operations_types.store_super_property_with_binop -> Pbrt.Encoder.t -> unit
(** [encode_store_super_property_with_binop v encoder] encodes [v] with the given [encoder] *)

val encode_explore : Operations_types.explore -> Pbrt.Encoder.t -> unit
(** [encode_explore v encoder] encodes [v] with the given [encoder] *)

val encode_probe : Operations_types.probe -> Pbrt.Encoder.t -> unit
(** [encode_probe v encoder] encodes [v] with the given [encoder] *)

val encode_load_from_scope : Operations_types.load_from_scope -> Pbrt.Encoder.t -> unit
(** [encode_load_from_scope v encoder] encodes [v] with the given [encoder] *)

val encode_store_to_scope : Operations_types.store_to_scope -> Pbrt.Encoder.t -> unit
(** [encode_store_to_scope v encoder] encodes [v] with the given [encoder] *)

val encode_begin_if : Operations_types.begin_if -> Pbrt.Encoder.t -> unit
(** [encode_begin_if v encoder] encodes [v] with the given [encoder] *)

val encode_end_switch_case : Operations_types.end_switch_case -> Pbrt.Encoder.t -> unit
(** [encode_end_switch_case v encoder] encodes [v] with the given [encoder] *)

val encode_begin_while : Operations_types.begin_while -> Pbrt.Encoder.t -> unit
(** [encode_begin_while v encoder] encodes [v] with the given [encoder] *)

val encode_begin_do_while : Operations_types.begin_do_while -> Pbrt.Encoder.t -> unit
(** [encode_begin_do_while v encoder] encodes [v] with the given [encoder] *)

val encode_begin_for : Operations_types.begin_for -> Pbrt.Encoder.t -> unit
(** [encode_begin_for v encoder] encodes [v] with the given [encoder] *)

val encode_begin_for_of_with_destruct : Operations_types.begin_for_of_with_destruct -> Pbrt.Encoder.t -> unit
(** [encode_begin_for_of_with_destruct v encoder] encodes [v] with the given [encoder] *)

val encode_begin_repeat : Operations_types.begin_repeat -> Pbrt.Encoder.t -> unit
(** [encode_begin_repeat v encoder] encodes [v] with the given [encoder] *)


(** {2 Protobuf Decoding} *)

val decode_load_integer : Pbrt.Decoder.t -> Operations_types.load_integer
(** [decode_load_integer decoder] decodes a [load_integer] value from [decoder] *)

val decode_load_big_int : Pbrt.Decoder.t -> Operations_types.load_big_int
(** [decode_load_big_int decoder] decodes a [load_big_int] value from [decoder] *)

val decode_load_float : Pbrt.Decoder.t -> Operations_types.load_float
(** [decode_load_float decoder] decodes a [load_float] value from [decoder] *)

val decode_load_string : Pbrt.Decoder.t -> Operations_types.load_string
(** [decode_load_string decoder] decodes a [load_string] value from [decoder] *)

val decode_load_boolean : Pbrt.Decoder.t -> Operations_types.load_boolean
(** [decode_load_boolean decoder] decodes a [load_boolean] value from [decoder] *)

val decode_load_reg_exp : Pbrt.Decoder.t -> Operations_types.load_reg_exp
(** [decode_load_reg_exp decoder] decodes a [load_reg_exp] value from [decoder] *)

val decode_create_object : Pbrt.Decoder.t -> Operations_types.create_object
(** [decode_create_object decoder] decodes a [create_object] value from [decoder] *)

val decode_create_template_string : Pbrt.Decoder.t -> Operations_types.create_template_string
(** [decode_create_template_string decoder] decodes a [create_template_string] value from [decoder] *)

val decode_create_object_with_spread : Pbrt.Decoder.t -> Operations_types.create_object_with_spread
(** [decode_create_object_with_spread decoder] decodes a [create_object_with_spread] value from [decoder] *)

val decode_create_array_with_spread : Pbrt.Decoder.t -> Operations_types.create_array_with_spread
(** [decode_create_array_with_spread decoder] decodes a [create_array_with_spread] value from [decoder] *)

val decode_load_builtin : Pbrt.Decoder.t -> Operations_types.load_builtin
(** [decode_load_builtin decoder] decodes a [load_builtin] value from [decoder] *)

val decode_load_property : Pbrt.Decoder.t -> Operations_types.load_property
(** [decode_load_property decoder] decodes a [load_property] value from [decoder] *)

val decode_store_property : Pbrt.Decoder.t -> Operations_types.store_property
(** [decode_store_property decoder] decodes a [store_property] value from [decoder] *)

val decode_binary_operator : Pbrt.Decoder.t -> Operations_types.binary_operator
(** [decode_binary_operator decoder] decodes a [binary_operator] value from [decoder] *)

val decode_store_property_with_binop : Pbrt.Decoder.t -> Operations_types.store_property_with_binop
(** [decode_store_property_with_binop decoder] decodes a [store_property_with_binop] value from [decoder] *)

val decode_delete_property : Pbrt.Decoder.t -> Operations_types.delete_property
(** [decode_delete_property decoder] decodes a [delete_property] value from [decoder] *)

val decode_property_type : Pbrt.Decoder.t -> Operations_types.property_type
(** [decode_property_type decoder] decodes a [property_type] value from [decoder] *)

val decode_configure_property : Pbrt.Decoder.t -> Operations_types.configure_property
(** [decode_configure_property decoder] decodes a [configure_property] value from [decoder] *)

val decode_load_element : Pbrt.Decoder.t -> Operations_types.load_element
(** [decode_load_element decoder] decodes a [load_element] value from [decoder] *)

val decode_store_element : Pbrt.Decoder.t -> Operations_types.store_element
(** [decode_store_element decoder] decodes a [store_element] value from [decoder] *)

val decode_store_element_with_binop : Pbrt.Decoder.t -> Operations_types.store_element_with_binop
(** [decode_store_element_with_binop decoder] decodes a [store_element_with_binop] value from [decoder] *)

val decode_delete_element : Pbrt.Decoder.t -> Operations_types.delete_element
(** [decode_delete_element decoder] decodes a [delete_element] value from [decoder] *)

val decode_configure_element : Pbrt.Decoder.t -> Operations_types.configure_element
(** [decode_configure_element decoder] decodes a [configure_element] value from [decoder] *)

val decode_store_computed_property_with_binop : Pbrt.Decoder.t -> Operations_types.store_computed_property_with_binop
(** [decode_store_computed_property_with_binop decoder] decodes a [store_computed_property_with_binop] value from [decoder] *)

val decode_configure_computed_property : Pbrt.Decoder.t -> Operations_types.configure_computed_property
(** [decode_configure_computed_property decoder] decodes a [configure_computed_property] value from [decoder] *)

val decode_parameters : Pbrt.Decoder.t -> Operations_types.parameters
(** [decode_parameters decoder] decodes a [parameters] value from [decoder] *)

val decode_begin_plain_function : Pbrt.Decoder.t -> Operations_types.begin_plain_function
(** [decode_begin_plain_function decoder] decodes a [begin_plain_function] value from [decoder] *)

val decode_begin_arrow_function : Pbrt.Decoder.t -> Operations_types.begin_arrow_function
(** [decode_begin_arrow_function decoder] decodes a [begin_arrow_function] value from [decoder] *)

val decode_begin_generator_function : Pbrt.Decoder.t -> Operations_types.begin_generator_function
(** [decode_begin_generator_function decoder] decodes a [begin_generator_function] value from [decoder] *)

val decode_begin_async_function : Pbrt.Decoder.t -> Operations_types.begin_async_function
(** [decode_begin_async_function decoder] decodes a [begin_async_function] value from [decoder] *)

val decode_begin_async_arrow_function : Pbrt.Decoder.t -> Operations_types.begin_async_arrow_function
(** [decode_begin_async_arrow_function decoder] decodes a [begin_async_arrow_function] value from [decoder] *)

val decode_begin_async_generator_function : Pbrt.Decoder.t -> Operations_types.begin_async_generator_function
(** [decode_begin_async_generator_function decoder] decodes a [begin_async_generator_function] value from [decoder] *)

val decode_begin_constructor : Pbrt.Decoder.t -> Operations_types.begin_constructor
(** [decode_begin_constructor decoder] decodes a [begin_constructor] value from [decoder] *)

val decode_call_function_with_spread : Pbrt.Decoder.t -> Operations_types.call_function_with_spread
(** [decode_call_function_with_spread decoder] decodes a [call_function_with_spread] value from [decoder] *)

val decode_construct_with_spread : Pbrt.Decoder.t -> Operations_types.construct_with_spread
(** [decode_construct_with_spread decoder] decodes a [construct_with_spread] value from [decoder] *)

val decode_call_method : Pbrt.Decoder.t -> Operations_types.call_method
(** [decode_call_method decoder] decodes a [call_method] value from [decoder] *)

val decode_call_method_with_spread : Pbrt.Decoder.t -> Operations_types.call_method_with_spread
(** [decode_call_method_with_spread decoder] decodes a [call_method_with_spread] value from [decoder] *)

val decode_call_computed_method_with_spread : Pbrt.Decoder.t -> Operations_types.call_computed_method_with_spread
(** [decode_call_computed_method_with_spread decoder] decodes a [call_computed_method_with_spread] value from [decoder] *)

val decode_unary_operator : Pbrt.Decoder.t -> Operations_types.unary_operator
(** [decode_unary_operator decoder] decodes a [unary_operator] value from [decoder] *)

val decode_unary_operation : Pbrt.Decoder.t -> Operations_types.unary_operation
(** [decode_unary_operation decoder] decodes a [unary_operation] value from [decoder] *)

val decode_binary_operation : Pbrt.Decoder.t -> Operations_types.binary_operation
(** [decode_binary_operation decoder] decodes a [binary_operation] value from [decoder] *)

val decode_reassign_with_binop : Pbrt.Decoder.t -> Operations_types.reassign_with_binop
(** [decode_reassign_with_binop decoder] decodes a [reassign_with_binop] value from [decoder] *)

val decode_destruct_array : Pbrt.Decoder.t -> Operations_types.destruct_array
(** [decode_destruct_array decoder] decodes a [destruct_array] value from [decoder] *)

val decode_destruct_array_and_reassign : Pbrt.Decoder.t -> Operations_types.destruct_array_and_reassign
(** [decode_destruct_array_and_reassign decoder] decodes a [destruct_array_and_reassign] value from [decoder] *)

val decode_destruct_object : Pbrt.Decoder.t -> Operations_types.destruct_object
(** [decode_destruct_object decoder] decodes a [destruct_object] value from [decoder] *)

val decode_destruct_object_and_reassign : Pbrt.Decoder.t -> Operations_types.destruct_object_and_reassign
(** [decode_destruct_object_and_reassign decoder] decodes a [destruct_object_and_reassign] value from [decoder] *)

val decode_comparator : Pbrt.Decoder.t -> Operations_types.comparator
(** [decode_comparator decoder] decodes a [comparator] value from [decoder] *)

val decode_compare : Pbrt.Decoder.t -> Operations_types.compare
(** [decode_compare decoder] decodes a [compare] value from [decoder] *)

val decode_eval : Pbrt.Decoder.t -> Operations_types.eval
(** [decode_eval decoder] decodes a [eval] value from [decoder] *)

val decode_begin_class : Pbrt.Decoder.t -> Operations_types.begin_class
(** [decode_begin_class decoder] decodes a [begin_class] value from [decoder] *)

val decode_begin_method : Pbrt.Decoder.t -> Operations_types.begin_method
(** [decode_begin_method decoder] decodes a [begin_method] value from [decoder] *)

val decode_call_super_constructor : Pbrt.Decoder.t -> Operations_types.call_super_constructor
(** [decode_call_super_constructor decoder] decodes a [call_super_constructor] value from [decoder] *)

val decode_call_super_method : Pbrt.Decoder.t -> Operations_types.call_super_method
(** [decode_call_super_method decoder] decodes a [call_super_method] value from [decoder] *)

val decode_load_super_property : Pbrt.Decoder.t -> Operations_types.load_super_property
(** [decode_load_super_property decoder] decodes a [load_super_property] value from [decoder] *)

val decode_store_super_property : Pbrt.Decoder.t -> Operations_types.store_super_property
(** [decode_store_super_property decoder] decodes a [store_super_property] value from [decoder] *)

val decode_store_super_property_with_binop : Pbrt.Decoder.t -> Operations_types.store_super_property_with_binop
(** [decode_store_super_property_with_binop decoder] decodes a [store_super_property_with_binop] value from [decoder] *)

val decode_explore : Pbrt.Decoder.t -> Operations_types.explore
(** [decode_explore decoder] decodes a [explore] value from [decoder] *)

val decode_probe : Pbrt.Decoder.t -> Operations_types.probe
(** [decode_probe decoder] decodes a [probe] value from [decoder] *)

val decode_load_from_scope : Pbrt.Decoder.t -> Operations_types.load_from_scope
(** [decode_load_from_scope decoder] decodes a [load_from_scope] value from [decoder] *)

val decode_store_to_scope : Pbrt.Decoder.t -> Operations_types.store_to_scope
(** [decode_store_to_scope decoder] decodes a [store_to_scope] value from [decoder] *)

val decode_begin_if : Pbrt.Decoder.t -> Operations_types.begin_if
(** [decode_begin_if decoder] decodes a [begin_if] value from [decoder] *)

val decode_end_switch_case : Pbrt.Decoder.t -> Operations_types.end_switch_case
(** [decode_end_switch_case decoder] decodes a [end_switch_case] value from [decoder] *)

val decode_begin_while : Pbrt.Decoder.t -> Operations_types.begin_while
(** [decode_begin_while decoder] decodes a [begin_while] value from [decoder] *)

val decode_begin_do_while : Pbrt.Decoder.t -> Operations_types.begin_do_while
(** [decode_begin_do_while decoder] decodes a [begin_do_while] value from [decoder] *)

val decode_begin_for : Pbrt.Decoder.t -> Operations_types.begin_for
(** [decode_begin_for decoder] decodes a [begin_for] value from [decoder] *)

val decode_begin_for_of_with_destruct : Pbrt.Decoder.t -> Operations_types.begin_for_of_with_destruct
(** [decode_begin_for_of_with_destruct decoder] decodes a [begin_for_of_with_destruct] value from [decoder] *)

val decode_begin_repeat : Pbrt.Decoder.t -> Operations_types.begin_repeat
(** [decode_begin_repeat decoder] decodes a [begin_repeat] value from [decoder] *)
