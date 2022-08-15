.class public Lbe/gentgo/tetsuki/Game;
.super Lbe/gentgo/tetsuki/NativeObject;
.source "Game.java"


# static fields
.field static final BlackWon:I = 0x2

.field static final BlacksTurn:I = 0x1

.field static final Scoring:I = 0x0

.field static final Tie:I = 0x3

.field static final WhiteWon:I = -0x2

.field static final WhitesTurn:I = -0x1


# instance fields
.field protected blackTimer:Lbe/gentgo/tetsuki/PlayerTimer;

.field protected conversation:Lbe/gentgo/tetsuki/Conversation;

.field protected currentBoard:Lbe/gentgo/tetsuki/Goban;

.field protected gameSettings:Lbe/gentgo/tetsuki/GameSettings;

.field private ownedByJava:Z

.field protected whiteTimer:Lbe/gentgo/tetsuki/PlayerTimer;


# direct methods
.method public constructor <init>(J)V
    .locals 5
    .param p1, "nativeP"    # J

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lbe/gentgo/tetsuki/NativeObject;-><init>(J)V

    .line 16
    new-instance v0, Lbe/gentgo/tetsuki/GameSettings;

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/Game;->getLongGameSettings()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lbe/gentgo/tetsuki/GameSettings;-><init>(J)V

    iput-object v0, p0, Lbe/gentgo/tetsuki/Game;->gameSettings:Lbe/gentgo/tetsuki/GameSettings;

    .line 17
    new-instance v0, Lbe/gentgo/tetsuki/Goban;

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/Game;->getLongGoban()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lbe/gentgo/tetsuki/Goban;-><init>(J)V

    iput-object v0, p0, Lbe/gentgo/tetsuki/Game;->currentBoard:Lbe/gentgo/tetsuki/Goban;

    .line 18
    new-instance v0, Lbe/gentgo/tetsuki/PlayerTimer;

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/Game;->getLongBlackTimer()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lbe/gentgo/tetsuki/PlayerTimer;-><init>(J)V

    iput-object v0, p0, Lbe/gentgo/tetsuki/Game;->blackTimer:Lbe/gentgo/tetsuki/PlayerTimer;

    .line 19
    new-instance v0, Lbe/gentgo/tetsuki/PlayerTimer;

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/Game;->getLongWhiteTimer()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lbe/gentgo/tetsuki/PlayerTimer;-><init>(J)V

    iput-object v0, p0, Lbe/gentgo/tetsuki/Game;->whiteTimer:Lbe/gentgo/tetsuki/PlayerTimer;

    .line 20
    new-instance v0, Lbe/gentgo/tetsuki/Conversation;

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/Game;->getLongConversation()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lbe/gentgo/tetsuki/Conversation;-><init>(J)V

    iput-object v0, p0, Lbe/gentgo/tetsuki/Game;->conversation:Lbe/gentgo/tetsuki/Conversation;

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbe/gentgo/tetsuki/Game;->ownedByJava:Z

    .line 22
    return-void
.end method

.method public constructor <init>(Lbe/gentgo/tetsuki/GameSettings;)V
    .locals 4
    .param p1, "settings"    # Lbe/gentgo/tetsuki/GameSettings;

    .prologue
    .line 5
    iget-wide v0, p1, Lbe/gentgo/tetsuki/GameSettings;->nativePointer:J

    invoke-static {v0, v1}, Lbe/gentgo/tetsuki/Game;->newGameWithSettings(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lbe/gentgo/tetsuki/NativeObject;-><init>(J)V

    .line 6
    new-instance v0, Lbe/gentgo/tetsuki/GameSettings;

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/Game;->getLongGameSettings()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lbe/gentgo/tetsuki/GameSettings;-><init>(J)V

    iput-object v0, p0, Lbe/gentgo/tetsuki/Game;->gameSettings:Lbe/gentgo/tetsuki/GameSettings;

    .line 7
    new-instance v0, Lbe/gentgo/tetsuki/Goban;

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/Game;->getLongGoban()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lbe/gentgo/tetsuki/Goban;-><init>(J)V

    iput-object v0, p0, Lbe/gentgo/tetsuki/Game;->currentBoard:Lbe/gentgo/tetsuki/Goban;

    .line 8
    new-instance v0, Lbe/gentgo/tetsuki/PlayerTimer;

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/Game;->getLongBlackTimer()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lbe/gentgo/tetsuki/PlayerTimer;-><init>(J)V

    iput-object v0, p0, Lbe/gentgo/tetsuki/Game;->blackTimer:Lbe/gentgo/tetsuki/PlayerTimer;

    .line 9
    new-instance v0, Lbe/gentgo/tetsuki/PlayerTimer;

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/Game;->getLongWhiteTimer()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lbe/gentgo/tetsuki/PlayerTimer;-><init>(J)V

    iput-object v0, p0, Lbe/gentgo/tetsuki/Game;->whiteTimer:Lbe/gentgo/tetsuki/PlayerTimer;

    .line 10
    new-instance v0, Lbe/gentgo/tetsuki/Conversation;

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/Game;->getLongConversation()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lbe/gentgo/tetsuki/Conversation;-><init>(J)V

    iput-object v0, p0, Lbe/gentgo/tetsuki/Game;->conversation:Lbe/gentgo/tetsuki/Conversation;

    .line 11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbe/gentgo/tetsuki/Game;->ownedByJava:Z

    .line 12
    return-void
.end method

.method protected static native deleteGame(J)V
.end method

.method private native getLongVariation(II)J
.end method

.method protected static native newGameWithSettings(J)J
.end method


# virtual methods
.method public native Wind(IZ)V
.end method

.method public WindToBegin()V
    .locals 2

    .prologue
    .line 83
    const/16 v0, -0x270f

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lbe/gentgo/tetsuki/Game;->Wind(IZ)V

    return-void
.end method

.method public WindToEnd()V
    .locals 2

    .prologue
    .line 84
    const/16 v0, 0x270f

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lbe/gentgo/tetsuki/Game;->Wind(IZ)V

    return-void
.end method

.method public native deleteCurrentMove()V
.end method

.method public native done(ZZ)Z
.end method

.method public finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 24
    iget-boolean v0, p0, Lbe/gentgo/tetsuki/Game;->ownedByJava:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lbe/gentgo/tetsuki/Game;->nativePointer:J

    invoke-static {v0, v1}, Lbe/gentgo/tetsuki/Game;->deleteGame(J)V

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public native forwardIntoVariation(Lbe/gentgo/tetsuki/Position;Z)Z
.end method

.method public getBlackPlayerTimer()Lbe/gentgo/tetsuki/PlayerTimer;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lbe/gentgo/tetsuki/Game;->blackTimer:Lbe/gentgo/tetsuki/PlayerTimer;

    return-object v0
.end method

.method public native getBlackPrisoners()I
.end method

.method public getCommentedVariation(II)Lbe/gentgo/tetsuki/Game;
    .locals 4
    .param p1, "moveNr"    # I
    .param p2, "index"    # I

    .prologue
    .line 62
    new-instance v0, Lbe/gentgo/tetsuki/Game;

    invoke-direct {p0, p1, p2}, Lbe/gentgo/tetsuki/Game;->getLongVariation(II)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lbe/gentgo/tetsuki/Game;-><init>(J)V

    return-object v0
.end method

.method public getConversation()Lbe/gentgo/tetsuki/Conversation;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lbe/gentgo/tetsuki/Game;->conversation:Lbe/gentgo/tetsuki/Conversation;

    return-object v0
.end method

.method public native getCurrentCapture(ILbe/gentgo/tetsuki/Position;)V
.end method

.method public native getCurrentMove(Lbe/gentgo/tetsuki/Position;)Z
.end method

.method public getGameSettings()Lbe/gentgo/tetsuki/GameSettings;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lbe/gentgo/tetsuki/Game;->gameSettings:Lbe/gentgo/tetsuki/GameSettings;

    return-object v0
.end method

.method public getGoban()Lbe/gentgo/tetsuki/Goban;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lbe/gentgo/tetsuki/Game;->currentBoard:Lbe/gentgo/tetsuki/Goban;

    return-object v0
.end method

.method public native getLastMoveNr(Z)I
.end method

.method protected native getLongBlackTimer()J
.end method

.method protected native getLongConversation()J
.end method

.method protected native getLongGameSettings()J
.end method

.method protected native getLongGoban()J
.end method

.method protected native getLongWhiteTimer()J
.end method

.method public native getMoveNr(Z)I
.end method

.method public native getMoveNrOfStone(Lbe/gentgo/tetsuki/Position;)I
.end method

.method public native getMoveNrWithCommentedVariation(II)I
.end method

.method public native getNextMove(ILbe/gentgo/tetsuki/Position;)V
.end method

.method public native getNrOfCommentedVariationsAtMove(I)I
.end method

.method public native getNrOfCurrentCaptures()I
.end method

.method public native getNrOfMovesAfterCurrentMove(Z)I
.end method

.method public native getNrOfMovesWithCommentedVariations(I)I
.end method

.method public native getNrOfNextMoves()I
.end method

.method public native getPassCount()I
.end method

.method public getPlayerInTurn()Lbe/gentgo/tetsuki/Player;
    .locals 2

    .prologue
    .line 30
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/Game;->getTurn()I

    move-result v0

    .line 31
    .local v0, "turn":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lbe/gentgo/tetsuki/Game;->gameSettings:Lbe/gentgo/tetsuki/GameSettings;

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/GameSettings;->getBlackPlayer()Lbe/gentgo/tetsuki/Player;

    move-result-object v1

    .line 33
    :goto_0
    return-object v1

    .line 32
    :cond_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lbe/gentgo/tetsuki/Game;->gameSettings:Lbe/gentgo/tetsuki/GameSettings;

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/GameSettings;->getWhitePlayer()Lbe/gentgo/tetsuki/Player;

    move-result-object v1

    goto :goto_0

    .line 33
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public native getReconnectTimerSeconds(J)I
.end method

.method public native getTurn()I
.end method

.method public getWhitePlayerTimer()Lbe/gentgo/tetsuki/PlayerTimer;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lbe/gentgo/tetsuki/Game;->whiteTimer:Lbe/gentgo/tetsuki/PlayerTimer;

    return-object v0
.end method

.method public native getWhitePrisoners()I
.end method

.method public native handicap(I)Z
.end method

.method public native hasReconnectTimer()Z
.end method

.method public native isAfterLastMove()Z
.end method

.method public native isBeforeFirstMove()Z
.end method

.method public native isBlackDoneScoring()Z
.end method

.method public native isLastMovePlayMove(Lbe/gentgo/tetsuki/Position;)Z
.end method

.method public native isMovePlayMove(ILbe/gentgo/tetsuki/Position;)Z
.end method

.method public native isOver()Z
.end method

.method public native isScoring()Z
.end method

.method public native isWhiteDoneScoring()Z
.end method

.method public native isWonOnPoints()Z
.end method

.method public native isWonOnTime()Z
.end method

.method public native pass(Z)Z
.end method

.method public native play(Lbe/gentgo/tetsuki/Position;ZZ)Z
.end method

.method public native removeDeadGroup(Lbe/gentgo/tetsuki/Position;)Z
.end method

.method public native resign(IZZ)Z
.end method

.method public native saveCopy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public native toggleDame(Lbe/gentgo/tetsuki/Position;)Z
.end method
