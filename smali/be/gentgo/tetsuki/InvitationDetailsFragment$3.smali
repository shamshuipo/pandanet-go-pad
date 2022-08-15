.class Lbe/gentgo/tetsuki/InvitationDetailsFragment$3;
.super Ljava/lang/Object;
.source "InvitationDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbe/gentgo/tetsuki/InvitationDetailsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbe/gentgo/tetsuki/InvitationDetailsFragment;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/InvitationDetailsFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/InvitationDetailsFragment$3;->this$0:Lbe/gentgo/tetsuki/InvitationDetailsFragment;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 83
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v0

    iget-object v1, p0, Lbe/gentgo/tetsuki/InvitationDetailsFragment$3;->this$0:Lbe/gentgo/tetsuki/InvitationDetailsFragment;

    invoke-static {v1}, Lbe/gentgo/tetsuki/InvitationDetailsFragment;->access$0(Lbe/gentgo/tetsuki/InvitationDetailsFragment;)Lbe/gentgo/tetsuki/Invitation;

    move-result-object v1

    iget-wide v2, v1, Lbe/gentgo/tetsuki/Invitation;->nativePointer:J

    invoke-virtual {v0, v2, v3}, Lbe/gentgo/tetsuki/Server;->declineInvitation(J)V

    .line 84
    iget-object v0, p0, Lbe/gentgo/tetsuki/InvitationDetailsFragment$3;->this$0:Lbe/gentgo/tetsuki/InvitationDetailsFragment;

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/InvitationDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 85
    return-void
.end method
