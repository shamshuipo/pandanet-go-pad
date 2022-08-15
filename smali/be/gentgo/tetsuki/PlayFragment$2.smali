.class Lbe/gentgo/tetsuki/PlayFragment$2;
.super Ljava/lang/Object;
.source "PlayFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbe/gentgo/tetsuki/PlayFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbe/gentgo/tetsuki/PlayFragment;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/PlayFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/PlayFragment$2;->this$0:Lbe/gentgo/tetsuki/PlayFragment;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 32
    iget-object v2, p0, Lbe/gentgo/tetsuki/PlayFragment$2;->this$0:Lbe/gentgo/tetsuki/PlayFragment;

    iget-object v2, v2, Lbe/gentgo/tetsuki/PlayFragment;->invitationManager:Lbe/gentgo/tetsuki/InvitationManager;

    invoke-virtual {v2}, Lbe/gentgo/tetsuki/InvitationManager;->getSeekInvitation()Lbe/gentgo/tetsuki/Invitation;

    move-result-object v1

    .line 34
    .local v1, "seek":Lbe/gentgo/tetsuki/Invitation;
    if-nez v1, :cond_0

    .line 35
    new-instance v0, Lbe/gentgo/tetsuki/NewInvitationFragment;

    invoke-direct {v0}, Lbe/gentgo/tetsuki/NewInvitationFragment;-><init>()V

    .line 38
    .local v0, "fragment":Landroid/app/Fragment;
    :goto_0
    iget-object v2, p0, Lbe/gentgo/tetsuki/PlayFragment$2;->this$0:Lbe/gentgo/tetsuki/PlayFragment;

    invoke-virtual {v2}, Lbe/gentgo/tetsuki/PlayFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v2}, Lbe/gentgo/tetsuki/DialogFragmentActivity;->startActivityWithFragment(Landroid/app/Fragment;Landroid/content/Context;)V

    .line 39
    return-void

    .line 37
    .end local v0    # "fragment":Landroid/app/Fragment;
    :cond_0
    new-instance v0, Lbe/gentgo/tetsuki/InvitationDetailsFragment;

    invoke-direct {v0, v1}, Lbe/gentgo/tetsuki/InvitationDetailsFragment;-><init>(Lbe/gentgo/tetsuki/Invitation;)V

    .restart local v0    # "fragment":Landroid/app/Fragment;
    goto :goto_0
.end method
