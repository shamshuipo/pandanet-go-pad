.class Lbe/gentgo/tetsuki/PlayerDetailsFragment$6;
.super Lbe/gentgo/tetsuki/Listener;
.source "PlayerDetailsFragment.java"


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
    iput-object p1, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$6;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    .line 475
    invoke-direct {p0}, Lbe/gentgo/tetsuki/Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public Do()Z
    .locals 3

    .prologue
    .line 476
    iget-object v1, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$6;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->onMorePlayerDetailsAvailable()V

    .line 477
    iget-object v1, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$6;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    invoke-static {v1}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$13(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)Lbe/gentgo/tetsuki/GameDetailsRequest;

    move-result-object v1

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/GameDetailsRequest;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$6;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    invoke-static {v1}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$24(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)Lbe/gentgo/tetsuki/GameRequest;

    move-result-object v1

    if-nez v1, :cond_0

    .line 478
    iget-object v1, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$6;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    invoke-static {v1}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$12(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)I

    move-result v0

    .line 479
    .local v0, "game":I
    if-ltz v0, :cond_0

    .line 480
    iget-object v1, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$6;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v2

    invoke-virtual {v2, v0}, Lbe/gentgo/tetsuki/Server;->observeGame(I)Lbe/gentgo/tetsuki/GameRequest;

    move-result-object v2

    invoke-static {v1, v2}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$25(Lbe/gentgo/tetsuki/PlayerDetailsFragment;Lbe/gentgo/tetsuki/GameRequest;)V

    .line 481
    iget-object v1, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$6;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    invoke-static {v1}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$24(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)Lbe/gentgo/tetsuki/GameRequest;

    move-result-object v1

    iget-object v2, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$6;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    invoke-static {v2}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$26(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)Lbe/gentgo/tetsuki/Listener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbe/gentgo/tetsuki/GameRequest;->addListener(Lbe/gentgo/tetsuki/Listener;)V

    .line 482
    iget-object v1, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$6;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    iget-object v2, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$6;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    invoke-virtual {v2}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v2}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$14(Lbe/gentgo/tetsuki/PlayerDetailsFragment;Landroid/view/View;)V

    .line 485
    .end local v0    # "game":I
    :cond_0
    const/4 v1, 0x1

    return v1
.end method
