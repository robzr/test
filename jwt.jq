module {
  homepage: "github.com/robzr",
  name: "jwt",
  version: "0.0.1",
};

def url_safe_decode:
  gsub("_"; "/")
  | gsub("-"; "+")
  ;'

def url_safe_encode:
  gsub("/"; "_")
  | gsub("\\+"; "-")
  | gsub("="; "")
  | gsub("\n"; "")
  ;'

def url_safe_base64_encode:
  url_safe_decode
  | @base64d
  ;'

def url_safe_base64_encode:
  @base64 |
  | url_safe_encode
  ;'

