.class Lbe/gentgo/tetsuki/VariationFragment$3;
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
    iput-object p1, p0, Lbe/gentgo/tetsuki/VariationFragment$3;->this$0:Lbe/gentgo/tetsuki/VariationFragment;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 46
    iget-object v0, p0, Lbe/gentgo/tetsuki/VariationFragment$3;->this$0:Lbe/gentgo/tetsuki/VariationFragment;

    invoke-static {v0}, Lbe/gentgo/tetsuki/VariationFragment;->access$2(Lbe/gentgo/tetsuki/VariationFragment;)Lbe/gentgo/tetsuki/Game;

    move-result-object v0

    iget-object v1, p0, Lbe/gentgo/tetsuki/VariationFragment$3;->this$0:Lbe/gentgo/tetsuki/VariationFragment;

    invoke-static {v1}, Lbe/gentgo/tetsuki/VariationFragment;->access$3(Lbe/gentgo/tetsuki/VariationFragment;)I

    move-result v1

    iget-object v2, p0, Lbe/gentgo/tetsuki/VariationFragment$3;->this$0:Lbe/gentgo/tetsuki/VariationFragment;

    invoke-static {v2}, Lbe/gentgo/tetsuki/VariationFragment;->access$0(Lbe/gentgo/tetsuki/VariationFragment;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lbe/gentgo/tetsuki/Game;->getCommentedVariation(II)Lbe/gentgo/tetsuki/Game;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lbe/gentgo/tetsuki/Game;->Wind(IZ)V

    .line 47
    iget-object v0, p0, Lbe/gentgo/tetsuki/VariationFragment$3;->this$0:Lbe/gentgo/tetsuki/VariationFragment;

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/VariationFragment;->update()V

    .line 48
    return-void
.end method
