.class Lbe/gentgo/tetsuki/SelectOpponentFragment$1;
.super Lbe/gentgo/tetsuki/Listener;
.source "SelectOpponentFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbe/gentgo/tetsuki/SelectOpponentFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbe/gentgo/tetsuki/SelectOpponentFragment;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/SelectOpponentFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/SelectOpponentFragment$1;->this$0:Lbe/gentgo/tetsuki/SelectOpponentFragment;

    .line 68
    invoke-direct {p0}, Lbe/gentgo/tetsuki/Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public Do()Z
    .locals 4

    .prologue
    .line 71
    iget-object v2, p0, Lbe/gentgo/tetsuki/SelectOpponentFragment$1;->this$0:Lbe/gentgo/tetsuki/SelectOpponentFragment;

    iget-object v2, v2, Lbe/gentgo/tetsuki/SelectOpponentFragment;->detailsRequest:Lbe/gentgo/tetsuki/PlayerDetailsRequest;

    invoke-virtual {v2}, Lbe/gentgo/tetsuki/PlayerDetailsRequest;->isDone()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    .line 76
    :goto_0
    return v2

    .line 72
    :cond_0
    iget-object v2, p0, Lbe/gentgo/tetsuki/SelectOpponentFragment$1;->this$0:Lbe/gentgo/tetsuki/SelectOpponentFragment;

    invoke-virtual {v2}, Lbe/gentgo/tetsuki/SelectOpponentFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 73
    iget-object v2, p0, Lbe/gentgo/tetsuki/SelectOpponentFragment$1;->this$0:Lbe/gentgo/tetsuki/SelectOpponentFragment;

    iget-object v2, v2, Lbe/gentgo/tetsuki/SelectOpponentFragment;->detailsRequest:Lbe/gentgo/tetsuki/PlayerDetailsRequest;

    invoke-virtual {v2}, Lbe/gentgo/tetsuki/PlayerDetailsRequest;->getResult()Lbe/gentgo/tetsuki/Player;

    move-result-object v1

    .line 74
    .local v1, "opponent":Lbe/gentgo/tetsuki/Player;
    new-instance v0, Lbe/gentgo/tetsuki/NewInvitationFragment;

    iget-object v2, p0, Lbe/gentgo/tetsuki/SelectOpponentFragment$1;->this$0:Lbe/gentgo/tetsuki/SelectOpponentFragment;

    iget-object v2, v2, Lbe/gentgo/tetsuki/SelectOpponentFragment;->adapter:Lbe/gentgo/tetsuki/PlayersListAdapter;

    invoke-virtual {v2}, Lbe/gentgo/tetsuki/PlayersListAdapter;->getMe()Lbe/gentgo/tetsuki/Player;

    move-result-object v2

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/Player;->supportsNMatch()Z

    move-result v3

    invoke-direct {v0, v2, v1, v3}, Lbe/gentgo/tetsuki/NewInvitationFragment;-><init>(Lbe/gentgo/tetsuki/Player;Lbe/gentgo/tetsuki/Player;Z)V

    .line 75
    .local v0, "f":Landroid/app/Fragment;
    iget-object v2, p0, Lbe/gentgo/tetsuki/SelectOpponentFragment$1;->this$0:Lbe/gentgo/tetsuki/SelectOpponentFragment;

    invoke-virtual {v2}, Lbe/gentgo/tetsuki/SelectOpponentFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v2}, Lbe/gentgo/tetsuki/DialogFragmentActivity;->startActivityWithFragment(Landroid/app/Fragment;Landroid/content/Context;)V

    .line 76
    const/4 v2, 0x0

    goto :goto_0
.end method
