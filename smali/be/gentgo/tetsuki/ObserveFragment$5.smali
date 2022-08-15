.class Lbe/gentgo/tetsuki/ObserveFragment$5;
.super Ljava/lang/Object;
.source "ObserveFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbe/gentgo/tetsuki/ObserveFragment;-><init>()V
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
.field final synthetic this$0:Lbe/gentgo/tetsuki/ObserveFragment;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/ObserveFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/ObserveFragment$5;->this$0:Lbe/gentgo/tetsuki/ObserveFragment;

    .line 27
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
    .line 29
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lbe/gentgo/tetsuki/ObserveFragment$5;->this$0:Lbe/gentgo/tetsuki/ObserveFragment;

    iget-object v2, v2, Lbe/gentgo/tetsuki/ObserveFragment;->sortedGames:Ljava/util/List;

    if-nez v2, :cond_1

    .line 39
    :cond_0
    :goto_0
    return-void

    .line 30
    :cond_1
    iget-object v2, p0, Lbe/gentgo/tetsuki/ObserveFragment$5;->this$0:Lbe/gentgo/tetsuki/ObserveFragment;

    iget-object v2, v2, Lbe/gentgo/tetsuki/ObserveFragment;->sortedGames:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p3, v2, :cond_0

    .line 31
    iget-object v2, p0, Lbe/gentgo/tetsuki/ObserveFragment$5;->this$0:Lbe/gentgo/tetsuki/ObserveFragment;

    iget-object v2, v2, Lbe/gentgo/tetsuki/ObserveFragment;->sortedGames:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbe/gentgo/tetsuki/ObserveFragment$SimpleGameInfo;

    .line 32
    .local v1, "result":Lbe/gentgo/tetsuki/ObserveFragment$SimpleGameInfo;
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 33
    new-instance v0, Lbe/gentgo/tetsuki/OnlineGameDetailsFragment;

    iget v2, v1, Lbe/gentgo/tetsuki/ObserveFragment$SimpleGameInfo;->gameID:I

    iget v3, v1, Lbe/gentgo/tetsuki/ObserveFragment$SimpleGameInfo;->observers:I

    invoke-direct {v0, v2, v3}, Lbe/gentgo/tetsuki/OnlineGameDetailsFragment;-><init>(II)V

    .line 34
    .local v0, "fragment":Landroid/app/Fragment;
    iget-object v2, p0, Lbe/gentgo/tetsuki/ObserveFragment$5;->this$0:Lbe/gentgo/tetsuki/ObserveFragment;

    invoke-virtual {v2, v0}, Lbe/gentgo/tetsuki/ObserveFragment;->setDetailsFragment(Landroid/app/Fragment;)V

    goto :goto_0

    .line 37
    .end local v0    # "fragment":Landroid/app/Fragment;
    :cond_2
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getDispatcher()Lbe/gentgo/tetsuki/Dispatcher;

    move-result-object v2

    iget v3, v1, Lbe/gentgo/tetsuki/ObserveFragment$SimpleGameInfo;->gameID:I

    invoke-interface {v2, v3}, Lbe/gentgo/tetsuki/Dispatcher;->goToGame(I)V

    goto :goto_0
.end method
