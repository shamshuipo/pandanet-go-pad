.class public Lbe/gentgo/tetsuki/Goban;
.super Lbe/gentgo/tetsuki/NativeObject;
.source "Goban.java"


# static fields
.field public static final Black:I = 0x1

.field public static final Dame:I = 0x2

.field public static final Empty:I = 0x0

.field public static final White:I = -0x1


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "pointer"    # J

    .prologue
    .line 4
    invoke-direct {p0, p1, p2}, Lbe/gentgo/tetsuki/NativeObject;-><init>(J)V

    return-void
.end method


# virtual methods
.method public native getNrOfColumns()I
.end method

.method public native getNrOfMarks()I
.end method

.method public native getNrOfRows()I
.end method

.method public native getNrOfStars()I
.end method

.method public native getPositionOfMark(ILbe/gentgo/tetsuki/Position;)V
.end method

.method public native getStar(ILbe/gentgo/tetsuki/Position;)V
.end method

.method public native getState(Lbe/gentgo/tetsuki/Position;)I
.end method

.method public native getSymbolOfMark(I)Ljava/lang/String;
.end method

.method public native hasStone(Lbe/gentgo/tetsuki/Position;)Z
.end method
