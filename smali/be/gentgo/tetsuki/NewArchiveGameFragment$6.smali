.class Lbe/gentgo/tetsuki/NewArchiveGameFragment$6;
.super Ljava/lang/Object;
.source "NewArchiveGameFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbe/gentgo/tetsuki/NewArchiveGameFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
.field final synthetic this$0:Lbe/gentgo/tetsuki/NewArchiveGameFragment;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/NewArchiveGameFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/NewArchiveGameFragment$6;->this$0:Lbe/gentgo/tetsuki/NewArchiveGameFragment;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
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
    .line 104
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lbe/gentgo/tetsuki/NewArchiveGameFragment$6;->this$0:Lbe/gentgo/tetsuki/NewArchiveGameFragment;

    invoke-static {v0, p3}, Lbe/gentgo/tetsuki/NewArchiveGameFragment;->access$0(Lbe/gentgo/tetsuki/NewArchiveGameFragment;I)V

    .line 105
    return-void
.end method
