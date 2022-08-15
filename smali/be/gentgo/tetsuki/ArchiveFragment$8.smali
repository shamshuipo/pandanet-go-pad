.class Lbe/gentgo/tetsuki/ArchiveFragment$8;
.super Ljava/lang/Object;
.source "ArchiveFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbe/gentgo/tetsuki/ArchiveFragment;->deleteSelection()V
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
    iput-object p1, p0, Lbe/gentgo/tetsuki/ArchiveFragment$8;->this$0:Lbe/gentgo/tetsuki/ArchiveFragment;

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 279
    iget-object v2, p0, Lbe/gentgo/tetsuki/ArchiveFragment$8;->this$0:Lbe/gentgo/tetsuki/ArchiveFragment;

    iget-object v2, v2, Lbe/gentgo/tetsuki/ArchiveFragment;->selection:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 283
    iget-object v2, p0, Lbe/gentgo/tetsuki/ArchiveFragment$8;->this$0:Lbe/gentgo/tetsuki/ArchiveFragment;

    invoke-static {v2}, Lbe/gentgo/tetsuki/ArchiveFragment;->access$7(Lbe/gentgo/tetsuki/ArchiveFragment;)Landroid/widget/BaseAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 284
    return-void

    .line 279
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 280
    .local v0, "ID":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 281
    .local v1, "id":I
    invoke-static {v1}, Lbe/gentgo/tetsuki/Document;->deleteDocument(I)V

    goto :goto_0
.end method
