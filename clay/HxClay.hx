package clay;


//
@:include("clay.h")
@:structAccess
@:unreflective
@:semantics(reference)
@:native("Clay_String")
@:lincCppiaDef('HxClay_String', 'struct')
extern class Native_Clay_String {
    public function new();
    
    inline public static function create():Native_Clay_String return untyped __cpp__('{}');
    public var length:Int;
    public var chars:cpp.ConstCharStar;

    inline public static function fromString(_str:String) {
        var res:Native_Clay_String = new Native_Clay_String();
        res.length = _str.length;
        res.chars = cast untyped __cpp__('{0}.c_str()', _str);
        return res;
    }
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
@:semantics(reference)
@:native("Clay_StringSlice")
@:lincCppiaDef('HxClay_StringSlice', 'struct')
extern class Native_Clay_StringSlice {
    public function new();
    public var length:Int;
    public var chars:cpp.ConstCharStar;
    public var baseChars:cpp.ConstCharStar;
}
#if (scriptable || cppia)
    @:build(linc.LincCppia.wrapStructExtern('Native_Clay_StringSlice'))
    class HxClay_StringSlice {}
#else
    typedef HxClay_StringSlice = Native_Clay_StringSlice;
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
@:semantics(reference)
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
@:structAccess
@:unreflective
@:semantics(reference)
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
@:include("clay.h")
@:structAccess
@:unreflective
@:semantics(reference)
@:native("Clay_Vector2")
@:lincCppiaDef('HxClay_Vector2', 'struct')
extern class Native_Clay_Vector2 {
    public function new();
    public var x:cpp.Float32;
    public var y:cpp.Float32;

    inline public static function create(_x:cpp.Float32, _y:cpp.Float32):Native_Clay_Vector2
        return untyped __cpp__('{ {0}, {1} }', _x, _y);
}
#if (scriptable || cppia)
    @:build(linc.LincCppia.wrapStructExtern('Native_Clay_Vector2'))
    class HxClay_Vector2 {}
#else
    typedef HxClay_Vector2 = Native_Clay_Vector2;
#end

//
@:include("clay.h")
@:structAccess
@:unreflective
@:semantics(reference)
@:native("Clay_Color")
@:lincCppiaDef('HxClay_Color', 'struct')
extern class Native_Clay_Color {
    public function new();
    public var r:cpp.Float32;
    public var g:cpp.Float32;
    public var b:cpp.Float32;
    public var a:cpp.Float32;

    inline public static function create(_r:cpp.Float32, _g:cpp.Float32, _b:cpp.Float32, _a:cpp.Float32):Native_Clay_Color
        return untyped __cpp__('{ {0}, {1}, {2}, {3} }', _r, _g, _b, _a);
}
#if (scriptable || cppia)
    @:build(linc.LincCppia.wrapStructExtern('Native_Clay_Color'))
    class HxClay_Color {}
#else
    typedef HxClay_Color = Native_Clay_Color;
#end

//
@:include("clay.h")
@:structAccess
@:unreflective
@:semantics(reference)
@:native("Clay_BoundingBox")
@:lincCppiaDef('HxClay_BoundingBox', 'struct')
extern class Native_Clay_BoundingBox {
    public function new();
    public var x:cpp.Float32;
    public var y:cpp.Float32;
    public var width:cpp.Float32;
    public var height:cpp.Float32;

    inline public static function create(_x:cpp.Float32, _y:cpp.Float32, _w:cpp.Float32, _h:cpp.Float32):Native_Clay_BoundingBox
        return untyped __cpp__('{ {0}, {1}, {2}, {3} }', _x, _y, _w, _h);
}
#if (scriptable || cppia)
    @:build(linc.LincCppia.wrapStructExtern('Native_Clay_BoundingBox'))
    class HxClay_BoundingBox {}
#else
    typedef HxClay_BoundingBox = Native_Clay_BoundingBox;
#end

//
@:include("clay.h")
@:structAccess
@:unreflective
@:semantics(reference)
@:native("Clay_ElementId")
@:lincCppiaDef('HxClay_ElementId', 'struct')
extern class Native_Clay_ElementId {
    public function new();
    public var id:cpp.UInt32;
    public var offset:cpp.UInt32;
    public var baseId:cpp.UInt32;
    public var stringId:Native_Clay_String;

    // inline public static function create(_x:cpp.Float32, _y:cpp.Float32, _w:cpp.Float32, _h:cpp.Float32):Native_Clay_ElementId
    //     return untyped __cpp__('{ {0}, {1}, {2}, {3} }', _x, _y, _w, _h);
}
#if (scriptable || cppia)
    @:build(linc.LincCppia.wrapStructExtern('Native_Clay_ElementId'))
    class HxClay_ElementId {}
#else
    typedef HxClay_ElementId = Native_Clay_ElementId;
#end

//
@:include("clay.h")
@:structAccess
@:unreflective
@:semantics(reference)
@:native("Clay_CornerRadius")
@:lincCppiaDef('HxClay_CornerRadius', 'struct')
extern class Native_Clay_CornerRadius {
    public function new();
    public var topLeft:cpp.Float32;
    public var topRight:cpp.Float32;
    public var bottomLeft:cpp.Float32;
    public var bottomRight:cpp.Float32;

    inline public static function create(_tl:cpp.Float32, _tr:cpp.Float32, _bl:cpp.Float32, _br:cpp.Float32):Native_Clay_CornerRadius
        return untyped __cpp__('{ {0}, {1}, {2}, {3} }', _tl, _tr, _bl, _br);
}
#if (scriptable || cppia)
    @:build(linc.LincCppia.wrapStructExtern('Native_Clay_CornerRadius'))
    class HxClay_CornerRadius {}
#else
    typedef HxClay_CornerRadius = Native_Clay_CornerRadius;
#end

//
@:unreflective
extern enum abstract Native_Clay_LayoutDirection(Native_Clay_LayoutDirectionImpl) {
    @:native("Clay_LayoutDirection::CLAY_LEFT_TO_RIGHT")
    var CLAY_LEFT_TO_RIGHT;

    @:native("Clay_LayoutDirection::CLAY_TOP_TO_BOTTOM")
    var CLAY_TOP_TO_BOTTOM;
}
@:unreflective
@:native('Clay_LayoutDirection')
@:lincCppiaDef('HxClay_LayoutDirection', 'enum')
extern class Native_Clay_LayoutDirectionImpl { }
#if (scriptable || cppia)
    @:build(linc.LincCppia.wrapEnumExtern('Native_Clay_LayoutDirection'))
    enum abstract HxClay_LayoutDirection(Int) from Int to Int {}
#else
    typedef HxClay_LayoutDirection = Native_Clay_LayoutDirection;
#end

//
@:unreflective
extern enum abstract Native_Clay_LayoutAlignmentX(Native_Clay_LayoutAlignmentXImpl) {
    @:native("Clay_LayoutAlignmentX::CLAY_ALIGN_X_LEFT")
    var CLAY_ALIGN_X_LEFT;
    
    @:native("Clay_LayoutAlignmentX::CLAY_ALIGN_X_RIGHT")
    var CLAY_ALIGN_X_RIGHT;

    @:native("Clay_LayoutAlignmentX::CLAY_ALIGN_X_CENTER")
    var CLAY_ALIGN_X_CENTER;
}
@:unreflective
@:native('Clay_LayoutAlignmentX')
@:lincCppiaDef('HxClay_LayoutAlignmentX', 'enum')
extern class Native_Clay_LayoutAlignmentXImpl { }
#if (scriptable || cppia)
    @:build(linc.LincCppia.wrapEnumExtern('Native_Clay_LayoutAlignmentX'))
    enum abstract HxClay_LayoutAlignmentX(Int) from Int to Int {}
#else
    typedef HxClay_LayoutAlignmentX = Native_Clay_LayoutAlignmentX;
#end

//
@:unreflective
extern enum abstract Native_Clay_LayoutAlignmentY(Native_Clay_LayoutAlignmentYImpl) {
    @:native("Clay_LayoutAlignmentY::CLAY_ALIGN_Y_TOP")
    var CLAY_ALIGN_Y_TOP;
    
    @:native("Clay_LayoutAlignmentY::CLAY_ALIGN_Y_BOTTOM")
    var CLAY_ALIGN_Y_BOTTOM;

    @:native("Clay_LayoutAlignmentY::CLAY_ALIGN_Y_CENTER")
    var CLAY_ALIGN_Y_CENTER;
}
@:unreflective
@:native('Clay_LayoutAlignmentY')
@:lincCppiaDef('HxClay_LayoutAlignmentY', 'enum')
extern class Native_Clay_LayoutAlignmentYImpl { }
#if (scriptable || cppia)
    @:build(linc.LincCppia.wrapEnumExtern('Native_Clay_LayoutAlignmentY'))
    enum abstract HxClay_LayoutAlignmentY(Int) from Int to Int {}
#else
    typedef HxClay_LayoutAlignmentY = Native_Clay_LayoutAlignmentY;
#end

//
@:unreflective
extern enum abstract Native_Clay__SizingType(Native_Clay__SizingTypeImpl) {
    @:native("Clay__SizingType::CLAY__SIZING_TYPE_FIT")
    var CLAY__SIZING_TYPE_FIT;
    
    @:native("Clay__SizingType::CLAY__SIZING_TYPE_GROW")
    var CLAY__SIZING_TYPE_GROW;

    @:native("Clay__SizingType::CLAY__SIZING_TYPE_PERCENT")
    var CLAY__SIZING_TYPE_PERCENT;

    @:native("Clay__SizingType::CLAY__SIZING_TYPE_FIXED")
    var CLAY__SIZING_TYPE_FIXED;
}
@:unreflective
@:native('Clay__SizingType')
@:lincCppiaDef('HxClay__SizingType', 'enum')
extern class Native_Clay__SizingTypeImpl { }
#if (scriptable || cppia)
    @:build(linc.LincCppia.wrapEnumExtern('Native_Clay__SizingType'))
    enum abstract HxClay__SizingType(Int) from Int to Int {}
#else
    typedef HxClay__SizingType = Native_Clay__SizingType;
#end

//
@:include("clay.h")
@:structAccess
@:unreflective
@:semantics(reference)
@:native("Clay_ChildAlignment")
@:lincCppiaDef('HxClay_ChildAlignment', 'struct')
extern class Native_Clay_ChildAlignment {
    public function new();
    public var x:Native_Clay_LayoutAlignmentX;
    public var y:Native_Clay_LayoutAlignmentY;

    // inline public static function create(_x:Native_Clay_LayoutAlignmentX, _y:Native_Clay_LayoutAlignmentY):Native_Clay_ChildAlignment
    //     return untyped __cpp__('{ {0}, {1} }', _x, _y);
}
#if (scriptable || cppia)
    @:build(linc.LincCppia.wrapStructExtern('Native_Clay_ChildAlignment'))
    class HxClay_ChildAlignment {}
#else
    typedef HxClay_ChildAlignment = Native_Clay_ChildAlignment;
#end

//
@:include("clay.h")
@:structAccess
@:unreflective
@:semantics(reference)
@:native("Clay_SizingMinMax")
@:lincCppiaDef('HxClay_SizingMinMax', 'struct')
extern class Native_Clay_SizingMinMax {
    public function new();
    public var min:cpp.Float32;
    public var max:cpp.Float32;

    inline public static function create(_min:cpp.Float32, _max:cpp.Float32):Native_Clay_SizingMinMax
        return untyped __cpp__('{ {0}, {1} }', _min, _max);
}
#if (scriptable || cppia)
    @:build(linc.LincCppia.wrapStructExtern('Native_Clay_SizingMinMax'))
    class HxClay_SizingMinMax {}
#else
    typedef HxClay_SizingMinMax = Native_Clay_SizingMinMax;
#end

//
@:include("clay.h")
@:structAccess
@:unreflective
@:semantics(reference)
@:native("Clay_SizingAxis")
@:lincCppiaDef('HxClay_SizingAxis', 'struct')
extern class Native_Clay_SizingAxis {
    public function new();
    // TODO:
    // @:lincCppiaIgnore
    // inline public function minMax():Native_Clay_SizingMinMax
    //     return untyped __cpp__('{0}.size.minMax', this);
    // @:lincCppiaIgnore
    // inline public function percent():Float
    //     return untyped __cpp__('{0}.size.percent', this);

    @:native('size.minMax')
    public var minMax:Native_Clay_SizingMinMax;

    @:native('size.percent')
    public var percent:cpp.Float32;


    public var type:Native_Clay__SizingType;
}
#if (scriptable || cppia)
    @:build(linc.LincCppia.wrapStructExtern('Native_Clay_SizingAxis'))
    class HxClay_SizingAxis {
        // public function percent():Float return this.__inst.percent();
    }
#else
    typedef HxClay_SizingAxis = Native_Clay_SizingAxis;
#end

//
@:include("clay.h")
@:structAccess
@:unreflective
@:semantics(reference)
@:native("Clay_Sizing")
@:lincCppiaDef('HxClay_Sizing', 'struct')
extern class Native_Clay_Sizing {
    public function new();
    public var width:Native_Clay_SizingAxis;
    public var height:Native_Clay_SizingAxis;

    inline public static function create(_w:Native_Clay_SizingAxis, _h:Native_Clay_SizingAxis):Native_Clay_Sizing
        return untyped __cpp__('{ {0}, {1} }', _w, _h);
}
#if (scriptable || cppia)
    @:build(linc.LincCppia.wrapStructExtern('Native_Clay_Sizing'))
    class HxClay_Sizing {}
#else
    typedef HxClay_Sizing = Native_Clay_Sizing;
#end

//
@:include("clay.h")
@:structAccess
@:unreflective
@:semantics(reference)
@:native("Clay_Padding")
@:lincCppiaDef('HxClay_Padding', 'struct')
extern class Native_Clay_Padding {
    public function new();
    public var left:cpp.UInt16;
    public var right:cpp.UInt16;
    public var top:cpp.UInt16;
    public var bottom:cpp.UInt16;

    inline public static function create(_l:cpp.UInt16, _r:cpp.UInt16, _t:cpp.UInt16, _b:cpp.UInt16):Native_Clay_Padding
        return untyped __cpp__('{ {0}, {1}, {2}, {3} }', _l, _r, _t, _b);
}
#if (scriptable || cppia)
    @:build(linc.LincCppia.wrapStructExtern('Native_Clay_Padding'))
    class HxClay_Padding {}
#else
    typedef HxClay_Padding = Native_Clay_Padding;
#end

//
@:include("clay.h")
@:structAccess
@:unreflective
@:semantics(reference)
@:native("Clay_LayoutConfig")
@:lincCppiaDef('HxClay_LayoutConfig', 'struct')
extern class Native_Clay_LayoutConfig {
    public function new();
    public var sizing:Native_Clay_Sizing;
    public var padding:Native_Clay_Padding;
    public var childGap:cpp.UInt16;
    public var childAlignment:Native_Clay_ChildAlignment;
    public var layoutDirection:Native_Clay_LayoutDirection;
}
#if (scriptable || cppia)
    @:build(linc.LincCppia.wrapStructExtern('Native_Clay_LayoutConfig'))
    class HxClay_LayoutConfig {}
#else
    typedef HxClay_LayoutConfig = Native_Clay_LayoutConfig;
#end

//
@:unreflective
extern enum abstract Native_Clay_TextElementConfigWrapMode(Native_Clay_TextElementConfigWrapModeImpl) {
    @:native("Clay_TextElementConfigWrapMode::CLAY_TEXT_WRAP_WORDS")
    var CLAY_TEXT_WRAP_WORDS;
    
    @:native("Clay_TextElementConfigWrapMode::CLAY__SIZING_TYPE_GROW")
    var CLAY__SIZING_TYPE_GROW;

    @:native("Clay_TextElementConfigWrapMode::CLAY_TEXT_WRAP_NEWLINES")
    var CLAY_TEXT_WRAP_NEWLINES;

    @:native("Clay_TextElementConfigWrapMode::CLAY_TEXT_WRAP_NONE")
    var CLAY_TEXT_WRAP_NONE;
}
@:unreflective
@:native('Clay_TextElementConfigWrapMode')
@:lincCppiaDef('HxClay_TextElementConfigWrapMode', 'enum')
extern class Native_Clay_TextElementConfigWrapModeImpl { }
#if (scriptable || cppia)
    @:build(linc.LincCppia.wrapEnumExtern('Native_Clay_TextElementConfigWrapMode'))
    enum abstract HxClay_TextElementConfigWrapMode(Int) from Int to Int {}
#else
    typedef HxClay_TextElementConfigWrapMode = Native_Clay_TextElementConfigWrapMode;
#end

//
@:unreflective
extern enum abstract Native_Clay_TextAlignment(Native_Clay_TextAlignmentImpl) {
    @:native("Clay_TextAlignment::CLAY_TEXT_ALIGN_LEFT")
    var CLAY_TEXT_ALIGN_LEFT;
    
    @:native("Clay_TextAlignment::CLAY_TEXT_ALIGN_CENTER")
    var CLAY_TEXT_ALIGN_CENTER;

    @:native("Clay_TextAlignment::CLAY_TEXT_ALIGN_RIGHT")
    var CLAY_TEXT_ALIGN_RIGHT;
}
@:unreflective
@:native('Clay_TextAlignment')
@:lincCppiaDef('HxClay_TextAlignment', 'enum')
extern class Native_Clay_TextAlignmentImpl { }
#if (scriptable || cppia)
    @:build(linc.LincCppia.wrapEnumExtern('Native_Clay_TextAlignment'))
    enum abstract HxClay_TextAlignment(Int) from Int to Int {}
#else
    typedef HxClay_TextAlignment = Native_Clay_TextAlignment;
#end

//
@:include("clay.h")
@:structAccess
@:unreflective
@:semantics(reference)
@:native("Clay_TextElementConfig")
@:lincCppiaDef('HxClay_TextElementConfig', 'struct')
extern class Native_Clay_TextElementConfig {
    public function new();
    public var textColor:Native_Clay_Color;
    public var fontId:cpp.UInt16;
    public var fontSize:cpp.UInt16;
    public var letterSpacing:cpp.UInt16;
    public var lineHeight:cpp.UInt16;
    public var wrapMode:Native_Clay_TextElementConfigWrapMode;
    public var textAlignment:Native_Clay_TextAlignment;
    public var hashStringContents:Bool;
}
#if (scriptable || cppia)
    @:build(linc.LincCppia.wrapStructExtern('Native_Clay_TextElementConfig'))
    class HxClay_TextElementConfig {}
#else
    typedef HxClay_TextElementConfig = Native_Clay_TextElementConfig;
#end

//
@:include("clay.h")
@:structAccess
@:unreflective
@:semantics(reference)
@:native("Clay_ImageElementConfig")
@:lincCppiaDef('HxClay_ImageElementConfig', 'struct')
extern class Native_Clay_ImageElementConfig {
    public function new();
    public var imageData:cpp.Star<cpp.Void>;
    public var sourceDimensions:Native_Clay_Dimensions;
}
#if (scriptable || cppia)
    @:build(linc.LincCppia.wrapStructExtern('Native_Clay_ImageElementConfig'))
    class HxClay_ImageElementConfig {}
#else
    typedef HxClay_ImageElementConfig = Native_Clay_ImageElementConfig;
#end

//
@:unreflective
extern enum abstract Native_Clay_FloatingAttachPointType(Native_Clay_FloatingAttachPointTypeImpl) {
    @:native("Clay_FloatingAttachPointType::CLAY_ATTACH_POINT_LEFT_TOP")
    var CLAY_ATTACH_POINT_LEFT_TOP;
    
    @:native("Clay_FloatingAttachPointType::CLAY_ATTACH_POINT_LEFT_CENTER")
    var CLAY_ATTACH_POINT_LEFT_CENTER;

    @:native("Clay_FloatingAttachPointType::CLAY_ATTACH_POINT_LEFT_BOTTOM")
    var CLAY_ATTACH_POINT_LEFT_BOTTOM;

    @:native("Clay_FloatingAttachPointType::CLAY_ATTACH_POINT_CENTER_TOP")
    var CLAY_ATTACH_POINT_CENTER_TOP;

    @:native("Clay_FloatingAttachPointType::CLAY_ATTACH_POINT_CENTER_CENTER")
    var CLAY_ATTACH_POINT_CENTER_CENTER;

    @:native("Clay_FloatingAttachPointType::CLAY_ATTACH_POINT_CENTER_BOTTOM")
    var CLAY_ATTACH_POINT_CENTER_BOTTOM;

    @:native("Clay_FloatingAttachPointType::CLAY_ATTACH_POINT_RIGHT_TOP")
    var CLAY_ATTACH_POINT_RIGHT_TOP;

    @:native("Clay_FloatingAttachPointType::CLAY_ATTACH_POINT_RIGHT_CENTER")
    var CLAY_ATTACH_POINT_RIGHT_CENTER;

    @:native("Clay_FloatingAttachPointType::CLAY_ATTACH_POINT_RIGHT_BOTTOM")
    var CLAY_ATTACH_POINT_RIGHT_BOTTOM;
}
@:unreflective
@:native('Clay_FloatingAttachPointType')
@:lincCppiaDef('HxClay_FloatingAttachPointType', 'enum')
extern class Native_Clay_FloatingAttachPointTypeImpl { }
#if (scriptable || cppia)
    @:build(linc.LincCppia.wrapEnumExtern('Native_Clay_FloatingAttachPointType'))
    enum abstract HxClay_FloatingAttachPointType(Int) from Int to Int {}
#else
    typedef HxClay_FloatingAttachPointType = Native_Clay_FloatingAttachPointType;
#end

//
@:include("clay.h")
@:structAccess
@:unreflective
@:semantics(reference)
@:native("Clay_FloatingAttachPoints")
@:lincCppiaDef('HxClay_FloatingAttachPoints', 'struct')
extern class Native_Clay_FloatingAttachPoints {
    public function new();
    public var element:Native_Clay_FloatingAttachPointType;
    public var parent:Native_Clay_FloatingAttachPointType;
}
#if (scriptable || cppia)
    @:build(linc.LincCppia.wrapStructExtern('Native_Clay_FloatingAttachPoints'))
    class HxClay_FloatingAttachPoints {}
#else
    typedef HxClay_FloatingAttachPoints = Native_Clay_FloatingAttachPoints;
#end

//
@:unreflective
extern enum abstract Native_Clay_PointerCaptureMode(Native_Clay_PointerCaptureModeImpl) {
    @:native("Clay_PointerCaptureMode::CLAY_POINTER_CAPTURE_MODE_CAPTURE")
    var CLAY_POINTER_CAPTURE_MODE_CAPTURE;
    
    @:native("Clay_PointerCaptureMode::CLAY_POINTER_CAPTURE_MODE_PASSTHROUGH")
    var CLAY_POINTER_CAPTURE_MODE_PASSTHROUGH;
}
@:unreflective
@:native('Clay_PointerCaptureMode')
@:lincCppiaDef('HxClay_PointerCaptureMode', 'enum')
extern class Native_Clay_PointerCaptureModeImpl { }
#if (scriptable || cppia)
    @:build(linc.LincCppia.wrapEnumExtern('Native_Clay_PointerCaptureMode'))
    enum abstract HxClay_PointerCaptureMode(Int) from Int to Int {}
#else
    typedef HxClay_PointerCaptureMode = Native_Clay_PointerCaptureMode;
#end

//
@:unreflective
extern enum abstract Native_Clay_FloatingAttachToElement(Native_Clay_FloatingAttachToElementImpl) {
    @:native("Clay_FloatingAttachToElement::CLAY_ATTACH_TO_NONE")
    var CLAY_ATTACH_TO_NONE;
    
    @:native("Clay_FloatingAttachToElement::CLAY_ATTACH_TO_PARENT")
    var CLAY_ATTACH_TO_PARENT;

    @:native("Clay_FloatingAttachToElement::CLAY_ATTACH_TO_ELEMENT_WITH_ID")
    var CLAY_ATTACH_TO_ELEMENT_WITH_ID;

    @:native("Clay_FloatingAttachToElement::CLAY_ATTACH_TO_ROOT")
    var CLAY_ATTACH_TO_ROOT;
}
@:unreflective
@:native('Clay_FloatingAttachToElement')
@:lincCppiaDef('HxClay_FloatingAttachToElement', 'enum')
extern class Native_Clay_FloatingAttachToElementImpl { }
#if (scriptable || cppia)
    @:build(linc.LincCppia.wrapEnumExtern('Native_Clay_FloatingAttachToElement'))
    enum abstract HxClay_FloatingAttachToElement(Int) from Int to Int {}
#else
    typedef HxClay_FloatingAttachToElement = Native_Clay_FloatingAttachToElement;
#end

//
@:include("clay.h")
@:structAccess
@:unreflective
@:semantics(reference)
@:native("Clay_FloatingElementConfig")
@:lincCppiaDef('HxClay_FloatingElementConfig', 'struct')
extern class Native_Clay_FloatingElementConfig {
    public function new();
    public var offset:Native_Clay_Vector2;
    public var expand:Native_Clay_Dimensions;
    public var parentId:cpp.UInt32;
    public var zIndex:cpp.UInt16;
    public var attachPoints:Native_Clay_FloatingAttachPoints;
    public var pointerCaptureMode:Native_Clay_PointerCaptureMode;
    public var attachTo:Native_Clay_FloatingAttachToElement;
}
#if (scriptable || cppia)
    @:build(linc.LincCppia.wrapStructExtern('Native_Clay_FloatingElementConfig'))
    class HxClay_FloatingElementConfig {}
#else
    typedef HxClay_FloatingElementConfig = Native_Clay_FloatingElementConfig;
#end

//
@:include("clay.h")
@:structAccess
@:unreflective
@:semantics(reference)
@:native("Clay_ScrollElementConfig")
@:lincCppiaDef('HxClay_ScrollElementConfig', 'struct')
extern class Native_Clay_ScrollElementConfig {
    public function new();
    public var horizontal:Bool;
    public var vertical:Bool;

    inline public static function create(_h:Bool, _v:Bool):Native_Clay_ScrollElementConfig
        return untyped __cpp__('{ {0}, {1} }', _h, _v);
}
#if (scriptable || cppia)
    @:build(linc.LincCppia.wrapStructExtern('Native_Clay_ScrollElementConfig'))
    class HxClay_ScrollElementConfig {}
#else
    typedef HxClay_ScrollElementConfig = Native_Clay_ScrollElementConfig;
#end

//
@:include("clay.h")
@:structAccess
@:unreflective
@:semantics(reference)
@:native("Clay_BorderWidth")
@:lincCppiaDef('HxClay_BorderWidth', 'struct')
extern class Native_Clay_BorderWidth {
    public function new();
    public var left:cpp.UInt16;
    public var right:cpp.UInt16;
    public var top:cpp.UInt16;
    public var bottom:cpp.UInt16;

    inline public static function create(_l:cpp.UInt16, _r:cpp.UInt16, _t:cpp.UInt16, _b:cpp.UInt16):Native_Clay_BorderWidth
        return untyped __cpp__('{ {0}, {1}, {2}, {3} }', _l, _r, _t, _b);
}
#if (scriptable || cppia)
    @:build(linc.LincCppia.wrapStructExtern('Native_Clay_BorderWidth'))
    class HxClay_BorderWidth {}
#else
    typedef HxClay_BorderWidth = Native_Clay_BorderWidth;
#end

//
@:include("clay.h")
@:structAccess
@:unreflective
@:semantics(reference)
@:native("Clay_BorderElementConfig")
@:lincCppiaDef('HxClay_BorderElementConfig', 'struct')
extern class Native_Clay_BorderElementConfig {
    public function new();
    public var color:Native_Clay_Color;
    public var width:Native_Clay_BorderWidth;
}
#if (scriptable || cppia)
    @:build(linc.LincCppia.wrapStructExtern('Native_Clay_BorderElementConfig'))
    class HxClay_BorderElementConfig {}
#else
    typedef HxClay_BorderElementConfig = Native_Clay_BorderElementConfig;
#end

///////////////////////////////////////////////////////////
// Render Command Data
///////////////////////////////////////////////////////////

//
@:include("clay.h")
@:structAccess
@:unreflective
@:semantics(reference)
@:native("Clay_TextRenderData")
@:lincCppiaDef('HxClay_TextRenderData', 'struct')
extern class Native_Clay_TextRenderData {
    public function new();
    public var stringContents:Native_Clay_StringSlice;
    public var textColor:Native_Clay_Color;
    public var fontId:cpp.UInt16;
    public var fontSize:cpp.UInt16;
    public var letterSpacing:cpp.UInt16;
    public var lineHeight:cpp.UInt16;
}
#if (scriptable || cppia)
    @:build(linc.LincCppia.wrapStructExtern('Native_Clay_TextRenderData'))
    class HxClay_TextRenderData {}
#else
    typedef HxClay_TextRenderData = Native_Clay_TextRenderData;
#end

//
@:include("clay.h")
@:structAccess
@:unreflective
@:semantics(reference)
@:native("Clay_RectangleRenderData")
@:lincCppiaDef('HxClay_RectangleRenderData', 'struct')
extern class Native_Clay_RectangleRenderData {
    public function new();
    public var backgroundColor:Native_Clay_Color;
    public var cornerRadius:Native_Clay_CornerRadius;
}
#if (scriptable || cppia)
    @:build(linc.LincCppia.wrapStructExtern('Native_Clay_RectangleRenderData'))
    class HxClay_RectangleRenderData {}
#else
    typedef HxClay_RectangleRenderData = Native_Clay_RectangleRenderData;
#end

//
@:include("clay.h")
@:structAccess
@:unreflective
@:semantics(reference)
@:native("Clay_ImageRenderData")
@:lincCppiaDef('HxClay_ImageRenderData', 'struct')
extern class Native_Clay_ImageRenderData {
    public function new();
    public var backgroundColor:Native_Clay_Color;
    public var cornerRadius:Native_Clay_CornerRadius;
    public var sourceDimensions:Native_Clay_Dimensions;
    public var imageData:cpp.Star<cpp.Void>;
}
#if (scriptable || cppia)
    @:build(linc.LincCppia.wrapStructExtern('Native_Clay_ImageRenderData'))
    class HxClay_ImageRenderData {}
#else
    typedef HxClay_ImageRenderData = Native_Clay_ImageRenderData;
#end

//
@:include("clay.h")
@:structAccess
@:unreflective
@:semantics(reference)
@:native("Clay_ScrollRenderData")
@:lincCppiaDef('HxClay_ScrollRenderData', 'struct')
extern class Native_Clay_ScrollRenderData {
    public function new();
    public var horizontal:Bool;
    public var vertical:Bool;
}
#if (scriptable || cppia)
    @:build(linc.LincCppia.wrapStructExtern('Native_Clay_ScrollRenderData'))
    class HxClay_ScrollRenderData {}
#else
    typedef HxClay_ScrollRenderData = Native_Clay_ScrollRenderData;
#end

//
@:include("clay.h")
@:structAccess
@:unreflective
@:semantics(reference)
@:native("Clay_BorderRenderData")
@:lincCppiaDef('HxClay_BorderRenderData', 'struct')
extern class Native_Clay_BorderRenderData {
    public function new();
    public var color:Native_Clay_Color;
    public var cornerRadius:Native_Clay_CornerRadius;
    public var width:Native_Clay_BorderWidth;
}
#if (scriptable || cppia)
    @:build(linc.LincCppia.wrapStructExtern('Native_Clay_BorderRenderData'))
    class HxClay_BorderRenderData {}
#else
    typedef HxClay_BorderRenderData = Native_Clay_BorderRenderData;
#end

///////////////////////////////////////////////////////////
@:include("clay.h")
@:structAccess
@:unreflective
@:semantics(reference)
@:native("Clay_RenderData")
@:lincCppiaDef('HxClay_RenderData', 'struct')
extern class Native_Clay_RenderData {
    public function new();
    // Render command data when commandType == CLAY_RENDER_COMMAND_TYPE_RECTANGLE
    public var rectangle:Native_Clay_RectangleRenderData;
    // Render command data when commandType == CLAY_RENDER_COMMAND_TYPE_TEXT
    public var text:Native_Clay_TextRenderData;
    // Render command data when commandType == CLAY_RENDER_COMMAND_TYPE_IMAGE
    public var image:Native_Clay_ImageRenderData;
    // Render command data when commandType == CLAY_RENDER_COMMAND_TYPE_CUSTOM
    // public var custom:Native_Clay_CustomRenderData;
    // Render command data when commandType == CLAY_RENDER_COMMAND_TYPE_BORDER
    public var border:Native_Clay_BorderRenderData;
    // Render command data when commandType == CLAY_RENDER_COMMAND_TYPE_SCROLL
    public var scroll:Native_Clay_ScrollRenderData;
}
#if (scriptable || cppia)
    @:build(linc.LincCppia.wrapStructExtern('Native_Clay_RenderData'))
    class HxClay_RenderData {}
#else
    typedef HxClay_RenderData = Native_Clay_RenderData;
#end

//
@:include("clay.h")
@:structAccess
@:unreflective
@:semantics(reference)
@:native("Clay_ScrollContainerData")
@:lincCppiaDef('HxClay_ScrollContainerData', 'struct')
extern class Native_Clay_ScrollContainerData {
    public function new();
    public var scrollPosition:cpp.Star<Native_Clay_Vector2>;
    public var scrollContainerDimensions:Native_Clay_Dimensions;
    public var contentDimensions:Native_Clay_Dimensions;
    public var config:Native_Clay_ScrollElementConfig;
    public var found:Bool;
}
#if (scriptable || cppia)
    @:build(linc.LincCppia.wrapStructExtern('Native_Clay_ScrollContainerData'))
    class HxClay_ScrollContainerData {}
#else
    typedef HxClay_ScrollContainerData = Native_Clay_ScrollContainerData;
#end

//
@:include("clay.h")
@:structAccess
@:unreflective
@:semantics(reference)
@:native("Clay_ElementData")
@:lincCppiaDef('HxClay_ElementData', 'struct')
extern class Native_Clay_ElementData {
    public function new();
    public var boundingBox:Native_Clay_BoundingBox;
    public var found:Bool;
}
#if (scriptable || cppia)
    @:build(linc.LincCppia.wrapStructExtern('Native_Clay_ElementData'))
    class HxClay_ElementData {}
#else
    typedef HxClay_ElementData = Native_Clay_ElementData;
#end

//
@:unreflective
extern enum abstract Native_Clay_RenderCommandType(Native_Clay_RenderCommandTypeImpl) {
    @:native("Clay_RenderCommandType::CLAY_RENDER_COMMAND_TYPE_NONE")
    var CLAY_RENDER_COMMAND_TYPE_NONE;
    
    @:native("Clay_RenderCommandType::CLAY_RENDER_COMMAND_TYPE_RECTANGLE")
    var CLAY_RENDER_COMMAND_TYPE_RECTANGLE;

    @:native("Clay_RenderCommandType::CLAY_RENDER_COMMAND_TYPE_IMAGE")
    var CLAY_RENDER_COMMAND_TYPE_IMAGE;

    @:native("Clay_RenderCommandType::CLAY_RENDER_COMMAND_TYPE_SCISSOR_START")
    var CLAY_RENDER_COMMAND_TYPE_SCISSOR_START;

    @:native("Clay_RenderCommandType::CLAY_RENDER_COMMAND_TYPE_SCISSOR_END")
    var CLAY_RENDER_COMMAND_TYPE_SCISSOR_END;

    @:native("Clay_RenderCommandType::CLAY_RENDER_COMMAND_TYPE_CUSTOM")
    var CLAY_RENDER_COMMAND_TYPE_CUSTOM;
}
@:unreflective
@:native('Clay_RenderCommandType')
@:lincCppiaDef('HxClay_RenderCommandType', 'enum')
extern class Native_Clay_RenderCommandTypeImpl { }
#if (scriptable || cppia)
    @:build(linc.LincCppia.wrapEnumExtern('Native_Clay_RenderCommandType'))
    enum abstract HxClay_RenderCommandType(Int) from Int to Int {}
#else
    typedef HxClay_RenderCommandType = Native_Clay_RenderCommandType;
#end

//
@:include("clay.h")
@:structAccess
@:unreflective
@:semantics(reference)
@:native("Clay_RenderCommand")
@:lincCppiaDef('HxClay_RenderCommand', 'struct')
extern class Native_Clay_RenderCommand {
    public function new();
    public var boundingBox:Native_Clay_BoundingBox;
    public var renderData:Native_Clay_RenderData;
    public var userData:cpp.Star<cpp.Void>;
    public var id:cpp.UInt32;
    public var zIndex:cpp.UInt16;
    public var commandType:Native_Clay_RenderCommandType;

    @:lincCppiaIgnore
    inline public function cmp(_v:Native_Clay_RenderCommand):Int
        return untyped __cpp__('memcmp(&{0}, &{1}, sizeof(Clay_RenderCommand))', this, _v);
}
#if (scriptable || cppia)
    @:build(linc.LincCppia.wrapStructExtern('Native_Clay_RenderCommand'))
    class HxClay_RenderCommand {
        public function cmp(_v:HxClay_RenderCommand):Int
            return untyped __cpp__('memcmp(&{0}.value, &{1}, sizeof(Clay_RenderCommand))', __inst, _v.__inst);
    }
#else
    typedef HxClay_RenderCommand = Native_Clay_RenderCommand;
#end

//
@:include("clay.h")
@:structAccess
@:unreflective
@:semantics(reference)
@:native("Clay_RenderCommandArray")
@:lincCppiaDef('HxClay_RenderCommandArray', 'struct')
extern class Native_Clay_RenderCommandArray {
    public function new();
    public var capacity:cpp.UInt32;
    public var length:cpp.UInt32;
    @:lincCppiaIgnore 
    public var internalArray:cpp.RawPointer<Native_Clay_RenderCommand>;

    @:lincCppiaIgnore 
    inline public function get(_idx:Int):Native_Clay_RenderCommand {
        return internalArray[_idx];
    }
}
#if (scriptable || cppia)
    @:build(linc.LincCppia.wrapStructExtern('Native_Clay_RenderCommandArray', true))
    class HxClay_RenderCommandArray {
        public var internalArray(get,never):cpp.Pointer<Native_Clay_RenderCommand>;
        function get_internalArray() {
            if ((this.__ptr != null)) return cast this.__ptr.get_ref().internalArray else return cast this.__inst.internalArray;
        }

        public function get(_idx:Int):HxClay_RenderCommand {
            var res = Type.createEmptyInstance(HxClay_RenderCommand);
            if (this.__ptr != null) 
                res.__inst = this.__ptr.get_ref().get(_idx);
            else 
                res.__inst = this.__inst.get(_idx);
            return res;
        }
    }
#else
    typedef HxClay_RenderCommandArray = Native_Clay_RenderCommandArray;
#end

//
@:unreflective
extern enum abstract Native_Clay_PointerDataInteractionState(Native_Clay_PointerDataInteractionStateImpl) {
    @:native("Clay_PointerDataInteractionState::CLAY_POINTER_DATA_PRESSED_THIS_FRAME")
    var CLAY_POINTER_DATA_PRESSED_THIS_FRAME;
    
    @:native("Clay_PointerDataInteractionState::CLAY_POINTER_DATA_PRESSED")
    var CLAY_POINTER_DATA_PRESSED;

    @:native("Clay_PointerDataInteractionState::CLAY_POINTER_DATA_RELEASED_THIS_FRAME")
    var CLAY_POINTER_DATA_RELEASED_THIS_FRAME;

    @:native("Clay_PointerDataInteractionState::CLAY_POINTER_DATA_RELEASED")
    var CLAY_POINTER_DATA_RELEASED;
}
@:unreflective
@:native('Clay_PointerDataInteractionState')
@:lincCppiaDef('HxClay_PointerDataInteractionState', 'enum')
extern class Native_Clay_PointerDataInteractionStateImpl { }
#if (scriptable || cppia)
    @:build(linc.LincCppia.wrapEnumExtern('Native_Clay_PointerDataInteractionState'))
    enum abstract HxClay_PointerDataInteractionState(Int) from Int to Int {}
#else
    typedef HxClay_PointerDataInteractionState = Native_Clay_PointerDataInteractionState;
#end

//
@:include("clay.h")
@:structAccess
@:unreflective
@:semantics(reference)
@:native("Clay_PointerData")
@:lincCppiaDef('HxClay_PointerData', 'struct')
extern class Native_Clay_PointerData {
    public function new();
    public var position:Native_Clay_Vector2;
    public var state:Native_Clay_PointerDataInteractionState;
}
#if (scriptable || cppia)
    @:build(linc.LincCppia.wrapStructExtern('Native_Clay_PointerData'))
    class HxClay_PointerData {}
#else
    typedef HxClay_PointerData = Native_Clay_PointerData;
#end







//
@:include("clay.h")
@:structAccess
@:unreflective
@:semantics(reference)
@:native("Clay_ElementDeclaration")
@:lincCppiaDef('HxClay_ElementDeclaration', 'struct')
extern class Native_Clay_ElementDeclaration {
    public function new();
    public var id:Native_Clay_ElementId;
    public var layout:Native_Clay_LayoutConfig;
    public var backgroundColor:Native_Clay_Color;
    public var cornerRadius:Native_Clay_CornerRadius;
    public var image:Native_Clay_ImageElementConfig;
    public var floating:Native_Clay_FloatingElementConfig;
    // public var custom:Native_Clay_CustomElementConfig;
    public var scroll:Native_Clay_ScrollElementConfig;
    public var border:Native_Clay_BorderElementConfig;
    public var userData:cpp.Star<cpp.Void>;

    @:lincCppiaIgnore
    inline public function layout_sizing_width(_v:Native_Clay_SizingAxis)
        layout.sizing.width = _v;

    @:lincCppiaIgnore
    inline public function layout_sizing_height(_v:Native_Clay_SizingAxis)
        layout.sizing.height = _v;

    @:lincCppiaIgnore
    inline public function layout_direction(_v:Native_Clay_LayoutDirection)
        layout.layoutDirection = _v;

    @:lincCppiaIgnore
    inline public function print():String {
        var buf = new StringBuf();
        buf.add('id: ${id.id}, ${id.offset}, ${id.baseId}, ${id.stringId.chars}\n');
        buf.add('layout: ${layout.sizing.width.percent}, ${layout.sizing.height.percent}');
        return buf.toString();
    }
}
#if (scriptable || cppia)
    @:build(linc.LincCppia.wrapStructExtern('Native_Clay_ElementDeclaration'))
    class HxClay_ElementDeclaration {

        public function layout_sizing_width(_v:HxClay_SizingAxis)
            untyped __cpp__('{0}.value.layout.sizing.width = {1}', __inst, _v.__inst);

        public function layout_sizing_height(_v:HxClay_SizingAxis)
            untyped __cpp__('{0}.value.layout.sizing.height = {1}', __inst, _v.__inst);

        public function layout_direction(_v:HxClay_LayoutDirection)
            untyped __cpp__('{0}.value.layout.layoutDirection = (Clay_LayoutDirection){1}', __inst, _v);

        public function print():String {
            return __inst.print();
        }
    }
#else
    typedef HxClay_ElementDeclaration = Native_Clay_ElementDeclaration;
#end










//
@:unreflective
extern enum abstract Native_Clay_ErrorType(Native_Clay_ErrorTypeImpl) {
    @:native("Clay_ErrorType::CLAY_ERROR_TYPE_TEXT_MEASUREMENT_FUNCTION_NOT_PROVIDED")
    var CLAY_ERROR_TYPE_TEXT_MEASUREMENT_FUNCTION_NOT_PROVIDED;
    
    @:native("Clay_ErrorType::CLAY_ERROR_TYPE_ARENA_CAPACITY_EXCEEDED")
    var CLAY_ERROR_TYPE_ARENA_CAPACITY_EXCEEDED;

    @:native("Clay_ErrorType::CLAY_ERROR_TYPE_ELEMENTS_CAPACITY_EXCEEDED")
    var CLAY_ERROR_TYPE_ELEMENTS_CAPACITY_EXCEEDED;

    @:native("Clay_ErrorType::CLAY_ERROR_TYPE_TEXT_MEASUREMENT_CAPACITY_EXCEEDED")
    var CLAY_ERROR_TYPE_TEXT_MEASUREMENT_CAPACITY_EXCEEDED;

    @:native("Clay_ErrorType::CLAY_ERROR_TYPE_DUPLICATE_ID")
    var CLAY_ERROR_TYPE_DUPLICATE_ID;

    @:native("Clay_ErrorType::CLAY_ERROR_TYPE_FLOATING_CONTAINER_PARENT_NOT_FOUND")
    var CLAY_ERROR_TYPE_FLOATING_CONTAINER_PARENT_NOT_FOUND;

    @:native("Clay_ErrorType::CLAY_ERROR_TYPE_PERCENTAGE_OVER_1")
    var CLAY_ERROR_TYPE_PERCENTAGE_OVER_1;

    @:native("Clay_ErrorType::CLAY_ERROR_TYPE_INTERNAL_ERROR")
    var CLAY_ERROR_TYPE_INTERNAL_ERROR;
}
@:unreflective
@:native('Clay_ErrorType')
@:lincCppiaDef('HxClay_ErrorType', 'enum')
extern class Native_Clay_ErrorTypeImpl { }
#if (scriptable || cppia)
    @:build(linc.LincCppia.wrapEnumExtern('Native_Clay_ErrorType'))
    enum abstract HxClay_ErrorType(Int) from Int to Int {}
#else
    typedef HxClay_ErrorType = Native_Clay_ErrorType;
#end

//
@:include("clay.h")
@:structAccess
@:unreflective
@:semantics(reference)
@:native("Clay_ErrorData")
@:lincCppiaDef('HxClay_ErrorData', 'struct')
extern class Native_Clay_ErrorData {
    public function new();
    public var errorType:Native_Clay_ErrorType;
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
@:semantics(reference)
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
@:keep
@:include('linc_clay.h')
#if !display
@:build(linc.Linc.touch())
@:build(linc.Linc.xml('clay'))
#end
extern class Native_Clay {

    inline public static function ID(_str:String, ?_id:Int = 0):Native_Clay_ElementId {
        final str = Native_Clay_String.fromString(_str);
        return untyped __cpp__('Clay__HashString({0}, {1}, 0)', str, _id);
    }

    inline public static function SIZING_GROW(_val:cpp.Float32):Native_Clay_SizingAxis
        return untyped __cpp__('{ .size = { .minMax = { {0}, {0} } }, .type = CLAY__SIZING_TYPE_GROW }', _val);

    inline public static function SIZING_FIXED(_val:cpp.Float32):Native_Clay_SizingAxis
        return untyped __cpp__('{ .size = { .minMax = { {0}, {0} } }, .type = CLAY__SIZING_TYPE_FIXED }', _val);

    inline public static function SIZING_PERCENT(_val:cpp.Float32):Native_Clay_SizingAxis
        return untyped __cpp__('{ .size = { .percent = ({0}) }, .type = CLAY__SIZING_TYPE_PERCENT }', _val);



    @:native('::linc::clay::createArena')
    public static function createArena():Native_Clay_Arena;

    @:native('::linc::clay::destroyArena')
    public static function destroyArena(_arena:Native_Clay_Arena):Void;

    @:native('::Clay_Initialize')
    public static function initialize(_arena:Native_Clay_Arena, _dimensions:Native_Clay_Dimensions, _errorHandler:Native_Clay_ErrorHandler):cpp.Star<Native_Clay_Context>;

    @:native('::Clay_SetCurrentContext')
    public static function setCurrentContext(_context:HxClay_ContextPtr):Void;

    @:native('::Clay_SetLayoutDimensions')
    public static function setLayoutDimensions(_dims:Native_Clay_Dimensions):Void;

    @:native('::Clay_BeginLayout')
    public static function beginLayout():Void;

    @:native('::Clay__OpenElement')
    public static function openElement():Void;

    @:native('::Clay__ConfigureOpenElement')
    public static function configureElement(_cfg:Native_Clay_ElementDeclaration):Void;

    @:native('::Clay__CloseElement')
    public static function closeElement():Void;

    @:native('::Clay_EndLayout')
    public static function endLayout():Native_Clay_RenderCommandArray;

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