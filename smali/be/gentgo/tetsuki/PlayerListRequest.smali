.class public Lbe/gentgo/tetsuki/PlayerListRequest;
.super Lbe/gentgo/tetsuki/BaseRequest;
.source "PlayerListRequest.java"


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "pointer"    # J

    .prologue
    .line 4
    invoke-direct {p0, p1, p2}, Lbe/gentgo/tetsuki/BaseRequest;-><init>(J)V

    return-void
.end method


# virtual methods
.method public native getNrOfPlayers()I
.end method

.method public native getObjectAtIndex(I)J
.end method

.method public getPlayerAtIndex(I)Lbe/gentgo/tetsuki/Player;
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 10
    new-instance v0, Lbe/gentgo/tetsuki/Player;

    invoke-virtual {p0, p1}, Lbe/gentgo/tetsuki/PlayerListRequest;->getObjectAtIndex(I)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lbe/gentgo/tetsuki/Player;-><init>(J)V

    return-object v0
.end method
