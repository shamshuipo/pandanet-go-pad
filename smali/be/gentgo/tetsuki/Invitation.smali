.class public Lbe/gentgo/tetsuki/Invitation;
.super Lbe/gentgo/tetsuki/NativeObject;
.source "Invitation.java"


# instance fields
.field private ownedByJava:Z


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "pointer"    # J

    .prologue
    .line 4
    invoke-direct {p0, p1, p2}, Lbe/gentgo/tetsuki/NativeObject;-><init>(J)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbe/gentgo/tetsuki/Invitation;->ownedByJava:Z

    return-void
.end method

.method public constructor <init>(Lbe/gentgo/tetsuki/Invitation;)V
    .locals 2
    .param p1, "other"    # Lbe/gentgo/tetsuki/Invitation;

    .prologue
    .line 5
    iget-wide v0, p1, Lbe/gentgo/tetsuki/Invitation;->nativePointer:J

    invoke-static {v0, v1}, Lbe/gentgo/tetsuki/Invitation;->newInvitation(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lbe/gentgo/tetsuki/NativeObject;-><init>(J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbe/gentgo/tetsuki/Invitation;->ownedByJava:Z

    return-void
.end method

.method private static native deleteInvitation(J)V
.end method

.method private native getLongGameSettings()J
.end method

.method private native getLongGameTimeSettings()J
.end method

.method private native getLongOpponent()J
.end method

.method private native getLongReceiver()J
.end method

.method private native getLongSender()J
.end method

.method private static native newInvitation(J)J
.end method

.method private native setLongOpponent(J)V
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
    .line 8
    iget-boolean v0, p0, Lbe/gentgo/tetsuki/Invitation;->ownedByJava:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lbe/gentgo/tetsuki/Invitation;->nativePointer:J

    invoke-static {v0, v1}, Lbe/gentgo/tetsuki/Invitation;->deleteInvitation(J)V

    .line 9
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 10
    return-void
.end method

.method public getGameSettings()Lbe/gentgo/tetsuki/GameSettings;
    .locals 4

    .prologue
    .line 12
    new-instance v0, Lbe/gentgo/tetsuki/GameSettings;

    invoke-direct {p0}, Lbe/gentgo/tetsuki/Invitation;->getLongGameSettings()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lbe/gentgo/tetsuki/GameSettings;-><init>(J)V

    return-object v0
.end method

.method public getGameTimeSettings()Lbe/gentgo/tetsuki/GameTimeSettings;
    .locals 4

    .prologue
    .line 13
    new-instance v0, Lbe/gentgo/tetsuki/GameTimeSettings;

    invoke-direct {p0}, Lbe/gentgo/tetsuki/Invitation;->getLongGameTimeSettings()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lbe/gentgo/tetsuki/GameTimeSettings;-><init>(J)V

    return-object v0
.end method

.method public getOpponent()Lbe/gentgo/tetsuki/Player;
    .locals 4

    .prologue
    .line 16
    new-instance v0, Lbe/gentgo/tetsuki/Player;

    invoke-direct {p0}, Lbe/gentgo/tetsuki/Invitation;->getLongOpponent()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lbe/gentgo/tetsuki/Player;-><init>(J)V

    return-object v0
.end method

.method public getReceiver()Lbe/gentgo/tetsuki/Player;
    .locals 4

    .prologue
    .line 15
    new-instance v0, Lbe/gentgo/tetsuki/Player;

    invoke-direct {p0}, Lbe/gentgo/tetsuki/Invitation;->getLongReceiver()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lbe/gentgo/tetsuki/Player;-><init>(J)V

    return-object v0
.end method

.method public getSender()Lbe/gentgo/tetsuki/Player;
    .locals 4

    .prologue
    .line 14
    new-instance v0, Lbe/gentgo/tetsuki/Player;

    invoke-direct {p0}, Lbe/gentgo/tetsuki/Invitation;->getLongSender()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lbe/gentgo/tetsuki/Player;-><init>(J)V

    return-object v0
.end method

.method public native isMarkedAsRead()Z
.end method

.method public native isOpen()Z
.end method

.method public native isSentByBlack()Z
.end method

.method public native isSentByMe()Z
.end method

.method public native isUsingNMatch()Z
.end method

.method public native markAsRead()V
.end method

.method public setOpponent(Lbe/gentgo/tetsuki/Player;)V
    .locals 2
    .param p1, "opp"    # Lbe/gentgo/tetsuki/Player;

    .prologue
    .line 17
    iget-wide v0, p1, Lbe/gentgo/tetsuki/Player;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lbe/gentgo/tetsuki/Invitation;->setLongOpponent(J)V

    return-void
.end method

.method public native swapPlayers()V
.end method
