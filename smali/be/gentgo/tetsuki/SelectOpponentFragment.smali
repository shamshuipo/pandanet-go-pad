.class public Lbe/gentgo/tetsuki/SelectOpponentFragment;
.super Landroid/app/Fragment;
.source "SelectOpponentFragment.java"


# instance fields
.field adapter:Lbe/gentgo/tetsuki/PlayersListAdapter;

.field detailsListener:Lbe/gentgo/tetsuki/Listener;

.field detailsRequest:Lbe/gentgo/tetsuki/PlayerDetailsRequest;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 68
    new-instance v0, Lbe/gentgo/tetsuki/SelectOpponentFragment$1;

    invoke-direct {v0, p0}, Lbe/gentgo/tetsuki/SelectOpponentFragment$1;-><init>(Lbe/gentgo/tetsuki/SelectOpponentFragment;)V

    iput-object v0, p0, Lbe/gentgo/tetsuki/SelectOpponentFragment;->detailsListener:Lbe/gentgo/tetsuki/Listener;

    .line 16
    new-instance v0, Lbe/gentgo/tetsuki/PlayersListAdapter;

    invoke-direct {v0}, Lbe/gentgo/tetsuki/PlayersListAdapter;-><init>()V

    iput-object v0, p0, Lbe/gentgo/tetsuki/SelectOpponentFragment;->adapter:Lbe/gentgo/tetsuki/PlayersListAdapter;

    .line 17
    iget-object v0, p0, Lbe/gentgo/tetsuki/SelectOpponentFragment;->adapter:Lbe/gentgo/tetsuki/PlayersListAdapter;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/PlayersListAdapter;->setOnlyShowAvailable(Ljava/lang/Boolean;)V

    .line 18
    return-void
.end method

.method static synthetic access$0(Lbe/gentgo/tetsuki/SelectOpponentFragment;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lbe/gentgo/tetsuki/SelectOpponentFragment;->scrollToMe()V

    return-void
.end method

.method private scrollToMe()V
    .locals 3

    .prologue
    .line 58
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/SelectOpponentFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0b002b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 59
    .local v0, "list":Landroid/widget/ListView;
    iget-object v1, p0, Lbe/gentgo/tetsuki/SelectOpponentFragment;->adapter:Lbe/gentgo/tetsuki/PlayersListAdapter;

    invoke-virtual {v1, v0}, Lbe/gentgo/tetsuki/PlayersListAdapter;->scrollToMe(Landroid/widget/ListView;)V

    .line 60
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 21
    const v4, 0x7f030025

    const/4 v5, 0x0

    invoke-virtual {p1, v4, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 23
    .local v3, "result":Landroid/view/View;
    const v4, 0x7f0b0087

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbe/gentgo/tetsuki/RankIndexView;

    .line 24
    .local v0, "index":Lbe/gentgo/tetsuki/RankIndexView;
    const v4, 0x7f0b002b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 25
    .local v1, "list":Landroid/widget/ListView;
    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/RankIndexView;->initForList(Landroid/widget/ListView;)V

    .line 27
    iget-object v4, p0, Lbe/gentgo/tetsuki/SelectOpponentFragment;->adapter:Lbe/gentgo/tetsuki/PlayersListAdapter;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 29
    new-instance v4, Lbe/gentgo/tetsuki/SelectOpponentFragment$2;

    invoke-direct {v4, p0}, Lbe/gentgo/tetsuki/SelectOpponentFragment$2;-><init>(Lbe/gentgo/tetsuki/SelectOpponentFragment;)V

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 46
    const v4, 0x7f0b00cb

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 47
    .local v2, "me":Landroid/widget/Button;
    new-instance v4, Lbe/gentgo/tetsuki/SelectOpponentFragment$3;

    invoke-direct {v4, p0}, Lbe/gentgo/tetsuki/SelectOpponentFragment$3;-><init>(Lbe/gentgo/tetsuki/SelectOpponentFragment;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    return-object v3
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 64
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 65
    invoke-direct {p0}, Lbe/gentgo/tetsuki/SelectOpponentFragment;->scrollToMe()V

    .line 66
    return-void
.end method
