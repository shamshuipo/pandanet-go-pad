.class Lbe/gentgo/tetsuki/InvitationDetailsFragment$1;
.super Ljava/lang/Object;
.source "InvitationDetailsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbe/gentgo/tetsuki/InvitationDetailsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lbe/gentgo/tetsuki/InvitationDetailsFragment;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/InvitationDetailsFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/InvitationDetailsFragment$1;->this$0:Lbe/gentgo/tetsuki/InvitationDetailsFragment;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lbe/gentgo/tetsuki/InvitationDetailsFragment$1;->this$0:Lbe/gentgo/tetsuki/InvitationDetailsFragment;

    invoke-static {v1}, Lbe/gentgo/tetsuki/InvitationDetailsFragment;->access$0(Lbe/gentgo/tetsuki/InvitationDetailsFragment;)Lbe/gentgo/tetsuki/Invitation;

    move-result-object v1

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/Invitation;->isOpen()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lbe/gentgo/tetsuki/InvitationDetailsFragment$1;->this$0:Lbe/gentgo/tetsuki/InvitationDetailsFragment;

    invoke-static {v1}, Lbe/gentgo/tetsuki/InvitationDetailsFragment;->access$0(Lbe/gentgo/tetsuki/InvitationDetailsFragment;)Lbe/gentgo/tetsuki/Invitation;

    move-result-object v1

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/Invitation;->isUsingNMatch()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x0

    .line 33
    .local v0, "showHandicap":Z
    :goto_0
    if-nez v0, :cond_0

    add-int/lit8 p3, p3, 0x1

    .line 34
    :cond_0
    const/4 v1, 0x2

    if-ne p3, v1, :cond_1

    iget-object v1, p0, Lbe/gentgo/tetsuki/InvitationDetailsFragment$1;->this$0:Lbe/gentgo/tetsuki/InvitationDetailsFragment;

    invoke-static {v1}, Lbe/gentgo/tetsuki/InvitationDetailsFragment;->access$0(Lbe/gentgo/tetsuki/InvitationDetailsFragment;)Lbe/gentgo/tetsuki/Invitation;

    move-result-object v1

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/Invitation;->isOpen()Z

    .line 41
    :cond_1
    return-void

    .line 32
    .end local v0    # "showHandicap":Z
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
