grammar CSharp;
import CSharp;

compilation_unit
    : extern_alias_directive* using_directive* global_attributes? namespace_member_declaration*
    ;
namespace_declaration
    : 'namespace' qualified_identifier namespace_body ';'?
    ;

qualified_identifier
    : identifier ('.' identifier)*
    ;

namespace_body
    : '{' extern_alias_directive* using_directive* namespace_member_declaration* '}'
    ;
extern_alias_directive
    : 'extern' 'alias' identifier ';'
    ;
using_directive
    : using_alias_directive
    | using_namespace_directive
    | using_static_directive
    ;
using_alias_directive
    : 'using' identifier '=' namespace_or_type_name ';'
    ;
using_namespace_directive
    : 'using' namespace_name ';'
    ;
using_static_directive
    : 'using' 'static' type_name ';'
    ;
namespace_member_declaration
    : namespace_declaration
    | type_declaration
    ;
type_declaration
    : class_declaration
    | struct_declaration
    | interface_declaration
    | enum_declaration
    | delegate_declaration
    ;
qualified_alias_member
    : identifier '::' identifier type_argument_list?
    ;