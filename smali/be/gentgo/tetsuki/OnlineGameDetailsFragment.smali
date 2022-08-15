.class public Lbe/gentgo/tetsuki/OnlineGameDetailsFragment;
.super Landroid/app/Fragment;
.source "OnlineGameDetailsFragment.java"


# instance fields
.field private gameID:I

.field private listener:Lbe/gentgo/tetsuki/Listener;

.field private nrOfObservers:I

.field private request:Lbe/gentgo/tetsuki/GameRequest;


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "aGameID"    # I
    .param p2, "obs"    # I

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 74
    new-instance v0, Lbe/gentgo/tetsuki/OnlineGameDetailsFragment$1;

    invoke-direct {v0, p0}, Lbe/gentgo/tetsuki/OnlineGameDetailsFragment$1;-><init>(Lbe/gentgo/tetsuki/OnlineGameDetailsFragment;)V

    iput-object v0, p0, Lbe/gentgo/tetsuki/OnlineGameDetailsFragment;->listener:Lbe/gentgo/tetsuki/Listener;

    .line 13
    iput p1, p0, Lbe/gentgo/tetsuki/OnlineGameDetailsFragment;->gameID:I

    .line 14
    iput p2, p0, Lbe/gentgo/tetsuki/OnlineGameDetailsFragment;->nrOfObservers:I

    .line 15
    return-void
.end method

.method static synthetic access$0(Lbe/gentgo/tetsuki/OnlineGameDetailsFragment;)Lbe/gentgo/tetsuki/GameRequest;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lbe/gentgo/tetsuki/OnlineGameDetailsFragment;->request:Lbe/gentgo/tetsuki/GameRequest;

    return-object v0
.end method

.method static synthetic access$1(Lbe/gentgo/tetsuki/OnlineGameDetailsFragment;)I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lbe/gentgo/tetsuki/OnlineGameDetailsFragment;->nrOfObservers:I

    return v0
.end method

.method static synthetic access$2(Lbe/gentgo/tetsuki/OnlineGameDetailsFragment;)I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lbe/gentgo/tetsuki/OnlineGameDetailsFragment;->gameID:I

    return v0
.end method

.method static synthetic access$3(Lbe/gentgo/tetsuki/OnlineGameDetailsFragment;Z)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lbe/gentgo/tetsuki/OnlineGameDetailsFragment;->playerTapped(Z)V

    return-void
.end method

.method private playerTapped(Z)V
    .locals 6
    .param p1, "white"    # Z

    .prologue
    .line 45
    iget-object v4, p0, Lbe/gentgo/tetsuki/OnlineGameDetailsFragment;->request:Lbe/gentgo/tetsuki/GameRequest;

    invoke-virtual {v4}, Lbe/gentgo/tetsuki/GameRequest;->isAvailable()Z

    move-result v4

    if-nez v4, :cond_0

    .line 51
    :goto_0
    return-void

    .line 46
    :cond_0
    iget-object v4, p0, Lbe/gentgo/tetsuki/OnlineGameDetailsFragment;->request:Lbe/gentgo/tetsuki/GameRequest;

    invoke-virtual {v4}, Lbe/gentgo/tetsuki/GameRequest;->getResult()Lbe/gentgo/tetsuki/Game;

    move-result-object v0

    .line 47
    .local v0, "game":Lbe/gentgo/tetsuki/Game;
    invoke-virtual {v0}, Lbe/gentgo/tetsuki/Game;->getGameSettings()Lbe/gentgo/tetsuki/GameSettings;

    move-result-object v3

    .line 48
    .local v3, "settings":Lbe/gentgo/tetsuki/GameSettings;
    if-eqz p1, :cond_1

    invoke-virtual {v3}, Lbe/gentgo/tetsuki/GameSettings;->getWhitePlayer()Lbe/gentgo/tetsuki/Player;

    move-result-object v2

    .line 49
    .local v2, "player":Lbe/gentgo/tetsuki/Player;
    :goto_1
    const/4 v1, 0x0

    .line 50
    .local v1, "openGame":Z
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getDispatcher()Lbe/gentgo/tetsuki/Dispatcher;

    move-result-object v4

    invoke-virtual {v2}, Lbe/gentgo/tetsuki/Player;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Lbe/gentgo/tetsuki/Dispatcher;->goToPlayer(Ljava/lang/String;Z)Z

    goto :goto_0

    .line 48
    .end local v1    # "openGame":Z
    .end local v2    # "player":Lbe/gentgo/tetsuki/Player;
    :cond_1
    invoke-virtual {v3}, Lbe/gentgo/tetsuki/GameSettings;->getBlackPlayer()Lbe/gentgo/tetsuki/Player;

    move-result-object v2

    goto :goto_1
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 19
    const v4, 0x7f03001e

    invoke-virtual {p1, v4, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 20
    .local v2, "result":Landroid/view/View;
    const v4, 0x7f0b00a1

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lbe/gentgo/tetsuki/GameView;

    .line 21
    .local v1, "goban":Lbe/gentgo/tetsuki/GameView;
    iput-boolean v5, v1, Lbe/gentgo/tetsuki/GameView;->allowCoordinates:Z

    .line 22
    new-instance v4, Lbe/gentgo/tetsuki/OnlineGameDetailsFragment$2;

    invoke-direct {v4, p0}, Lbe/gentgo/tetsuki/OnlineGameDetailsFragment$2;-><init>(Lbe/gentgo/tetsuki/OnlineGameDetailsFragment;)V

    invoke-virtual {v1, v4}, Lbe/gentgo/tetsuki/GameView;->setTapListener(Lbe/gentgo/tetsuki/TapListener;)V

    .line 27
    const v4, 0x7f0b00a3

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 28
    .local v3, "white":Landroid/widget/TextView;
    const v4, 0x7f0b00a4

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 29
    .local v0, "black":Landroid/widget/TextView;
    new-instance v4, Lbe/gentgo/tetsuki/OnlineGameDetailsFragment$3;

    invoke-direct {v4, p0}, Lbe/gentgo/tetsuki/OnlineGameDetailsFragment$3;-><init>(Lbe/gentgo/tetsuki/OnlineGameDetailsFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    new-instance v4, Lbe/gentgo/tetsuki/OnlineGameDetailsFragment$4;

    invoke-direct {v4, p0}, Lbe/gentgo/tetsuki/OnlineGameDetailsFragment$4;-><init>(Lbe/gentgo/tetsuki/OnlineGameDetailsFragment;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    return-object v2
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 60
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 61
    iget-object v0, p0, Lbe/gentgo/tetsuki/OnlineGameDetailsFragment;->listener:Lbe/gentgo/tetsuki/Listener;

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/Listener;->Do()Z

    .line 62
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 54
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 55
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v0

    iget v1, p0, Lbe/gentgo/tetsuki/OnlineGameDetailsFragment;->gameID:I

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/Server;->observeGame(I)Lbe/gentgo/tetsuki/GameRequest;

    move-result-object v0

    iput-object v0, p0, Lbe/gentgo/tetsuki/OnlineGameDetailsFragment;->request:Lbe/gentgo/tetsuki/GameRequest;

    .line 56
    iget-object v0, p0, Lbe/gentgo/tetsuki/OnlineGameDetailsFragment;->request:Lbe/gentgo/tetsuki/GameRequest;

    iget-object v1, p0, Lbe/gentgo/tetsuki/OnlineGameDetailsFragment;->listener:Lbe/gentgo/tetsuki/Listener;

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/GameRequest;->addListener(Lbe/gentgo/tetsuki/Listener;)V

    .line 57
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lbe/gentgo/tetsuki/OnlineGameDetailsFragment;->request:Lbe/gentgo/tetsuki/GameRequest;

    iget-object v1, p0, Lbe/gentgo/tetsuki/OnlineGameDetailsFragment;->listener:Lbe/gentgo/tetsuki/Listener;

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/GameRequest;->removeListener(Lbe/gentgo/tetsuki/Listener;)V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lbe/gentgo/tetsuki/OnlineGameDetailsFragment;->request:Lbe/gentgo/tetsuki/GameRequest;

    .line 67
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 68
    return-void
.end method
