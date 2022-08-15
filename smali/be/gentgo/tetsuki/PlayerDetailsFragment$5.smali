.class Lbe/gentgo/tetsuki/PlayerDetailsFragment$5;
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
    iput-object p1, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$5;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    .line 468
    invoke-direct {p0}, Lbe/gentgo/tetsuki/Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public Do()Z
    .locals 3

    .prologue
    .line 469
    iget-object v0, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$5;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    invoke-static {v0}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$2(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)Lbe/gentgo/tetsuki/PlayerDetailsRequest;

    move-result-object v0

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/PlayerDetailsRequest;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$5;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    new-instance v1, Lbe/gentgo/tetsuki/Player;

    iget-object v2, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$5;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    invoke-static {v2}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$2(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)Lbe/gentgo/tetsuki/PlayerDetailsRequest;

    move-result-object v2

    invoke-virtual {v2}, Lbe/gentgo/tetsuki/PlayerDetailsRequest;->getResult()Lbe/gentgo/tetsuki/Player;

    move-result-object v2

    invoke-direct {v1, v2}, Lbe/gentgo/tetsuki/Player;-><init>(Lbe/gentgo/tetsuki/Player;)V

    invoke-static {v0, v1}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$23(Lbe/gentgo/tetsuki/PlayerDetailsFragment;Lbe/gentgo/tetsuki/Player;)V

    .line 471
    :cond_0
    iget-object v0, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$5;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->onMorePlayerDetailsAvailable()V

    .line 472
    const/4 v0, 0x1

    return v0
.end method
