.class public Lbe/gentgo/tetsuki/Position;
.super Ljava/lang/Object;
.source "Position.java"


# instance fields
.field public column:I

.field public row:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "c"    # I
    .param p2, "r"    # I

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lbe/gentgo/tetsuki/Position;->column:I

    iput p2, p0, Lbe/gentgo/tetsuki/Position;->row:I

    return-void
.end method

.method public constructor <init>(Lbe/gentgo/tetsuki/Position;)V
    .locals 1
    .param p1, "that"    # Lbe/gentgo/tetsuki/Position;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lbe/gentgo/tetsuki/Position;->column:I

    iput v0, p0, Lbe/gentgo/tetsuki/Position;->column:I

    iget v0, p1, Lbe/gentgo/tetsuki/Position;->row:I

    iput v0, p0, Lbe/gentgo/tetsuki/Position;->row:I

    return-void
.end method


# virtual methods
.method public equals(Lbe/gentgo/tetsuki/Position;)Z
    .locals 2
    .param p1, "p"    # Lbe/gentgo/tetsuki/Position;

    .prologue
    .line 14
    iget v0, p1, Lbe/gentgo/tetsuki/Position;->column:I

    iget v1, p0, Lbe/gentgo/tetsuki/Position;->column:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lbe/gentgo/tetsuki/Position;->row:I

    iget v1, p0, Lbe/gentgo/tetsuki/Position;->row:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
