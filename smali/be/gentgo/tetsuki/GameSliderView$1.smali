.class Lbe/gentgo/tetsuki/GameSliderView$1;
.super Ljava/lang/Object;
.source "GameSliderView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbe/gentgo/tetsuki/GameSliderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbe/gentgo/tetsuki/GameSliderView;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/GameSliderView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/GameSliderView$1;->this$0:Lbe/gentgo/tetsuki/GameSliderView;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_4

    .line 32
    const/4 v0, 0x0

    .line 33
    .local v0, "delta":I
    iget-object v4, p0, Lbe/gentgo/tetsuki/GameSliderView$1;->this$0:Lbe/gentgo/tetsuki/GameSliderView;

    invoke-static {v4}, Lbe/gentgo/tetsuki/GameSliderView;->access$0(Lbe/gentgo/tetsuki/GameSliderView;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/16 v5, 0x15

    if-ne v4, v5, :cond_0

    const/4 v0, -0x1

    .line 34
    :cond_0
    iget-object v4, p0, Lbe/gentgo/tetsuki/GameSliderView$1;->this$0:Lbe/gentgo/tetsuki/GameSliderView;

    invoke-static {v4}, Lbe/gentgo/tetsuki/GameSliderView;->access$0(Lbe/gentgo/tetsuki/GameSliderView;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/16 v5, 0x16

    if-ne v4, v5, :cond_1

    const/4 v0, 0x1

    .line 35
    :cond_1
    iget-object v4, p0, Lbe/gentgo/tetsuki/GameSliderView$1;->this$0:Lbe/gentgo/tetsuki/GameSliderView;

    invoke-static {v4}, Lbe/gentgo/tetsuki/GameSliderView;->access$0(Lbe/gentgo/tetsuki/GameSliderView;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/16 v5, 0x13

    if-ne v4, v5, :cond_2

    const/4 v0, -0x1

    .line 36
    :cond_2
    iget-object v4, p0, Lbe/gentgo/tetsuki/GameSliderView$1;->this$0:Lbe/gentgo/tetsuki/GameSliderView;

    invoke-static {v4}, Lbe/gentgo/tetsuki/GameSliderView;->access$0(Lbe/gentgo/tetsuki/GameSliderView;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/16 v5, 0x14

    if-ne v4, v5, :cond_3

    const/4 v0, 0x1

    .line 37
    :cond_3
    if-nez v0, :cond_5

    .line 45
    .end local v0    # "delta":I
    :cond_4
    :goto_0
    return v2

    .line 38
    .restart local v0    # "delta":I
    :cond_5
    iget-object v2, p0, Lbe/gentgo/tetsuki/GameSliderView$1;->this$0:Lbe/gentgo/tetsuki/GameSliderView;

    invoke-static {v2}, Lbe/gentgo/tetsuki/GameSliderView;->access$1(Lbe/gentgo/tetsuki/GameSliderView;)I

    move-result v2

    add-int v1, v2, v0

    .line 39
    .local v1, "newIndex":I
    if-ltz v1, :cond_6

    iget-object v2, p0, Lbe/gentgo/tetsuki/GameSliderView$1;->this$0:Lbe/gentgo/tetsuki/GameSliderView;

    invoke-static {v2}, Lbe/gentgo/tetsuki/GameSliderView;->access$2(Lbe/gentgo/tetsuki/GameSliderView;)I

    move-result v2

    if-gt v1, v2, :cond_6

    .line 40
    iget-object v2, p0, Lbe/gentgo/tetsuki/GameSliderView$1;->this$0:Lbe/gentgo/tetsuki/GameSliderView;

    iget-object v4, p0, Lbe/gentgo/tetsuki/GameSliderView$1;->this$0:Lbe/gentgo/tetsuki/GameSliderView;

    invoke-static {v4}, Lbe/gentgo/tetsuki/GameSliderView;->access$2(Lbe/gentgo/tetsuki/GameSliderView;)I

    move-result v4

    invoke-virtual {v2, v1, v4}, Lbe/gentgo/tetsuki/GameSliderView;->setIndexAndTotal(II)V

    .line 41
    iget-object v2, p0, Lbe/gentgo/tetsuki/GameSliderView$1;->this$0:Lbe/gentgo/tetsuki/GameSliderView;

    iget-object v2, v2, Lbe/gentgo/tetsuki/GameSliderView;->listener:Lbe/gentgo/tetsuki/GameSliderView$IndexListener;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lbe/gentgo/tetsuki/GameSliderView$1;->this$0:Lbe/gentgo/tetsuki/GameSliderView;

    iget-object v2, v2, Lbe/gentgo/tetsuki/GameSliderView;->listener:Lbe/gentgo/tetsuki/GameSliderView$IndexListener;

    invoke-interface {v2, v1, v3}, Lbe/gentgo/tetsuki/GameSliderView$IndexListener;->indexChanged(IZ)V

    :cond_6
    move v2, v3

    .line 43
    goto :goto_0
.end method
