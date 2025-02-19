package clay;


//
@:include("clay.h")
@:structAccess
@:unreflective
@:native("Clay_String")
@:lincCppiaDef('HxClay_String', 'struct')
extern class Native_Clay_String {
    public function new();
    public var length:Int;
    public var chars:cpp.ConstCharStar;
}
#if (scriptable || cppia)
    @:build(linc.LincCppia.wrapStructExtern('Native_Clay_String'))
    class HxClay_String {}
#else
    typedef HxClay_String = Native_Clay_String;
#end

//
@:include("clay.h")
@:structAccess
@:unreflective
@:native("Clay_ErrorData")
@:lincCppiaDef('HxClay_ErrorData', 'struct')
extern class Native_Clay_ErrorData {
    public function new();
    // public var errorType:Int;
    public var errorText:Native_Clay_String;
}
#if (scriptable || cppia)
    @:build(linc.LincCppia.wrapStructExtern('Native_Clay_ErrorData'))
    class HxClay_ErrorData {}
#else
    typedef HxClay_ErrorData = Native_Clay_ErrorData;
#end

//
@:include("clay.h")
@:structAccess
@:unreflective
@:native("Clay_ErrorHandler")
@:lincCppiaDef('HxClay_ErrorHandler', 'struct')
extern class Native_Clay_ErrorHandler {
    public function new();
    // public var errorHandlerFunction:cpp.Star<cpp.Void>;
    // public var userData:cpp.Star<cpp.Void>;
}
#if (scriptable || cppia)
    @:build(linc.LincCppia.wrapStructExtern('Native_Clay_ErrorHandler'))
    class HxClay_ErrorHandler {}
#else
    typedef HxClay_ErrorHandler = Native_Clay_ErrorHandler;
#end

//
@:include("clay.h")
@:structAccess
@:unreflective
@:native("Clay_Arena")
@:lincCppiaDef('HxClay_Arena', 'struct')
extern class Native_Clay_Arena {
    public function new();
    public var capacity:Int;
}
#if (scriptable || cppia)
    @:build(linc.LincCppia.wrapStructExtern('Native_Clay_Arena'))
    class HxClay_Arena {}
#else
    typedef HxClay_Arena = Native_Clay_Arena;
#end


//
@:include("clay.h")
@:unreflective
@:native("Clay_Context")
// @:lincCppiaDef('HxClay_Context', 'struct')
extern class Native_Clay_Context {
    // public function new();
}
#if (scriptable || cppia)
    // typedef HxClay_ContextPointer = cpp.Pointer<Native_Clay_Context>;
    typedef HxClay_ContextPtr = cpp.Pointer<Native_Clay_Context>;
    // @:build(linc.LincCppia.wrapStructExtern('Native_Clay_Context'))
    // class HxClay_Context {}
#else
    typedef HxClay_ContextPointer = cpp.Pointer<Native_Clay_Context>;
    typedef HxClay_ContextPtr = cpp.Star<Native_Clay_Context>;
    // typedef HxClay_Context = Native_Clay_Context;
#end


//
@:include("clay.h")
@:structAccess
@:unreflective
@:native("Clay_Dimensions")
@:lincCppiaDef('HxClay_Dimensions', 'struct')
extern class Native_Clay_Dimensions {
    public function new();
    public var width:cpp.Float32;
    public var height:cpp.Float32;

    inline public static function create(_w:cpp.Float32, _h:cpp.Float32):Native_Clay_Dimensions
        return untyped __cpp__('{ {0}, {1} }', _w, _h);
}
#if (scriptable || cppia)
    @:build(linc.LincCppia.wrapStructExtern('Native_Clay_Dimensions'))
    class HxClay_Dimensions {}
#else
    typedef HxClay_Dimensions = Native_Clay_Dimensions;
#end


//
@:keep
@:include('linc_clay.h')
#if !display
@:build(linc.Linc.touch())
@:build(linc.Linc.xml('clay'))
#end
extern class Native_Clay {

    @:native('::linc::clay::createArena')
    extern public static function createArena():Native_Clay_Arena;

    @:native('::linc::clay::destroyArena')
    extern public static function destroyArena(_arena:Native_Clay_Arena):Void;

    @:native("::Clay_Initialize")
    extern public static function initialize(_arena:Native_Clay_Arena, _dimensions:Native_Clay_Dimensions, _errorHandler:Native_Clay_ErrorHandler):cpp.Star<Native_Clay_Context>;

    inline public static function createErrorHandler():Native_Clay_ErrorHandler {
        var eh = new Native_Clay_ErrorHandler();
        var func = cpp.Callable.fromStaticFunction(HxClayErrorHandler.error);
        untyped __cpp__('{0}.errorHandlerFunction = (void (__cdecl *)(Clay_ErrorData))(void*){1}', eh, func);
        return eh;
    }
}
#if (scriptable || cppia)
    @:build(linc.LincCppia.wrapMainExtern('Native_Clay'))
    class HxClay {}
#else
    typedef HxClay = Native_Clay;
#end

@:keep
class HxClayErrorHandler {
    dynamic public static function print(_msg:Dynamic, ?pos:haxe.PosInfos) {
        trace(_msg);
    } 
    public static function error(_error:Native_Clay_ErrorData):Void {
        print(Std.string(_error.errorText.chars));
    }
}