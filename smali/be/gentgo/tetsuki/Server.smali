.class public Lbe/gentgo/tetsuki/Server;
.super Lbe/gentgo/tetsuki/NativeObject;
.source "Server.java"


# static fields
.field public static final connected:I = 0x0

.field public static final connecting:I = 0x3

.field public static final couldNotConnect:I = 0x1

.field public static final disconnected:I = 0x2

.field public static final disconnectedVoluntarily:I = 0x4

.field public static final reportNoGameSituation:I = 0x66

.field public static final reportOffensiveChatWhilePlaying:I = 0x65

.field public static final reportOffensiveChatWhileScoring:I = 0x69

.field public static final reportScoringDisagreement:I = 0x68

.field public static final reportTerritoryNotClosed:I = 0x67

.field public static final reportUselessMoves:I = 0x64


# direct methods
.method constructor <init>(Z)V
    .locals 2
    .param p1, "singleGame"    # Z

    .prologue
    .line 5
    invoke-static {p1}, Lbe/gentgo/tetsuki/Server;->newServer(Z)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lbe/gentgo/tetsuki/NativeObject;-><init>(J)V

    return-void
.end method

.method private native addLongObserveHints(J)V
.end method

.method private native connectFromLongObserveHints(J)V
.end method

.method private static native deleteServer(J)V
.end method

.method private native getLongSeekTimeSettings(I)J
.end method

.method private native longObserveError()J
.end method

.method private native longObserveGame(I)J
.end method

.method private native longObserveInvitations()J
.end method

.method private native longObserveMyNextGame()J
.end method

.method private native longObservePlayer(Ljava/lang/String;)J
.end method

.method private native longObserveRoomChange()J
.end method

.method private native longObserveUndoRequest()J
.end method

.method private native longRequestGameDetails(I)J
.end method

.method private native longRequestGameList()J
.end method

.method private native longRequestPlayerDetails(J)J
.end method

.method private native longRequestPlayerList()J
.end method

.method private native longRequestPlayerListNow()J
.end method

.method private static native newServer(Z)J
.end method


# virtual methods
.method public native acceptInvitation(J)V
.end method

.method public addObserveHints(Lbe/gentgo/tetsuki/ObserveHints;)V
    .locals 2
    .param p1, "hints"    # Lbe/gentgo/tetsuki/ObserveHints;

    .prologue
    .line 41
    iget-wide v0, p1, Lbe/gentgo/tetsuki/ObserveHints;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lbe/gentgo/tetsuki/Server;->addLongObserveHints(J)V

    return-void
.end method

.method public native answerUndoRequest(Z)V
.end method

.method public native changePassword(Ljava/lang/String;)Z
.end method

.method public connectFromObserveHints(Lbe/gentgo/tetsuki/ObserveHints;)V
    .locals 2
    .param p1, "hints"    # Lbe/gentgo/tetsuki/ObserveHints;

    .prologue
    .line 12
    iget-wide v0, p1, Lbe/gentgo/tetsuki/ObserveHints;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lbe/gentgo/tetsuki/Server;->connectFromLongObserveHints(J)V

    return-void
.end method

.method public native connectFromPreferences(Z)V
.end method

.method public native declineInvitation(J)V
.end method

.method public native disconnect(Z)V
.end method

.method public native donateTime(I)V
.end method

.method public native done()Z
.end method

.method public native enterRoom(I)V
.end method

.method public finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 6
    iget-wide v0, p0, Lbe/gentgo/tetsuki/Server;->nativePointer:J

    invoke-static {v0, v1}, Lbe/gentgo/tetsuki/Server;->deleteServer(J)V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public native getCurrentRoomID()I
.end method

.method public native getErrorState()I
.end method

.method public native getMyGameID()I
.end method

.method public native getMyID()Ljava/lang/String;
.end method

.method public native getNrOfRooms()I
.end method

.method public native getNrOfSeekTimeSettings()I
.end method

.method public native getRoomID(I)I
.end method

.method public native getRoomName(IZ)[B
.end method

.method public getSeekTimeSettings(I)Lbe/gentgo/tetsuki/GameTimeSettings;
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 69
    new-instance v0, Lbe/gentgo/tetsuki/GameTimeSettings;

    invoke-direct {p0, p1}, Lbe/gentgo/tetsuki/Server;->getLongSeekTimeSettings(I)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lbe/gentgo/tetsuki/GameTimeSettings;-><init>(J)V

    return-object v0
.end method

.method public native invite(J)V
.end method

.method public native isGuestLogin()Z
.end method

.method public native isMyFriend(Ljava/lang/String;)Z
.end method

.method public native isPasswordValid(Ljava/lang/String;)Z
.end method

.method public native kibitz(I[B)V
.end method

.method public native longObserveFriends()J
.end method

.method public native markAsFriend(Ljava/lang/String;Z)V
.end method

.method public native markInvitationAsRead(J)V
.end method

.method public observeError()Lbe/gentgo/tetsuki/Messenger;
    .locals 4

    .prologue
    .line 26
    new-instance v0, Lbe/gentgo/tetsuki/Messenger;

    invoke-direct {p0}, Lbe/gentgo/tetsuki/Server;->longObserveError()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lbe/gentgo/tetsuki/Messenger;-><init>(J)V

    return-object v0
.end method

.method public observeFriends()Lbe/gentgo/tetsuki/Messenger;
    .locals 4

    .prologue
    .line 115
    new-instance v0, Lbe/gentgo/tetsuki/Messenger;

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/Server;->longObserveFriends()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lbe/gentgo/tetsuki/Messenger;-><init>(J)V

    return-object v0
.end method

.method public observeGame(I)Lbe/gentgo/tetsuki/GameRequest;
    .locals 4
    .param p1, "gameID"    # I

    .prologue
    .line 48
    new-instance v0, Lbe/gentgo/tetsuki/GameRequest;

    invoke-direct {p0, p1}, Lbe/gentgo/tetsuki/Server;->longObserveGame(I)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lbe/gentgo/tetsuki/GameRequest;-><init>(J)V

    return-object v0
.end method

.method public observeInvitations()Lbe/gentgo/tetsuki/InvitationsRequest;
    .locals 4

    .prologue
    .line 71
    new-instance v0, Lbe/gentgo/tetsuki/InvitationsRequest;

    invoke-direct {p0}, Lbe/gentgo/tetsuki/Server;->longObserveInvitations()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lbe/gentgo/tetsuki/InvitationsRequest;-><init>(J)V

    return-object v0
.end method

.method public observeMyNextGame()Lbe/gentgo/tetsuki/GameRequest;
    .locals 4

    .prologue
    .line 52
    new-instance v0, Lbe/gentgo/tetsuki/GameRequest;

    invoke-direct {p0}, Lbe/gentgo/tetsuki/Server;->longObserveMyNextGame()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lbe/gentgo/tetsuki/GameRequest;-><init>(J)V

    return-object v0
.end method

.method public observePlayer(Ljava/lang/String;)Lbe/gentgo/tetsuki/Messenger;
    .locals 4
    .param p1, "playerID"    # Ljava/lang/String;

    .prologue
    .line 55
    new-instance v0, Lbe/gentgo/tetsuki/Messenger;

    invoke-direct {p0, p1}, Lbe/gentgo/tetsuki/Server;->longObservePlayer(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lbe/gentgo/tetsuki/Messenger;-><init>(J)V

    return-object v0
.end method

.method public observeRoomChange()Lbe/gentgo/tetsuki/Messenger;
    .locals 4

    .prologue
    .line 95
    new-instance v0, Lbe/gentgo/tetsuki/Messenger;

    invoke-direct {p0}, Lbe/gentgo/tetsuki/Server;->longObserveRoomChange()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lbe/gentgo/tetsuki/Messenger;-><init>(J)V

    return-object v0
.end method

.method public observeUndoRequest()Lbe/gentgo/tetsuki/Messenger;
    .locals 4

    .prologue
    .line 92
    new-instance v0, Lbe/gentgo/tetsuki/Messenger;

    invoke-direct {p0}, Lbe/gentgo/tetsuki/Server;->longObserveUndoRequest()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lbe/gentgo/tetsuki/Messenger;-><init>(J)V

    return-object v0
.end method

.method public native pass()V
.end method

.method public native ping()V
.end method

.method public native playAt(Lbe/gentgo/tetsuki/Position;)Z
.end method

.method public native playHandicap(I)Z
.end method

.method public native recount()V
.end method

.method public native removeDeadStones(Lbe/gentgo/tetsuki/Position;)Z
.end method

.method public native report(I)V
.end method

.method public native requestForUndo()V
.end method

.method public requestGameDetails(I)Lbe/gentgo/tetsuki/GameDetailsRequest;
    .locals 4
    .param p1, "gameID"    # I

    .prologue
    .line 44
    new-instance v0, Lbe/gentgo/tetsuki/GameDetailsRequest;

    invoke-direct {p0, p1}, Lbe/gentgo/tetsuki/Server;->longRequestGameDetails(I)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lbe/gentgo/tetsuki/GameDetailsRequest;-><init>(J)V

    return-object v0
.end method

.method public requestGameList()Lbe/gentgo/tetsuki/GameListRequest;
    .locals 4

    .prologue
    .line 40
    new-instance v0, Lbe/gentgo/tetsuki/GameListRequest;

    invoke-direct {p0}, Lbe/gentgo/tetsuki/Server;->longRequestGameList()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lbe/gentgo/tetsuki/GameListRequest;-><init>(J)V

    return-object v0
.end method

.method public requestPlayerDetails(Lbe/gentgo/tetsuki/Player;)Lbe/gentgo/tetsuki/PlayerDetailsRequest;
    .locals 4
    .param p1, "player"    # Lbe/gentgo/tetsuki/Player;

    .prologue
    .line 37
    new-instance v0, Lbe/gentgo/tetsuki/PlayerDetailsRequest;

    iget-wide v2, p1, Lbe/gentgo/tetsuki/Player;->nativePointer:J

    invoke-direct {p0, v2, v3}, Lbe/gentgo/tetsuki/Server;->longRequestPlayerDetails(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lbe/gentgo/tetsuki/PlayerDetailsRequest;-><init>(J)V

    return-object v0
.end method

.method public requestPlayerList()Lbe/gentgo/tetsuki/PlayerListRequest;
    .locals 4

    .prologue
    .line 29
    new-instance v0, Lbe/gentgo/tetsuki/PlayerListRequest;

    invoke-direct {p0}, Lbe/gentgo/tetsuki/Server;->longRequestPlayerList()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lbe/gentgo/tetsuki/PlayerListRequest;-><init>(J)V

    return-object v0
.end method

.method public requestPlayerListNow()Lbe/gentgo/tetsuki/PlayerListRequest;
    .locals 4

    .prologue
    .line 33
    new-instance v0, Lbe/gentgo/tetsuki/PlayerListRequest;

    invoke-direct {p0}, Lbe/gentgo/tetsuki/Server;->longRequestPlayerListNow()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lbe/gentgo/tetsuki/PlayerListRequest;-><init>(J)V

    return-object v0
.end method

.method public native resign()V
.end method

.method public native say([B)V
.end method

.method public native sayTo([BLjava/lang/String;)V
.end method

.method public native setMyInfoText([B)V
.end method

.method public native setStatus(I)V
.end method

.method public native toggleDame(Lbe/gentgo/tetsuki/Position;)Z
.end method
