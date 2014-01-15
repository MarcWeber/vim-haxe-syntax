package Package.Name;


class H {
    #if macro
    static var expr:Expr;
    #end

    macro static function eval2(e) return e;
}

class TestFile {

  static function main() {
    var s = "string";
    trace( 'foo$ abc' );

    for( m in classType.meta.get()){
      switch( m.name ) {
      case ':table':
        if( m.params.length != 1 ) Context.error("Invalid :table", m.pos);
        switch( m.params[0].expr ) {
          case EConst(c): switch( c ) {
            case CString(s): s; tableName = s;
            case _:
          }
          default: null;
        };

      case ":id":
        if( m.params.length != 1 ) Context.error("Invalid :table", m.pos);
        switch( m.params[0].expr ) {
          case EConst(c): switch( c ) {
            case CIdent(s): idField = s;
            case _:
          }
          default: null;
        };
      default:
      }
    }

  }
}
