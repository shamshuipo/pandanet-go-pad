.class Lbe/gentgo/tetsuki/PlayerDetailsFragment$9;
.super Ljava/lang/Object;
.source "PlayerDetailsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbe/gentgo/tetsuki/PlayerDetailsFragment;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$9;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 121
    iget-object v0, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$9;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    invoke-static {v0}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$0(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)Lbe/gentgo/tetsuki/Player;

    move-result-object v0

    invoke-static {}, Lbe/gentgo/tetsuki/Preferences;->getInfoText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbe/gentgo/tetsuki/Preferences;->encode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/Player;->setInfoText([B)V

    .line 122
    iget-object v0, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$9;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    invoke-static {v0}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$3(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)Landroid/database/DataSetObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$9;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    invoke-static {v0}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$3(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)Landroid/database/DataSetObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 123
    :cond_0
    return-void
.end method
