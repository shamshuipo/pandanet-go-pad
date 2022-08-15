.class Lbe/gentgo/tetsuki/PlayersListAdapter$3;
.super Lbe/gentgo/tetsuki/Listener;
.source "PlayersListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbe/gentgo/tetsuki/PlayersListAdapter;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbe/gentgo/tetsuki/PlayersListAdapter;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/PlayersListAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/PlayersListAdapter$3;->this$0:Lbe/gentgo/tetsuki/PlayersListAdapter;

    .line 24
    invoke-direct {p0}, Lbe/gentgo/tetsuki/Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public Do()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 25
    iget-object v1, p0, Lbe/gentgo/tetsuki/PlayersListAdapter$3;->this$0:Lbe/gentgo/tetsuki/PlayersListAdapter;

    invoke-static {v1}, Lbe/gentgo/tetsuki/PlayersListAdapter;->access$3(Lbe/gentgo/tetsuki/PlayersListAdapter;)Landroid/database/DataSetObserver;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbe/gentgo/tetsuki/PlayersListAdapter$3;->this$0:Lbe/gentgo/tetsuki/PlayersListAdapter;

    invoke-static {v1}, Lbe/gentgo/tetsuki/PlayersListAdapter;->access$3(Lbe/gentgo/tetsuki/PlayersListAdapter;)Landroid/database/DataSetObserver;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/DataSetObserver;->onChanged()V

    .line 26
    :cond_0
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v1

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/Server;->getErrorState()I

    move-result v0

    .line 27
    .local v0, "state":I
    if-eqz v0, :cond_1

    .line 28
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 29
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 30
    :cond_1
    iget-object v1, p0, Lbe/gentgo/tetsuki/PlayersListAdapter$3;->this$0:Lbe/gentgo/tetsuki/PlayersListAdapter;

    invoke-static {v1, v2}, Lbe/gentgo/tetsuki/PlayersListAdapter;->access$0(Lbe/gentgo/tetsuki/PlayersListAdapter;Z)V

    .line 31
    :cond_2
    return v2
.end method
