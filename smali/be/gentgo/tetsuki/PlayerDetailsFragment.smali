.class public Lbe/gentgo/tetsuki/PlayerDetailsFragment;
.super Landroid/app/ListFragment;
.source "PlayerDetailsFragment.java"


# instance fields
.field private friendButtonListener:Landroid/view/View$OnClickListener;

.field private friendRow:I

.field private gameDetailsListener:Lbe/gentgo/tetsuki/Listener;

.field private gameDetailsRequest:Lbe/gentgo/tetsuki/GameDetailsRequest;

.field private gameListener:Lbe/gentgo/tetsuki/Listener;

.field private gameRequest:Lbe/gentgo/tetsuki/GameRequest;

.field private gameRow:I

.field private headerRow:I

.field private infoRow:I

.field private inviteButtonListener:Landroid/view/View$OnClickListener;

.field private inviteRow:I

.field private listAdapter:Landroid/widget/ListAdapter;

.field private me:Lbe/gentgo/tetsuki/Player;

.field private netsocialButtonListener:Landroid/view/View$OnClickListener;

.field private netsocialRow:I

.field private nrOfRows:I

.field private observer:Landroid/database/DataSetObserver;

.field parent:Lbe/gentgo/tetsuki/PlayersListAdapter;

.field private player:Lbe/gentgo/tetsuki/Player;

.field private playerDetailsListener:Lbe/gentgo/tetsuki/Listener;

.field private playerDetailsRequest:Lbe/gentgo/tetsuki/PlayerDetailsRequest;

.field private statisticsRow:I

.field private statusRow:I


# direct methods
.method public constructor <init>(Lbe/gentgo/tetsuki/Player;Lbe/gentgo/tetsuki/PlayersListAdapter;)V
    .locals 2
    .param p1, "p"    # Lbe/gentgo/tetsuki/Player;
    .param p2, "par"    # Lbe/gentgo/tetsuki/PlayersListAdapter;

    .prologue
    const/4 v1, 0x0

    .line 14
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 130
    new-instance v0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$1;

    invoke-direct {v0, p0}, Lbe/gentgo/tetsuki/PlayerDetailsFragment$1;-><init>(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)V

    iput-object v0, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->inviteButtonListener:Landroid/view/View$OnClickListener;

    .line 140
    new-instance v0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$2;

    invoke-direct {v0, p0}, Lbe/gentgo/tetsuki/PlayerDetailsFragment$2;-><init>(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)V

    iput-object v0, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->netsocialButtonListener:Landroid/view/View$OnClickListener;

    .line 147
    new-instance v0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$3;

    invoke-direct {v0, p0}, Lbe/gentgo/tetsuki/PlayerDetailsFragment$3;-><init>(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)V

    iput-object v0, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->friendButtonListener:Landroid/view/View$OnClickListener;

    .line 158
    new-instance v0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$4;

    invoke-direct {v0, p0}, Lbe/gentgo/tetsuki/PlayerDetailsFragment$4;-><init>(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)V

    iput-object v0, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->listAdapter:Landroid/widget/ListAdapter;

    .line 462
    iput-object v1, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->me:Lbe/gentgo/tetsuki/Player;

    .line 463
    iput-object v1, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->player:Lbe/gentgo/tetsuki/Player;

    .line 467
    iput-object v1, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->playerDetailsRequest:Lbe/gentgo/tetsuki/PlayerDetailsRequest;

    .line 468
    new-instance v0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$5;

    invoke-direct {v0, p0}, Lbe/gentgo/tetsuki/PlayerDetailsFragment$5;-><init>(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)V

    iput-object v0, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->playerDetailsListener:Lbe/gentgo/tetsuki/Listener;

    .line 474
    iput-object v1, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->gameDetailsRequest:Lbe/gentgo/tetsuki/GameDetailsRequest;

    .line 475
    new-instance v0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$6;

    invoke-direct {v0, p0}, Lbe/gentgo/tetsuki/PlayerDetailsFragment$6;-><init>(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)V

    iput-object v0, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->gameDetailsListener:Lbe/gentgo/tetsuki/Listener;

    .line 487
    iput-object v1, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->gameRequest:Lbe/gentgo/tetsuki/GameRequest;

    .line 488
    new-instance v0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$7;

    invoke-direct {v0, p0}, Lbe/gentgo/tetsuki/PlayerDetailsFragment$7;-><init>(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)V

    iput-object v0, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->gameListener:Lbe/gentgo/tetsuki/Listener;

    .line 17
    new-instance v0, Lbe/gentgo/tetsuki/Player;

    invoke-direct {v0, p1}, Lbe/gentgo/tetsuki/Player;-><init>(Lbe/gentgo/tetsuki/Player;)V

    iput-object v0, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->player:Lbe/gentgo/tetsuki/Player;

    .line 18
    new-instance v0, Lbe/gentgo/tetsuki/Player;

    invoke-virtual {p2}, Lbe/gentgo/tetsuki/PlayersListAdapter;->getMe()Lbe/gentgo/tetsuki/Player;

    move-result-object v1

    invoke-direct {v0, v1}, Lbe/gentgo/tetsuki/Player;-><init>(Lbe/gentgo/tetsuki/Player;)V

    iput-object v0, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->me:Lbe/gentgo/tetsuki/Player;

    .line 19
    iput-object p2, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->parent:Lbe/gentgo/tetsuki/PlayersListAdapter;

    .line 22
    iget-object v0, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->player:Lbe/gentgo/tetsuki/Player;

    if-eqz v0, :cond_0

    .line 23
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v0

    iget-object v1, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->player:Lbe/gentgo/tetsuki/Player;

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/Server;->requestPlayerDetails(Lbe/gentgo/tetsuki/Player;)Lbe/gentgo/tetsuki/PlayerDetailsRequest;

    move-result-object v0

    iput-object v0, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->playerDetailsRequest:Lbe/gentgo/tetsuki/PlayerDetailsRequest;

    .line 24
    iget-object v0, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->playerDetailsRequest:Lbe/gentgo/tetsuki/PlayerDetailsRequest;

    iget-object v1, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->playerDetailsListener:Lbe/gentgo/tetsuki/Listener;

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/PlayerDetailsRequest;->addListener(Lbe/gentgo/tetsuki/Listener;)V

    .line 26
    :cond_0
    invoke-direct {p0}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->updateRowIndices()V

    .line 27
    iget-object v0, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->listAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p0, v0}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 28
    return-void
.end method

.method static synthetic access$0(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)Lbe/gentgo/tetsuki/Player;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->player:Lbe/gentgo/tetsuki/Player;

    return-object v0
.end method

.method static synthetic access$1(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)Lbe/gentgo/tetsuki/Player;
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->me:Lbe/gentgo/tetsuki/Player;

    return-object v0
.end method

.method static synthetic access$10(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)I
    .locals 1

    .prologue
    .line 465
    iget v0, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->infoRow:I

    return v0
.end method

.method static synthetic access$11(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)I
    .locals 1

    .prologue
    .line 465
    iget v0, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->statusRow:I

    return v0
.end method

.method static synthetic access$12(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)I
    .locals 1

    .prologue
    .line 416
    invoke-direct {p0}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->getGameNr()I

    move-result v0

    return v0
.end method

.method static synthetic access$13(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)Lbe/gentgo/tetsuki/GameDetailsRequest;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->gameDetailsRequest:Lbe/gentgo/tetsuki/GameDetailsRequest;

    return-object v0
.end method

.method static synthetic access$14(Lbe/gentgo/tetsuki/PlayerDetailsFragment;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 422
    invoke-direct {p0, p1}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->updateGame(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$15(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 400
    invoke-direct {p0}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->stringForStatus()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$16(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)I
    .locals 1

    .prologue
    .line 465
    iget v0, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->statisticsRow:I

    return v0
.end method

.method static synthetic access$17(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 409
    invoke-direct {p0}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->stringForStatistics()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$18(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->friendButtonListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$19(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->netsocialButtonListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$2(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)Lbe/gentgo/tetsuki/PlayerDetailsRequest;
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->playerDetailsRequest:Lbe/gentgo/tetsuki/PlayerDetailsRequest;

    return-object v0
.end method

.method static synthetic access$20(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)Z
    .locals 1

    .prologue
    .line 395
    invoke-direct {p0}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->canInvite()Z

    move-result v0

    return v0
.end method

.method static synthetic access$21(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->inviteButtonListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$22(Lbe/gentgo/tetsuki/PlayerDetailsFragment;Landroid/database/DataSetObserver;)V
    .locals 0

    .prologue
    .line 460
    iput-object p1, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->observer:Landroid/database/DataSetObserver;

    return-void
.end method

.method static synthetic access$23(Lbe/gentgo/tetsuki/PlayerDetailsFragment;Lbe/gentgo/tetsuki/Player;)V
    .locals 0

    .prologue
    .line 463
    iput-object p1, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->player:Lbe/gentgo/tetsuki/Player;

    return-void
.end method

.method static synthetic access$24(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)Lbe/gentgo/tetsuki/GameRequest;
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->gameRequest:Lbe/gentgo/tetsuki/GameRequest;

    return-object v0
.end method

.method static synthetic access$25(Lbe/gentgo/tetsuki/PlayerDetailsFragment;Lbe/gentgo/tetsuki/GameRequest;)V
    .locals 0

    .prologue
    .line 487
    iput-object p1, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->gameRequest:Lbe/gentgo/tetsuki/GameRequest;

    return-void
.end method

.method static synthetic access$26(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)Lbe/gentgo/tetsuki/Listener;
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->gameListener:Lbe/gentgo/tetsuki/Listener;

    return-object v0
.end method

.method static synthetic access$3(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)Landroid/database/DataSetObserver;
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->observer:Landroid/database/DataSetObserver;

    return-object v0
.end method

.method static synthetic access$4(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)I
    .locals 1

    .prologue
    .line 465
    iget v0, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->nrOfRows:I

    return v0
.end method

.method static synthetic access$5(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)I
    .locals 1

    .prologue
    .line 465
    iget v0, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->inviteRow:I

    return v0
.end method

.method static synthetic access$6(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)I
    .locals 1

    .prologue
    .line 465
    iget v0, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->netsocialRow:I

    return v0
.end method

.method static synthetic access$7(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)I
    .locals 1

    .prologue
    .line 465
    iget v0, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->friendRow:I

    return v0
.end method

.method static synthetic access$8(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)I
    .locals 1

    .prologue
    .line 465
    iget v0, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->headerRow:I

    return v0
.end method

.method static synthetic access$9(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)I
    .locals 1

    .prologue
    .line 465
    iget v0, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->gameRow:I

    return v0
.end method

.method private canInvite()Z
    .locals 3

    .prologue
    .line 396
    invoke-static {}, Lbe/gentgo/tetsuki/Preferences;->isGuestLogin()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->player:Lbe/gentgo/tetsuki/Player;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->me:Lbe/gentgo/tetsuki/Player;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->player:Lbe/gentgo/tetsuki/Player;

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/Player;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->player:Lbe/gentgo/tetsuki/Player;

    iget-object v2, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->me:Lbe/gentgo/tetsuki/Player;

    invoke-virtual {v1, v2}, Lbe/gentgo/tetsuki/Player;->equalsPlayer(Lbe/gentgo/tetsuki/Player;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 397
    .local v0, "enabled":Z
    :goto_0
    return v0

    .line 396
    .end local v0    # "enabled":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getGameNr()I
    .locals 2

    .prologue
    .line 417
    iget-object v1, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->player:Lbe/gentgo/tetsuki/Player;

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/Player;->gamePlaying()I

    move-result v0

    .line 418
    .local v0, "game":I
    if-gez v0, :cond_0

    iget-object v1, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->player:Lbe/gentgo/tetsuki/Player;

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/Player;->gameWatching()I

    move-result v0

    .line 419
    :cond_0
    return v0
.end method

.method private stringForStatistics()Ljava/lang/String;
    .locals 4

    .prologue
    .line 411
    iget-object v0, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->player:Lbe/gentgo/tetsuki/Player;

    if-nez v0, :cond_0

    const-string v0, ""

    .line 413
    :goto_0
    return-object v0

    .line 412
    :cond_0
    iget-object v0, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->playerDetailsRequest:Lbe/gentgo/tetsuki/PlayerDetailsRequest;

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/PlayerDetailsRequest;->isDone()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_0

    .line 413
    :cond_1
    const v0, 0x7f08004e

    invoke-virtual {p0, v0}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->player:Lbe/gentgo/tetsuki/Player;

    invoke-virtual {v3}, Lbe/gentgo/tetsuki/Player;->getWins()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->player:Lbe/gentgo/tetsuki/Player;

    invoke-virtual {v3}, Lbe/gentgo/tetsuki/Player;->getLosses()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private stringForStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->player:Lbe/gentgo/tetsuki/Player;

    if-nez v0, :cond_0

    const-string v0, ""

    .line 406
    :goto_0
    return-object v0

    .line 403
    :cond_0
    iget-object v0, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->player:Lbe/gentgo/tetsuki/Player;

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/Player;->gamePlaying()I

    move-result v0

    if-ltz v0, :cond_1

    const v0, 0x7f080049

    invoke-virtual {p0, v0}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 404
    :cond_1
    iget-object v0, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->player:Lbe/gentgo/tetsuki/Player;

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/Player;->isRefusingGames()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f08004a

    invoke-virtual {p0, v0}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 405
    :cond_2
    iget-object v0, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->player:Lbe/gentgo/tetsuki/Player;

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/Player;->isSeekingGame()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f08004b

    invoke-virtual {p0, v0}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 406
    :cond_3
    const v0, 0x7f08004c

    invoke-virtual {p0, v0}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private updateGame(Landroid/view/View;)V
    .locals 8
    .param p1, "container"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 423
    if-nez p1, :cond_1

    .line 443
    :cond_0
    :goto_0
    return-void

    .line 424
    :cond_1
    const/high16 v4, 0x7f0b0000

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lbe/gentgo/tetsuki/GameView;

    .line 425
    .local v2, "gameView":Lbe/gentgo/tetsuki/GameView;
    if-eqz v2, :cond_0

    .line 426
    const/4 v0, 0x0

    .line 427
    .local v0, "game":Lbe/gentgo/tetsuki/Game;
    iget-object v4, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->gameRequest:Lbe/gentgo/tetsuki/GameRequest;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->gameRequest:Lbe/gentgo/tetsuki/GameRequest;

    invoke-virtual {v4}, Lbe/gentgo/tetsuki/GameRequest;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 429
    iget-object v4, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->gameRequest:Lbe/gentgo/tetsuki/GameRequest;

    invoke-virtual {v4}, Lbe/gentgo/tetsuki/GameRequest;->getResult()Lbe/gentgo/tetsuki/Game;

    move-result-object v0

    .line 431
    :cond_2
    if-nez v0, :cond_3

    const/4 v4, 0x4

    :goto_1
    invoke-virtual {v2, v4}, Lbe/gentgo/tetsuki/GameView;->setVisibility(I)V

    .line 432
    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4}, Lbe/gentgo/tetsuki/GameView;->setGameAndScore(Lbe/gentgo/tetsuki/Game;Lbe/gentgo/tetsuki/ScoreCount;)V

    .line 434
    const v4, 0x7f0b0083

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 436
    .local v1, "gameCaption":Landroid/widget/TextView;
    iget-object v4, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->parent:Lbe/gentgo/tetsuki/PlayersListAdapter;

    invoke-direct {p0}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->getGameNr()I

    move-result v6

    invoke-virtual {v4, v6}, Lbe/gentgo/tetsuki/PlayersListAdapter;->getNrOfObservers(I)I

    move-result v3

    .line 437
    .local v3, "observers":I
    if-nez v3, :cond_4

    .line 438
    const-string v4, ""

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .end local v1    # "gameCaption":Landroid/widget/TextView;
    .end local v3    # "observers":I
    :cond_3
    move v4, v5

    .line 431
    goto :goto_1

    .line 439
    .restart local v1    # "gameCaption":Landroid/widget/TextView;
    .restart local v3    # "observers":I
    :cond_4
    if-ne v3, v7, :cond_5

    .line 440
    const v4, 0x7f08010b

    invoke-virtual {p0, v4}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 442
    :cond_5
    const v4, 0x7f08010a

    invoke-virtual {p0, v4}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateRowIndices()V
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->nrOfRows:I

    .line 33
    iget v0, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->nrOfRows:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->nrOfRows:I

    iput v0, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->headerRow:I

    .line 34
    iget v0, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->nrOfRows:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->nrOfRows:I

    iput v0, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->statisticsRow:I

    .line 35
    iget v0, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->nrOfRows:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->nrOfRows:I

    iput v0, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->infoRow:I

    .line 36
    iget v0, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->nrOfRows:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->nrOfRows:I

    iput v0, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->statusRow:I

    .line 37
    invoke-direct {p0}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->canInvite()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->nrOfRows:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->nrOfRows:I

    :goto_0
    iput v0, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->inviteRow:I

    .line 38
    invoke-direct {p0}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->getGameNr()I

    move-result v0

    if-ltz v0, :cond_1

    iget v0, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->nrOfRows:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->nrOfRows:I

    :goto_1
    iput v0, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->gameRow:I

    .line 39
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v0

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/Server;->isGuestLogin()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->player:Lbe/gentgo/tetsuki/Player;

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/Player;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v2

    invoke-virtual {v2}, Lbe/gentgo/tetsuki/Server;->getMyID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->nrOfRows:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->nrOfRows:I

    :goto_2
    iput v0, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->friendRow:I

    .line 40
    invoke-static {}, Lbe/gentgo/tetsuki/Preferences;->isGuestLogin()Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_3
    iput v1, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->netsocialRow:I

    .line 41
    return-void

    :cond_0
    move v0, v1

    .line 37
    goto :goto_0

    :cond_1
    move v0, v1

    .line 38
    goto :goto_1

    :cond_2
    move v0, v1

    .line 39
    goto :goto_2

    .line 40
    :cond_3
    iget v1, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->nrOfRows:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->nrOfRows:I

    goto :goto_3
.end method


# virtual methods
.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 45
    iget-object v0, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->playerDetailsRequest:Lbe/gentgo/tetsuki/PlayerDetailsRequest;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->playerDetailsRequest:Lbe/gentgo/tetsuki/PlayerDetailsRequest;

    iget-object v1, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->playerDetailsListener:Lbe/gentgo/tetsuki/Listener;

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/PlayerDetailsRequest;->removeListener(Lbe/gentgo/tetsuki/Listener;)V

    .line 48
    iput-object v2, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->playerDetailsRequest:Lbe/gentgo/tetsuki/PlayerDetailsRequest;

    .line 50
    :cond_0
    iget-object v0, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->gameDetailsRequest:Lbe/gentgo/tetsuki/GameDetailsRequest;

    if-eqz v0, :cond_1

    .line 52
    iget-object v0, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->gameDetailsRequest:Lbe/gentgo/tetsuki/GameDetailsRequest;

    iget-object v1, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->gameDetailsListener:Lbe/gentgo/tetsuki/Listener;

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/GameDetailsRequest;->removeListener(Lbe/gentgo/tetsuki/Listener;)V

    .line 53
    iput-object v2, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->gameDetailsRequest:Lbe/gentgo/tetsuki/GameDetailsRequest;

    .line 55
    :cond_1
    iget-object v0, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->gameRequest:Lbe/gentgo/tetsuki/GameRequest;

    if-eqz v0, :cond_2

    .line 57
    iget-object v0, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->gameRequest:Lbe/gentgo/tetsuki/GameRequest;

    iget-object v1, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->gameListener:Lbe/gentgo/tetsuki/Listener;

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/GameRequest;->removeListener(Lbe/gentgo/tetsuki/Listener;)V

    .line 58
    iput-object v2, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->gameRequest:Lbe/gentgo/tetsuki/GameRequest;

    .line 60
    :cond_2
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 61
    return-void
.end method

.method public getPlayer()Lbe/gentgo/tetsuki/Player;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->player:Lbe/gentgo/tetsuki/Player;

    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 5
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 74
    iget v3, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->gameRow:I

    if-ne p3, v3, :cond_0

    .line 77
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getDispatcher()Lbe/gentgo/tetsuki/Dispatcher;

    move-result-object v3

    invoke-direct {p0}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->getGameNr()I

    move-result v4

    invoke-interface {v3, v4}, Lbe/gentgo/tetsuki/Dispatcher;->goToGame(I)V

    .line 79
    :cond_0
    iget v3, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->statusRow:I

    if-ne p3, v3, :cond_1

    iget-object v3, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->me:Lbe/gentgo/tetsuki/Player;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->player:Lbe/gentgo/tetsuki/Player;

    iget-object v4, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->me:Lbe/gentgo/tetsuki/Player;

    invoke-virtual {v3, v4}, Lbe/gentgo/tetsuki/Player;->equalsPlayer(Lbe/gentgo/tetsuki/Player;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 82
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 83
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f080048

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 85
    const/4 v3, 0x3

    new-array v2, v3, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    .line 86
    const v4, 0x7f08004a

    invoke-virtual {p0, v4}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 87
    const v4, 0x7f08004c

    invoke-virtual {p0, v4}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 88
    const v4, 0x7f08004b

    invoke-virtual {p0, v4}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 90
    .local v2, "stati":[Ljava/lang/CharSequence;
    invoke-static {}, Lbe/gentgo/tetsuki/Preferences;->getStatus()I

    move-result v3

    new-instance v4, Lbe/gentgo/tetsuki/PlayerDetailsFragment$8;

    invoke-direct {v4, p0}, Lbe/gentgo/tetsuki/PlayerDetailsFragment$8;-><init>(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)V

    invoke-virtual {v0, v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 103
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 105
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v2    # "stati":[Ljava/lang/CharSequence;
    :cond_1
    iget v3, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->inviteRow:I

    if-ne p3, v3, :cond_2

    .line 106
    iget-object v3, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->inviteButtonListener:Landroid/view/View$OnClickListener;

    invoke-interface {v3, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 108
    :cond_2
    iget v3, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->netsocialRow:I

    if-ne p3, v3, :cond_3

    .line 109
    iget-object v3, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->netsocialButtonListener:Landroid/view/View$OnClickListener;

    invoke-interface {v3, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 111
    :cond_3
    iget v3, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->friendRow:I

    if-ne p3, v3, :cond_4

    .line 112
    iget-object v3, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->friendButtonListener:Landroid/view/View$OnClickListener;

    invoke-interface {v3, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 114
    :cond_4
    iget v3, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->infoRow:I

    if-ne p3, v3, :cond_5

    iget-object v3, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->me:Lbe/gentgo/tetsuki/Player;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->player:Lbe/gentgo/tetsuki/Player;

    iget-object v4, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->me:Lbe/gentgo/tetsuki/Player;

    invoke-virtual {v3, v4}, Lbe/gentgo/tetsuki/Player;->equalsPlayer(Lbe/gentgo/tetsuki/Player;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 116
    iget-object v3, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->player:Lbe/gentgo/tetsuki/Player;

    invoke-virtual {v3}, Lbe/gentgo/tetsuki/Player;->getInfoText()[B

    move-result-object v3

    invoke-static {v3}, Lbe/gentgo/tetsuki/Preferences;->decode([B)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lbe/gentgo/tetsuki/Preferences;->setInfoText(Ljava/lang/String;)V

    .line 117
    new-instance v1, Lbe/gentgo/tetsuki/InfoDialog;

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Lbe/gentgo/tetsuki/InfoDialog;-><init>(Landroid/content/Context;)V

    .line 118
    .local v1, "infoDialog":Lbe/gentgo/tetsuki/InfoDialog;
    new-instance v3, Lbe/gentgo/tetsuki/PlayerDetailsFragment$9;

    invoke-direct {v3, p0}, Lbe/gentgo/tetsuki/PlayerDetailsFragment$9;-><init>(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)V

    invoke-virtual {v1, v3}, Lbe/gentgo/tetsuki/InfoDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 125
    invoke-virtual {v1}, Lbe/gentgo/tetsuki/InfoDialog;->show()V

    .line 127
    .end local v1    # "infoDialog":Lbe/gentgo/tetsuki/InfoDialog;
    :cond_5
    return-void
.end method

.method public onMorePlayerDetailsAvailable()V
    .locals 3

    .prologue
    .line 447
    iget-object v1, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->player:Lbe/gentgo/tetsuki/Player;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->gameDetailsRequest:Lbe/gentgo/tetsuki/GameDetailsRequest;

    if-nez v1, :cond_0

    .line 449
    invoke-direct {p0}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->getGameNr()I

    move-result v0

    .line 450
    .local v0, "game":I
    if-ltz v0, :cond_0

    .line 451
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbe/gentgo/tetsuki/Server;->requestGameDetails(I)Lbe/gentgo/tetsuki/GameDetailsRequest;

    move-result-object v1

    iput-object v1, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->gameDetailsRequest:Lbe/gentgo/tetsuki/GameDetailsRequest;

    .line 452
    iget-object v1, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->gameDetailsRequest:Lbe/gentgo/tetsuki/GameDetailsRequest;

    iget-object v2, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->gameDetailsListener:Lbe/gentgo/tetsuki/Listener;

    invoke-virtual {v1, v2}, Lbe/gentgo/tetsuki/GameDetailsRequest;->addListener(Lbe/gentgo/tetsuki/Listener;)V

    .line 453
    iget-object v1, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->gameDetailsRequest:Lbe/gentgo/tetsuki/GameDetailsRequest;

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/GameDetailsRequest;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->gameDetailsRequest:Lbe/gentgo/tetsuki/GameDetailsRequest;

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/GameDetailsRequest;->notifyListeners()V

    .line 456
    .end local v0    # "game":I
    :cond_0
    invoke-direct {p0}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->updateRowIndices()V

    .line 457
    iget-object v1, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->observer:Landroid/database/DataSetObserver;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->observer:Landroid/database/DataSetObserver;

    invoke-virtual {v1}, Landroid/database/DataSetObserver;->onChanged()V

    .line 458
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 67
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 68
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->onMorePlayerDetailsAvailable()V

    .line 69
    return-void
.end method
