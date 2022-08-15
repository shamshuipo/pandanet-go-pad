.class Lbe/gentgo/tetsuki/NewInvitationFragment$7;
.super Ljava/lang/Object;
.source "NewInvitationFragment.java"

# interfaces
.implements Lkankan/wheel/widget/OnWheelChangedListener;


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
    iput-object p1, p0, Lbe/gentgo/tetsuki/NewInvitationFragment$7;->this$0:Lbe/gentgo/tetsuki/NewInvitationFragment;

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lkankan/wheel/widget/WheelView;II)V
    .locals 4
    .param p1, "wheel"    # Lkankan/wheel/widget/WheelView;
    .param p2, "oldValue"    # I
    .param p3, "newValue"    # I

    .prologue
    .line 189
    iget-object v1, p0, Lbe/gentgo/tetsuki/NewInvitationFragment$7;->this$0:Lbe/gentgo/tetsuki/NewInvitationFragment;

    invoke-static {v1}, Lbe/gentgo/tetsuki/NewInvitationFragment;->access$0(Lbe/gentgo/tetsuki/NewInvitationFragment;)Lbe/gentgo/tetsuki/GameSettings;

    move-result-object v1

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/GameSettings;->getTimeSettings()Lbe/gentgo/tetsuki/GameTimeSettings;

    move-result-object v1

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/GameTimeSettings;->getInitialTime()I

    move-result v0

    .line 190
    .local v0, "fixed":I
    iget-object v1, p0, Lbe/gentgo/tetsuki/NewInvitationFragment$7;->this$0:Lbe/gentgo/tetsuki/NewInvitationFragment;

    invoke-static {v1}, Lbe/gentgo/tetsuki/NewInvitationFragment;->access$0(Lbe/gentgo/tetsuki/NewInvitationFragment;)Lbe/gentgo/tetsuki/GameSettings;

    move-result-object v1

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/GameSettings;->getTimeSettings()Lbe/gentgo/tetsuki/GameTimeSettings;

    move-result-object v1

    mul-int/lit8 v2, p3, 0x3c

    const/16 v3, 0x19

    invoke-virtual {v1, v0, v2, v3}, Lbe/gentgo/tetsuki/GameTimeSettings;->setAsCanadianExtraTime(III)V

    .line 191
    iget-object v1, p0, Lbe/gentgo/tetsuki/NewInvitationFragment$7;->this$0:Lbe/gentgo/tetsuki/NewInvitationFragment;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lbe/gentgo/tetsuki/NewInvitationFragment;->access$2(Lbe/gentgo/tetsuki/NewInvitationFragment;Z)V

    .line 192
    return-void
.end method
