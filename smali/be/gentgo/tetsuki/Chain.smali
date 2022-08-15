.class public Lbe/gentgo/tetsuki/Chain;
.super Lbe/gentgo/tetsuki/NativeObject;
.source "Chain.java"


# direct methods
.method public constructor <init>(Lbe/gentgo/tetsuki/Position;Lbe/gentgo/tetsuki/Goban;)V
    .locals 2
    .param p1, "pos"    # Lbe/gentgo/tetsuki/Position;
    .param p2, "goban"    # Lbe/gentgo/tetsuki/Goban;

    .prologue
    .line 5
    iget-wide v0, p2, Lbe/gentgo/tetsuki/Goban;->nativePointer:J

    invoke-static {p1, v0, v1}, Lbe/gentgo/tetsuki/Chain;->newChain(Lbe/gentgo/tetsuki/Position;J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lbe/gentgo/tetsuki/NativeObject;-><init>(J)V

    .line 6
    return-void
.end method

.method private static native deleteChain(J)V
.end method

.method private static native newChain(Lbe/gentgo/tetsuki/Position;J)J
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
    .line 10
    iget-wide v0, p0, Lbe/gentgo/tetsuki/Chain;->nativePointer:J

    invoke-static {v0, v1}, Lbe/gentgo/tetsuki/Chain;->deleteChain(J)V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public native getPosition(ILbe/gentgo/tetsuki/Position;)V
.end method

.method public native size()I
.end method
