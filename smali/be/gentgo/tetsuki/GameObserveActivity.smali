.class public Lbe/gentgo/tetsuki/GameObserveActivity;
.super Lbe/gentgo/tetsuki/OnlineGameActivity;
.source "GameObserveActivity.java"


# static fields
.field private static sGameID:I

.field private static sSpecialServer:Lbe/gentgo/tetsuki/Server;


# instance fields
.field protected gameID:I

.field private gameListener:Lbe/gentgo/tetsuki/Listener;

.field protected gameRequest:Lbe/gentgo/tetsuki/GameRequest;

.field private reconnectListener:Lbe/gentgo/tetsuki/Listener;

.field protected specialServer:Lbe/gentgo/tetsuki/Server;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 167
    const/4 v0, -0x1

    sput v0, Lbe/gentgo/tetsuki/GameObserveActivity;->sGameID:I

    .line 168
    const/4 v0, 0x0

    sput-object v0, Lbe/gentgo/tetsuki/GameObserveActivity;->sSpecialServer:Lbe/gentgo/tetsuki/Server;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5
    invoke-direct {p0}, Lbe/gentgo/tetsuki/OnlineGameActivity;-><init>()V

    .line 9
    const/4 v0, -0x1

    iput v0, p0, Lbe/gentgo/tetsuki/GameObserveActivity;->gameID:I

    .line 10
    iput-object v1, p0, Lbe/gentgo/tetsuki/GameObserveActivity;->specialServer:Lbe/gentgo/tetsuki/Server;

    .line 41
    new-instance v0, Lbe/gentgo/tetsuki/GameObserveActivity$1;

    invoke-direct {v0, p0}, Lbe/gentgo/tetsuki/GameObserveActivity$1;-><init>(Lbe/gentgo/tetsuki/GameObserveActivity;)V

    iput-object v0, p0, Lbe/gentgo/tetsuki/GameObserveActivity;->reconnectListener:Lbe/gentgo/tetsuki/Listener;

    .line 108
    new-instance v0, Lbe/gentgo/tetsuki/GameObserveActivity$2;

    invoke-direct {v0, p0}, Lbe/gentgo/tetsuki/GameObserveActivity$2;-><init>(Lbe/gentgo/tetsuki/GameObserveActivity;)V

    iput-object v0, p0, Lbe/gentgo/tetsuki/GameObserveActivity;->gameListener:Lbe/gentgo/tetsuki/Listener;

    .line 164
    iput-object v1, p0, Lbe/gentgo/tetsuki/GameObserveActivity;->gameRequest:Lbe/gentgo/tetsuki/GameRequest;

    .line 5
    return-void
.end method

.method private releaseRequest()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lbe/gentgo/tetsuki/GameObserveActivity;->gameRequest:Lbe/gentgo/tetsuki/GameRequest;

    if-nez v0, :cond_0

    .line 71
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lbe/gentgo/tetsuki/GameObserveActivity;->gameRequest:Lbe/gentgo/tetsuki/GameRequest;

    iget-object v1, p0, Lbe/gentgo/tetsuki/GameObserveActivity;->gameListener:Lbe/gentgo/tetsuki/Listener;

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/GameRequest;->removeListener(Lbe/gentgo/tetsuki/Listener;)V

    .line 69
    iget-object v0, p0, Lbe/gentgo/tetsuki/GameObserveActivity;->gameRequest:Lbe/gentgo/tetsuki/GameRequest;

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/GameRequest;->release()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lbe/gentgo/tetsuki/GameObserveActivity;->gameRequest:Lbe/gentgo/tetsuki/GameRequest;

    goto :goto_0
.end method

.method public static setStaticGameAndServer(ILbe/gentgo/tetsuki/Server;)V
    .locals 0
    .param p0, "id"    # I
    .param p1, "server"    # Lbe/gentgo/tetsuki/Server;

    .prologue
    .line 8
    sput p0, Lbe/gentgo/tetsuki/GameObserveActivity;->sGameID:I

    sput-object p1, Lbe/gentgo/tetsuki/GameObserveActivity;->sSpecialServer:Lbe/gentgo/tetsuki/Server;

    return-void
.end method


# virtual methods
.method public canSpeak()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 117
    iget-object v1, p0, Lbe/gentgo/tetsuki/GameObserveActivity;->game:Lbe/gentgo/tetsuki/Game;

    if-nez v1, :cond_1

    .line 122
    :cond_0
    :goto_0
    return v0

    .line 118
    :cond_1
    iget-object v1, p0, Lbe/gentgo/tetsuki/GameObserveActivity;->specialServer:Lbe/gentgo/tetsuki/Server;

    if-nez v1, :cond_0

    .line 119
    iget-object v1, p0, Lbe/gentgo/tetsuki/GameObserveActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/Game;->isOver()Z

    move-result v1

    if-nez v1, :cond_0

    .line 120
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameObserveActivity;->getServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v1

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/Server;->getErrorState()I

    move-result v1

    if-nez v1, :cond_0

    .line 121
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameObserveActivity;->getServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v1

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/Server;->isGuestLogin()Z

    move-result v1

    if-nez v1, :cond_0

    .line 122
    const/4 v0, 0x1

    goto :goto_0
.end method

.method getServer()Lbe/gentgo/tetsuki/Server;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lbe/gentgo/tetsuki/GameObserveActivity;->specialServer:Lbe/gentgo/tetsuki/Server;

    if-nez v0, :cond_0

    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v0

    .line 26
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lbe/gentgo/tetsuki/GameObserveActivity;->specialServer:Lbe/gentgo/tetsuki/Server;

    goto :goto_0
.end method

.method public infoTextForChatView()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 131
    iget-object v6, p0, Lbe/gentgo/tetsuki/GameObserveActivity;->specialServer:Lbe/gentgo/tetsuki/Server;

    if-eqz v6, :cond_0

    const-string v6, ""

    .line 161
    :goto_0
    return-object v6

    .line 133
    :cond_0
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameObserveActivity;->getServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v6

    invoke-virtual {v6}, Lbe/gentgo/tetsuki/Server;->requestPlayerListNow()Lbe/gentgo/tetsuki/PlayerListRequest;

    move-result-object v5

    .line 134
    .local v5, "playersreq":Lbe/gentgo/tetsuki/PlayerListRequest;
    invoke-virtual {v5}, Lbe/gentgo/tetsuki/PlayerListRequest;->isDone()Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, ""

    goto :goto_0

    .line 135
    :cond_1
    const-string v3, ""

    .line 136
    .local v3, "observerNames":Ljava/lang/String;
    const/4 v0, 0x0

    .line 137
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v5}, Lbe/gentgo/tetsuki/PlayerListRequest;->getNrOfPlayers()I

    move-result v6

    if-lt v2, v6, :cond_2

    .line 156
    if-nez v0, :cond_7

    .line 157
    const v6, 0x7f080150

    invoke-virtual {p0, v6}, Lbe/gentgo/tetsuki/GameObserveActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 139
    :cond_2
    invoke-virtual {v5, v2}, Lbe/gentgo/tetsuki/PlayerListRequest;->getPlayerAtIndex(I)Lbe/gentgo/tetsuki/Player;

    move-result-object v4

    .line 140
    .local v4, "player":Lbe/gentgo/tetsuki/Player;
    invoke-virtual {v4}, Lbe/gentgo/tetsuki/Player;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameObserveActivity;->getServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v7

    invoke-virtual {v7}, Lbe/gentgo/tetsuki/Server;->getMyID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 142
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameObserveActivity;->getServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v6

    invoke-virtual {v6}, Lbe/gentgo/tetsuki/Server;->getMyGameID()I

    move-result v6

    iget v7, p0, Lbe/gentgo/tetsuki/GameObserveActivity;->gameID:I

    if-ne v6, v7, :cond_5

    .line 137
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 147
    :cond_4
    invoke-virtual {v4}, Lbe/gentgo/tetsuki/Player;->getID()Ljava/lang/String;

    move-result-object v6

    const-string v7, "guest"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 148
    invoke-virtual {v4}, Lbe/gentgo/tetsuki/Player;->gameWatching()I

    move-result v1

    .line 149
    .local v1, "gameNr":I
    if-ltz v1, :cond_3

    iget v6, p0, Lbe/gentgo/tetsuki/GameObserveActivity;->gameID:I

    if-ne v1, v6, :cond_3

    .line 152
    .end local v1    # "gameNr":I
    :cond_5
    add-int/lit8 v0, v0, 0x1

    .line 153
    if-ne v0, v9, :cond_6

    invoke-virtual {v4}, Lbe/gentgo/tetsuki/Player;->getID()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 154
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lbe/gentgo/tetsuki/Player;->getID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 158
    .end local v4    # "player":Lbe/gentgo/tetsuki/Player;
    :cond_7
    if-ne v0, v9, :cond_8

    .line 159
    const v6, 0x7f08014e

    invoke-virtual {p0, v6}, Lbe/gentgo/tetsuki/GameObserveActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v3, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 161
    :cond_8
    const v6, 0x7f08014f

    invoke-virtual {p0, v6}, Lbe/gentgo/tetsuki/GameObserveActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    aput-object v3, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0
.end method

.method public nrOfMovesToShowCommentMarks()I
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x5

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 13
    invoke-super {p0, p1}, Lbe/gentgo/tetsuki/OnlineGameActivity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    sget-object v0, Lbe/gentgo/tetsuki/GameObserveActivity;->sSpecialServer:Lbe/gentgo/tetsuki/Server;

    iput-object v0, p0, Lbe/gentgo/tetsuki/GameObserveActivity;->specialServer:Lbe/gentgo/tetsuki/Server;

    .line 16
    sget v0, Lbe/gentgo/tetsuki/GameObserveActivity;->sGameID:I

    if-ltz v0, :cond_0

    sget v0, Lbe/gentgo/tetsuki/GameObserveActivity;->sGameID:I

    invoke-virtual {p0, v0}, Lbe/gentgo/tetsuki/GameObserveActivity;->setObserveGameID(I)V

    .line 18
    :cond_0
    const/4 v0, -0x1

    sput v0, Lbe/gentgo/tetsuki/GameObserveActivity;->sGameID:I

    .line 19
    const/4 v0, 0x0

    sput-object v0, Lbe/gentgo/tetsuki/GameObserveActivity;->sSpecialServer:Lbe/gentgo/tetsuki/Server;

    .line 21
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameObserveActivity;->getServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v0

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/Server;->observeError()Lbe/gentgo/tetsuki/Messenger;

    move-result-object v0

    iget-object v1, p0, Lbe/gentgo/tetsuki/GameObserveActivity;->reconnectListener:Lbe/gentgo/tetsuki/Listener;

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/Messenger;->addListener(Lbe/gentgo/tetsuki/Listener;)V

    .line 22
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 32
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameObserveActivity;->getServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v0

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/Server;->observeError()Lbe/gentgo/tetsuki/Messenger;

    move-result-object v0

    iget-object v1, p0, Lbe/gentgo/tetsuki/GameObserveActivity;->reconnectListener:Lbe/gentgo/tetsuki/Listener;

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/Messenger;->removeListener(Lbe/gentgo/tetsuki/Listener;)V

    .line 33
    invoke-direct {p0}, Lbe/gentgo/tetsuki/GameObserveActivity;->releaseRequest()V

    .line 34
    iget-object v0, p0, Lbe/gentgo/tetsuki/GameObserveActivity;->specialServer:Lbe/gentgo/tetsuki/Server;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbe/gentgo/tetsuki/GameObserveActivity;->specialServer:Lbe/gentgo/tetsuki/Server;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/Server;->disconnect(Z)V

    .line 35
    :cond_0
    invoke-super {p0}, Lbe/gentgo/tetsuki/OnlineGameActivity;->onDestroy()V

    .line 36
    return-void
.end method

.method public onGobanTapped(Lbe/gentgo/tetsuki/Position;Z)V
    .locals 2
    .param p1, "pos"    # Lbe/gentgo/tetsuki/Position;
    .param p2, "accurate"    # Z

    .prologue
    const/4 v1, 0x1

    .line 95
    invoke-virtual {p0, p1, p2}, Lbe/gentgo/tetsuki/GameObserveActivity;->checkCommentTap(Lbe/gentgo/tetsuki/Position;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    :goto_0
    return-void

    .line 97
    :cond_0
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameObserveActivity;->isMyTurn()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameObserveActivity;->isZoomEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 99
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, v1}, Lbe/gentgo/tetsuki/GameObserveActivity;->goForward(IZZ)V

    goto :goto_0

    .line 102
    :cond_1
    invoke-super {p0, p1, p2}, Lbe/gentgo/tetsuki/OnlineGameActivity;->onGobanTapped(Lbe/gentgo/tetsuki/Position;Z)V

    goto :goto_0
.end method

.method public setObserveGameID(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 74
    iget v0, p0, Lbe/gentgo/tetsuki/GameObserveActivity;->gameID:I

    if-ne v0, p1, :cond_1

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    iget-object v0, p0, Lbe/gentgo/tetsuki/GameObserveActivity;->gameRequest:Lbe/gentgo/tetsuki/GameRequest;

    if-eqz v0, :cond_2

    if-ltz p1, :cond_2

    .line 80
    invoke-direct {p0}, Lbe/gentgo/tetsuki/GameObserveActivity;->releaseRequest()V

    .line 83
    :cond_2
    iput p1, p0, Lbe/gentgo/tetsuki/GameObserveActivity;->gameID:I

    .line 85
    iget v0, p0, Lbe/gentgo/tetsuki/GameObserveActivity;->gameID:I

    if-ltz v0, :cond_0

    .line 87
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameObserveActivity;->getServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v0

    iget v1, p0, Lbe/gentgo/tetsuki/GameObserveActivity;->gameID:I

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/Server;->observeGame(I)Lbe/gentgo/tetsuki/GameRequest;

    move-result-object v0

    iput-object v0, p0, Lbe/gentgo/tetsuki/GameObserveActivity;->gameRequest:Lbe/gentgo/tetsuki/GameRequest;

    .line 88
    iget-object v0, p0, Lbe/gentgo/tetsuki/GameObserveActivity;->gameRequest:Lbe/gentgo/tetsuki/GameRequest;

    iget-object v1, p0, Lbe/gentgo/tetsuki/GameObserveActivity;->gameListener:Lbe/gentgo/tetsuki/Listener;

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/GameRequest;->addListener(Lbe/gentgo/tetsuki/Listener;)V

    .line 89
    iget-object v0, p0, Lbe/gentgo/tetsuki/GameObserveActivity;->gameRequest:Lbe/gentgo/tetsuki/GameRequest;

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/GameRequest;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbe/gentgo/tetsuki/GameObserveActivity;->gameListener:Lbe/gentgo/tetsuki/Listener;

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/Listener;->Do()Z

    goto :goto_0
.end method

.method public speak(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 126
    iget-object v0, p0, Lbe/gentgo/tetsuki/GameObserveActivity;->specialServer:Lbe/gentgo/tetsuki/Server;

    if-eqz v0, :cond_0

    .line 128
    :goto_0
    return-void

    .line 127
    :cond_0
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameObserveActivity;->getServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v0

    iget v1, p0, Lbe/gentgo/tetsuki/GameObserveActivity;->gameID:I

    invoke-static {p1}, Lbe/gentgo/tetsuki/Preferences;->encode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbe/gentgo/tetsuki/Server;->kibitz(I[B)V

    goto :goto_0
.end method
