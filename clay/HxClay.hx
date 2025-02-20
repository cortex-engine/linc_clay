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
@:native("Clay_SizingAxis")
@:lincCppiaDef('HxClay_SizingAxis', 'struct')
extern class Native_Clay_SizingAxis {
    public function new();
    // TODO:
    // public var minMax:Native_Clay_SizingMinMax;
    // public var percent:cpp.Float32;
    public var type:Native_Clay__SizingType;
}
#if (scriptable || cppia)
    @:build(linc.LincCppia.wrapStructExtern('Native_Clay_SizingAxis'))
    class HxClay_SizingAxis {}
#else
    typedef HxClay_SizingAxis = Native_Clay_SizingAxis;
#end

//
@:include("clay.h")
@:structAccess
@:unreflective
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






@:include("clay.h")
@:structAccess
@:unreflective
@:native("Clay_RenderData")
@:lincCppiaDef('HxClay_RenderData', 'struct')
extern class Native_Clay_RenderData {
    public function new();
    // Render command data when commandType == CLAY_RENDER_COMMAND_TYPE_RECTANGLE
    // public var rectangle:Native_Clay_RectangleRenderData;
    // Render command data when commandType == CLAY_RENDER_COMMAND_TYPE_TEXT
    // public var text:Native_Clay_TextRenderData;
    // Render command data when commandType == CLAY_RENDER_COMMAND_TYPE_IMAGE
    // public var image:Native_Clay_ImageRenderData;
    // Render command data when commandType == CLAY_RENDER_COMMAND_TYPE_CUSTOM
    // public var custom:Native_Clay_CustomRenderData;
    // Render command data when commandType == CLAY_RENDER_COMMAND_TYPE_BORDER
    // public var border:Native_Clay_BorderRenderData;
    // Render command data when commandType == CLAY_RENDER_COMMAND_TYPE_SCROLL
    // public var scroll:Native_Clay_ScrollRenderData;
}
#if (scriptable || cppia)
    @:build(linc.LincCppia.wrapStructExtern('Native_Clay_RenderData'))
    class HxClay_RenderData {}
#else
    typedef HxClay_RenderData = Native_Clay_RenderData;
#end



///////////////////////////////////////////////////////////



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











// //
// @:include("clay.h")
// @:structAccess
// @:unreflective
// @:native("Clay_RenderCommand")
// @:lincCppiaDef('HxClay_RenderCommand', 'struct')
// extern class Native_Clay_RenderCommand {
//     public function new();
//     public var width:cpp.Float32;
//     public var height:cpp.Float32;
// }
// #if (scriptable || cppia)
//     @:build(linc.LincCppia.wrapStructExtern('Native_Clay_RenderCommand'))
//     class HxClay_RenderCommand {}
// #else
//     typedef HxClay_RenderCommand = Native_Clay_RenderCommand;
// #end


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

    @:native("::Clay_BeginLayout")
    extern public static function beginLayout():Void;

    // @:native("::Clay_EndLayout")
    // extern public static function endLayout():Native_Clay_RenderCommandArray;

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