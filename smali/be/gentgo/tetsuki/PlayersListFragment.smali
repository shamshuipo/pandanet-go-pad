.class public Lbe/gentgo/tetsuki/PlayersListFragment;
.super Lbe/gentgo/tetsuki/ListDetailsFragment;
.source "PlayersListFragment.java"


# instance fields
.field private adapter:Lbe/gentgo/tetsuki/PlayersListAdapter;

.field japaneseRanking:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 13
    invoke-direct {p0}, Lbe/gentgo/tetsuki/ListDetailsFragment;-><init>()V

    .line 72
    iput-boolean v2, p0, Lbe/gentgo/tetsuki/PlayersListFragment;->japaneseRanking:Z

    .line 14
    new-instance v0, Lbe/gentgo/tetsuki/PlayersListAdapter;

    invoke-direct {v0}, Lbe/gentgo/tetsuki/PlayersListAdapter;-><init>()V

    iput-object v0, p0, Lbe/gentgo/tetsuki/PlayersListFragment;->adapter:Lbe/gentgo/tetsuki/PlayersListAdapter;

    .line 15
    iget-object v0, p0, Lbe/gentgo/tetsuki/PlayersListFragment;->adapter:Lbe/gentgo/tetsuki/PlayersListAdapter;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/PlayersListAdapter;->setOnlyShowAvailable(Ljava/lang/Boolean;)V

    .line 18
    iget-object v0, p0, Lbe/gentgo/tetsuki/PlayersListFragment;->listFragment:Lbe/gentgo/tetsuki/ListWithIndexFragment;

    iget-object v1, p0, Lbe/gentgo/tetsuki/PlayersListFragment;->adapter:Lbe/gentgo/tetsuki/PlayersListAdapter;

    iput-object v1, v0, Lbe/gentgo/tetsuki/ListWithIndexFragment;->adapter:Landroid/widget/ListAdapter;

    .line 19
    iget-object v0, p0, Lbe/gentgo/tetsuki/PlayersListFragment;->listFragment:Lbe/gentgo/tetsuki/ListWithIndexFragment;

    iput-boolean v2, v0, Lbe/gentgo/tetsuki/ListWithIndexFragment;->indexVisible:Z

    .line 20
    iget-object v0, p0, Lbe/gentgo/tetsuki/PlayersListFragment;->listFragment:Lbe/gentgo/tetsuki/ListWithIndexFragment;

    new-instance v1, Lbe/gentgo/tetsuki/PlayersListFragment$1;

    invoke-direct {v1, p0}, Lbe/gentgo/tetsuki/PlayersListFragment$1;-><init>(Lbe/gentgo/tetsuki/PlayersListFragment;)V

    iput-object v1, v0, Lbe/gentgo/tetsuki/ListWithIndexFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 29
    return-void
.end method

.method static synthetic access$0(Lbe/gentgo/tetsuki/PlayersListFragment;)Lbe/gentgo/tetsuki/PlayersListAdapter;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lbe/gentgo/tetsuki/PlayersListFragment;->adapter:Lbe/gentgo/tetsuki/PlayersListAdapter;

    return-object v0
.end method

.method static synthetic access$1(Lbe/gentgo/tetsuki/PlayersListFragment;Z)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lbe/gentgo/tetsuki/PlayersListFragment;->goToMe(Z)V

    return-void
.end method

.method private goToMe(Z)V
    .locals 4
    .param p1, "showDetails"    # Z

    .prologue
    .line 38
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/PlayersListFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0b002b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 39
    .local v0, "list":Landroid/widget/ListView;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lbe/gentgo/tetsuki/PlayersListFragment;->adapter:Lbe/gentgo/tetsuki/PlayersListAdapter;

    invoke-virtual {v1, v0}, Lbe/gentgo/tetsuki/PlayersListAdapter;->scrollToMe(Landroid/widget/ListView;)V

    .line 41
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getDispatcher()Lbe/gentgo/tetsuki/Dispatcher;

    move-result-object v1

    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v2

    invoke-virtual {v2}, Lbe/gentgo/tetsuki/Server;->getMyID()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lbe/gentgo/tetsuki/Dispatcher;->goToPlayer(Ljava/lang/String;Z)Z

    .line 42
    :cond_1
    return-void
.end method


# virtual methods
.method public canGoToPlayer(Ljava/lang/String;)Z
    .locals 1
    .param p1, "playerID"    # Ljava/lang/String;

    .prologue
    .line 46
    iget-object v0, p0, Lbe/gentgo/tetsuki/PlayersListFragment;->adapter:Lbe/gentgo/tetsuki/PlayersListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbe/gentgo/tetsuki/PlayersListFragment;->adapter:Lbe/gentgo/tetsuki/PlayersListAdapter;

    invoke-virtual {v0, p1}, Lbe/gentgo/tetsuki/PlayersListAdapter;->findPlayer(Ljava/lang/String;)Lbe/gentgo/tetsuki/Player;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAdapter()Lbe/gentgo/tetsuki/PlayersListAdapter;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lbe/gentgo/tetsuki/PlayersListFragment;->adapter:Lbe/gentgo/tetsuki/PlayersListAdapter;

    return-object v0
.end method

.method public getTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 34
    const v0, 0x7f08003c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public goToPlayer(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "playerID"    # Ljava/lang/String;
    .param p2, "openGame"    # Z

    .prologue
    .line 52
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/PlayersListFragment;->getDetailsFragment()Landroid/app/Fragment;

    move-result-object v3

    .line 53
    .local v3, "previousFragment":Landroid/app/Fragment;
    if-eqz v3, :cond_1

    .line 54
    instance-of v4, v3, Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    if-eqz v4, :cond_1

    .line 55
    check-cast v3, Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    .end local v3    # "previousFragment":Landroid/app/Fragment;
    invoke-virtual {v3}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->getPlayer()Lbe/gentgo/tetsuki/Player;

    move-result-object v4

    invoke-virtual {v4}, Lbe/gentgo/tetsuki/Player;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    iget-object v4, p0, Lbe/gentgo/tetsuki/PlayersListFragment;->adapter:Lbe/gentgo/tetsuki/PlayersListAdapter;

    invoke-virtual {v4, p1}, Lbe/gentgo/tetsuki/PlayersListAdapter;->findPlayer(Ljava/lang/String;)Lbe/gentgo/tetsuki/Player;

    move-result-object v2

    .line 60
    .local v2, "player":Lbe/gentgo/tetsuki/Player;
    if-eqz v2, :cond_0

    .line 62
    new-instance v0, Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    iget-object v4, p0, Lbe/gentgo/tetsuki/PlayersListFragment;->adapter:Lbe/gentgo/tetsuki/PlayersListAdapter;

    invoke-direct {v0, v2, v4}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;-><init>(Lbe/gentgo/tetsuki/Player;Lbe/gentgo/tetsuki/PlayersListAdapter;)V

    .line 63
    .local v0, "details":Lbe/gentgo/tetsuki/PlayerDetailsFragment;
    invoke-virtual {p0, v0}, Lbe/gentgo/tetsuki/PlayersListFragment;->setDetailsFragment(Landroid/app/Fragment;)V

    .line 65
    if-eqz p2, :cond_0

    .line 66
    invoke-virtual {v2}, Lbe/gentgo/tetsuki/Player;->gamePlaying()I

    move-result v1

    .line 67
    .local v1, "gameID":I
    if-ltz v1, :cond_0

    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getDispatcher()Lbe/gentgo/tetsuki/Dispatcher;

    move-result-object v4

    invoke-interface {v4, v1}, Lbe/gentgo/tetsuki/Dispatcher;->goToGame(I)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 98
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainActionBar()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b001b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 99
    invoke-super {p0}, Lbe/gentgo/tetsuki/ListDetailsFragment;->onPause()V

    .line 100
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 77
    invoke-super {p0}, Lbe/gentgo/tetsuki/ListDetailsFragment;->onResume()V

    .line 78
    invoke-static {}, Lbe/gentgo/tetsuki/Preferences;->japaneseRanking()Z

    move-result v1

    .line 79
    .local v1, "newJapaneseRanking":Z
    iget-boolean v2, p0, Lbe/gentgo/tetsuki/PlayersListFragment;->japaneseRanking:Z

    if-eq v1, v2, :cond_0

    .line 81
    iget-object v2, p0, Lbe/gentgo/tetsuki/PlayersListFragment;->adapter:Lbe/gentgo/tetsuki/PlayersListAdapter;

    iget-object v3, p0, Lbe/gentgo/tetsuki/PlayersListFragment;->adapter:Lbe/gentgo/tetsuki/PlayersListAdapter;

    invoke-virtual {v3}, Lbe/gentgo/tetsuki/PlayersListAdapter;->getNumberOfOnlineFriends()I

    move-result v3

    invoke-virtual {v2, v3}, Lbe/gentgo/tetsuki/PlayersListAdapter;->updateRanks(I)V

    .line 82
    iput-boolean v1, p0, Lbe/gentgo/tetsuki/PlayersListFragment;->japaneseRanking:Z

    .line 86
    :cond_0
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainActionBar()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0b001b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 87
    .local v0, "meButton":Landroid/widget/Button;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 88
    new-instance v2, Lbe/gentgo/tetsuki/PlayersListFragment$2;

    invoke-direct {v2, p0}, Lbe/gentgo/tetsuki/PlayersListFragment$2;-><init>(Lbe/gentgo/tetsuki/PlayersListFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    return-void
.end method
