.class Lbe/gentgo/tetsuki/NewInvitationFragment$6;
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
    iput-object p1, p0, Lbe/gentgo/tetsuki/NewInvitationFragment$6;->this$0:Lbe/gentgo/tetsuki/NewInvitationFragment;

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lkankan/wheel/widget/WheelView;II)V
    .locals 3
    .param p1, "wheel"    # Lkankan/wheel/widget/WheelView;
    .param p2, "oldValue"    # I
    .param p3, "newValue"    # I

    .prologue
    const/4 v2, 0x0

    .line 173
    iget-object v0, p0, Lbe/gentgo/tetsuki/NewInvitationFragment$6;->this$0:Lbe/gentgo/tetsuki/NewInvitationFragment;

    invoke-static {v0}, Lbe/gentgo/tetsuki/NewInvitationFragment;->access$0(Lbe/gentgo/tetsuki/NewInvitationFragment;)Lbe/gentgo/tetsuki/GameSettings;

    move-result-object v0

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/GameSettings;->isIncomplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lbe/gentgo/tetsuki/NewInvitationFragment$6;->this$0:Lbe/gentgo/tetsuki/NewInvitationFragment;

    invoke-static {v0}, Lbe/gentgo/tetsuki/NewInvitationFragment;->access$0(Lbe/gentgo/tetsuki/NewInvitationFragment;)Lbe/gentgo/tetsuki/GameSettings;

    move-result-object v0

    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v1

    invoke-virtual {v1, p3}, Lbe/gentgo/tetsuki/Server;->getSeekTimeSettings(I)Lbe/gentgo/tetsuki/GameTimeSettings;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/GameSettings;->setGameTimeSettings(Lbe/gentgo/tetsuki/GameTimeSettings;)V

    .line 176
    iget-object v0, p0, Lbe/gentgo/tetsuki/NewInvitationFragment$6;->this$0:Lbe/gentgo/tetsuki/NewInvitationFragment;

    invoke-static {v0, v2}, Lbe/gentgo/tetsuki/NewInvitationFragment;->access$2(Lbe/gentgo/tetsuki/NewInvitationFragment;Z)V

    .line 183
    :goto_0
    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lbe/gentgo/tetsuki/NewInvitationFragment$6;->this$0:Lbe/gentgo/tetsuki/NewInvitationFragment;

    invoke-static {v0}, Lbe/gentgo/tetsuki/NewInvitationFragment;->access$0(Lbe/gentgo/tetsuki/NewInvitationFragment;)Lbe/gentgo/tetsuki/GameSettings;

    move-result-object v0

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/GameSettings;->getTimeSettings()Lbe/gentgo/tetsuki/GameTimeSettings;

    move-result-object v0

    mul-int/lit8 v1, p3, 0x3c

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/GameTimeSettings;->setInitialTime(I)V

    .line 181
    iget-object v0, p0, Lbe/gentgo/tetsuki/NewInvitationFragment$6;->this$0:Lbe/gentgo/tetsuki/NewInvitationFragment;

    invoke-static {v0, v2}, Lbe/gentgo/tetsuki/NewInvitationFragment;->access$2(Lbe/gentgo/tetsuki/NewInvitationFragment;Z)V

    goto :goto_0
.end method
