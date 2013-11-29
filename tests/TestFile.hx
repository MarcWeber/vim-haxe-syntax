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
  }
}
