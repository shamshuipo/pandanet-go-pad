.class Lbe/gentgo/tetsuki/ArchiveFragment$5;
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
    iput-object p1, p0, Lbe/gentgo/tetsuki/ArchiveFragment$5;->this$0:Lbe/gentgo/tetsuki/ArchiveFragment;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 105
    iget-object v0, p0, Lbe/gentgo/tetsuki/ArchiveFragment$5;->this$0:Lbe/gentgo/tetsuki/ArchiveFragment;

    invoke-static {v0}, Lbe/gentgo/tetsuki/ArchiveFragment;->access$3(Lbe/gentgo/tetsuki/ArchiveFragment;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 106
    iget-object v0, p0, Lbe/gentgo/tetsuki/ArchiveFragment$5;->this$0:Lbe/gentgo/tetsuki/ArchiveFragment;

    invoke-static {v0}, Lbe/gentgo/tetsuki/ArchiveFragment;->access$8(Lbe/gentgo/tetsuki/ArchiveFragment;)V

    .line 108
    :cond_0
    iget-object v0, p0, Lbe/gentgo/tetsuki/ArchiveFragment$5;->this$0:Lbe/gentgo/tetsuki/ArchiveFragment;

    invoke-static {v0}, Lbe/gentgo/tetsuki/ArchiveFragment;->access$3(Lbe/gentgo/tetsuki/ArchiveFragment;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 109
    iget-object v0, p0, Lbe/gentgo/tetsuki/ArchiveFragment$5;->this$0:Lbe/gentgo/tetsuki/ArchiveFragment;

    invoke-static {v0}, Lbe/gentgo/tetsuki/ArchiveFragment;->access$9(Lbe/gentgo/tetsuki/ArchiveFragment;)V

    .line 111
    :cond_1
    iget-object v0, p0, Lbe/gentgo/tetsuki/ArchiveFragment$5;->this$0:Lbe/gentgo/tetsuki/ArchiveFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lbe/gentgo/tetsuki/ArchiveFragment;->access$5(Lbe/gentgo/tetsuki/ArchiveFragment;I)V

    .line 112
    iget-object v0, p0, Lbe/gentgo/tetsuki/ArchiveFragment$5;->this$0:Lbe/gentgo/tetsuki/ArchiveFragment;

    invoke-static {v0}, Lbe/gentgo/tetsuki/ArchiveFragment;->access$6(Lbe/gentgo/tetsuki/ArchiveFragment;)V

    .line 113
    iget-object v0, p0, Lbe/gentgo/tetsuki/ArchiveFragment$5;->this$0:Lbe/gentgo/tetsuki/ArchiveFragment;

    invoke-static {v0}, Lbe/gentgo/tetsuki/ArchiveFragment;->access$7(Lbe/gentgo/tetsuki/ArchiveFragment;)Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 114
    return-void
.end method
