.class public Lbe/gentgo/tetsuki/GamePlayActivity;
.super Lbe/gentgo/tetsuki/OnlineGameActivity;
.source "GamePlayActivity.java"


# static fields
.field private static myColor:I

.field private static sCurrentGameRequest:Lbe/gentgo/tetsuki/GameRequest;

.field private static final sGameListener:Lbe/gentgo/tetsuki/Listener;

.field private static sGameOverDialog:Landroid/app/Dialog;

.field private static sInstance:Lbe/gentgo/tetsuki/GamePlayActivity;

.field private static final sNextGameListener:Lbe/gentgo/tetsuki/Listener;

.field private static sNextGameRequest:Lbe/gentgo/tetsuki/GameRequest;

.field private static sOpponentConnectedAccordingToLastAlert:Z

.field private static sOpponentConnectionDialog:Landroid/app/Dialog;

.field private static sOpponentDetailsRequest:Lbe/gentgo/tetsuki/PlayerDetailsRequest;

.field private static sUndoListener:Lbe/gentgo/tetsuki/Listener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 278
    const/4 v0, 0x0

    sput v0, Lbe/gentgo/tetsuki/GamePlayActivity;->myColor:I

    .line 279
    sput-object v1, Lbe/gentgo/tetsuki/GamePlayActivity;->sOpponentDetailsRequest:Lbe/gentgo/tetsuki/PlayerDetailsRequest;

    .line 281
    sput-object v1, Lbe/gentgo/tetsuki/GamePlayActivity;->sNextGameRequest:Lbe/gentgo/tetsuki/GameRequest;

    .line 282
    new-instance v0, Lbe/gentgo/tetsuki/GamePlayActivity$1;

    invoke-direct {v0}, Lbe/gentgo/tetsuki/GamePlayActivity$1;-><init>()V

    sput-object v0, Lbe/gentgo/tetsuki/GamePlayActivity;->sNextGameListener:Lbe/gentgo/tetsuki/Listener;

    .line 319
    sput-object v1, Lbe/gentgo/tetsuki/GamePlayActivity;->sCurrentGameRequest:Lbe/gentgo/tetsuki/GameRequest;

    .line 321
    new-instance v0, Lbe/gentgo/tetsuki/GamePlayActivity$2;

    invoke-direct {v0}, Lbe/gentgo/tetsuki/GamePlayActivity$2;-><init>()V

    sput-object v0, Lbe/gentgo/tetsuki/GamePlayActivity;->sGameListener:Lbe/gentgo/tetsuki/Listener;

    .line 413
    new-instance v0, Lbe/gentgo/tetsuki/GamePlayActivity$3;

    invoke-direct {v0}, Lbe/gentgo/tetsuki/GamePlayActivity$3;-><init>()V

    sput-object v0, Lbe/gentgo/tetsuki/GamePlayActivity;->sUndoListener:Lbe/gentgo/tetsuki/Listener;

    .line 442
    sput-object v1, Lbe/gentgo/tetsuki/GamePlayActivity;->sGameOverDialog:Landroid/app/Dialog;

    .line 443
    sput-object v1, Lbe/gentgo/tetsuki/GamePlayActivity;->sOpponentConnectionDialog:Landroid/app/Dialog;

    .line 444
    const/4 v0, 0x1

    sput-boolean v0, Lbe/gentgo/tetsuki/GamePlayActivity;->sOpponentConnectedAccordingToLastAlert:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lbe/gentgo/tetsuki/OnlineGameActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0()Lbe/gentgo/tetsuki/GameRequest;
    .locals 1

    .prologue
    .line 281
    sget-object v0, Lbe/gentgo/tetsuki/GamePlayActivity;->sNextGameRequest:Lbe/gentgo/tetsuki/GameRequest;

    return-object v0
.end method

.method static synthetic access$1()Lbe/gentgo/tetsuki/GamePlayActivity;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lbe/gentgo/tetsuki/GamePlayActivity;->sInstance:Lbe/gentgo/tetsuki/GamePlayActivity;

    return-object v0
.end method

.method static synthetic access$10()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 442
    sget-object v0, Lbe/gentgo/tetsuki/GamePlayActivity;->sGameOverDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$11(Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 442
    sput-object p0, Lbe/gentgo/tetsuki/GamePlayActivity;->sGameOverDialog:Landroid/app/Dialog;

    return-void
.end method

.method static synthetic access$12()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 443
    sget-object v0, Lbe/gentgo/tetsuki/GamePlayActivity;->sOpponentConnectionDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$13(Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 443
    sput-object p0, Lbe/gentgo/tetsuki/GamePlayActivity;->sOpponentConnectionDialog:Landroid/app/Dialog;

    return-void
.end method

.method static synthetic access$14()Z
    .locals 1

    .prologue
    .line 444
    sget-boolean v0, Lbe/gentgo/tetsuki/GamePlayActivity;->sOpponentConnectedAccordingToLastAlert:Z

    return v0
.end method

.method static synthetic access$15(Z)V
    .locals 0

    .prologue
    .line 444
    sput-boolean p0, Lbe/gentgo/tetsuki/GamePlayActivity;->sOpponentConnectedAccordingToLastAlert:Z

    return-void
.end method

.method static synthetic access$2()Lbe/gentgo/tetsuki/GameRequest;
    .locals 1

    .prologue
    .line 319
    sget-object v0, Lbe/gentgo/tetsuki/GamePlayActivity;->sCurrentGameRequest:Lbe/gentgo/tetsuki/GameRequest;

    return-object v0
.end method

.method static synthetic access$3()Lbe/gentgo/tetsuki/Listener;
    .locals 1

    .prologue
    .line 321
    sget-object v0, Lbe/gentgo/tetsuki/GamePlayActivity;->sGameListener:Lbe/gentgo/tetsuki/Listener;

    return-object v0
.end method

.method static synthetic access$4(Lbe/gentgo/tetsuki/GameRequest;)V
    .locals 0

    .prologue
    .line 319
    sput-object p0, Lbe/gentgo/tetsuki/GamePlayActivity;->sCurrentGameRequest:Lbe/gentgo/tetsuki/GameRequest;

    return-void
.end method

.method static synthetic access$5()Lbe/gentgo/tetsuki/Listener;
    .locals 1

    .prologue
    .line 282
    sget-object v0, Lbe/gentgo/tetsuki/GamePlayActivity;->sNextGameListener:Lbe/gentgo/tetsuki/Listener;

    return-object v0
.end method

.method static synthetic access$6(Lbe/gentgo/tetsuki/GameRequest;)V
    .locals 0

    .prologue
    .line 281
    sput-object p0, Lbe/gentgo/tetsuki/GamePlayActivity;->sNextGameRequest:Lbe/gentgo/tetsuki/GameRequest;

    return-void
.end method

.method static synthetic access$7(I)V
    .locals 0

    .prologue
    .line 278
    sput p0, Lbe/gentgo/tetsuki/GamePlayActivity;->myColor:I

    return-void
.end method

.method static synthetic access$8()I
    .locals 1

    .prologue
    .line 278
    sget v0, Lbe/gentgo/tetsuki/GamePlayActivity;->myColor:I

    return v0
.end method

.method static synthetic access$9(Lbe/gentgo/tetsuki/PlayerDetailsRequest;)V
    .locals 0

    .prologue
    .line 279
    sput-object p0, Lbe/gentgo/tetsuki/GamePlayActivity;->sOpponentDetailsRequest:Lbe/gentgo/tetsuki/PlayerDetailsRequest;

    return-void
.end method

.method public static hasGameToShow()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 58
    sget-object v2, Lbe/gentgo/tetsuki/GamePlayActivity;->sCurrentGameRequest:Lbe/gentgo/tetsuki/GameRequest;

    if-nez v2, :cond_1

    .line 61
    .local v0, "game":Lbe/gentgo/tetsuki/Game;
    :cond_0
    :goto_0
    return v1

    .line 59
    .end local v0    # "game":Lbe/gentgo/tetsuki/Game;
    :cond_1
    sget-object v2, Lbe/gentgo/tetsuki/GamePlayActivity;->sCurrentGameRequest:Lbe/gentgo/tetsuki/GameRequest;

    invoke-virtual {v2}, Lbe/gentgo/tetsuki/GameRequest;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 60
    sget-object v2, Lbe/gentgo/tetsuki/GamePlayActivity;->sCurrentGameRequest:Lbe/gentgo/tetsuki/GameRequest;

    invoke-virtual {v2}, Lbe/gentgo/tetsuki/GameRequest;->getResult()Lbe/gentgo/tetsuki/Game;

    move-result-object v0

    .line 61
    .restart local v0    # "game":Lbe/gentgo/tetsuki/Game;
    invoke-virtual {v0}, Lbe/gentgo/tetsuki/Game;->isOver()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static init()V
    .locals 2

    .prologue
    .line 17
    sget-object v0, Lbe/gentgo/tetsuki/GamePlayActivity;->sNextGameRequest:Lbe/gentgo/tetsuki/GameRequest;

    if-eqz v0, :cond_0

    .line 18
    sget-object v0, Lbe/gentgo/tetsuki/GamePlayActivity;->sNextGameRequest:Lbe/gentgo/tetsuki/GameRequest;

    sget-object v1, Lbe/gentgo/tetsuki/GamePlayActivity;->sNextGameListener:Lbe/gentgo/tetsuki/Listener;

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/GameRequest;->removeListener(Lbe/gentgo/tetsuki/Listener;)V

    .line 19
    sget-object v0, Lbe/gentgo/tetsuki/GamePlayActivity;->sNextGameRequest:Lbe/gentgo/tetsuki/GameRequest;

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/GameRequest;->release()V

    .line 20
    const/4 v0, 0x0

    sput-object v0, Lbe/gentgo/tetsuki/GamePlayActivity;->sNextGameRequest:Lbe/gentgo/tetsuki/GameRequest;

    .line 23
    :cond_0
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v0

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/Server;->observeMyNextGame()Lbe/gentgo/tetsuki/GameRequest;

    move-result-object v0

    sput-object v0, Lbe/gentgo/tetsuki/GamePlayActivity;->sNextGameRequest:Lbe/gentgo/tetsuki/GameRequest;

    .line 24
    sget-object v0, Lbe/gentgo/tetsuki/GamePlayActivity;->sNextGameRequest:Lbe/gentgo/tetsuki/GameRequest;

    sget-object v1, Lbe/gentgo/tetsuki/GamePlayActivity;->sNextGameListener:Lbe/gentgo/tetsuki/Listener;

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/GameRequest;->addListener(Lbe/gentgo/tetsuki/Listener;)V

    .line 25
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v0

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/Server;->observeUndoRequest()Lbe/gentgo/tetsuki/Messenger;

    move-result-object v0

    sget-object v1, Lbe/gentgo/tetsuki/GamePlayActivity;->sUndoListener:Lbe/gentgo/tetsuki/Listener;

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/Messenger;->addListener(Lbe/gentgo/tetsuki/Listener;)V

    .line 26
    return-void
.end method


# virtual methods
.method public canIResign()Z
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lbe/gentgo/tetsuki/GamePlayActivity;->game:Lbe/gentgo/tetsuki/Game;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbe/gentgo/tetsuki/GamePlayActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/Game;->isOver()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canReport()Z
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lbe/gentgo/tetsuki/GamePlayActivity;->game:Lbe/gentgo/tetsuki/Game;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbe/gentgo/tetsuki/GamePlayActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/Game;->isOver()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canSpeak()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v1

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/Server;->getErrorState()I

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    :cond_0
    :goto_0
    return v0

    .line 79
    :cond_1
    sget-object v1, Lbe/gentgo/tetsuki/GamePlayActivity;->sCurrentGameRequest:Lbe/gentgo/tetsuki/GameRequest;

    if-eqz v1, :cond_0

    .line 80
    sget-object v1, Lbe/gentgo/tetsuki/GamePlayActivity;->sCurrentGameRequest:Lbe/gentgo/tetsuki/GameRequest;

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/GameRequest;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    sget-object v1, Lbe/gentgo/tetsuki/GamePlayActivity;->sCurrentGameRequest:Lbe/gentgo/tetsuki/GameRequest;

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/GameRequest;->getResult()Lbe/gentgo/tetsuki/Game;

    move-result-object v1

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/Game;->hasReconnectTimer()Z

    move-result v1

    if-nez v1, :cond_0

    .line 82
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public chooseHandicap(I)V
    .locals 1
    .param p1, "stones"    # I

    .prologue
    .line 273
    iget-object v0, p0, Lbe/gentgo/tetsuki/GamePlayActivity;->game:Lbe/gentgo/tetsuki/Game;

    if-nez v0, :cond_0

    .line 276
    :goto_0
    return-void

    .line 274
    :cond_0
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbe/gentgo/tetsuki/Server;->playHandicap(I)Z

    .line 275
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GamePlayActivity;->dismissScore()V

    goto :goto_0
.end method

.method public infoTextForChatView()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    const-string v0, ""

    return-object v0
.end method

.method public isMyTurn()Z
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lbe/gentgo/tetsuki/GamePlayActivity;->game:Lbe/gentgo/tetsuki/Game;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbe/gentgo/tetsuki/GamePlayActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/Game;->isScoring()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbe/gentgo/tetsuki/GamePlayActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/Game;->getTurn()I

    move-result v0

    sget v1, Lbe/gentgo/tetsuki/GamePlayActivity;->myColor:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpponentJapanese()Z
    .locals 2

    .prologue
    .line 447
    sget-object v0, Lbe/gentgo/tetsuki/GamePlayActivity;->sOpponentDetailsRequest:Lbe/gentgo/tetsuki/PlayerDetailsRequest;

    if-eqz v0, :cond_0

    sget-object v0, Lbe/gentgo/tetsuki/GamePlayActivity;->sOpponentDetailsRequest:Lbe/gentgo/tetsuki/PlayerDetailsRequest;

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/PlayerDetailsRequest;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    sget-object v0, Lbe/gentgo/tetsuki/GamePlayActivity;->sOpponentDetailsRequest:Lbe/gentgo/tetsuki/PlayerDetailsRequest;

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/PlayerDetailsRequest;->getResult()Lbe/gentgo/tetsuki/Player;

    move-result-object v0

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/Player;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Japan"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 450
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReplayEnabled()Z
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public isZoomEnabled()Z
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GamePlayActivity;->getGameView()Lbe/gentgo/tetsuki/GameView;

    move-result-object v0

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/GameView;->getTotalView()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 98
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lbe/gentgo/tetsuki/Preferences;->getZoom()Z

    move-result v0

    goto :goto_0
.end method

.method public onAddTimeTapped()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const v7, 0x7f080013

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 188
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 189
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f080171

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 191
    const/4 v2, 0x4

    new-array v1, v2, [Ljava/lang/String;

    .line 192
    .local v1, "names":[Ljava/lang/String;
    invoke-virtual {p0, v7}, Lbe/gentgo/tetsuki/GamePlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 193
    invoke-virtual {p0, v7}, Lbe/gentgo/tetsuki/GamePlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 194
    invoke-virtual {p0, v7}, Lbe/gentgo/tetsuki/GamePlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    const/16 v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    .line 195
    const/4 v2, 0x3

    invoke-virtual {p0, v7}, Lbe/gentgo/tetsuki/GamePlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    const/16 v5, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 196
    new-instance v2, Lbe/gentgo/tetsuki/GamePlayActivity$5;

    invoke-direct {v2, p0}, Lbe/gentgo/tetsuki/GamePlayActivity$5;-><init>(Lbe/gentgo/tetsuki/GamePlayActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 206
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 207
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lbe/gentgo/tetsuki/OnlineGameActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    sput-object p0, Lbe/gentgo/tetsuki/GamePlayActivity;->sInstance:Lbe/gentgo/tetsuki/GamePlayActivity;

    .line 33
    sget-object v0, Lbe/gentgo/tetsuki/GamePlayActivity;->sGameListener:Lbe/gentgo/tetsuki/Listener;

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/Listener;->Do()Z

    .line 34
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lbe/gentgo/tetsuki/GamePlayActivity;->sInstance:Lbe/gentgo/tetsuki/GamePlayActivity;

    if-ne p0, v0, :cond_0

    .line 39
    const/4 v0, 0x0

    sput-object v0, Lbe/gentgo/tetsuki/GamePlayActivity;->sInstance:Lbe/gentgo/tetsuki/GamePlayActivity;

    .line 40
    :cond_0
    invoke-super {p0}, Lbe/gentgo/tetsuki/OnlineGameActivity;->onDestroy()V

    .line 41
    return-void
.end method

.method public onDoneTapped()V
    .locals 4

    .prologue
    .line 252
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v2

    invoke-virtual {v2}, Lbe/gentgo/tetsuki/Server;->done()Z

    move-result v1

    .line 253
    .local v1, "result":Z
    if-nez v1, :cond_0

    .line 255
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 256
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0800ec

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 257
    const v2, 0x7f0800ed

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 258
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 259
    const v2, 0x7f08003b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 260
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 262
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_0
    return-void
.end method

.method public onGobanTapped(Lbe/gentgo/tetsuki/Position;Z)V
    .locals 9
    .param p1, "pos"    # Lbe/gentgo/tetsuki/Position;
    .param p2, "accurate"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 107
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GamePlayActivity;->getGameView()Lbe/gentgo/tetsuki/GameView;

    move-result-object v2

    .line 108
    .local v2, "gameView":Lbe/gentgo/tetsuki/GameView;
    if-nez p2, :cond_0

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GamePlayActivity;->isZoomEnabled()Z

    move-result v6

    if-nez v6, :cond_9

    :cond_0
    iget-object v6, p0, Lbe/gentgo/tetsuki/GamePlayActivity;->game:Lbe/gentgo/tetsuki/Game;

    if-eqz v6, :cond_9

    .line 110
    iget-object v6, p0, Lbe/gentgo/tetsuki/GamePlayActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v6}, Lbe/gentgo/tetsuki/Game;->getTurn()I

    move-result v6

    if-nez v6, :cond_6

    .line 112
    iget-object v6, p0, Lbe/gentgo/tetsuki/GamePlayActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v6}, Lbe/gentgo/tetsuki/Game;->getGoban()Lbe/gentgo/tetsuki/Goban;

    move-result-object v6

    invoke-virtual {v6, p1}, Lbe/gentgo/tetsuki/Goban;->hasStone(Lbe/gentgo/tetsuki/Position;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 114
    invoke-static {}, Lbe/gentgo/tetsuki/Preferences;->moveConfirmation()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v2, p1}, Lbe/gentgo/tetsuki/GameView;->getGhostState(Lbe/gentgo/tetsuki/Position;)I

    move-result v6

    if-nez v6, :cond_3

    .line 116
    new-instance v3, Lbe/gentgo/tetsuki/Chain;

    iget-object v6, p0, Lbe/gentgo/tetsuki/GamePlayActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v6}, Lbe/gentgo/tetsuki/Game;->getGoban()Lbe/gentgo/tetsuki/Goban;

    move-result-object v6

    invoke-direct {v3, p1, v6}, Lbe/gentgo/tetsuki/Chain;-><init>(Lbe/gentgo/tetsuki/Position;Lbe/gentgo/tetsuki/Goban;)V

    .line 117
    .local v3, "group":Lbe/gentgo/tetsuki/Chain;
    invoke-virtual {v3}, Lbe/gentgo/tetsuki/Chain;->size()I

    move-result v6

    new-array v1, v6, [Lbe/gentgo/tetsuki/Position;

    .line 118
    .local v1, "g":[Lbe/gentgo/tetsuki/Position;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v3}, Lbe/gentgo/tetsuki/Chain;->size()I

    move-result v6

    if-lt v4, v6, :cond_2

    .line 119
    iget-object v6, p0, Lbe/gentgo/tetsuki/GamePlayActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v6}, Lbe/gentgo/tetsuki/Game;->getGoban()Lbe/gentgo/tetsuki/Goban;

    move-result-object v6

    invoke-virtual {v6, p1}, Lbe/gentgo/tetsuki/Goban;->getState(Lbe/gentgo/tetsuki/Position;)I

    move-result v6

    invoke-virtual {v2, v1, v6}, Lbe/gentgo/tetsuki/GameView;->setGhostStones([Lbe/gentgo/tetsuki/Position;I)V

    .line 173
    .end local v1    # "g":[Lbe/gentgo/tetsuki/Position;
    .end local v3    # "group":Lbe/gentgo/tetsuki/Chain;
    .end local v4    # "i":I
    :cond_1
    :goto_1
    return-void

    .line 118
    .restart local v1    # "g":[Lbe/gentgo/tetsuki/Position;
    .restart local v3    # "group":Lbe/gentgo/tetsuki/Chain;
    .restart local v4    # "i":I
    :cond_2
    new-instance v6, Lbe/gentgo/tetsuki/Position;

    invoke-direct {v6, v7, v7}, Lbe/gentgo/tetsuki/Position;-><init>(II)V

    aput-object v6, v1, v4

    aget-object v6, v1, v4

    invoke-virtual {v3, v4, v6}, Lbe/gentgo/tetsuki/Chain;->getPosition(ILbe/gentgo/tetsuki/Position;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 122
    .end local v1    # "g":[Lbe/gentgo/tetsuki/Position;
    .end local v3    # "group":Lbe/gentgo/tetsuki/Chain;
    .end local v4    # "i":I
    :cond_3
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v6

    invoke-virtual {v6, p1}, Lbe/gentgo/tetsuki/Server;->removeDeadStones(Lbe/gentgo/tetsuki/Position;)Z

    goto :goto_1

    .line 127
    :cond_4
    invoke-virtual {v2}, Lbe/gentgo/tetsuki/GameView;->hasGhostStones()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v2, v8, v7}, Lbe/gentgo/tetsuki/GameView;->setGhostStones([Lbe/gentgo/tetsuki/Position;I)V

    goto :goto_1

    .line 128
    :cond_5
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v6

    invoke-virtual {v6, p1}, Lbe/gentgo/tetsuki/Server;->toggleDame(Lbe/gentgo/tetsuki/Position;)Z

    goto :goto_1

    .line 132
    :cond_6
    iget-object v6, p0, Lbe/gentgo/tetsuki/GamePlayActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v6}, Lbe/gentgo/tetsuki/Game;->getGoban()Lbe/gentgo/tetsuki/Goban;

    move-result-object v6

    invoke-virtual {v6, p1}, Lbe/gentgo/tetsuki/Goban;->hasStone(Lbe/gentgo/tetsuki/Position;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 135
    new-instance v5, Lbe/gentgo/tetsuki/Position;

    invoke-direct {v5, v7, v7}, Lbe/gentgo/tetsuki/Position;-><init>(II)V

    .line 136
    .local v5, "lastPos":Lbe/gentgo/tetsuki/Position;
    iget-object v6, p0, Lbe/gentgo/tetsuki/GamePlayActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v6, v5}, Lbe/gentgo/tetsuki/Game;->isLastMovePlayMove(Lbe/gentgo/tetsuki/Position;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 138
    invoke-virtual {p1, v5}, Lbe/gentgo/tetsuki/Position;->equals(Lbe/gentgo/tetsuki/Position;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 140
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 141
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0, p1}, Lbe/gentgo/tetsuki/GamePlayActivity;->descriptionForStone(Lbe/gentgo/tetsuki/Position;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 142
    const v6, 0x7f080099

    new-instance v7, Lbe/gentgo/tetsuki/GamePlayActivity$4;

    invoke-direct {v7, p0}, Lbe/gentgo/tetsuki/GamePlayActivity$4;-><init>(Lbe/gentgo/tetsuki/GamePlayActivity;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 148
    const v6, 0x7f080039

    invoke-virtual {v0, v6, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 149
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 153
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v5    # "lastPos":Lbe/gentgo/tetsuki/Position;
    :cond_7
    iget-object v6, p0, Lbe/gentgo/tetsuki/GamePlayActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v6}, Lbe/gentgo/tetsuki/Game;->getTurn()I

    move-result v6

    sget v7, Lbe/gentgo/tetsuki/GamePlayActivity;->myColor:I

    if-ne v6, v7, :cond_9

    iget-object v6, p0, Lbe/gentgo/tetsuki/GamePlayActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v6}, Lbe/gentgo/tetsuki/Game;->isAfterLastMove()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 155
    invoke-static {}, Lbe/gentgo/tetsuki/Preferences;->moveConfirmation()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v2, p1}, Lbe/gentgo/tetsuki/GameView;->getGhostState(Lbe/gentgo/tetsuki/Position;)I

    move-result v6

    if-nez v6, :cond_8

    .line 159
    iget-object v6, p0, Lbe/gentgo/tetsuki/GamePlayActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v6}, Lbe/gentgo/tetsuki/Game;->getGoban()Lbe/gentgo/tetsuki/Goban;

    move-result-object v6

    invoke-virtual {v6, p1}, Lbe/gentgo/tetsuki/Goban;->hasStone(Lbe/gentgo/tetsuki/Position;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 161
    sget v6, Lbe/gentgo/tetsuki/GamePlayActivity;->myColor:I

    invoke-virtual {v2, p1, v6}, Lbe/gentgo/tetsuki/GameView;->setGhostStone(Lbe/gentgo/tetsuki/Position;I)V

    goto/16 :goto_1

    .line 165
    :cond_8
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v6

    invoke-virtual {v6, p1}, Lbe/gentgo/tetsuki/Server;->playAt(Lbe/gentgo/tetsuki/Position;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 167
    invoke-static {}, Lbe/gentgo/tetsuki/Preferences;->getAutoZoom()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GamePlayActivity;->zoomOutDelayed()V

    goto/16 :goto_1

    .line 172
    :cond_9
    invoke-super {p0, p1, p2}, Lbe/gentgo/tetsuki/OnlineGameActivity;->onGobanTapped(Lbe/gentgo/tetsuki/Position;Z)V

    goto/16 :goto_1
.end method

.method public onPassTapped()V
    .locals 1

    .prologue
    .line 184
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v0

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/Server;->pass()V

    .line 185
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 45
    sget-object v0, Lbe/gentgo/tetsuki/GamePlayActivity;->sCurrentGameRequest:Lbe/gentgo/tetsuki/GameRequest;

    if-eqz v0, :cond_1

    .line 47
    sget-object v0, Lbe/gentgo/tetsuki/GamePlayActivity;->sCurrentGameRequest:Lbe/gentgo/tetsuki/GameRequest;

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/GameRequest;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lbe/gentgo/tetsuki/GamePlayActivity;->sCurrentGameRequest:Lbe/gentgo/tetsuki/GameRequest;

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/GameRequest;->getResult()Lbe/gentgo/tetsuki/Game;

    move-result-object v0

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/Game;->isOver()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    :cond_0
    sget-object v0, Lbe/gentgo/tetsuki/GamePlayActivity;->sCurrentGameRequest:Lbe/gentgo/tetsuki/GameRequest;

    sget-object v1, Lbe/gentgo/tetsuki/GamePlayActivity;->sGameListener:Lbe/gentgo/tetsuki/Listener;

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/GameRequest;->removeListener(Lbe/gentgo/tetsuki/Listener;)V

    .line 51
    const/4 v0, 0x0

    sput-object v0, Lbe/gentgo/tetsuki/GamePlayActivity;->sCurrentGameRequest:Lbe/gentgo/tetsuki/GameRequest;

    .line 54
    :cond_1
    invoke-super {p0}, Lbe/gentgo/tetsuki/OnlineGameActivity;->onPause()V

    .line 55
    return-void
.end method

.method public onRecountTapped()V
    .locals 1

    .prologue
    .line 265
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v0

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/Server;->recount()V

    .line 266
    return-void
.end method

.method public onReportTapped()V
    .locals 5

    .prologue
    .line 210
    iget-object v3, p0, Lbe/gentgo/tetsuki/GamePlayActivity;->game:Lbe/gentgo/tetsuki/Game;

    if-nez v3, :cond_0

    .line 234
    :goto_0
    return-void

    .line 211
    :cond_0
    iget-object v3, p0, Lbe/gentgo/tetsuki/GamePlayActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v3}, Lbe/gentgo/tetsuki/Game;->isScoring()Z

    move-result v2

    .line 213
    .local v2, "scoring":Z
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 214
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0800ea

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 215
    const/4 v3, 0x3

    new-array v1, v3, [Ljava/lang/String;

    .line 216
    .local v1, "names":[Ljava/lang/String;
    const/4 v3, 0x0

    const v4, 0x7f0800ef

    invoke-virtual {p0, v4}, Lbe/gentgo/tetsuki/GamePlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 217
    const/4 v4, 0x1

    if-eqz v2, :cond_1

    const v3, 0x7f0800f2

    :goto_1
    invoke-virtual {p0, v3}, Lbe/gentgo/tetsuki/GamePlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    .line 218
    const/4 v4, 0x2

    if-eqz v2, :cond_2

    const v3, 0x7f0800f3

    :goto_2
    invoke-virtual {p0, v3}, Lbe/gentgo/tetsuki/GamePlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    .line 219
    new-instance v3, Lbe/gentgo/tetsuki/GamePlayActivity$6;

    invoke-direct {v3, p0}, Lbe/gentgo/tetsuki/GamePlayActivity$6;-><init>(Lbe/gentgo/tetsuki/GamePlayActivity;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 233
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 217
    :cond_1
    const v3, 0x7f0800f0

    goto :goto_1

    .line 218
    :cond_2
    const v3, 0x7f0800f1

    goto :goto_2
.end method

.method public onResignTapped()V
    .locals 4

    .prologue
    const v3, 0x7f080066

    .line 238
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 239
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 240
    const v1, 0x7f080067

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 241
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 242
    const v1, 0x7f080039

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 243
    new-instance v1, Lbe/gentgo/tetsuki/GamePlayActivity$7;

    invoke-direct {v1, p0}, Lbe/gentgo/tetsuki/GamePlayActivity$7;-><init>(Lbe/gentgo/tetsuki/GamePlayActivity;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 248
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 249
    return-void
.end method

.method public speak(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 65
    iget-object v1, p0, Lbe/gentgo/tetsuki/GamePlayActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/Game;->isOver()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    sget v1, Lbe/gentgo/tetsuki/GamePlayActivity;->myColor:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 67
    iget-object v1, p0, Lbe/gentgo/tetsuki/GamePlayActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/Game;->getGameSettings()Lbe/gentgo/tetsuki/GameSettings;

    move-result-object v1

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/GameSettings;->getWhitePlayer()Lbe/gentgo/tetsuki/Player;

    move-result-object v1

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/Player;->getID()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "opponent":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v1

    invoke-static {p1}, Lbe/gentgo/tetsuki/Preferences;->encode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lbe/gentgo/tetsuki/Server;->sayTo([BLjava/lang/String;)V

    .line 75
    .end local v0    # "opponent":Ljava/lang/String;
    :goto_1
    return-void

    .line 68
    :cond_0
    iget-object v1, p0, Lbe/gentgo/tetsuki/GamePlayActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/Game;->getGameSettings()Lbe/gentgo/tetsuki/GameSettings;

    move-result-object v1

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/GameSettings;->getBlackPlayer()Lbe/gentgo/tetsuki/Player;

    move-result-object v1

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/Player;->getID()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 73
    :cond_1
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v1

    invoke-static {p1}, Lbe/gentgo/tetsuki/Preferences;->encode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lbe/gentgo/tetsuki/Server;->say([B)V

    goto :goto_1
.end method

.method public updateGame(Lbe/gentgo/tetsuki/Game;)V
    .locals 0
    .param p1, "game"    # Lbe/gentgo/tetsuki/Game;

    .prologue
    .line 91
    invoke-super {p0, p1}, Lbe/gentgo/tetsuki/OnlineGameActivity;->updateGame(Lbe/gentgo/tetsuki/Game;)V

    .line 93
    return-void
.end method
