.class Lbe/gentgo/tetsuki/PlayerDetailsFragment$2;
.super Ljava/lang/Object;
.source "PlayerDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbe/gentgo/tetsuki/PlayerDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$2;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 142
    iget-object v0, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$2;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    invoke-static {v0}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$0(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)Lbe/gentgo/tetsuki/Player;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v0

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/Server;->isGuestLogin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getDispatcher()Lbe/gentgo/tetsuki/Dispatcher;

    move-result-object v0

    iget-object v1, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$2;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    invoke-static {v1}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$0(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)Lbe/gentgo/tetsuki/Player;

    move-result-object v1

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/Player;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lbe/gentgo/tetsuki/Dispatcher;->goToPlayerPage(Ljava/lang/String;)V

    .line 144
    :cond_0
    return-void
.end method
