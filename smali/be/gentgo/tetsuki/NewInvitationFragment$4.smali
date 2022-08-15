.class Lbe/gentgo/tetsuki/NewInvitationFragment$4;
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
    iput-object p1, p0, Lbe/gentgo/tetsuki/NewInvitationFragment$4;->this$0:Lbe/gentgo/tetsuki/NewInvitationFragment;

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 142
    iget-object v0, p0, Lbe/gentgo/tetsuki/NewInvitationFragment$4;->this$0:Lbe/gentgo/tetsuki/NewInvitationFragment;

    invoke-static {v0}, Lbe/gentgo/tetsuki/NewInvitationFragment;->access$0(Lbe/gentgo/tetsuki/NewInvitationFragment;)Lbe/gentgo/tetsuki/GameSettings;

    move-result-object v0

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/GameSettings;->isIncomplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lbe/gentgo/tetsuki/NewInvitationFragment$4;->this$0:Lbe/gentgo/tetsuki/NewInvitationFragment;

    invoke-static {v0}, Lbe/gentgo/tetsuki/NewInvitationFragment;->access$0(Lbe/gentgo/tetsuki/NewInvitationFragment;)Lbe/gentgo/tetsuki/GameSettings;

    move-result-object v0

    iget-wide v0, v0, Lbe/gentgo/tetsuki/GameSettings;->nativePointer:J

    invoke-static {v0, v1}, Lbe/gentgo/tetsuki/Preferences;->setDefaultSeekSettings(J)V

    .line 146
    :goto_0
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v0

    iget-object v1, p0, Lbe/gentgo/tetsuki/NewInvitationFragment$4;->this$0:Lbe/gentgo/tetsuki/NewInvitationFragment;

    invoke-static {v1}, Lbe/gentgo/tetsuki/NewInvitationFragment;->access$0(Lbe/gentgo/tetsuki/NewInvitationFragment;)Lbe/gentgo/tetsuki/GameSettings;

    move-result-object v1

    iget-wide v2, v1, Lbe/gentgo/tetsuki/GameSettings;->nativePointer:J

    invoke-virtual {v0, v2, v3}, Lbe/gentgo/tetsuki/Server;->invite(J)V

    .line 147
    iget-object v0, p0, Lbe/gentgo/tetsuki/NewInvitationFragment$4;->this$0:Lbe/gentgo/tetsuki/NewInvitationFragment;

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/NewInvitationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 148
    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lbe/gentgo/tetsuki/NewInvitationFragment$4;->this$0:Lbe/gentgo/tetsuki/NewInvitationFragment;

    invoke-static {v0}, Lbe/gentgo/tetsuki/NewInvitationFragment;->access$0(Lbe/gentgo/tetsuki/NewInvitationFragment;)Lbe/gentgo/tetsuki/GameSettings;

    move-result-object v0

    iget-wide v0, v0, Lbe/gentgo/tetsuki/GameSettings;->nativePointer:J

    iget-object v2, p0, Lbe/gentgo/tetsuki/NewInvitationFragment$4;->this$0:Lbe/gentgo/tetsuki/NewInvitationFragment;

    invoke-static {v2}, Lbe/gentgo/tetsuki/NewInvitationFragment;->access$1(Lbe/gentgo/tetsuki/NewInvitationFragment;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lbe/gentgo/tetsuki/Preferences;->setDefaultGameSettings(JZ)V

    goto :goto_0
.end method
