.class Lbe/gentgo/tetsuki/PlayersListFragment$1;
.super Ljava/lang/Object;
.source "PlayersListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbe/gentgo/tetsuki/PlayersListFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lbe/gentgo/tetsuki/PlayersListFragment;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/PlayersListFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/PlayersListFragment$1;->this$0:Lbe/gentgo/tetsuki/PlayersListFragment;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lbe/gentgo/tetsuki/PlayersListFragment$1;->this$0:Lbe/gentgo/tetsuki/PlayersListFragment;

    invoke-static {v1}, Lbe/gentgo/tetsuki/PlayersListFragment;->access$0(Lbe/gentgo/tetsuki/PlayersListFragment;)Lbe/gentgo/tetsuki/PlayersListAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lbe/gentgo/tetsuki/PlayersListAdapter;->getPlayerAtPosition(I)Lbe/gentgo/tetsuki/Player;

    move-result-object v0

    .line 24
    .local v0, "player":Lbe/gentgo/tetsuki/Player;
    if-eqz v0, :cond_0

    .line 25
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getDispatcher()Lbe/gentgo/tetsuki/Dispatcher;

    move-result-object v1

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/Player;->getID()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lbe/gentgo/tetsuki/Dispatcher;->goToPlayer(Ljava/lang/String;Z)Z

    .line 27
    :cond_0
    return-void
.end method
