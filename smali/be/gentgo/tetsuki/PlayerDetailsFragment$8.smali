.class Lbe/gentgo/tetsuki/PlayerDetailsFragment$8;
.super Ljava/lang/Object;
.source "PlayerDetailsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    iput-object p1, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$8;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    .line 92
    invoke-static {p2}, Lbe/gentgo/tetsuki/Preferences;->setStatus(I)V

    .line 93
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v0

    .line 94
    .local v0, "server":Lbe/gentgo/tetsuki/Server;
    invoke-virtual {v0}, Lbe/gentgo/tetsuki/Server;->getErrorState()I

    move-result v1

    if-nez v1, :cond_0

    .line 95
    invoke-virtual {v0, p2}, Lbe/gentgo/tetsuki/Server;->setStatus(I)V

    .line 96
    iget-object v1, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$8;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    invoke-static {v1}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$0(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)Lbe/gentgo/tetsuki/Player;

    move-result-object v1

    invoke-virtual {v1, p2}, Lbe/gentgo/tetsuki/Player;->setStatus(I)V

    .line 98
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 99
    iget-object v1, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$8;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    invoke-static {v1}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$3(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)Landroid/database/DataSetObserver;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$8;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    invoke-static {v1}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$3(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)Landroid/database/DataSetObserver;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/DataSetObserver;->onChanged()V

    .line 101
    :cond_1
    return-void
.end method
