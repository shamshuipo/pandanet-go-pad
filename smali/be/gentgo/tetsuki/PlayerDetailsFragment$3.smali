.class Lbe/gentgo/tetsuki/PlayerDetailsFragment$3;
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
    iput-object p1, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$3;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 149
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v1

    .line 150
    .local v1, "server":Lbe/gentgo/tetsuki/Server;
    iget-object v2, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$3;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    invoke-static {v2}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$0(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)Lbe/gentgo/tetsuki/Player;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/Server;->isGuestLogin()Z

    move-result v2

    if-nez v2, :cond_0

    .line 151
    iget-object v2, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$3;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    invoke-static {v2}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$0(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)Lbe/gentgo/tetsuki/Player;

    move-result-object v2

    invoke-virtual {v2}, Lbe/gentgo/tetsuki/Player;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbe/gentgo/tetsuki/Server;->isMyFriend(Ljava/lang/String;)Z

    move-result v0

    .line 152
    .local v0, "friend":Z
    iget-object v2, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$3;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    invoke-static {v2}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$0(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)Lbe/gentgo/tetsuki/Player;

    move-result-object v2

    invoke-virtual {v2}, Lbe/gentgo/tetsuki/Player;->getID()Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v3, v2}, Lbe/gentgo/tetsuki/Server;->markAsFriend(Ljava/lang/String;Z)V

    .line 153
    iget-object v2, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$3;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    invoke-static {v2}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$3(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)Landroid/database/DataSetObserver;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$3;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    invoke-static {v2}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$3(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)Landroid/database/DataSetObserver;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/DataSetObserver;->onChanged()V

    .line 155
    .end local v0    # "friend":Z
    :cond_0
    return-void

    .line 152
    .restart local v0    # "friend":Z
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method
