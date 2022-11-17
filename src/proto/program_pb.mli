(** program.proto Binary Encoding *)


(** {2 Protobuf Encoding} *)

val encode_instruction_operation : Program_types.instruction_operation -> Pbrt.Encoder.t -> unit
(** [encode_instruction_operation v encoder] encodes [v] with the given [encoder] *)

val encode_instruction : Program_types.instruction -> Pbrt.Encoder.t -> unit
(** [encode_instruction v encoder] encodes [v] with the given [encoder] *)

val encode_program : Program_types.program -> Pbrt.Encoder.t -> unit
(** [encode_program v encoder] encodes [v] with the given [encoder] *)


(** {2 Protobuf Decoding} *)

val decode_instruction_operation : Pbrt.Decoder.t -> Program_types.instruction_operation
(** [decode_instruction_operation decoder] decodes a [instruction_operation] value from [decoder] *)

val decode_instruction : Pbrt.Decoder.t -> Program_types.instruction
(** [decode_instruction decoder] decodes a [instruction] value from [decoder] *)

val decode_program : Pbrt.Decoder.t -> Program_types.program
(** [decode_program decoder] decodes a [program] value from [decoder] *)
