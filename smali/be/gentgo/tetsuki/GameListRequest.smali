.class public Lbe/gentgo/tetsuki/GameListRequest;
.super Lbe/gentgo/tetsuki/BaseRequest;
.source "GameListRequest.java"


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
.method public native getBlackName(I)Ljava/lang/String;
.end method

.method public native getBlackRank(I)F
.end method

.method public native getBlackTitle(I)Ljava/lang/String;
.end method

.method public native getGameID(I)I
.end method

.method public native getNrOfGames()I
.end method

.method public native getNrOfMoves(I)I
.end method

.method public native getNrOfObservers(I)I
.end method

.method public native getTitle(I)Ljava/lang/String;
.end method

.method public native getWhiteName(I)Ljava/lang/String;
.end method

.method public native getWhiteRank(I)F
.end method

.method public native getWhiteTitle(I)Ljava/lang/String;
.end method
