module M_r = struct

    type t = Box of {s : string}

    let _default = Box{s=""}
	let _of_string (s : string) : t = Box{s}

	let _print (Box{s}) = print_string s

end