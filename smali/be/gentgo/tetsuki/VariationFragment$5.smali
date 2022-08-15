.class Lbe/gentgo/tetsuki/VariationFragment$5;
.super Ljava/lang/Object;
.source "VariationFragment.java"

# interfaces
.implements Lbe/gentgo/tetsuki/GameSliderView$IndexListener;


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
    iput-object p1, p0, Lbe/gentgo/tetsuki/VariationFragment$5;->this$0:Lbe/gentgo/tetsuki/VariationFragment;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public indexChanged(IZ)V
    .locals 7
    .param p1, "newIndex"    # I
    .param p2, "usingButton"    # Z

    .prologue
    const/4 v6, 0x1

    .line 59
    iget-object v3, p0, Lbe/gentgo/tetsuki/VariationFragment$5;->this$0:Lbe/gentgo/tetsuki/VariationFragment;

    invoke-static {v3}, Lbe/gentgo/tetsuki/VariationFragment;->access$2(Lbe/gentgo/tetsuki/VariationFragment;)Lbe/gentgo/tetsuki/Game;

    move-result-object v3

    iget-object v4, p0, Lbe/gentgo/tetsuki/VariationFragment$5;->this$0:Lbe/gentgo/tetsuki/VariationFragment;

    invoke-static {v4}, Lbe/gentgo/tetsuki/VariationFragment;->access$3(Lbe/gentgo/tetsuki/VariationFragment;)I

    move-result v4

    iget-object v5, p0, Lbe/gentgo/tetsuki/VariationFragment$5;->this$0:Lbe/gentgo/tetsuki/VariationFragment;

    invoke-static {v5}, Lbe/gentgo/tetsuki/VariationFragment;->access$0(Lbe/gentgo/tetsuki/VariationFragment;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lbe/gentgo/tetsuki/Game;->getCommentedVariation(II)Lbe/gentgo/tetsuki/Game;

    move-result-object v2

    .line 60
    .local v2, "variation":Lbe/gentgo/tetsuki/Game;
    invoke-virtual {v2, v6}, Lbe/gentgo/tetsuki/Game;->getMoveNr(Z)I

    move-result v0

    .line 61
    .local v0, "oldIndex":I
    sub-int v1, p1, v0

    .line 62
    .local v1, "step":I
    if-eqz v1, :cond_0

    .line 63
    invoke-virtual {v2, v1, v6}, Lbe/gentgo/tetsuki/Game;->Wind(IZ)V

    .line 65
    :cond_0
    iget-object v3, p0, Lbe/gentgo/tetsuki/VariationFragment$5;->this$0:Lbe/gentgo/tetsuki/VariationFragment;

    invoke-virtual {v3}, Lbe/gentgo/tetsuki/VariationFragment;->update()V

    .line 66
    return-void
.end method
