.class public Lbe/gentgo/tetsuki/SGFLoader;
.super Lbe/gentgo/tetsuki/NativeObject;
.source "SGFLoader.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 5
    invoke-static {}, Lbe/gentgo/tetsuki/SGFLoader;->newSGFLoader()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lbe/gentgo/tetsuki/NativeObject;-><init>(J)V

    return-void
.end method

.method private static native deleteSGFLoader(J)V
.end method

.method private native getLongObserveHints()J
.end method

.method private native newLongGame(Ljava/lang/String;)J
.end method

.method private static native newSGFLoader()J
.end method


# virtual methods
.method protected finalize()V
    .locals 2

    .prologue
    .line 19
    iget-wide v0, p0, Lbe/gentgo/tetsuki/SGFLoader;->nativePointer:J

    invoke-static {v0, v1}, Lbe/gentgo/tetsuki/SGFLoader;->deleteSGFLoader(J)V

    .line 20
    return-void
.end method

.method public getObserveHints()Lbe/gentgo/tetsuki/ObserveHints;
    .locals 4

    .prologue
    .line 13
    invoke-direct {p0}, Lbe/gentgo/tetsuki/SGFLoader;->getLongObserveHints()J

    move-result-wide v0

    .line 14
    .local v0, "pointer":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 15
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lbe/gentgo/tetsuki/ObserveHints;

    invoke-direct {v2, v0, v1}, Lbe/gentgo/tetsuki/ObserveHints;-><init>(J)V

    goto :goto_0
.end method

.method public newGame(Ljava/lang/String;)Lbe/gentgo/tetsuki/Game;
    .locals 4
    .param p1, "filespec"    # Ljava/lang/String;

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lbe/gentgo/tetsuki/SGFLoader;->newLongGame(Ljava/lang/String;)J

    move-result-wide v0

    .line 9
    .local v0, "game":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 10
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lbe/gentgo/tetsuki/Game;

    invoke-direct {v2, v0, v1}, Lbe/gentgo/tetsuki/Game;-><init>(J)V

    goto :goto_0
.end method
