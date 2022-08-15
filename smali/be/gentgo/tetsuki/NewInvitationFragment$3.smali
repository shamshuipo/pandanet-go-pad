.class Lbe/gentgo/tetsuki/NewInvitationFragment$3;
.super Ljava/lang/Object;
.source "NewInvitationFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbe/gentgo/tetsuki/NewInvitationFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbe/gentgo/tetsuki/NewInvitationFragment;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/NewInvitationFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/NewInvitationFragment$3;->this$0:Lbe/gentgo/tetsuki/NewInvitationFragment;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 115
    iget-object v0, p0, Lbe/gentgo/tetsuki/NewInvitationFragment$3;->this$0:Lbe/gentgo/tetsuki/NewInvitationFragment;

    invoke-static {v0}, Lbe/gentgo/tetsuki/NewInvitationFragment;->access$0(Lbe/gentgo/tetsuki/NewInvitationFragment;)Lbe/gentgo/tetsuki/GameSettings;

    move-result-object v2

    iget-object v0, p0, Lbe/gentgo/tetsuki/NewInvitationFragment$3;->this$0:Lbe/gentgo/tetsuki/NewInvitationFragment;

    iget-object v0, v0, Lbe/gentgo/tetsuki/NewInvitationFragment;->nigiriButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Lbe/gentgo/tetsuki/GameSettings;->setNigiri(Z)V

    .line 116
    iget-object v0, p0, Lbe/gentgo/tetsuki/NewInvitationFragment$3;->this$0:Lbe/gentgo/tetsuki/NewInvitationFragment;

    iget-object v0, v0, Lbe/gentgo/tetsuki/NewInvitationFragment;->blackButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lbe/gentgo/tetsuki/NewInvitationFragment$3;->this$0:Lbe/gentgo/tetsuki/NewInvitationFragment;

    invoke-static {v0}, Lbe/gentgo/tetsuki/NewInvitationFragment;->access$0(Lbe/gentgo/tetsuki/NewInvitationFragment;)Lbe/gentgo/tetsuki/GameSettings;

    move-result-object v0

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/GameSettings;->getWhitePlayer()Lbe/gentgo/tetsuki/Player;

    move-result-object v0

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/Player;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v2

    invoke-virtual {v2}, Lbe/gentgo/tetsuki/Server;->getMyID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lbe/gentgo/tetsuki/NewInvitationFragment$3;->this$0:Lbe/gentgo/tetsuki/NewInvitationFragment;

    invoke-static {v0}, Lbe/gentgo/tetsuki/NewInvitationFragment;->access$0(Lbe/gentgo/tetsuki/NewInvitationFragment;)Lbe/gentgo/tetsuki/GameSettings;

    move-result-object v0

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/GameSettings;->swapPlayers()V

    .line 118
    :cond_0
    iget-object v0, p0, Lbe/gentgo/tetsuki/NewInvitationFragment$3;->this$0:Lbe/gentgo/tetsuki/NewInvitationFragment;

    iget-object v0, v0, Lbe/gentgo/tetsuki/NewInvitationFragment;->whiteButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lbe/gentgo/tetsuki/NewInvitationFragment$3;->this$0:Lbe/gentgo/tetsuki/NewInvitationFragment;

    invoke-static {v0}, Lbe/gentgo/tetsuki/NewInvitationFragment;->access$0(Lbe/gentgo/tetsuki/NewInvitationFragment;)Lbe/gentgo/tetsuki/GameSettings;

    move-result-object v0

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/GameSettings;->getBlackPlayer()Lbe/gentgo/tetsuki/Player;

    move-result-object v0

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/Player;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v2

    invoke-virtual {v2}, Lbe/gentgo/tetsuki/Server;->getMyID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lbe/gentgo/tetsuki/NewInvitationFragment$3;->this$0:Lbe/gentgo/tetsuki/NewInvitationFragment;

    invoke-static {v0}, Lbe/gentgo/tetsuki/NewInvitationFragment;->access$0(Lbe/gentgo/tetsuki/NewInvitationFragment;)Lbe/gentgo/tetsuki/GameSettings;

    move-result-object v0

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/GameSettings;->swapPlayers()V

    .line 120
    :cond_1
    iget-object v0, p0, Lbe/gentgo/tetsuki/NewInvitationFragment$3;->this$0:Lbe/gentgo/tetsuki/NewInvitationFragment;

    invoke-static {v0, v1}, Lbe/gentgo/tetsuki/NewInvitationFragment;->access$2(Lbe/gentgo/tetsuki/NewInvitationFragment;Z)V

    .line 121
    return-void

    :cond_2
    move v0, v1

    .line 115
    goto :goto_0
.end method
