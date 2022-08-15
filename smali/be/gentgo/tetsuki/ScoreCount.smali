.class public Lbe/gentgo/tetsuki/ScoreCount;
.super Lbe/gentgo/tetsuki/NativeObject;
.source "ScoreCount.java"


# static fields
.field static final BlackStone:I = 0x1

.field static final BlackTerritory:I = 0x2

.field static final Dame:I = 0x3

.field static final ManualDame:I = 0x4

.field static final Unknown:I = 0x0

.field static final WhiteStone:I = -0x1

.field static final WhiteTerritory:I = -0x2


# direct methods
.method public constructor <init>(Lbe/gentgo/tetsuki/Game;)V
    .locals 2
    .param p1, "game"    # Lbe/gentgo/tetsuki/Game;

    .prologue
    .line 5
    iget-wide v0, p1, Lbe/gentgo/tetsuki/Game;->nativePointer:J

    invoke-static {v0, v1}, Lbe/gentgo/tetsuki/ScoreCount;->newScoreCount(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lbe/gentgo/tetsuki/NativeObject;-><init>(J)V

    return-void
.end method

.method private static native deleteScoreCount(J)V
.end method

.method private static native newScoreCount(J)J
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 6
    iget-wide v0, p0, Lbe/gentgo/tetsuki/ScoreCount;->nativePointer:J

    invoke-static {v0, v1}, Lbe/gentgo/tetsuki/ScoreCount;->deleteScoreCount(J)V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public native getBlackScore()F
.end method

.method public native getBlackTerritory()I
.end method

.method public native getState(Lbe/gentgo/tetsuki/Position;)I
.end method

.method public native getWhiteScore()F
.end method

.method public native getWhiteTerritory()I
.end method
