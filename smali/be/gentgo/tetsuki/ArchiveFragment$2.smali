.class Lbe/gentgo/tetsuki/ArchiveFragment$2;
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
    iput-object p1, p0, Lbe/gentgo/tetsuki/ArchiveFragment$2;->this$0:Lbe/gentgo/tetsuki/ArchiveFragment;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 75
    iget-object v0, p0, Lbe/gentgo/tetsuki/ArchiveFragment$2;->this$0:Lbe/gentgo/tetsuki/ArchiveFragment;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lbe/gentgo/tetsuki/ArchiveFragment;->access$5(Lbe/gentgo/tetsuki/ArchiveFragment;I)V

    .line 76
    iget-object v0, p0, Lbe/gentgo/tetsuki/ArchiveFragment$2;->this$0:Lbe/gentgo/tetsuki/ArchiveFragment;

    iget-object v0, v0, Lbe/gentgo/tetsuki/ArchiveFragment;->selection:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 77
    iget-object v0, p0, Lbe/gentgo/tetsuki/ArchiveFragment$2;->this$0:Lbe/gentgo/tetsuki/ArchiveFragment;

    invoke-static {v0}, Lbe/gentgo/tetsuki/ArchiveFragment;->access$6(Lbe/gentgo/tetsuki/ArchiveFragment;)V

    .line 78
    iget-object v0, p0, Lbe/gentgo/tetsuki/ArchiveFragment$2;->this$0:Lbe/gentgo/tetsuki/ArchiveFragment;

    invoke-static {v0}, Lbe/gentgo/tetsuki/ArchiveFragment;->access$7(Lbe/gentgo/tetsuki/ArchiveFragment;)Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 79
    return-void
.end method
