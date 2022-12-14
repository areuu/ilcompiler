[@@@ocaml.warning "-27-30-39"]

type instruction_mutable = {
  mutable inouts : int32 list;
  mutable operation : Program_types.instruction_operation;
}

let default_instruction_mutable () : instruction_mutable = {
  inouts = [];
  operation = Program_types.Op_idx (0l);
}

type program_mutable = {
  mutable uuid : bytes;
  mutable code : Program_types.instruction list;
  mutable comments : (int32 * string) list;
  mutable parent : Program_types.program option;
}

let default_program_mutable () : program_mutable = {
  uuid = Bytes.create 0;
  code = [];
  comments = [];
  parent = None;
}


let rec decode_instruction_operation d = 
  let rec loop () = 
    let ret:Program_types.instruction_operation = match Pbrt.Decoder.key d with
      | None -> Pbrt.Decoder.malformed_variant "instruction_operation"
      | Some (2, _) -> (Program_types.Op_idx (Pbrt.Decoder.int32_as_varint d) : Program_types.instruction_operation) 
      | Some (5, _) -> (Program_types.Load_integer (Operations_pb.decode_load_integer (Pbrt.Decoder.nested d)) : Program_types.instruction_operation) 
      | Some (76, _) -> (Program_types.Load_big_int (Operations_pb.decode_load_big_int (Pbrt.Decoder.nested d)) : Program_types.instruction_operation) 
      | Some (6, _) -> (Program_types.Load_float (Operations_pb.decode_load_float (Pbrt.Decoder.nested d)) : Program_types.instruction_operation) 
      | Some (7, _) -> (Program_types.Load_string (Operations_pb.decode_load_string (Pbrt.Decoder.nested d)) : Program_types.instruction_operation) 
      | Some (8, _) -> (Program_types.Load_boolean (Operations_pb.decode_load_boolean (Pbrt.Decoder.nested d)) : Program_types.instruction_operation) 
      | Some (9, _) -> begin 
        Pbrt.Decoder.empty_nested d ;
        (Program_types.Load_undefined : Program_types.instruction_operation)
      end
      | Some (10, _) -> begin 
        Pbrt.Decoder.empty_nested d ;
        (Program_types.Load_null : Program_types.instruction_operation)
      end
      | Some (65, _) -> begin 
        Pbrt.Decoder.empty_nested d ;
        (Program_types.Load_this : Program_types.instruction_operation)
      end
      | Some (66, _) -> begin 
        Pbrt.Decoder.empty_nested d ;
        (Program_types.Load_arguments : Program_types.instruction_operation)
      end
      | Some (77, _) -> (Program_types.Load_reg_exp (Operations_pb.decode_load_reg_exp (Pbrt.Decoder.nested d)) : Program_types.instruction_operation) 
      | Some (11, _) -> (Program_types.Create_object (Operations_pb.decode_create_object (Pbrt.Decoder.nested d)) : Program_types.instruction_operation) 
      | Some (12, _) -> begin 
        Pbrt.Decoder.empty_nested d ;
        (Program_types.Create_array : Program_types.instruction_operation)
      end
      | Some (102, _) -> (Program_types.Create_template_string (Operations_pb.decode_create_template_string (Pbrt.Decoder.nested d)) : Program_types.instruction_operation) 
      | Some (13, _) -> (Program_types.Create_object_with_spread (Operations_pb.decode_create_object_with_spread (Pbrt.Decoder.nested d)) : Program_types.instruction_operation) 
      | Some (14, _) -> (Program_types.Create_array_with_spread (Operations_pb.decode_create_array_with_spread (Pbrt.Decoder.nested d)) : Program_types.instruction_operation) 
      | Some (15, _) -> (Program_types.Load_builtin (Operations_pb.decode_load_builtin (Pbrt.Decoder.nested d)) : Program_types.instruction_operation) 
      | Some (16, _) -> (Program_types.Load_property (Operations_pb.decode_load_property (Pbrt.Decoder.nested d)) : Program_types.instruction_operation) 
      | Some (17, _) -> (Program_types.Store_property (Operations_pb.decode_store_property (Pbrt.Decoder.nested d)) : Program_types.instruction_operation) 
      | Some (112, _) -> (Program_types.Store_property_with_binop (Operations_pb.decode_store_property_with_binop (Pbrt.Decoder.nested d)) : Program_types.instruction_operation) 
      | Some (18, _) -> (Program_types.Delete_property (Operations_pb.decode_delete_property (Pbrt.Decoder.nested d)) : Program_types.instruction_operation) 
      | Some (127, _) -> (Program_types.Configure_property (Operations_pb.decode_configure_property (Pbrt.Decoder.nested d)) : Program_types.instruction_operation) 
      | Some (19, _) -> (Program_types.Load_element (Operations_pb.decode_load_element (Pbrt.Decoder.nested d)) : Program_types.instruction_operation) 
      | Some (20, _) -> (Program_types.Store_element (Operations_pb.decode_store_element (Pbrt.Decoder.nested d)) : Program_types.instruction_operation) 
      | Some (113, _) -> (Program_types.Store_element_with_binop (Operations_pb.decode_store_element_with_binop (Pbrt.Decoder.nested d)) : Program_types.instruction_operation) 
      | Some (21, _) -> (Program_types.Delete_element (Operations_pb.decode_delete_element (Pbrt.Decoder.nested d)) : Program_types.instruction_operation) 
      | Some (128, _) -> (Program_types.Configure_element (Operations_pb.decode_configure_element (Pbrt.Decoder.nested d)) : Program_types.instruction_operation) 
      | Some (22, _) -> begin 
        Pbrt.Decoder.empty_nested d ;
        (Program_types.Load_computed_property : Program_types.instruction_operation)
      end
      | Some (23, _) -> begin 
        Pbrt.Decoder.empty_nested d ;
        (Program_types.Store_computed_property : Program_types.instruction_operation)
      end
      | Some (114, _) -> (Program_types.Store_computed_property_with_binop (Operations_pb.decode_store_computed_property_with_binop (Pbrt.Decoder.nested d)) : Program_types.instruction_operation) 
      | Some (24, _) -> begin 
        Pbrt.Decoder.empty_nested d ;
        (Program_types.Delete_computed_property : Program_types.instruction_operation)
      end
      | Some (129, _) -> (Program_types.Configure_computed_property (Operations_pb.decode_configure_computed_property (Pbrt.Decoder.nested d)) : Program_types.instruction_operation) 
      | Some (25, _) -> begin 
        Pbrt.Decoder.empty_nested d ;
        (Program_types.Type_of : Program_types.instruction_operation)
      end
      | Some (26, _) -> begin 
        Pbrt.Decoder.empty_nested d ;
        (Program_types.Test_instance_of : Program_types.instruction_operation)
      end
      | Some (27, _) -> begin 
        Pbrt.Decoder.empty_nested d ;
        (Program_types.Test_in : Program_types.instruction_operation)
      end
      | Some (28, _) -> (Program_types.Begin_plain_function (Operations_pb.decode_begin_plain_function (Pbrt.Decoder.nested d)) : Program_types.instruction_operation) 
      | Some (30, _) -> begin 
        Pbrt.Decoder.empty_nested d ;
        (Program_types.End_plain_function : Program_types.instruction_operation)
      end
      | Some (67, _) -> (Program_types.Begin_arrow_function (Operations_pb.decode_begin_arrow_function (Pbrt.Decoder.nested d)) : Program_types.instruction_operation) 
      | Some (68, _) -> begin 
        Pbrt.Decoder.empty_nested d ;
        (Program_types.End_arrow_function : Program_types.instruction_operation)
      end
      | Some (69, _) -> (Program_types.Begin_generator_function (Operations_pb.decode_begin_generator_function (Pbrt.Decoder.nested d)) : Program_types.instruction_operation) 
      | Some (70, _) -> begin 
        Pbrt.Decoder.empty_nested d ;
        (Program_types.End_generator_function : Program_types.instruction_operation)
      end
      | Some (71, _) -> (Program_types.Begin_async_function (Operations_pb.decode_begin_async_function (Pbrt.Decoder.nested d)) : Program_types.instruction_operation) 
      | Some (72, _) -> begin 
        Pbrt.Decoder.empty_nested d ;
        (Program_types.End_async_function : Program_types.instruction_operation)
      end
      | Some (79, _) -> (Program_types.Begin_async_arrow_function (Operations_pb.decode_begin_async_arrow_function (Pbrt.Decoder.nested d)) : Program_types.instruction_operation) 
      | Some (80, _) -> begin 
        Pbrt.Decoder.empty_nested d ;
        (Program_types.End_async_arrow_function : Program_types.instruction_operation)
      end
      | Some (85, _) -> (Program_types.Begin_async_generator_function (Operations_pb.decode_begin_async_generator_function (Pbrt.Decoder.nested d)) : Program_types.instruction_operation) 
      | Some (86, _) -> begin 
        Pbrt.Decoder.empty_nested d ;
        (Program_types.End_async_generator_function : Program_types.instruction_operation)
      end
      | Some (130, _) -> (Program_types.Begin_constructor (Operations_pb.decode_begin_constructor (Pbrt.Decoder.nested d)) : Program_types.instruction_operation) 
      | Some (131, _) -> begin 
        Pbrt.Decoder.empty_nested d ;
        (Program_types.End_constructor : Program_types.instruction_operation)
      end
      | Some (29, _) -> begin 
        Pbrt.Decoder.empty_nested d ;
        (Program_types.Return : Program_types.instruction_operation)
      end
      | Some (73, _) -> begin 
        Pbrt.Decoder.empty_nested d ;
        (Program_types.Yield : Program_types.instruction_operation)
      end
      | Some (74, _) -> begin 
        Pbrt.Decoder.empty_nested d ;
        (Program_types.Yield_each : Program_types.instruction_operation)
      end
      | Some (75, _) -> begin 
        Pbrt.Decoder.empty_nested d ;
        (Program_types.Await : Program_types.instruction_operation)
      end
      | Some (32, _) -> begin 
        Pbrt.Decoder.empty_nested d ;
        (Program_types.Call_function : Program_types.instruction_operation)
      end
      | Some (120, _) -> (Program_types.Call_function_with_spread (Operations_pb.decode_call_function_with_spread (Pbrt.Decoder.nested d)) : Program_types.instruction_operation) 
      | Some (33, _) -> begin 
        Pbrt.Decoder.empty_nested d ;
        (Program_types.Construct : Program_types.instruction_operation)
      end
      | Some (121, _) -> (Program_types.Construct_with_spread (Operations_pb.decode_construct_with_spread (Pbrt.Decoder.nested d)) : Program_types.instruction_operation) 
      | Some (31, _) -> (Program_types.Call_method (Operations_pb.decode_call_method (Pbrt.Decoder.nested d)) : Program_types.instruction_operation) 
      | Some (122, _) -> (Program_types.Call_method_with_spread (Operations_pb.decode_call_method_with_spread (Pbrt.Decoder.nested d)) : Program_types.instruction_operation) 
      | Some (34, _) -> begin 
        Pbrt.Decoder.empty_nested d ;
        (Program_types.Call_computed_method : Program_types.instruction_operation)
      end
      | Some (123, _) -> (Program_types.Call_computed_method_with_spread (Operations_pb.decode_call_computed_method_with_spread (Pbrt.Decoder.nested d)) : Program_types.instruction_operation) 
      | Some (35, _) -> (Program_types.Unary_operation (Operations_pb.decode_unary_operation (Pbrt.Decoder.nested d)) : Program_types.instruction_operation) 
      | Some (36, _) -> (Program_types.Binary_operation (Operations_pb.decode_binary_operation (Pbrt.Decoder.nested d)) : Program_types.instruction_operation) 
      | Some (95, _) -> (Program_types.Reassign_with_binop (Operations_pb.decode_reassign_with_binop (Pbrt.Decoder.nested d)) : Program_types.instruction_operation) 
      | Some (37, _) -> begin 
        Pbrt.Decoder.empty_nested d ;
        (Program_types.Dup : Program_types.instruction_operation)
      end
      | Some (38, _) -> begin 
        Pbrt.Decoder.empty_nested d ;
        (Program_types.Reassign : Program_types.instruction_operation)
      end
      | Some (116, _) -> (Program_types.Destruct_array (Operations_pb.decode_destruct_array (Pbrt.Decoder.nested d)) : Program_types.instruction_operation) 
      | Some (117, _) -> (Program_types.Destruct_array_and_reassign (Operations_pb.decode_destruct_array_and_reassign (Pbrt.Decoder.nested d)) : Program_types.instruction_operation) 
      | Some (118, _) -> (Program_types.Destruct_object (Operations_pb.decode_destruct_object (Pbrt.Decoder.nested d)) : Program_types.instruction_operation) 
      | Some (119, _) -> (Program_types.Destruct_object_and_reassign (Operations_pb.decode_destruct_object_and_reassign (Pbrt.Decoder.nested d)) : Program_types.instruction_operation) 
      | Some (39, _) -> (Program_types.Compare (Operations_pb.decode_compare (Pbrt.Decoder.nested d)) : Program_types.instruction_operation) 
      | Some (96, _) -> begin 
        Pbrt.Decoder.empty_nested d ;
        (Program_types.Conditional_operation : Program_types.instruction_operation)
      end
      | Some (40, _) -> (Program_types.Eval (Operations_pb.decode_eval (Pbrt.Decoder.nested d)) : Program_types.instruction_operation) 
      | Some (87, _) -> (Program_types.Begin_class (Operations_pb.decode_begin_class (Pbrt.Decoder.nested d)) : Program_types.instruction_operation) 
      | Some (88, _) -> (Program_types.Begin_method (Operations_pb.decode_begin_method (Pbrt.Decoder.nested d)) : Program_types.instruction_operation) 
      | Some (89, _) -> begin 
        Pbrt.Decoder.empty_nested d ;
        (Program_types.End_class : Program_types.instruction_operation)
      end
      | Some (90, _) -> (Program_types.Call_super_constructor (Operations_pb.decode_call_super_constructor (Pbrt.Decoder.nested d)) : Program_types.instruction_operation) 
      | Some (91, _) -> (Program_types.Call_super_method (Operations_pb.decode_call_super_method (Pbrt.Decoder.nested d)) : Program_types.instruction_operation) 
      | Some (92, _) -> (Program_types.Load_super_property (Operations_pb.decode_load_super_property (Pbrt.Decoder.nested d)) : Program_types.instruction_operation) 
      | Some (93, _) -> (Program_types.Store_super_property (Operations_pb.decode_store_super_property (Pbrt.Decoder.nested d)) : Program_types.instruction_operation) 
      | Some (115, _) -> (Program_types.Store_super_property_with_binop (Operations_pb.decode_store_super_property_with_binop (Pbrt.Decoder.nested d)) : Program_types.instruction_operation) 
      | Some (41, _) -> begin 
        Pbrt.Decoder.empty_nested d ;
        (Program_types.Begin_with : Program_types.instruction_operation)
      end
      | Some (42, _) -> begin 
        Pbrt.Decoder.empty_nested d ;
        (Program_types.End_with : Program_types.instruction_operation)
      end
      | Some (43, _) -> (Program_types.Load_from_scope (Operations_pb.decode_load_from_scope (Pbrt.Decoder.nested d)) : Program_types.instruction_operation) 
      | Some (44, _) -> (Program_types.Store_to_scope (Operations_pb.decode_store_to_scope (Pbrt.Decoder.nested d)) : Program_types.instruction_operation) 
      | Some (45, _) -> (Program_types.Begin_if (Operations_pb.decode_begin_if (Pbrt.Decoder.nested d)) : Program_types.instruction_operation) 
      | Some (46, _) -> begin 
        Pbrt.Decoder.empty_nested d ;
        (Program_types.Begin_else : Program_types.instruction_operation)
      end
      | Some (47, _) -> begin 
        Pbrt.Decoder.empty_nested d ;
        (Program_types.End_if : Program_types.instruction_operation)
      end
      | Some (97, _) -> begin 
        Pbrt.Decoder.empty_nested d ;
        (Program_types.Begin_switch : Program_types.instruction_operation)
      end
      | Some (98, _) -> begin 
        Pbrt.Decoder.empty_nested d ;
        (Program_types.Begin_switch_case : Program_types.instruction_operation)
      end
      | Some (126, _) -> begin 
        Pbrt.Decoder.empty_nested d ;
        (Program_types.Begin_switch_default_case : Program_types.instruction_operation)
      end
      | Some (104, _) -> begin 
        Pbrt.Decoder.empty_nested d ;
        (Program_types.Switch_break : Program_types.instruction_operation)
      end
      | Some (99, _) -> begin 
        Pbrt.Decoder.empty_nested d ;
        (Program_types.End_switch : Program_types.instruction_operation)
      end
      | Some (125, _) -> (Program_types.End_switch_case (Operations_pb.decode_end_switch_case (Pbrt.Decoder.nested d)) : Program_types.instruction_operation) 
      | Some (48, _) -> (Program_types.Begin_while (Operations_pb.decode_begin_while (Pbrt.Decoder.nested d)) : Program_types.instruction_operation) 
      | Some (49, _) -> begin 
        Pbrt.Decoder.empty_nested d ;
        (Program_types.End_while : Program_types.instruction_operation)
      end
      | Some (50, _) -> (Program_types.Begin_do_while (Operations_pb.decode_begin_do_while (Pbrt.Decoder.nested d)) : Program_types.instruction_operation) 
      | Some (51, _) -> begin 
        Pbrt.Decoder.empty_nested d ;
        (Program_types.End_do_while : Program_types.instruction_operation)
      end
      | Some (52, _) -> (Program_types.Begin_for (Operations_pb.decode_begin_for (Pbrt.Decoder.nested d)) : Program_types.instruction_operation) 
      | Some (53, _) -> begin 
        Pbrt.Decoder.empty_nested d ;
        (Program_types.End_for : Program_types.instruction_operation)
      end
      | Some (54, _) -> begin 
        Pbrt.Decoder.empty_nested d ;
        (Program_types.Begin_for_in : Program_types.instruction_operation)
      end
      | Some (55, _) -> begin 
        Pbrt.Decoder.empty_nested d ;
        (Program_types.End_for_in : Program_types.instruction_operation)
      end
      | Some (56, _) -> begin 
        Pbrt.Decoder.empty_nested d ;
        (Program_types.Begin_for_of : Program_types.instruction_operation)
      end
      | Some (103, _) -> (Program_types.Begin_for_of_with_destruct (Operations_pb.decode_begin_for_of_with_destruct (Pbrt.Decoder.nested d)) : Program_types.instruction_operation) 
      | Some (57, _) -> begin 
        Pbrt.Decoder.empty_nested d ;
        (Program_types.End_for_of : Program_types.instruction_operation)
      end
      | Some (133, _) -> (Program_types.Begin_repeat (Operations_pb.decode_begin_repeat (Pbrt.Decoder.nested d)) : Program_types.instruction_operation) 
      | Some (134, _) -> begin 
        Pbrt.Decoder.empty_nested d ;
        (Program_types.End_repeat : Program_types.instruction_operation)
      end
      | Some (58, _) -> begin 
        Pbrt.Decoder.empty_nested d ;
        (Program_types.Loop_break : Program_types.instruction_operation)
      end
      | Some (59, _) -> begin 
        Pbrt.Decoder.empty_nested d ;
        (Program_types.Loop_continue : Program_types.instruction_operation)
      end
      | Some (60, _) -> begin 
        Pbrt.Decoder.empty_nested d ;
        (Program_types.Begin_try : Program_types.instruction_operation)
      end
      | Some (61, _) -> begin 
        Pbrt.Decoder.empty_nested d ;
        (Program_types.Begin_catch : Program_types.instruction_operation)
      end
      | Some (94, _) -> begin 
        Pbrt.Decoder.empty_nested d ;
        (Program_types.Begin_finally : Program_types.instruction_operation)
      end
      | Some (62, _) -> begin 
        Pbrt.Decoder.empty_nested d ;
        (Program_types.End_try_catch : Program_types.instruction_operation)
      end
      | Some (63, _) -> begin 
        Pbrt.Decoder.empty_nested d ;
        (Program_types.Throw_exception : Program_types.instruction_operation)
      end
      | Some (81, _) -> begin 
        Pbrt.Decoder.empty_nested d ;
        (Program_types.Begin_code_string : Program_types.instruction_operation)
      end
      | Some (82, _) -> begin 
        Pbrt.Decoder.empty_nested d ;
        (Program_types.End_code_string : Program_types.instruction_operation)
      end
      | Some (83, _) -> begin 
        Pbrt.Decoder.empty_nested d ;
        (Program_types.Begin_block_statement : Program_types.instruction_operation)
      end
      | Some (84, _) -> begin 
        Pbrt.Decoder.empty_nested d ;
        (Program_types.End_block_statement : Program_types.instruction_operation)
      end
      | Some (124, _) -> (Program_types.Explore (Operations_pb.decode_explore (Pbrt.Decoder.nested d)) : Program_types.instruction_operation) 
      | Some (132, _) -> (Program_types.Probe (Operations_pb.decode_probe (Pbrt.Decoder.nested d)) : Program_types.instruction_operation) 
      | Some (64, _) -> begin 
        Pbrt.Decoder.empty_nested d ;
        (Program_types.Nop : Program_types.instruction_operation)
      end
      | Some (n, payload_kind) -> (
        Pbrt.Decoder.skip d payload_kind; 
        loop () 
      )
    in
    ret
  in
  loop ()

and decode_instruction d =
  let v = default_instruction_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.inouts <- List.rev v.inouts;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.inouts <- Pbrt.Decoder.packed_fold (fun l d -> (Pbrt.Decoder.int32_as_varint d)::l) [] d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(1)" pk
    | Some (2, Pbrt.Varint) -> begin
      v.operation <- Program_types.Op_idx (Pbrt.Decoder.int32_as_varint d);
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(2)" pk
    | Some (5, Pbrt.Bytes) -> begin
      v.operation <- Program_types.Load_integer (Operations_pb.decode_load_integer (Pbrt.Decoder.nested d));
    end
    | Some (5, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(5)" pk
    | Some (76, Pbrt.Bytes) -> begin
      v.operation <- Program_types.Load_big_int (Operations_pb.decode_load_big_int (Pbrt.Decoder.nested d));
    end
    | Some (76, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(76)" pk
    | Some (6, Pbrt.Bytes) -> begin
      v.operation <- Program_types.Load_float (Operations_pb.decode_load_float (Pbrt.Decoder.nested d));
    end
    | Some (6, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(6)" pk
    | Some (7, Pbrt.Bytes) -> begin
      v.operation <- Program_types.Load_string (Operations_pb.decode_load_string (Pbrt.Decoder.nested d));
    end
    | Some (7, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(7)" pk
    | Some (8, Pbrt.Bytes) -> begin
      v.operation <- Program_types.Load_boolean (Operations_pb.decode_load_boolean (Pbrt.Decoder.nested d));
    end
    | Some (8, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(8)" pk
    | Some (9, Pbrt.Bytes) -> begin
      Pbrt.Decoder.empty_nested d;
      v.operation <- Program_types.Load_undefined;
    end
    | Some (9, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(9)" pk
    | Some (10, Pbrt.Bytes) -> begin
      Pbrt.Decoder.empty_nested d;
      v.operation <- Program_types.Load_null;
    end
    | Some (10, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(10)" pk
    | Some (65, Pbrt.Bytes) -> begin
      Pbrt.Decoder.empty_nested d;
      v.operation <- Program_types.Load_this;
    end
    | Some (65, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(65)" pk
    | Some (66, Pbrt.Bytes) -> begin
      Pbrt.Decoder.empty_nested d;
      v.operation <- Program_types.Load_arguments;
    end
    | Some (66, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(66)" pk
    | Some (77, Pbrt.Bytes) -> begin
      v.operation <- Program_types.Load_reg_exp (Operations_pb.decode_load_reg_exp (Pbrt.Decoder.nested d));
    end
    | Some (77, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(77)" pk
    | Some (11, Pbrt.Bytes) -> begin
      v.operation <- Program_types.Create_object (Operations_pb.decode_create_object (Pbrt.Decoder.nested d));
    end
    | Some (11, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(11)" pk
    | Some (12, Pbrt.Bytes) -> begin
      Pbrt.Decoder.empty_nested d;
      v.operation <- Program_types.Create_array;
    end
    | Some (12, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(12)" pk
    | Some (102, Pbrt.Bytes) -> begin
      v.operation <- Program_types.Create_template_string (Operations_pb.decode_create_template_string (Pbrt.Decoder.nested d));
    end
    | Some (102, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(102)" pk
    | Some (13, Pbrt.Bytes) -> begin
      v.operation <- Program_types.Create_object_with_spread (Operations_pb.decode_create_object_with_spread (Pbrt.Decoder.nested d));
    end
    | Some (13, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(13)" pk
    | Some (14, Pbrt.Bytes) -> begin
      v.operation <- Program_types.Create_array_with_spread (Operations_pb.decode_create_array_with_spread (Pbrt.Decoder.nested d));
    end
    | Some (14, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(14)" pk
    | Some (15, Pbrt.Bytes) -> begin
      v.operation <- Program_types.Load_builtin (Operations_pb.decode_load_builtin (Pbrt.Decoder.nested d));
    end
    | Some (15, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(15)" pk
    | Some (16, Pbrt.Bytes) -> begin
      v.operation <- Program_types.Load_property (Operations_pb.decode_load_property (Pbrt.Decoder.nested d));
    end
    | Some (16, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(16)" pk
    | Some (17, Pbrt.Bytes) -> begin
      v.operation <- Program_types.Store_property (Operations_pb.decode_store_property (Pbrt.Decoder.nested d));
    end
    | Some (17, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(17)" pk
    | Some (112, Pbrt.Bytes) -> begin
      v.operation <- Program_types.Store_property_with_binop (Operations_pb.decode_store_property_with_binop (Pbrt.Decoder.nested d));
    end
    | Some (112, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(112)" pk
    | Some (18, Pbrt.Bytes) -> begin
      v.operation <- Program_types.Delete_property (Operations_pb.decode_delete_property (Pbrt.Decoder.nested d));
    end
    | Some (18, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(18)" pk
    | Some (127, Pbrt.Bytes) -> begin
      v.operation <- Program_types.Configure_property (Operations_pb.decode_configure_property (Pbrt.Decoder.nested d));
    end
    | Some (127, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(127)" pk
    | Some (19, Pbrt.Bytes) -> begin
      v.operation <- Program_types.Load_element (Operations_pb.decode_load_element (Pbrt.Decoder.nested d));
    end
    | Some (19, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(19)" pk
    | Some (20, Pbrt.Bytes) -> begin
      v.operation <- Program_types.Store_element (Operations_pb.decode_store_element (Pbrt.Decoder.nested d));
    end
    | Some (20, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(20)" pk
    | Some (113, Pbrt.Bytes) -> begin
      v.operation <- Program_types.Store_element_with_binop (Operations_pb.decode_store_element_with_binop (Pbrt.Decoder.nested d));
    end
    | Some (113, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(113)" pk
    | Some (21, Pbrt.Bytes) -> begin
      v.operation <- Program_types.Delete_element (Operations_pb.decode_delete_element (Pbrt.Decoder.nested d));
    end
    | Some (21, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(21)" pk
    | Some (128, Pbrt.Bytes) -> begin
      v.operation <- Program_types.Configure_element (Operations_pb.decode_configure_element (Pbrt.Decoder.nested d));
    end
    | Some (128, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(128)" pk
    | Some (22, Pbrt.Bytes) -> begin
      Pbrt.Decoder.empty_nested d;
      v.operation <- Program_types.Load_computed_property;
    end
    | Some (22, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(22)" pk
    | Some (23, Pbrt.Bytes) -> begin
      Pbrt.Decoder.empty_nested d;
      v.operation <- Program_types.Store_computed_property;
    end
    | Some (23, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(23)" pk
    | Some (114, Pbrt.Bytes) -> begin
      v.operation <- Program_types.Store_computed_property_with_binop (Operations_pb.decode_store_computed_property_with_binop (Pbrt.Decoder.nested d));
    end
    | Some (114, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(114)" pk
    | Some (24, Pbrt.Bytes) -> begin
      Pbrt.Decoder.empty_nested d;
      v.operation <- Program_types.Delete_computed_property;
    end
    | Some (24, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(24)" pk
    | Some (129, Pbrt.Bytes) -> begin
      v.operation <- Program_types.Configure_computed_property (Operations_pb.decode_configure_computed_property (Pbrt.Decoder.nested d));
    end
    | Some (129, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(129)" pk
    | Some (25, Pbrt.Bytes) -> begin
      Pbrt.Decoder.empty_nested d;
      v.operation <- Program_types.Type_of;
    end
    | Some (25, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(25)" pk
    | Some (26, Pbrt.Bytes) -> begin
      Pbrt.Decoder.empty_nested d;
      v.operation <- Program_types.Test_instance_of;
    end
    | Some (26, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(26)" pk
    | Some (27, Pbrt.Bytes) -> begin
      Pbrt.Decoder.empty_nested d;
      v.operation <- Program_types.Test_in;
    end
    | Some (27, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(27)" pk
    | Some (28, Pbrt.Bytes) -> begin
      v.operation <- Program_types.Begin_plain_function (Operations_pb.decode_begin_plain_function (Pbrt.Decoder.nested d));
    end
    | Some (28, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(28)" pk
    | Some (30, Pbrt.Bytes) -> begin
      Pbrt.Decoder.empty_nested d;
      v.operation <- Program_types.End_plain_function;
    end
    | Some (30, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(30)" pk
    | Some (67, Pbrt.Bytes) -> begin
      v.operation <- Program_types.Begin_arrow_function (Operations_pb.decode_begin_arrow_function (Pbrt.Decoder.nested d));
    end
    | Some (67, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(67)" pk
    | Some (68, Pbrt.Bytes) -> begin
      Pbrt.Decoder.empty_nested d;
      v.operation <- Program_types.End_arrow_function;
    end
    | Some (68, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(68)" pk
    | Some (69, Pbrt.Bytes) -> begin
      v.operation <- Program_types.Begin_generator_function (Operations_pb.decode_begin_generator_function (Pbrt.Decoder.nested d));
    end
    | Some (69, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(69)" pk
    | Some (70, Pbrt.Bytes) -> begin
      Pbrt.Decoder.empty_nested d;
      v.operation <- Program_types.End_generator_function;
    end
    | Some (70, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(70)" pk
    | Some (71, Pbrt.Bytes) -> begin
      v.operation <- Program_types.Begin_async_function (Operations_pb.decode_begin_async_function (Pbrt.Decoder.nested d));
    end
    | Some (71, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(71)" pk
    | Some (72, Pbrt.Bytes) -> begin
      Pbrt.Decoder.empty_nested d;
      v.operation <- Program_types.End_async_function;
    end
    | Some (72, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(72)" pk
    | Some (79, Pbrt.Bytes) -> begin
      v.operation <- Program_types.Begin_async_arrow_function (Operations_pb.decode_begin_async_arrow_function (Pbrt.Decoder.nested d));
    end
    | Some (79, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(79)" pk
    | Some (80, Pbrt.Bytes) -> begin
      Pbrt.Decoder.empty_nested d;
      v.operation <- Program_types.End_async_arrow_function;
    end
    | Some (80, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(80)" pk
    | Some (85, Pbrt.Bytes) -> begin
      v.operation <- Program_types.Begin_async_generator_function (Operations_pb.decode_begin_async_generator_function (Pbrt.Decoder.nested d));
    end
    | Some (85, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(85)" pk
    | Some (86, Pbrt.Bytes) -> begin
      Pbrt.Decoder.empty_nested d;
      v.operation <- Program_types.End_async_generator_function;
    end
    | Some (86, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(86)" pk
    | Some (130, Pbrt.Bytes) -> begin
      v.operation <- Program_types.Begin_constructor (Operations_pb.decode_begin_constructor (Pbrt.Decoder.nested d));
    end
    | Some (130, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(130)" pk
    | Some (131, Pbrt.Bytes) -> begin
      Pbrt.Decoder.empty_nested d;
      v.operation <- Program_types.End_constructor;
    end
    | Some (131, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(131)" pk
    | Some (29, Pbrt.Bytes) -> begin
      Pbrt.Decoder.empty_nested d;
      v.operation <- Program_types.Return;
    end
    | Some (29, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(29)" pk
    | Some (73, Pbrt.Bytes) -> begin
      Pbrt.Decoder.empty_nested d;
      v.operation <- Program_types.Yield;
    end
    | Some (73, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(73)" pk
    | Some (74, Pbrt.Bytes) -> begin
      Pbrt.Decoder.empty_nested d;
      v.operation <- Program_types.Yield_each;
    end
    | Some (74, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(74)" pk
    | Some (75, Pbrt.Bytes) -> begin
      Pbrt.Decoder.empty_nested d;
      v.operation <- Program_types.Await;
    end
    | Some (75, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(75)" pk
    | Some (32, Pbrt.Bytes) -> begin
      Pbrt.Decoder.empty_nested d;
      v.operation <- Program_types.Call_function;
    end
    | Some (32, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(32)" pk
    | Some (120, Pbrt.Bytes) -> begin
      v.operation <- Program_types.Call_function_with_spread (Operations_pb.decode_call_function_with_spread (Pbrt.Decoder.nested d));
    end
    | Some (120, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(120)" pk
    | Some (33, Pbrt.Bytes) -> begin
      Pbrt.Decoder.empty_nested d;
      v.operation <- Program_types.Construct;
    end
    | Some (33, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(33)" pk
    | Some (121, Pbrt.Bytes) -> begin
      v.operation <- Program_types.Construct_with_spread (Operations_pb.decode_construct_with_spread (Pbrt.Decoder.nested d));
    end
    | Some (121, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(121)" pk
    | Some (31, Pbrt.Bytes) -> begin
      v.operation <- Program_types.Call_method (Operations_pb.decode_call_method (Pbrt.Decoder.nested d));
    end
    | Some (31, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(31)" pk
    | Some (122, Pbrt.Bytes) -> begin
      v.operation <- Program_types.Call_method_with_spread (Operations_pb.decode_call_method_with_spread (Pbrt.Decoder.nested d));
    end
    | Some (122, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(122)" pk
    | Some (34, Pbrt.Bytes) -> begin
      Pbrt.Decoder.empty_nested d;
      v.operation <- Program_types.Call_computed_method;
    end
    | Some (34, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(34)" pk
    | Some (123, Pbrt.Bytes) -> begin
      v.operation <- Program_types.Call_computed_method_with_spread (Operations_pb.decode_call_computed_method_with_spread (Pbrt.Decoder.nested d));
    end
    | Some (123, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(123)" pk
    | Some (35, Pbrt.Bytes) -> begin
      v.operation <- Program_types.Unary_operation (Operations_pb.decode_unary_operation (Pbrt.Decoder.nested d));
    end
    | Some (35, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(35)" pk
    | Some (36, Pbrt.Bytes) -> begin
      v.operation <- Program_types.Binary_operation (Operations_pb.decode_binary_operation (Pbrt.Decoder.nested d));
    end
    | Some (36, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(36)" pk
    | Some (95, Pbrt.Bytes) -> begin
      v.operation <- Program_types.Reassign_with_binop (Operations_pb.decode_reassign_with_binop (Pbrt.Decoder.nested d));
    end
    | Some (95, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(95)" pk
    | Some (37, Pbrt.Bytes) -> begin
      Pbrt.Decoder.empty_nested d;
      v.operation <- Program_types.Dup;
    end
    | Some (37, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(37)" pk
    | Some (38, Pbrt.Bytes) -> begin
      Pbrt.Decoder.empty_nested d;
      v.operation <- Program_types.Reassign;
    end
    | Some (38, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(38)" pk
    | Some (116, Pbrt.Bytes) -> begin
      v.operation <- Program_types.Destruct_array (Operations_pb.decode_destruct_array (Pbrt.Decoder.nested d));
    end
    | Some (116, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(116)" pk
    | Some (117, Pbrt.Bytes) -> begin
      v.operation <- Program_types.Destruct_array_and_reassign (Operations_pb.decode_destruct_array_and_reassign (Pbrt.Decoder.nested d));
    end
    | Some (117, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(117)" pk
    | Some (118, Pbrt.Bytes) -> begin
      v.operation <- Program_types.Destruct_object (Operations_pb.decode_destruct_object (Pbrt.Decoder.nested d));
    end
    | Some (118, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(118)" pk
    | Some (119, Pbrt.Bytes) -> begin
      v.operation <- Program_types.Destruct_object_and_reassign (Operations_pb.decode_destruct_object_and_reassign (Pbrt.Decoder.nested d));
    end
    | Some (119, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(119)" pk
    | Some (39, Pbrt.Bytes) -> begin
      v.operation <- Program_types.Compare (Operations_pb.decode_compare (Pbrt.Decoder.nested d));
    end
    | Some (39, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(39)" pk
    | Some (96, Pbrt.Bytes) -> begin
      Pbrt.Decoder.empty_nested d;
      v.operation <- Program_types.Conditional_operation;
    end
    | Some (96, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(96)" pk
    | Some (40, Pbrt.Bytes) -> begin
      v.operation <- Program_types.Eval (Operations_pb.decode_eval (Pbrt.Decoder.nested d));
    end
    | Some (40, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(40)" pk
    | Some (87, Pbrt.Bytes) -> begin
      v.operation <- Program_types.Begin_class (Operations_pb.decode_begin_class (Pbrt.Decoder.nested d));
    end
    | Some (87, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(87)" pk
    | Some (88, Pbrt.Bytes) -> begin
      v.operation <- Program_types.Begin_method (Operations_pb.decode_begin_method (Pbrt.Decoder.nested d));
    end
    | Some (88, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(88)" pk
    | Some (89, Pbrt.Bytes) -> begin
      Pbrt.Decoder.empty_nested d;
      v.operation <- Program_types.End_class;
    end
    | Some (89, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(89)" pk
    | Some (90, Pbrt.Bytes) -> begin
      v.operation <- Program_types.Call_super_constructor (Operations_pb.decode_call_super_constructor (Pbrt.Decoder.nested d));
    end
    | Some (90, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(90)" pk
    | Some (91, Pbrt.Bytes) -> begin
      v.operation <- Program_types.Call_super_method (Operations_pb.decode_call_super_method (Pbrt.Decoder.nested d));
    end
    | Some (91, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(91)" pk
    | Some (92, Pbrt.Bytes) -> begin
      v.operation <- Program_types.Load_super_property (Operations_pb.decode_load_super_property (Pbrt.Decoder.nested d));
    end
    | Some (92, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(92)" pk
    | Some (93, Pbrt.Bytes) -> begin
      v.operation <- Program_types.Store_super_property (Operations_pb.decode_store_super_property (Pbrt.Decoder.nested d));
    end
    | Some (93, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(93)" pk
    | Some (115, Pbrt.Bytes) -> begin
      v.operation <- Program_types.Store_super_property_with_binop (Operations_pb.decode_store_super_property_with_binop (Pbrt.Decoder.nested d));
    end
    | Some (115, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(115)" pk
    | Some (41, Pbrt.Bytes) -> begin
      Pbrt.Decoder.empty_nested d;
      v.operation <- Program_types.Begin_with;
    end
    | Some (41, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(41)" pk
    | Some (42, Pbrt.Bytes) -> begin
      Pbrt.Decoder.empty_nested d;
      v.operation <- Program_types.End_with;
    end
    | Some (42, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(42)" pk
    | Some (43, Pbrt.Bytes) -> begin
      v.operation <- Program_types.Load_from_scope (Operations_pb.decode_load_from_scope (Pbrt.Decoder.nested d));
    end
    | Some (43, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(43)" pk
    | Some (44, Pbrt.Bytes) -> begin
      v.operation <- Program_types.Store_to_scope (Operations_pb.decode_store_to_scope (Pbrt.Decoder.nested d));
    end
    | Some (44, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(44)" pk
    | Some (45, Pbrt.Bytes) -> begin
      v.operation <- Program_types.Begin_if (Operations_pb.decode_begin_if (Pbrt.Decoder.nested d));
    end
    | Some (45, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(45)" pk
    | Some (46, Pbrt.Bytes) -> begin
      Pbrt.Decoder.empty_nested d;
      v.operation <- Program_types.Begin_else;
    end
    | Some (46, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(46)" pk
    | Some (47, Pbrt.Bytes) -> begin
      Pbrt.Decoder.empty_nested d;
      v.operation <- Program_types.End_if;
    end
    | Some (47, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(47)" pk
    | Some (97, Pbrt.Bytes) -> begin
      Pbrt.Decoder.empty_nested d;
      v.operation <- Program_types.Begin_switch;
    end
    | Some (97, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(97)" pk
    | Some (98, Pbrt.Bytes) -> begin
      Pbrt.Decoder.empty_nested d;
      v.operation <- Program_types.Begin_switch_case;
    end
    | Some (98, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(98)" pk
    | Some (126, Pbrt.Bytes) -> begin
      Pbrt.Decoder.empty_nested d;
      v.operation <- Program_types.Begin_switch_default_case;
    end
    | Some (126, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(126)" pk
    | Some (104, Pbrt.Bytes) -> begin
      Pbrt.Decoder.empty_nested d;
      v.operation <- Program_types.Switch_break;
    end
    | Some (104, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(104)" pk
    | Some (99, Pbrt.Bytes) -> begin
      Pbrt.Decoder.empty_nested d;
      v.operation <- Program_types.End_switch;
    end
    | Some (99, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(99)" pk
    | Some (125, Pbrt.Bytes) -> begin
      v.operation <- Program_types.End_switch_case (Operations_pb.decode_end_switch_case (Pbrt.Decoder.nested d));
    end
    | Some (125, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(125)" pk
    | Some (48, Pbrt.Bytes) -> begin
      v.operation <- Program_types.Begin_while (Operations_pb.decode_begin_while (Pbrt.Decoder.nested d));
    end
    | Some (48, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(48)" pk
    | Some (49, Pbrt.Bytes) -> begin
      Pbrt.Decoder.empty_nested d;
      v.operation <- Program_types.End_while;
    end
    | Some (49, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(49)" pk
    | Some (50, Pbrt.Bytes) -> begin
      v.operation <- Program_types.Begin_do_while (Operations_pb.decode_begin_do_while (Pbrt.Decoder.nested d));
    end
    | Some (50, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(50)" pk
    | Some (51, Pbrt.Bytes) -> begin
      Pbrt.Decoder.empty_nested d;
      v.operation <- Program_types.End_do_while;
    end
    | Some (51, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(51)" pk
    | Some (52, Pbrt.Bytes) -> begin
      v.operation <- Program_types.Begin_for (Operations_pb.decode_begin_for (Pbrt.Decoder.nested d));
    end
    | Some (52, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(52)" pk
    | Some (53, Pbrt.Bytes) -> begin
      Pbrt.Decoder.empty_nested d;
      v.operation <- Program_types.End_for;
    end
    | Some (53, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(53)" pk
    | Some (54, Pbrt.Bytes) -> begin
      Pbrt.Decoder.empty_nested d;
      v.operation <- Program_types.Begin_for_in;
    end
    | Some (54, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(54)" pk
    | Some (55, Pbrt.Bytes) -> begin
      Pbrt.Decoder.empty_nested d;
      v.operation <- Program_types.End_for_in;
    end
    | Some (55, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(55)" pk
    | Some (56, Pbrt.Bytes) -> begin
      Pbrt.Decoder.empty_nested d;
      v.operation <- Program_types.Begin_for_of;
    end
    | Some (56, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(56)" pk
    | Some (103, Pbrt.Bytes) -> begin
      v.operation <- Program_types.Begin_for_of_with_destruct (Operations_pb.decode_begin_for_of_with_destruct (Pbrt.Decoder.nested d));
    end
    | Some (103, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(103)" pk
    | Some (57, Pbrt.Bytes) -> begin
      Pbrt.Decoder.empty_nested d;
      v.operation <- Program_types.End_for_of;
    end
    | Some (57, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(57)" pk
    | Some (133, Pbrt.Bytes) -> begin
      v.operation <- Program_types.Begin_repeat (Operations_pb.decode_begin_repeat (Pbrt.Decoder.nested d));
    end
    | Some (133, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(133)" pk
    | Some (134, Pbrt.Bytes) -> begin
      Pbrt.Decoder.empty_nested d;
      v.operation <- Program_types.End_repeat;
    end
    | Some (134, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(134)" pk
    | Some (58, Pbrt.Bytes) -> begin
      Pbrt.Decoder.empty_nested d;
      v.operation <- Program_types.Loop_break;
    end
    | Some (58, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(58)" pk
    | Some (59, Pbrt.Bytes) -> begin
      Pbrt.Decoder.empty_nested d;
      v.operation <- Program_types.Loop_continue;
    end
    | Some (59, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(59)" pk
    | Some (60, Pbrt.Bytes) -> begin
      Pbrt.Decoder.empty_nested d;
      v.operation <- Program_types.Begin_try;
    end
    | Some (60, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(60)" pk
    | Some (61, Pbrt.Bytes) -> begin
      Pbrt.Decoder.empty_nested d;
      v.operation <- Program_types.Begin_catch;
    end
    | Some (61, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(61)" pk
    | Some (94, Pbrt.Bytes) -> begin
      Pbrt.Decoder.empty_nested d;
      v.operation <- Program_types.Begin_finally;
    end
    | Some (94, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(94)" pk
    | Some (62, Pbrt.Bytes) -> begin
      Pbrt.Decoder.empty_nested d;
      v.operation <- Program_types.End_try_catch;
    end
    | Some (62, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(62)" pk
    | Some (63, Pbrt.Bytes) -> begin
      Pbrt.Decoder.empty_nested d;
      v.operation <- Program_types.Throw_exception;
    end
    | Some (63, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(63)" pk
    | Some (81, Pbrt.Bytes) -> begin
      Pbrt.Decoder.empty_nested d;
      v.operation <- Program_types.Begin_code_string;
    end
    | Some (81, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(81)" pk
    | Some (82, Pbrt.Bytes) -> begin
      Pbrt.Decoder.empty_nested d;
      v.operation <- Program_types.End_code_string;
    end
    | Some (82, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(82)" pk
    | Some (83, Pbrt.Bytes) -> begin
      Pbrt.Decoder.empty_nested d;
      v.operation <- Program_types.Begin_block_statement;
    end
    | Some (83, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(83)" pk
    | Some (84, Pbrt.Bytes) -> begin
      Pbrt.Decoder.empty_nested d;
      v.operation <- Program_types.End_block_statement;
    end
    | Some (84, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(84)" pk
    | Some (124, Pbrt.Bytes) -> begin
      v.operation <- Program_types.Explore (Operations_pb.decode_explore (Pbrt.Decoder.nested d));
    end
    | Some (124, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(124)" pk
    | Some (132, Pbrt.Bytes) -> begin
      v.operation <- Program_types.Probe (Operations_pb.decode_probe (Pbrt.Decoder.nested d));
    end
    | Some (132, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(132)" pk
    | Some (64, Pbrt.Bytes) -> begin
      Pbrt.Decoder.empty_nested d;
      v.operation <- Program_types.Nop;
    end
    | Some (64, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(instruction), field(64)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Program_types.inouts = v.inouts;
    Program_types.operation = v.operation;
  } : Program_types.instruction)

let rec decode_program d =
  let v = default_program_mutable () in
  let continue__= ref true in
  while !continue__ do
    match Pbrt.Decoder.key d with
    | None -> (
      v.comments <- List.rev v.comments;
      v.code <- List.rev v.code;
    ); continue__ := false
    | Some (1, Pbrt.Bytes) -> begin
      v.uuid <- Pbrt.Decoder.bytes d;
    end
    | Some (1, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(program), field(1)" pk
    | Some (2, Pbrt.Bytes) -> begin
      v.code <- (decode_instruction (Pbrt.Decoder.nested d)) :: v.code;
    end
    | Some (2, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(program), field(2)" pk
    | Some (3, Pbrt.Bytes) -> begin
      let decode_value = (fun d ->
        Pbrt.Decoder.string d
      ) in
      v.comments <- (
        (Pbrt.Decoder.map_entry d ~decode_key:Pbrt.Decoder.int32_as_zigzag ~decode_value)::v.comments;
      );
    end
    | Some (3, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(program), field(3)" pk
    | Some (4, Pbrt.Bytes) -> begin
      v.parent <- Some (decode_program (Pbrt.Decoder.nested d));
    end
    | Some (4, pk) -> 
      Pbrt.Decoder.unexpected_payload "Message(program), field(4)" pk
    | Some (_, payload_kind) -> Pbrt.Decoder.skip d payload_kind
  done;
  ({
    Program_types.uuid = v.uuid;
    Program_types.code = v.code;
    Program_types.comments = v.comments;
    Program_types.parent = v.parent;
  } : Program_types.program)

let rec encode_instruction_operation (v:Program_types.instruction_operation) encoder = 
  begin match v with
  | Program_types.Op_idx x ->
    Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
    Pbrt.Encoder.int32_as_varint x encoder;
  | Program_types.Load_integer x ->
    Pbrt.Encoder.key (5, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_load_integer x) encoder;
  | Program_types.Load_big_int x ->
    Pbrt.Encoder.key (76, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_load_big_int x) encoder;
  | Program_types.Load_float x ->
    Pbrt.Encoder.key (6, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_load_float x) encoder;
  | Program_types.Load_string x ->
    Pbrt.Encoder.key (7, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_load_string x) encoder;
  | Program_types.Load_boolean x ->
    Pbrt.Encoder.key (8, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_load_boolean x) encoder;
  | Program_types.Load_undefined ->
    Pbrt.Encoder.key (9, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Load_null ->
    Pbrt.Encoder.key (10, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Load_this ->
    Pbrt.Encoder.key (65, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Load_arguments ->
    Pbrt.Encoder.key (66, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Load_reg_exp x ->
    Pbrt.Encoder.key (77, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_load_reg_exp x) encoder;
  | Program_types.Create_object x ->
    Pbrt.Encoder.key (11, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_create_object x) encoder;
  | Program_types.Create_array ->
    Pbrt.Encoder.key (12, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Create_template_string x ->
    Pbrt.Encoder.key (102, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_create_template_string x) encoder;
  | Program_types.Create_object_with_spread x ->
    Pbrt.Encoder.key (13, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_create_object_with_spread x) encoder;
  | Program_types.Create_array_with_spread x ->
    Pbrt.Encoder.key (14, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_create_array_with_spread x) encoder;
  | Program_types.Load_builtin x ->
    Pbrt.Encoder.key (15, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_load_builtin x) encoder;
  | Program_types.Load_property x ->
    Pbrt.Encoder.key (16, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_load_property x) encoder;
  | Program_types.Store_property x ->
    Pbrt.Encoder.key (17, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_store_property x) encoder;
  | Program_types.Store_property_with_binop x ->
    Pbrt.Encoder.key (112, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_store_property_with_binop x) encoder;
  | Program_types.Delete_property x ->
    Pbrt.Encoder.key (18, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_delete_property x) encoder;
  | Program_types.Configure_property x ->
    Pbrt.Encoder.key (127, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_configure_property x) encoder;
  | Program_types.Load_element x ->
    Pbrt.Encoder.key (19, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_load_element x) encoder;
  | Program_types.Store_element x ->
    Pbrt.Encoder.key (20, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_store_element x) encoder;
  | Program_types.Store_element_with_binop x ->
    Pbrt.Encoder.key (113, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_store_element_with_binop x) encoder;
  | Program_types.Delete_element x ->
    Pbrt.Encoder.key (21, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_delete_element x) encoder;
  | Program_types.Configure_element x ->
    Pbrt.Encoder.key (128, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_configure_element x) encoder;
  | Program_types.Load_computed_property ->
    Pbrt.Encoder.key (22, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Store_computed_property ->
    Pbrt.Encoder.key (23, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Store_computed_property_with_binop x ->
    Pbrt.Encoder.key (114, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_store_computed_property_with_binop x) encoder;
  | Program_types.Delete_computed_property ->
    Pbrt.Encoder.key (24, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Configure_computed_property x ->
    Pbrt.Encoder.key (129, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_configure_computed_property x) encoder;
  | Program_types.Type_of ->
    Pbrt.Encoder.key (25, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Test_instance_of ->
    Pbrt.Encoder.key (26, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Test_in ->
    Pbrt.Encoder.key (27, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Begin_plain_function x ->
    Pbrt.Encoder.key (28, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_begin_plain_function x) encoder;
  | Program_types.End_plain_function ->
    Pbrt.Encoder.key (30, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Begin_arrow_function x ->
    Pbrt.Encoder.key (67, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_begin_arrow_function x) encoder;
  | Program_types.End_arrow_function ->
    Pbrt.Encoder.key (68, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Begin_generator_function x ->
    Pbrt.Encoder.key (69, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_begin_generator_function x) encoder;
  | Program_types.End_generator_function ->
    Pbrt.Encoder.key (70, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Begin_async_function x ->
    Pbrt.Encoder.key (71, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_begin_async_function x) encoder;
  | Program_types.End_async_function ->
    Pbrt.Encoder.key (72, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Begin_async_arrow_function x ->
    Pbrt.Encoder.key (79, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_begin_async_arrow_function x) encoder;
  | Program_types.End_async_arrow_function ->
    Pbrt.Encoder.key (80, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Begin_async_generator_function x ->
    Pbrt.Encoder.key (85, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_begin_async_generator_function x) encoder;
  | Program_types.End_async_generator_function ->
    Pbrt.Encoder.key (86, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Begin_constructor x ->
    Pbrt.Encoder.key (130, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_begin_constructor x) encoder;
  | Program_types.End_constructor ->
    Pbrt.Encoder.key (131, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Return ->
    Pbrt.Encoder.key (29, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Yield ->
    Pbrt.Encoder.key (73, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Yield_each ->
    Pbrt.Encoder.key (74, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Await ->
    Pbrt.Encoder.key (75, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Call_function ->
    Pbrt.Encoder.key (32, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Call_function_with_spread x ->
    Pbrt.Encoder.key (120, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_call_function_with_spread x) encoder;
  | Program_types.Construct ->
    Pbrt.Encoder.key (33, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Construct_with_spread x ->
    Pbrt.Encoder.key (121, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_construct_with_spread x) encoder;
  | Program_types.Call_method x ->
    Pbrt.Encoder.key (31, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_call_method x) encoder;
  | Program_types.Call_method_with_spread x ->
    Pbrt.Encoder.key (122, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_call_method_with_spread x) encoder;
  | Program_types.Call_computed_method ->
    Pbrt.Encoder.key (34, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Call_computed_method_with_spread x ->
    Pbrt.Encoder.key (123, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_call_computed_method_with_spread x) encoder;
  | Program_types.Unary_operation x ->
    Pbrt.Encoder.key (35, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_unary_operation x) encoder;
  | Program_types.Binary_operation x ->
    Pbrt.Encoder.key (36, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_binary_operation x) encoder;
  | Program_types.Reassign_with_binop x ->
    Pbrt.Encoder.key (95, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_reassign_with_binop x) encoder;
  | Program_types.Dup ->
    Pbrt.Encoder.key (37, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Reassign ->
    Pbrt.Encoder.key (38, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Destruct_array x ->
    Pbrt.Encoder.key (116, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_destruct_array x) encoder;
  | Program_types.Destruct_array_and_reassign x ->
    Pbrt.Encoder.key (117, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_destruct_array_and_reassign x) encoder;
  | Program_types.Destruct_object x ->
    Pbrt.Encoder.key (118, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_destruct_object x) encoder;
  | Program_types.Destruct_object_and_reassign x ->
    Pbrt.Encoder.key (119, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_destruct_object_and_reassign x) encoder;
  | Program_types.Compare x ->
    Pbrt.Encoder.key (39, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_compare x) encoder;
  | Program_types.Conditional_operation ->
    Pbrt.Encoder.key (96, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Eval x ->
    Pbrt.Encoder.key (40, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_eval x) encoder;
  | Program_types.Begin_class x ->
    Pbrt.Encoder.key (87, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_begin_class x) encoder;
  | Program_types.Begin_method x ->
    Pbrt.Encoder.key (88, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_begin_method x) encoder;
  | Program_types.End_class ->
    Pbrt.Encoder.key (89, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Call_super_constructor x ->
    Pbrt.Encoder.key (90, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_call_super_constructor x) encoder;
  | Program_types.Call_super_method x ->
    Pbrt.Encoder.key (91, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_call_super_method x) encoder;
  | Program_types.Load_super_property x ->
    Pbrt.Encoder.key (92, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_load_super_property x) encoder;
  | Program_types.Store_super_property x ->
    Pbrt.Encoder.key (93, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_store_super_property x) encoder;
  | Program_types.Store_super_property_with_binop x ->
    Pbrt.Encoder.key (115, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_store_super_property_with_binop x) encoder;
  | Program_types.Begin_with ->
    Pbrt.Encoder.key (41, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.End_with ->
    Pbrt.Encoder.key (42, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Load_from_scope x ->
    Pbrt.Encoder.key (43, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_load_from_scope x) encoder;
  | Program_types.Store_to_scope x ->
    Pbrt.Encoder.key (44, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_store_to_scope x) encoder;
  | Program_types.Begin_if x ->
    Pbrt.Encoder.key (45, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_begin_if x) encoder;
  | Program_types.Begin_else ->
    Pbrt.Encoder.key (46, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.End_if ->
    Pbrt.Encoder.key (47, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Begin_switch ->
    Pbrt.Encoder.key (97, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Begin_switch_case ->
    Pbrt.Encoder.key (98, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Begin_switch_default_case ->
    Pbrt.Encoder.key (126, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Switch_break ->
    Pbrt.Encoder.key (104, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.End_switch ->
    Pbrt.Encoder.key (99, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.End_switch_case x ->
    Pbrt.Encoder.key (125, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_end_switch_case x) encoder;
  | Program_types.Begin_while x ->
    Pbrt.Encoder.key (48, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_begin_while x) encoder;
  | Program_types.End_while ->
    Pbrt.Encoder.key (49, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Begin_do_while x ->
    Pbrt.Encoder.key (50, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_begin_do_while x) encoder;
  | Program_types.End_do_while ->
    Pbrt.Encoder.key (51, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Begin_for x ->
    Pbrt.Encoder.key (52, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_begin_for x) encoder;
  | Program_types.End_for ->
    Pbrt.Encoder.key (53, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Begin_for_in ->
    Pbrt.Encoder.key (54, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.End_for_in ->
    Pbrt.Encoder.key (55, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Begin_for_of ->
    Pbrt.Encoder.key (56, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Begin_for_of_with_destruct x ->
    Pbrt.Encoder.key (103, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_begin_for_of_with_destruct x) encoder;
  | Program_types.End_for_of ->
    Pbrt.Encoder.key (57, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Begin_repeat x ->
    Pbrt.Encoder.key (133, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_begin_repeat x) encoder;
  | Program_types.End_repeat ->
    Pbrt.Encoder.key (134, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Loop_break ->
    Pbrt.Encoder.key (58, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Loop_continue ->
    Pbrt.Encoder.key (59, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Begin_try ->
    Pbrt.Encoder.key (60, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Begin_catch ->
    Pbrt.Encoder.key (61, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Begin_finally ->
    Pbrt.Encoder.key (94, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.End_try_catch ->
    Pbrt.Encoder.key (62, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Throw_exception ->
    Pbrt.Encoder.key (63, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Begin_code_string ->
    Pbrt.Encoder.key (81, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.End_code_string ->
    Pbrt.Encoder.key (82, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Begin_block_statement ->
    Pbrt.Encoder.key (83, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.End_block_statement ->
    Pbrt.Encoder.key (84, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Explore x ->
    Pbrt.Encoder.key (124, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_explore x) encoder;
  | Program_types.Probe x ->
    Pbrt.Encoder.key (132, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_probe x) encoder;
  | Program_types.Nop ->
    Pbrt.Encoder.key (64, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  end

and encode_instruction (v:Program_types.instruction) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.nested (fun encoder ->
    List.iter (fun x -> 
      Pbrt.Encoder.int32_as_varint x encoder;
    ) v.Program_types.inouts;
  ) encoder;
  begin match v.Program_types.operation with
  | Program_types.Op_idx x ->
    Pbrt.Encoder.key (2, Pbrt.Varint) encoder; 
    Pbrt.Encoder.int32_as_varint x encoder;
  | Program_types.Load_integer x ->
    Pbrt.Encoder.key (5, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_load_integer x) encoder;
  | Program_types.Load_big_int x ->
    Pbrt.Encoder.key (76, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_load_big_int x) encoder;
  | Program_types.Load_float x ->
    Pbrt.Encoder.key (6, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_load_float x) encoder;
  | Program_types.Load_string x ->
    Pbrt.Encoder.key (7, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_load_string x) encoder;
  | Program_types.Load_boolean x ->
    Pbrt.Encoder.key (8, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_load_boolean x) encoder;
  | Program_types.Load_undefined ->
    Pbrt.Encoder.key (9, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Load_null ->
    Pbrt.Encoder.key (10, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Load_this ->
    Pbrt.Encoder.key (65, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Load_arguments ->
    Pbrt.Encoder.key (66, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Load_reg_exp x ->
    Pbrt.Encoder.key (77, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_load_reg_exp x) encoder;
  | Program_types.Create_object x ->
    Pbrt.Encoder.key (11, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_create_object x) encoder;
  | Program_types.Create_array ->
    Pbrt.Encoder.key (12, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Create_template_string x ->
    Pbrt.Encoder.key (102, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_create_template_string x) encoder;
  | Program_types.Create_object_with_spread x ->
    Pbrt.Encoder.key (13, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_create_object_with_spread x) encoder;
  | Program_types.Create_array_with_spread x ->
    Pbrt.Encoder.key (14, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_create_array_with_spread x) encoder;
  | Program_types.Load_builtin x ->
    Pbrt.Encoder.key (15, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_load_builtin x) encoder;
  | Program_types.Load_property x ->
    Pbrt.Encoder.key (16, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_load_property x) encoder;
  | Program_types.Store_property x ->
    Pbrt.Encoder.key (17, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_store_property x) encoder;
  | Program_types.Store_property_with_binop x ->
    Pbrt.Encoder.key (112, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_store_property_with_binop x) encoder;
  | Program_types.Delete_property x ->
    Pbrt.Encoder.key (18, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_delete_property x) encoder;
  | Program_types.Configure_property x ->
    Pbrt.Encoder.key (127, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_configure_property x) encoder;
  | Program_types.Load_element x ->
    Pbrt.Encoder.key (19, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_load_element x) encoder;
  | Program_types.Store_element x ->
    Pbrt.Encoder.key (20, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_store_element x) encoder;
  | Program_types.Store_element_with_binop x ->
    Pbrt.Encoder.key (113, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_store_element_with_binop x) encoder;
  | Program_types.Delete_element x ->
    Pbrt.Encoder.key (21, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_delete_element x) encoder;
  | Program_types.Configure_element x ->
    Pbrt.Encoder.key (128, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_configure_element x) encoder;
  | Program_types.Load_computed_property ->
    Pbrt.Encoder.key (22, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Store_computed_property ->
    Pbrt.Encoder.key (23, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Store_computed_property_with_binop x ->
    Pbrt.Encoder.key (114, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_store_computed_property_with_binop x) encoder;
  | Program_types.Delete_computed_property ->
    Pbrt.Encoder.key (24, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Configure_computed_property x ->
    Pbrt.Encoder.key (129, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_configure_computed_property x) encoder;
  | Program_types.Type_of ->
    Pbrt.Encoder.key (25, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Test_instance_of ->
    Pbrt.Encoder.key (26, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Test_in ->
    Pbrt.Encoder.key (27, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Begin_plain_function x ->
    Pbrt.Encoder.key (28, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_begin_plain_function x) encoder;
  | Program_types.End_plain_function ->
    Pbrt.Encoder.key (30, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Begin_arrow_function x ->
    Pbrt.Encoder.key (67, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_begin_arrow_function x) encoder;
  | Program_types.End_arrow_function ->
    Pbrt.Encoder.key (68, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Begin_generator_function x ->
    Pbrt.Encoder.key (69, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_begin_generator_function x) encoder;
  | Program_types.End_generator_function ->
    Pbrt.Encoder.key (70, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Begin_async_function x ->
    Pbrt.Encoder.key (71, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_begin_async_function x) encoder;
  | Program_types.End_async_function ->
    Pbrt.Encoder.key (72, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Begin_async_arrow_function x ->
    Pbrt.Encoder.key (79, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_begin_async_arrow_function x) encoder;
  | Program_types.End_async_arrow_function ->
    Pbrt.Encoder.key (80, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Begin_async_generator_function x ->
    Pbrt.Encoder.key (85, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_begin_async_generator_function x) encoder;
  | Program_types.End_async_generator_function ->
    Pbrt.Encoder.key (86, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Begin_constructor x ->
    Pbrt.Encoder.key (130, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_begin_constructor x) encoder;
  | Program_types.End_constructor ->
    Pbrt.Encoder.key (131, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Return ->
    Pbrt.Encoder.key (29, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Yield ->
    Pbrt.Encoder.key (73, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Yield_each ->
    Pbrt.Encoder.key (74, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Await ->
    Pbrt.Encoder.key (75, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Call_function ->
    Pbrt.Encoder.key (32, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Call_function_with_spread x ->
    Pbrt.Encoder.key (120, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_call_function_with_spread x) encoder;
  | Program_types.Construct ->
    Pbrt.Encoder.key (33, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Construct_with_spread x ->
    Pbrt.Encoder.key (121, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_construct_with_spread x) encoder;
  | Program_types.Call_method x ->
    Pbrt.Encoder.key (31, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_call_method x) encoder;
  | Program_types.Call_method_with_spread x ->
    Pbrt.Encoder.key (122, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_call_method_with_spread x) encoder;
  | Program_types.Call_computed_method ->
    Pbrt.Encoder.key (34, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Call_computed_method_with_spread x ->
    Pbrt.Encoder.key (123, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_call_computed_method_with_spread x) encoder;
  | Program_types.Unary_operation x ->
    Pbrt.Encoder.key (35, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_unary_operation x) encoder;
  | Program_types.Binary_operation x ->
    Pbrt.Encoder.key (36, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_binary_operation x) encoder;
  | Program_types.Reassign_with_binop x ->
    Pbrt.Encoder.key (95, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_reassign_with_binop x) encoder;
  | Program_types.Dup ->
    Pbrt.Encoder.key (37, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Reassign ->
    Pbrt.Encoder.key (38, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Destruct_array x ->
    Pbrt.Encoder.key (116, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_destruct_array x) encoder;
  | Program_types.Destruct_array_and_reassign x ->
    Pbrt.Encoder.key (117, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_destruct_array_and_reassign x) encoder;
  | Program_types.Destruct_object x ->
    Pbrt.Encoder.key (118, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_destruct_object x) encoder;
  | Program_types.Destruct_object_and_reassign x ->
    Pbrt.Encoder.key (119, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_destruct_object_and_reassign x) encoder;
  | Program_types.Compare x ->
    Pbrt.Encoder.key (39, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_compare x) encoder;
  | Program_types.Conditional_operation ->
    Pbrt.Encoder.key (96, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Eval x ->
    Pbrt.Encoder.key (40, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_eval x) encoder;
  | Program_types.Begin_class x ->
    Pbrt.Encoder.key (87, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_begin_class x) encoder;
  | Program_types.Begin_method x ->
    Pbrt.Encoder.key (88, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_begin_method x) encoder;
  | Program_types.End_class ->
    Pbrt.Encoder.key (89, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Call_super_constructor x ->
    Pbrt.Encoder.key (90, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_call_super_constructor x) encoder;
  | Program_types.Call_super_method x ->
    Pbrt.Encoder.key (91, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_call_super_method x) encoder;
  | Program_types.Load_super_property x ->
    Pbrt.Encoder.key (92, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_load_super_property x) encoder;
  | Program_types.Store_super_property x ->
    Pbrt.Encoder.key (93, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_store_super_property x) encoder;
  | Program_types.Store_super_property_with_binop x ->
    Pbrt.Encoder.key (115, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_store_super_property_with_binop x) encoder;
  | Program_types.Begin_with ->
    Pbrt.Encoder.key (41, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.End_with ->
    Pbrt.Encoder.key (42, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Load_from_scope x ->
    Pbrt.Encoder.key (43, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_load_from_scope x) encoder;
  | Program_types.Store_to_scope x ->
    Pbrt.Encoder.key (44, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_store_to_scope x) encoder;
  | Program_types.Begin_if x ->
    Pbrt.Encoder.key (45, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_begin_if x) encoder;
  | Program_types.Begin_else ->
    Pbrt.Encoder.key (46, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.End_if ->
    Pbrt.Encoder.key (47, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Begin_switch ->
    Pbrt.Encoder.key (97, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Begin_switch_case ->
    Pbrt.Encoder.key (98, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Begin_switch_default_case ->
    Pbrt.Encoder.key (126, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Switch_break ->
    Pbrt.Encoder.key (104, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.End_switch ->
    Pbrt.Encoder.key (99, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.End_switch_case x ->
    Pbrt.Encoder.key (125, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_end_switch_case x) encoder;
  | Program_types.Begin_while x ->
    Pbrt.Encoder.key (48, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_begin_while x) encoder;
  | Program_types.End_while ->
    Pbrt.Encoder.key (49, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Begin_do_while x ->
    Pbrt.Encoder.key (50, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_begin_do_while x) encoder;
  | Program_types.End_do_while ->
    Pbrt.Encoder.key (51, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Begin_for x ->
    Pbrt.Encoder.key (52, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_begin_for x) encoder;
  | Program_types.End_for ->
    Pbrt.Encoder.key (53, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Begin_for_in ->
    Pbrt.Encoder.key (54, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.End_for_in ->
    Pbrt.Encoder.key (55, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Begin_for_of ->
    Pbrt.Encoder.key (56, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Begin_for_of_with_destruct x ->
    Pbrt.Encoder.key (103, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_begin_for_of_with_destruct x) encoder;
  | Program_types.End_for_of ->
    Pbrt.Encoder.key (57, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Begin_repeat x ->
    Pbrt.Encoder.key (133, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_begin_repeat x) encoder;
  | Program_types.End_repeat ->
    Pbrt.Encoder.key (134, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Loop_break ->
    Pbrt.Encoder.key (58, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Loop_continue ->
    Pbrt.Encoder.key (59, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Begin_try ->
    Pbrt.Encoder.key (60, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Begin_catch ->
    Pbrt.Encoder.key (61, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Begin_finally ->
    Pbrt.Encoder.key (94, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.End_try_catch ->
    Pbrt.Encoder.key (62, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Throw_exception ->
    Pbrt.Encoder.key (63, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Begin_code_string ->
    Pbrt.Encoder.key (81, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.End_code_string ->
    Pbrt.Encoder.key (82, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Begin_block_statement ->
    Pbrt.Encoder.key (83, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.End_block_statement ->
    Pbrt.Encoder.key (84, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  | Program_types.Explore x ->
    Pbrt.Encoder.key (124, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_explore x) encoder;
  | Program_types.Probe x ->
    Pbrt.Encoder.key (132, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (Operations_pb.encode_probe x) encoder;
  | Program_types.Nop ->
    Pbrt.Encoder.key (64, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.empty_nested encoder
  end;
  ()

let rec encode_program (v:Program_types.program) encoder = 
  Pbrt.Encoder.key (1, Pbrt.Bytes) encoder; 
  Pbrt.Encoder.bytes v.Program_types.uuid encoder;
  List.iter (fun x -> 
    Pbrt.Encoder.key (2, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_instruction x) encoder;
  ) v.Program_types.code;
  let encode_key = Pbrt.Encoder.int32_as_zigzag in
  let encode_value = (fun x encoder ->
    Pbrt.Encoder.string x encoder;
  ) in
  List.iter (fun (k, v) ->
    Pbrt.Encoder.key (3, Pbrt.Bytes) encoder; 
    let map_entry = (k, Pbrt.Varint), (v, Pbrt.Bytes) in
    Pbrt.Encoder.map_entry ~encode_key ~encode_value map_entry encoder
  ) v.Program_types.comments;
  begin match v.Program_types.parent with
  | Some x -> 
    Pbrt.Encoder.key (4, Pbrt.Bytes) encoder; 
    Pbrt.Encoder.nested (encode_program x) encoder;
  | None -> ();
  end;
  ()
