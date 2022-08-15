.class Lbe/gentgo/tetsuki/PlayerDetailsFragment$1;
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
    iput-object p1, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$1;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 133
    iget-object v1, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$1;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    invoke-static {v1}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$0(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)Lbe/gentgo/tetsuki/Player;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$1;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    invoke-static {v1}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$1(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)Lbe/gentgo/tetsuki/Player;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$1;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    invoke-static {v1}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$0(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)Lbe/gentgo/tetsuki/Player;

    move-result-object v1

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/Player;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$1;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    invoke-static {v1}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$0(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)Lbe/gentgo/tetsuki/Player;

    move-result-object v1

    iget-object v2, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$1;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    invoke-static {v2}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$1(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)Lbe/gentgo/tetsuki/Player;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbe/gentgo/tetsuki/Player;->equalsPlayer(Lbe/gentgo/tetsuki/Player;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$1;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    invoke-static {v1}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$2(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)Lbe/gentgo/tetsuki/PlayerDetailsRequest;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$1;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    invoke-static {v1}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$2(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)Lbe/gentgo/tetsuki/PlayerDetailsRequest;

    move-result-object v1

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/PlayerDetailsRequest;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    new-instance v0, Lbe/gentgo/tetsuki/NewInvitationFragment;

    iget-object v1, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$1;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    invoke-static {v1}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$1(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)Lbe/gentgo/tetsuki/Player;

    move-result-object v1

    iget-object v2, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$1;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    invoke-static {v2}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$0(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)Lbe/gentgo/tetsuki/Player;

    move-result-object v2

    iget-object v3, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$1;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    invoke-static {v3}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$0(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)Lbe/gentgo/tetsuki/Player;

    move-result-object v3

    invoke-virtual {v3}, Lbe/gentgo/tetsuki/Player;->supportsNMatch()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lbe/gentgo/tetsuki/NewInvitationFragment;-><init>(Lbe/gentgo/tetsuki/Player;Lbe/gentgo/tetsuki/Player;Z)V

    .line 136
    .local v0, "newInvitation":Lbe/gentgo/tetsuki/NewInvitationFragment;
    iget-object v1, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$1;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lbe/gentgo/tetsuki/DialogFragmentActivity;->startActivityWithFragment(Landroid/app/Fragment;Landroid/content/Context;)V

    .line 138
    .end local v0    # "newInvitation":Lbe/gentgo/tetsuki/NewInvitationFragment;
    :cond_0
    return-void
.end method
