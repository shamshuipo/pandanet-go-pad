.class Lbe/gentgo/tetsuki/PlayersListAdapter$2;
.super Lbe/gentgo/tetsuki/Listener;
.source "PlayersListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbe/gentgo/tetsuki/PlayersListAdapter;
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
    iput-object p1, p0, Lbe/gentgo/tetsuki/PlayersListAdapter$2;->this$0:Lbe/gentgo/tetsuki/PlayersListAdapter;

    .line 240
    invoke-direct {p0}, Lbe/gentgo/tetsuki/Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public Do()Z
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lbe/gentgo/tetsuki/PlayersListAdapter$2;->this$0:Lbe/gentgo/tetsuki/PlayersListAdapter;

    invoke-static {v0}, Lbe/gentgo/tetsuki/PlayersListAdapter;->access$1(Lbe/gentgo/tetsuki/PlayersListAdapter;)Lbe/gentgo/tetsuki/PlayerListRequest;

    move-result-object v0

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/PlayerListRequest;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 243
    :goto_0
    return v0

    .line 242
    :cond_0
    iget-object v0, p0, Lbe/gentgo/tetsuki/PlayersListAdapter$2;->this$0:Lbe/gentgo/tetsuki/PlayersListAdapter;

    invoke-static {v0}, Lbe/gentgo/tetsuki/PlayersListAdapter;->access$2(Lbe/gentgo/tetsuki/PlayersListAdapter;)V

    .line 243
    const/4 v0, 0x0

    goto :goto_0
.end method
