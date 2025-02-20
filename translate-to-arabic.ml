open Sys

let translate_file file =
  let command = Printf.sprintf "ollama run vanilj/phi-4 -i %s -o %s.ar" file file in
  ignore (command |> Sys.command)

let () =
  let files = Sys.readdir "." in
  Array.iter (fun file -> if Sys.is_directory file = false then translate_file file) files
