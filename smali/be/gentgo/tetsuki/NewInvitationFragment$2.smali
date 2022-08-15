.class Lbe/gentgo/tetsuki/NewInvitationFragment$2;
.super Ljava/lang/Object;
.source "NewInvitationFragment.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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
    iput-object p1, p0, Lbe/gentgo/tetsuki/NewInvitationFragment$2;->this$0:Lbe/gentgo/tetsuki/NewInvitationFragment;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 98
    mul-int/lit8 v1, p2, 0x2

    add-int/lit8 v0, v1, 0x5

    .line 99
    .local v0, "size":I
    iget-object v1, p0, Lbe/gentgo/tetsuki/NewInvitationFragment$2;->this$0:Lbe/gentgo/tetsuki/NewInvitationFragment;

    invoke-static {v1}, Lbe/gentgo/tetsuki/NewInvitationFragment;->access$0(Lbe/gentgo/tetsuki/NewInvitationFragment;)Lbe/gentgo/tetsuki/GameSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbe/gentgo/tetsuki/GameSettings;->setSize(I)V

    .line 100
    iget-object v1, p0, Lbe/gentgo/tetsuki/NewInvitationFragment$2;->this$0:Lbe/gentgo/tetsuki/NewInvitationFragment;

    iget-object v1, v1, Lbe/gentgo/tetsuki/NewInvitationFragment;->adapter:Lbe/gentgo/tetsuki/InvitationAdapter;

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/InvitationAdapter;->reload()V

    .line 101
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 105
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 109
    return-void
.end method
