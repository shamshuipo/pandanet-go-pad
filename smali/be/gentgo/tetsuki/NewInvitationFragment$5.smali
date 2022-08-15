.class Lbe/gentgo/tetsuki/NewInvitationFragment$5;
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
    iput-object p1, p0, Lbe/gentgo/tetsuki/NewInvitationFragment$5;->this$0:Lbe/gentgo/tetsuki/NewInvitationFragment;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lkankan/wheel/widget/WheelView;II)V
    .locals 2
    .param p1, "wheel"    # Lkankan/wheel/widget/WheelView;
    .param p2, "oldValue"    # I
    .param p3, "newValue"    # I

    .prologue
    .line 165
    if-lez p3, :cond_0

    add-int/lit8 p3, p3, 0x1

    .line 166
    :cond_0
    iget-object v0, p0, Lbe/gentgo/tetsuki/NewInvitationFragment$5;->this$0:Lbe/gentgo/tetsuki/NewInvitationFragment;

    invoke-static {v0}, Lbe/gentgo/tetsuki/NewInvitationFragment;->access$0(Lbe/gentgo/tetsuki/NewInvitationFragment;)Lbe/gentgo/tetsuki/GameSettings;

    move-result-object v0

    invoke-virtual {v0, p3}, Lbe/gentgo/tetsuki/GameSettings;->setNrOfHandicapStones(I)V

    .line 167
    iget-object v0, p0, Lbe/gentgo/tetsuki/NewInvitationFragment$5;->this$0:Lbe/gentgo/tetsuki/NewInvitationFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lbe/gentgo/tetsuki/NewInvitationFragment;->access$2(Lbe/gentgo/tetsuki/NewInvitationFragment;Z)V

    .line 168
    return-void
.end method
