.class Lbe/gentgo/tetsuki/VariationFragment$1;
.super Ljava/lang/Object;
.source "VariationFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbe/gentgo/tetsuki/VariationFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbe/gentgo/tetsuki/VariationFragment;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/VariationFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/VariationFragment$1;->this$0:Lbe/gentgo/tetsuki/VariationFragment;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 28
    iget-object v0, p0, Lbe/gentgo/tetsuki/VariationFragment$1;->this$0:Lbe/gentgo/tetsuki/VariationFragment;

    invoke-static {v0}, Lbe/gentgo/tetsuki/VariationFragment;->access$0(Lbe/gentgo/tetsuki/VariationFragment;)I

    move-result v0

    if-lez v0, :cond_0

    .line 29
    iget-object v0, p0, Lbe/gentgo/tetsuki/VariationFragment$1;->this$0:Lbe/gentgo/tetsuki/VariationFragment;

    invoke-static {v0}, Lbe/gentgo/tetsuki/VariationFragment;->access$0(Lbe/gentgo/tetsuki/VariationFragment;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lbe/gentgo/tetsuki/VariationFragment;->access$1(Lbe/gentgo/tetsuki/VariationFragment;I)V

    .line 30
    iget-object v0, p0, Lbe/gentgo/tetsuki/VariationFragment$1;->this$0:Lbe/gentgo/tetsuki/VariationFragment;

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/VariationFragment;->update()V

    .line 32
    :cond_0
    return-void
.end method
