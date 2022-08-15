.class Lbe/gentgo/tetsuki/ArchiveFragment$6;
.super Ljava/lang/Object;
.source "ArchiveFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbe/gentgo/tetsuki/ArchiveFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
.field final synthetic this$0:Lbe/gentgo/tetsuki/ArchiveFragment;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/ArchiveFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/ArchiveFragment$6;->this$0:Lbe/gentgo/tetsuki/ArchiveFragment;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
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
    const/4 v3, -0x1

    .line 124
    move v1, p3

    .line 125
    .local v1, "index":I
    iget-object v2, p0, Lbe/gentgo/tetsuki/ArchiveFragment$6;->this$0:Lbe/gentgo/tetsuki/ArchiveFragment;

    invoke-static {v2}, Lbe/gentgo/tetsuki/ArchiveFragment;->access$0(Lbe/gentgo/tetsuki/ArchiveFragment;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 126
    :cond_0
    invoke-static {v1}, Lbe/gentgo/tetsuki/Document;->getIDAtIndex(I)I

    move-result v0

    .line 127
    .local v0, "id":I
    iget-object v2, p0, Lbe/gentgo/tetsuki/ArchiveFragment$6;->this$0:Lbe/gentgo/tetsuki/ArchiveFragment;

    invoke-static {v2}, Lbe/gentgo/tetsuki/ArchiveFragment;->access$3(Lbe/gentgo/tetsuki/ArchiveFragment;)I

    move-result v2

    if-eqz v2, :cond_3

    .line 129
    if-ne v1, v3, :cond_1

    .line 143
    :goto_0
    return-void

    .line 130
    :cond_1
    iget-object v3, p0, Lbe/gentgo/tetsuki/ArchiveFragment$6;->this$0:Lbe/gentgo/tetsuki/ArchiveFragment;

    iget-object v2, p0, Lbe/gentgo/tetsuki/ArchiveFragment$6;->this$0:Lbe/gentgo/tetsuki/ArchiveFragment;

    invoke-static {v2, v0}, Lbe/gentgo/tetsuki/ArchiveFragment;->access$4(Lbe/gentgo/tetsuki/ArchiveFragment;I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    :goto_1
    invoke-static {v3, v0, v2}, Lbe/gentgo/tetsuki/ArchiveFragment;->access$10(Lbe/gentgo/tetsuki/ArchiveFragment;IZ)V

    .line 131
    iget-object v2, p0, Lbe/gentgo/tetsuki/ArchiveFragment$6;->this$0:Lbe/gentgo/tetsuki/ArchiveFragment;

    invoke-static {v2}, Lbe/gentgo/tetsuki/ArchiveFragment;->access$7(Lbe/gentgo/tetsuki/ArchiveFragment;)Landroid/widget/BaseAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 132
    iget-object v2, p0, Lbe/gentgo/tetsuki/ArchiveFragment$6;->this$0:Lbe/gentgo/tetsuki/ArchiveFragment;

    invoke-static {v2}, Lbe/gentgo/tetsuki/ArchiveFragment;->access$6(Lbe/gentgo/tetsuki/ArchiveFragment;)V

    goto :goto_0

    .line 130
    :cond_2
    const/4 v2, 0x1

    goto :goto_1

    .line 136
    :cond_3
    if-ne v1, v3, :cond_4

    .line 137
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getDispatcher()Lbe/gentgo/tetsuki/Dispatcher;

    move-result-object v2

    invoke-interface {v2}, Lbe/gentgo/tetsuki/Dispatcher;->goToMyGames()V

    goto :goto_0

    .line 140
    :cond_4
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getDispatcher()Lbe/gentgo/tetsuki/Dispatcher;

    move-result-object v2

    invoke-static {v0}, Lbe/gentgo/tetsuki/Document;->getDocument(I)Lbe/gentgo/tetsuki/Document;

    move-result-object v3

    invoke-interface {v2, v3}, Lbe/gentgo/tetsuki/Dispatcher;->goToDocument(Lbe/gentgo/tetsuki/Document;)V

    goto :goto_0
.end method
