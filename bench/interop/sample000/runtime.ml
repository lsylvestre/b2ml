module M_r = struct

	let read (f : string) : string =
	  let ic = open_in f in
	  let n = in_channel_length ic in
	  let s = Bytes.create n in
	  really_input ic s 0 n;
	  close_in ic;
	  (Bytes.to_string s)

	let _print_string = print_string

end