.class public Lbe/gentgo/tetsuki/GobanDimensions;
.super Lbe/gentgo/tetsuki/NativeObject;
.source "GobanDimensions.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 7
    invoke-static {}, Lbe/gentgo/tetsuki/GobanDimensions;->newLongGobanDimensions()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lbe/gentgo/tetsuki/NativeObject;-><init>(J)V

    return-void
.end method

.method private static native deleteLongGobanDimensions(J)V
.end method

.method private static native newLongGobanDimensions()J
.end method


# virtual methods
.method public finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 8
    iget-wide v0, p0, Lbe/gentgo/tetsuki/GobanDimensions;->nativePointer:J

    invoke-static {v0, v1}, Lbe/gentgo/tetsuki/GobanDimensions;->deleteLongGobanDimensions(J)V

    return-void
.end method

.method public native getCellWidth()I
.end method

.method public native getCenterOfStone(Lbe/gentgo/tetsuki/Position;Landroid/graphics/Point;)V
.end method

.method public native getDameLineWidth()I
.end method

.method public native getFloatColumnOfPoint(Landroid/graphics/Point;)F
.end method

.method public native getFloatRowOfPoint(Landroid/graphics/Point;)F
.end method

.method public native getIntersection(Lbe/gentgo/tetsuki/Position;Landroid/graphics/Point;)V
.end method

.method public native getLabelSize()I
.end method

.method public native getOpacityForLine(Z)F
.end method

.method public native getPointOfFloatPosition(FFZLandroid/graphics/Point;)V
.end method

.method public native getPositionOfPoint(Landroid/graphics/Point;Lbe/gentgo/tetsuki/Position;)V
.end method

.method public native getRectForDameMark(Lbe/gentgo/tetsuki/Position;Landroid/graphics/Rect;)V
.end method

.method public native getRectForHorizontalLine(ILandroid/graphics/Rect;)V
.end method

.method public native getRectForLastPlayedDot(Lbe/gentgo/tetsuki/Position;Landroid/graphics/Rect;)V
.end method

.method public native getRectForShadow(Lbe/gentgo/tetsuki/Position;Landroid/graphics/Rect;)V
.end method

.method public native getRectForStar(Lbe/gentgo/tetsuki/Position;Landroid/graphics/Rect;)V
.end method

.method public native getRectForStone(Lbe/gentgo/tetsuki/Position;Landroid/graphics/Rect;)V
.end method

.method public native getRectForTerritory(Lbe/gentgo/tetsuki/Position;Landroid/graphics/Rect;)V
.end method

.method public native getRectForVariationDot(Lbe/gentgo/tetsuki/Position;Landroid/graphics/Rect;)V
.end method

.method public native getRectForVerticalLine(ILandroid/graphics/Rect;)V
.end method

.method public native getTotalRect(Landroid/graphics/Rect;)V
.end method

.method public native getXForColumnLabel(I)I
.end method

.method public native getYForRowLabel(I)I
.end method

.method public native initForFullSize(Landroid/graphics/Rect;IIFZLbe/gentgo/tetsuki/GobanDimensions;)V
.end method

.method public native initForTotalView(Landroid/graphics/Rect;IIFZZZ)V
.end method
