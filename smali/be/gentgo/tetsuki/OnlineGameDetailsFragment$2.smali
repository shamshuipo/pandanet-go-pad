.class Lbe/gentgo/tetsuki/OnlineGameDetailsFragment$2;
.super Ljava/lang/Object;
.source "OnlineGameDetailsFragment.java"

# interfaces
.implements Lbe/gentgo/tetsuki/TapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbe/gentgo/tetsuki/OnlineGameDetailsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbe/gentgo/tetsuki/OnlineGameDetailsFragment;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/OnlineGameDetailsFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/OnlineGameDetailsFragment$2;->this$0:Lbe/gentgo/tetsuki/OnlineGameDetailsFragment;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTap(Lbe/gentgo/tetsuki/Position;Z)V
    .locals 2
    .param p1, "pos"    # Lbe/gentgo/tetsuki/Position;
    .param p2, "accurate"    # Z

    .prologue
    .line 24
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getDispatcher()Lbe/gentgo/tetsuki/Dispatcher;

    move-result-object v0

    iget-object v1, p0, Lbe/gentgo/tetsuki/OnlineGameDetailsFragment$2;->this$0:Lbe/gentgo/tetsuki/OnlineGameDetailsFragment;

    invoke-static {v1}, Lbe/gentgo/tetsuki/OnlineGameDetailsFragment;->access$2(Lbe/gentgo/tetsuki/OnlineGameDetailsFragment;)I

    move-result v1

    invoke-interface {v0, v1}, Lbe/gentgo/tetsuki/Dispatcher;->goToGame(I)V

    .line 25
    return-void
.end method
