; Variables
(variable_declaration
  .
  (scope) @keyword)
[
(single_var_declaration)
(scalar_variable)
(array_variable)
(hash_variable)
(hash_variable)
] @variable


[
(package_name)
(special_variable)
(special_literal)
(super)
] @constant

(
  [
  (package_name)
  (super)
  ]
  .
  ("::" @constant)
)

(comments) @comment
(pod_statement) @comment

[
(use_no_statement)
(use_no_feature_statement)
(use_no_if_statement)
(use_no_version)
(use_constant_statement)
(use_parent_statement)
] @include

(use_constant_statement
  constant: (identifier) @constant)

[
"require"
] @include

(method_invocation
  .
  (identifier) @variable)

(method_invocation
  (arrow_operator)
  .
  (identifier) @function)
(method_invocation
  function_name: (identifier) @function)
(named_block_statement
  function_name: (identifier) @function)

(call_expression
  function_name: (identifier) @function)
(function_definition
  name: (identifier) @function)
[
(function)
(map)
(grep)
(bless)
] @function

[
"return"
"sub"
"package"
"BEGIN"
"END"
] @keyword.function

[
"("
")"
"["
"]"
"{"
"}"
] @punctuation.bracket
(standard_input_to_variable) @punctuation.bracket

[
"=~"
"or"
"="
"=="
"+"
"-"
"."
"//"
"||"
(arrow_operator)
(hash_arrow_operator)
(array_dereference)
(hash_dereference)
(to_reference)
(type_glob)
(hash_access_variable)
(ternary_expression)
(ternary_expression_in_hash)
] @operator

[
(regex_option)
(regex_option_for_substitution)
(regex_option_for_transliteration)
] @parameter

(type_glob
  (identifier) @variable)
(
  (scalar_variable)
  .
  ("->" @operator))

[
(word_list_qw)
(command_qx_quoted)
(string_single_quoted)
(string_double_quoted)
(string_qq_quoted)
(bareword)
(regex_pattern_qr) 
(patter_matcher_m)
(substitution_pattern_s)
(transliteration_tr_or_y)
] @string

(escape_sequence) @string.escape

[
","
(semi_colon)
(start_delimiter)
(end_delimiter)
(ellipsis_statement)
] @punctuation.delimiter

[
(integer)
(floating_point)
(scientific_notation)
(hexadecimal)
] @number

[
(if_statement)
(unless_statement)
(if_simple_statement)
(unless_simple_statement)
] @conditional

(foreach_statement) @repeat
(foreach_statement
  .
  (scope) @keyword)

(function_attribute) @field

(function_signature) @type
