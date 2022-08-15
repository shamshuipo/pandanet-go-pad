.class Lbe/gentgo/tetsuki/ArchiveFragment$7;
.super Ljava/lang/Object;
.source "ArchiveFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbe/gentgo/tetsuki/ArchiveFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbe/gentgo/tetsuki/ArchiveFragment;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/ArchiveFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/ArchiveFragment$7;->this$0:Lbe/gentgo/tetsuki/ArchiveFragment;

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 151
    new-instance v0, Lbe/gentgo/tetsuki/GameSettings;

    invoke-direct {v0}, Lbe/gentgo/tetsuki/GameSettings;-><init>()V

    .line 152
    .local v0, "gameSettings":Lbe/gentgo/tetsuki/GameSettings;
    iget-object v1, p0, Lbe/gentgo/tetsuki/ArchiveFragment$7;->this$0:Lbe/gentgo/tetsuki/ArchiveFragment;

    const v2, 0x7f08007d

    invoke-virtual {v1, v2}, Lbe/gentgo/tetsuki/ArchiveFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/GameSettings;->setTitle(Ljava/lang/String;)V

    .line 153
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/GameSettings;->setDate(Ljava/util/Date;)V

    .line 154
    new-instance v1, Lbe/gentgo/tetsuki/NewArchiveGameFragment;

    invoke-direct {v1, v0}, Lbe/gentgo/tetsuki/NewArchiveGameFragment;-><init>(Lbe/gentgo/tetsuki/GameSettings;)V

    iget-object v2, p0, Lbe/gentgo/tetsuki/ArchiveFragment$7;->this$0:Lbe/gentgo/tetsuki/ArchiveFragment;

    invoke-virtual {v2}, Lbe/gentgo/tetsuki/ArchiveFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v2}, Lbe/gentgo/tetsuki/DialogFragmentActivity;->startActivityWithFragment(Landroid/app/Fragment;Landroid/content/Context;)V

    .line 155
    return-void
.end method
