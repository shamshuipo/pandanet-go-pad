.class Lbe/gentgo/tetsuki/VariationFragment$6;
.super Ljava/lang/Object;
.source "VariationFragment.java"

# interfaces
.implements Lbe/gentgo/tetsuki/TapListener;


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
    iput-object p1, p0, Lbe/gentgo/tetsuki/VariationFragment$6;->this$0:Lbe/gentgo/tetsuki/VariationFragment;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTap(Lbe/gentgo/tetsuki/Position;Z)V
    .locals 5
    .param p1, "pos"    # Lbe/gentgo/tetsuki/Position;
    .param p2, "accurate"    # Z

    .prologue
    const/4 v4, 0x1

    .line 76
    iget-object v1, p0, Lbe/gentgo/tetsuki/VariationFragment$6;->this$0:Lbe/gentgo/tetsuki/VariationFragment;

    invoke-static {v1}, Lbe/gentgo/tetsuki/VariationFragment;->access$2(Lbe/gentgo/tetsuki/VariationFragment;)Lbe/gentgo/tetsuki/Game;

    move-result-object v1

    iget-object v2, p0, Lbe/gentgo/tetsuki/VariationFragment$6;->this$0:Lbe/gentgo/tetsuki/VariationFragment;

    invoke-static {v2}, Lbe/gentgo/tetsuki/VariationFragment;->access$3(Lbe/gentgo/tetsuki/VariationFragment;)I

    move-result v2

    iget-object v3, p0, Lbe/gentgo/tetsuki/VariationFragment$6;->this$0:Lbe/gentgo/tetsuki/VariationFragment;

    invoke-static {v3}, Lbe/gentgo/tetsuki/VariationFragment;->access$0(Lbe/gentgo/tetsuki/VariationFragment;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lbe/gentgo/tetsuki/Game;->getCommentedVariation(II)Lbe/gentgo/tetsuki/Game;

    move-result-object v0

    .line 77
    .local v0, "variation":Lbe/gentgo/tetsuki/Game;
    invoke-virtual {v0, v4, v4}, Lbe/gentgo/tetsuki/Game;->Wind(IZ)V

    .line 78
    iget-object v1, p0, Lbe/gentgo/tetsuki/VariationFragment$6;->this$0:Lbe/gentgo/tetsuki/VariationFragment;

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/VariationFragment;->update()V

    .line 79
    return-void
.end method
