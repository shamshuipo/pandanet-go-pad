.class public Lbe/gentgo/tetsuki/ObserveFragment;
.super Lbe/gentgo/tetsuki/ListDetailsFragment;
.source "ObserveFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbe/gentgo/tetsuki/ObserveFragment$SimpleGameInfo;
    }
.end annotation


# instance fields
.field gameListAdapter:Landroid/widget/BaseAdapter;

.field gameListListener:Lbe/gentgo/tetsuki/Listener;

.field request:Lbe/gentgo/tetsuki/GameListRequest;

.field requestHandler:Landroid/os/Handler;

.field private roomListener:Lbe/gentgo/tetsuki/Listener;

.field sortedGames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbe/gentgo/tetsuki/ObserveFragment$SimpleGameInfo;",
            ">;"
        }
    .end annotation
.end field

.field startRequest:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Lbe/gentgo/tetsuki/ListDetailsFragment;-><init>()V

    .line 66
    new-instance v0, Lbe/gentgo/tetsuki/ObserveFragment$1;

    invoke-direct {v0, p0}, Lbe/gentgo/tetsuki/ObserveFragment$1;-><init>(Lbe/gentgo/tetsuki/ObserveFragment;)V

    iput-object v0, p0, Lbe/gentgo/tetsuki/ObserveFragment;->roomListener:Lbe/gentgo/tetsuki/Listener;

    .line 103
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lbe/gentgo/tetsuki/ObserveFragment;->requestHandler:Landroid/os/Handler;

    .line 104
    new-instance v0, Lbe/gentgo/tetsuki/ObserveFragment$2;

    invoke-direct {v0, p0}, Lbe/gentgo/tetsuki/ObserveFragment$2;-><init>(Lbe/gentgo/tetsuki/ObserveFragment;)V

    iput-object v0, p0, Lbe/gentgo/tetsuki/ObserveFragment;->startRequest:Ljava/lang/Runnable;

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lbe/gentgo/tetsuki/ObserveFragment;->sortedGames:Ljava/util/List;

    .line 112
    new-instance v0, Lbe/gentgo/tetsuki/ObserveFragment$3;

    invoke-direct {v0, p0}, Lbe/gentgo/tetsuki/ObserveFragment$3;-><init>(Lbe/gentgo/tetsuki/ObserveFragment;)V

    iput-object v0, p0, Lbe/gentgo/tetsuki/ObserveFragment;->gameListListener:Lbe/gentgo/tetsuki/Listener;

    .line 141
    new-instance v0, Lbe/gentgo/tetsuki/ObserveFragment$4;

    invoke-direct {v0, p0}, Lbe/gentgo/tetsuki/ObserveFragment$4;-><init>(Lbe/gentgo/tetsuki/ObserveFragment;)V

    iput-object v0, p0, Lbe/gentgo/tetsuki/ObserveFragment;->gameListAdapter:Landroid/widget/BaseAdapter;

    .line 26
    iget-object v0, p0, Lbe/gentgo/tetsuki/ObserveFragment;->listFragment:Lbe/gentgo/tetsuki/ListWithIndexFragment;

    iget-object v1, p0, Lbe/gentgo/tetsuki/ObserveFragment;->gameListAdapter:Landroid/widget/BaseAdapter;

    iput-object v1, v0, Lbe/gentgo/tetsuki/ListWithIndexFragment;->adapter:Landroid/widget/ListAdapter;

    .line 27
    iget-object v0, p0, Lbe/gentgo/tetsuki/ObserveFragment;->listFragment:Lbe/gentgo/tetsuki/ListWithIndexFragment;

    new-instance v1, Lbe/gentgo/tetsuki/ObserveFragment$5;

    invoke-direct {v1, p0}, Lbe/gentgo/tetsuki/ObserveFragment$5;-><init>(Lbe/gentgo/tetsuki/ObserveFragment;)V

    iput-object v1, v0, Lbe/gentgo/tetsuki/ListWithIndexFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 41
    return-void
.end method

.method static synthetic access$0(Lbe/gentgo/tetsuki/ObserveFragment;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lbe/gentgo/tetsuki/ObserveFragment;->startRequest()V

    return-void
.end method

.method private endRequest()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lbe/gentgo/tetsuki/ObserveFragment;->request:Lbe/gentgo/tetsuki/GameListRequest;

    if-nez v0, :cond_0

    .line 86
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lbe/gentgo/tetsuki/ObserveFragment;->request:Lbe/gentgo/tetsuki/GameListRequest;

    iget-object v1, p0, Lbe/gentgo/tetsuki/ObserveFragment;->gameListListener:Lbe/gentgo/tetsuki/Listener;

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/GameListRequest;->removeListener(Lbe/gentgo/tetsuki/Listener;)V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lbe/gentgo/tetsuki/ObserveFragment;->request:Lbe/gentgo/tetsuki/GameListRequest;

    goto :goto_0
.end method

.method private startRequest()V
    .locals 2

    .prologue
    .line 76
    invoke-direct {p0}, Lbe/gentgo/tetsuki/ObserveFragment;->endRequest()V

    .line 77
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v0

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/Server;->requestGameList()Lbe/gentgo/tetsuki/GameListRequest;

    move-result-object v0

    iput-object v0, p0, Lbe/gentgo/tetsuki/ObserveFragment;->request:Lbe/gentgo/tetsuki/GameListRequest;

    .line 78
    iget-object v0, p0, Lbe/gentgo/tetsuki/ObserveFragment;->request:Lbe/gentgo/tetsuki/GameListRequest;

    iget-object v1, p0, Lbe/gentgo/tetsuki/ObserveFragment;->gameListListener:Lbe/gentgo/tetsuki/Listener;

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/GameListRequest;->addListener(Lbe/gentgo/tetsuki/Listener;)V

    .line 79
    return-void
.end method


# virtual methods
.method public getTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 44
    const v0, 0x7f08015b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 56
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v0

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/Server;->observeRoomChange()Lbe/gentgo/tetsuki/Messenger;

    move-result-object v0

    iget-object v1, p0, Lbe/gentgo/tetsuki/ObserveFragment;->roomListener:Lbe/gentgo/tetsuki/Listener;

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/Messenger;->removeListener(Lbe/gentgo/tetsuki/Listener;)V

    .line 57
    iget-object v0, p0, Lbe/gentgo/tetsuki/ObserveFragment;->requestHandler:Landroid/os/Handler;

    iget-object v1, p0, Lbe/gentgo/tetsuki/ObserveFragment;->startRequest:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 58
    invoke-super {p0}, Lbe/gentgo/tetsuki/ListDetailsFragment;->onPause()V

    .line 59
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 48
    invoke-super {p0}, Lbe/gentgo/tetsuki/ListDetailsFragment;->onResume()V

    .line 50
    iget-object v0, p0, Lbe/gentgo/tetsuki/ObserveFragment;->request:Lbe/gentgo/tetsuki/GameListRequest;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lbe/gentgo/tetsuki/ObserveFragment;->startRequest()V

    .line 51
    :cond_0
    iget-object v0, p0, Lbe/gentgo/tetsuki/ObserveFragment;->requestHandler:Landroid/os/Handler;

    iget-object v1, p0, Lbe/gentgo/tetsuki/ObserveFragment;->startRequest:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 52
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v0

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/Server;->observeRoomChange()Lbe/gentgo/tetsuki/Messenger;

    move-result-object v0

    iget-object v1, p0, Lbe/gentgo/tetsuki/ObserveFragment;->roomListener:Lbe/gentgo/tetsuki/Listener;

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/Messenger;->addListener(Lbe/gentgo/tetsuki/Listener;)V

    .line 53
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 62
    invoke-super {p0}, Lbe/gentgo/tetsuki/ListDetailsFragment;->onStop()V

    .line 63
    invoke-direct {p0}, Lbe/gentgo/tetsuki/ObserveFragment;->endRequest()V

    .line 64
    return-void
.end method
