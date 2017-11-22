grammar CSharp;
import CSharp;

class_declaration
    : attributes? class_modifier* 'partial'? 'class' identifier type_parameter_list?
      class_base? type_parameter_constraints_clause* class_body ';'?
    ;


class_member_declaration
    : constant_declaration
    | field_declaration
    | method_declaration
    | property_declaration
    | event_declaration
    | indexer_declaration
    | operator_declaration
    | constructor_declaration
    | destructor_declaration
    | static_constructor_declaration
    | type_declaration
    ;

constant_declaration
    : attributes? constant_modifier* 'const' type constant_declarators ';'
    ;

field_declaration
    : attributes? field_modifier* type variable_declarators ';'
    ;

method_declaration
    : method_header method_body
    ;

property_declaration
    : attributes? property_modifier* type member_name property_body
    ;



get_accessor_declaration
    : attributes? accessor_modifier? 'get' accessor_body
    ;

set_accessor_declaration
    : attributes? accessor_modifier? 'set' accessor_body
    ;

event_declaration
    : attributes? event_modifier* 'event' type variable_declarators ';'
    | attributes? event_modifier* 'event' type member_name '{' event_accessor_declarations '}'
    ;

add_accessor_declaration
    : attributes? 'add' block
    ;

remove_accessor_declaration
    : attributes? 'remove' block
    ;
indexer_declaration
    : attributes? indexer_modifier* indexer_declarator indexer_body
    ;

operator_declaration
    : attributes? operator_modifier+ operator_declarator operator_body
    ;


constructor_declaration
    : attributes? constructor_modifier* constructor_declarator constructor_body
    ;


static_constructor_declaration
    : attributes? static_constructor_modifiers identifier '(' ')' static_constructor_body
    ;

destructor_declaration
    : attributes? 'extern'? '~' identifier '(' ')' destructor_body
    ;

