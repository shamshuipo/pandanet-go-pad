.class Lbe/gentgo/tetsuki/PlayerDetailsFragment$4$1;
.super Ljava/lang/Object;
.source "PlayerDetailsFragment.java"

# interfaces
.implements Lbe/gentgo/tetsuki/TapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbe/gentgo/tetsuki/PlayerDetailsFragment$4;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lbe/gentgo/tetsuki/PlayerDetailsFragment$4;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/PlayerDetailsFragment$4;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$4$1;->this$1:Lbe/gentgo/tetsuki/PlayerDetailsFragment$4;

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTap(Lbe/gentgo/tetsuki/Position;Z)V
    .locals 2
    .param p1, "pos"    # Lbe/gentgo/tetsuki/Position;
    .param p2, "accurate"    # Z

    .prologue
    .line 262
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getDispatcher()Lbe/gentgo/tetsuki/Dispatcher;

    move-result-object v0

    iget-object v1, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$4$1;->this$1:Lbe/gentgo/tetsuki/PlayerDetailsFragment$4;

    invoke-static {v1}, Lbe/gentgo/tetsuki/PlayerDetailsFragment$4;->access$0(Lbe/gentgo/tetsuki/PlayerDetailsFragment$4;)Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    move-result-object v1

    invoke-static {v1}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$12(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)I

    move-result v1

    invoke-interface {v0, v1}, Lbe/gentgo/tetsuki/Dispatcher;->goToGame(I)V

    .line 263
    return-void
.end method
