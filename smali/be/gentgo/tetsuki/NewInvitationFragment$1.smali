.class Lbe/gentgo/tetsuki/NewInvitationFragment$1;
.super Ljava/lang/Object;
.source "NewInvitationFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbe/gentgo/tetsuki/NewInvitationFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
.field final synthetic this$0:Lbe/gentgo/tetsuki/NewInvitationFragment;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/NewInvitationFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/NewInvitationFragment$1;->this$0:Lbe/gentgo/tetsuki/NewInvitationFragment;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "pos"    # I
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
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x1

    .line 75
    const/4 v2, 0x2

    if-ne p3, v2, :cond_0

    iget-object v2, p0, Lbe/gentgo/tetsuki/NewInvitationFragment$1;->this$0:Lbe/gentgo/tetsuki/NewInvitationFragment;

    invoke-static {v2}, Lbe/gentgo/tetsuki/NewInvitationFragment;->access$0(Lbe/gentgo/tetsuki/NewInvitationFragment;)Lbe/gentgo/tetsuki/GameSettings;

    move-result-object v2

    invoke-virtual {v2}, Lbe/gentgo/tetsuki/GameSettings;->isIncomplete()Z

    move-result v2

    if-nez v2, :cond_0

    .line 77
    new-instance v1, Lbe/gentgo/tetsuki/TimeSettingsFragment;

    iget-object v2, p0, Lbe/gentgo/tetsuki/NewInvitationFragment$1;->this$0:Lbe/gentgo/tetsuki/NewInvitationFragment;

    invoke-static {v2}, Lbe/gentgo/tetsuki/NewInvitationFragment;->access$0(Lbe/gentgo/tetsuki/NewInvitationFragment;)Lbe/gentgo/tetsuki/GameSettings;

    move-result-object v2

    invoke-virtual {v2}, Lbe/gentgo/tetsuki/GameSettings;->getTimeSettings()Lbe/gentgo/tetsuki/GameTimeSettings;

    move-result-object v2

    invoke-direct {v1, v2, v4}, Lbe/gentgo/tetsuki/TimeSettingsFragment;-><init>(Lbe/gentgo/tetsuki/GameTimeSettings;Z)V

    .line 78
    .local v1, "timeSettingsFragment":Lbe/gentgo/tetsuki/TimeSettingsFragment;
    iget-object v2, p0, Lbe/gentgo/tetsuki/NewInvitationFragment$1;->this$0:Lbe/gentgo/tetsuki/NewInvitationFragment;

    invoke-virtual {v2}, Lbe/gentgo/tetsuki/NewInvitationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lbe/gentgo/tetsuki/DialogFragmentActivity;

    const v3, 0x7f0b00a0

    invoke-virtual {v2, v1, v3, v4}, Lbe/gentgo/tetsuki/DialogFragmentActivity;->pushFragment(Landroid/app/Fragment;IZ)V

    .line 79
    iget-object v2, p0, Lbe/gentgo/tetsuki/NewInvitationFragment$1;->this$0:Lbe/gentgo/tetsuki/NewInvitationFragment;

    iget-object v2, v2, Lbe/gentgo/tetsuki/NewInvitationFragment;->adapter:Lbe/gentgo/tetsuki/InvitationAdapter;

    const/4 v3, -0x1

    iput v3, v2, Lbe/gentgo/tetsuki/InvitationAdapter;->highlightedRow:I

    .line 88
    .end local v1    # "timeSettingsFragment":Lbe/gentgo/tetsuki/TimeSettingsFragment;
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v2, p0, Lbe/gentgo/tetsuki/NewInvitationFragment$1;->this$0:Lbe/gentgo/tetsuki/NewInvitationFragment;

    iget-object v2, v2, Lbe/gentgo/tetsuki/NewInvitationFragment;->adapter:Lbe/gentgo/tetsuki/InvitationAdapter;

    iput p3, v2, Lbe/gentgo/tetsuki/InvitationAdapter;->highlightedRow:I

    .line 83
    if-lez p3, :cond_1

    iget-object v2, p0, Lbe/gentgo/tetsuki/NewInvitationFragment$1;->this$0:Lbe/gentgo/tetsuki/NewInvitationFragment;

    invoke-static {v2}, Lbe/gentgo/tetsuki/NewInvitationFragment;->access$1(Lbe/gentgo/tetsuki/NewInvitationFragment;)Z

    move-result v2

    if-nez v2, :cond_1

    add-int/lit8 p3, p3, 0x1

    .line 84
    :cond_1
    iget-object v2, p0, Lbe/gentgo/tetsuki/NewInvitationFragment$1;->this$0:Lbe/gentgo/tetsuki/NewInvitationFragment;

    invoke-virtual {v2}, Lbe/gentgo/tetsuki/NewInvitationFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0b0091

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    .line 85
    .local v0, "flipper":Landroid/widget/ViewFlipper;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    .line 86
    invoke-virtual {v0, p3}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 87
    iget-object v2, p0, Lbe/gentgo/tetsuki/NewInvitationFragment$1;->this$0:Lbe/gentgo/tetsuki/NewInvitationFragment;

    iget-object v2, v2, Lbe/gentgo/tetsuki/NewInvitationFragment;->adapter:Lbe/gentgo/tetsuki/InvitationAdapter;

    invoke-virtual {v2}, Lbe/gentgo/tetsuki/InvitationAdapter;->reload()V

    goto :goto_0
.end method
