.class Lbe/gentgo/tetsuki/IndexView$1;
.super Ljava/lang/Object;
.source "IndexView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbe/gentgo/tetsuki/IndexView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbe/gentgo/tetsuki/IndexView;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/IndexView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/IndexView$1;->this$0:Lbe/gentgo/tetsuki/IndexView;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v4, 0x17

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 25
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-eqz v2, :cond_1

    .line 51
    :cond_0
    :goto_0
    return v0

    .line 27
    :cond_1
    iget-object v2, p0, Lbe/gentgo/tetsuki/IndexView$1;->this$0:Lbe/gentgo/tetsuki/IndexView;

    invoke-static {v2}, Lbe/gentgo/tetsuki/IndexView;->access$0(Lbe/gentgo/tetsuki/IndexView;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 29
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x13

    if-ne v2, v3, :cond_4

    .line 30
    iget-object v0, p0, Lbe/gentgo/tetsuki/IndexView$1;->this$0:Lbe/gentgo/tetsuki/IndexView;

    invoke-static {v0}, Lbe/gentgo/tetsuki/IndexView;->access$1(Lbe/gentgo/tetsuki/IndexView;)I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lbe/gentgo/tetsuki/IndexView$1;->this$0:Lbe/gentgo/tetsuki/IndexView;

    invoke-static {v0}, Lbe/gentgo/tetsuki/IndexView;->access$1(Lbe/gentgo/tetsuki/IndexView;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Lbe/gentgo/tetsuki/IndexView;->access$2(Lbe/gentgo/tetsuki/IndexView;I)V

    .line 31
    :cond_2
    iget-object v0, p0, Lbe/gentgo/tetsuki/IndexView$1;->this$0:Lbe/gentgo/tetsuki/IndexView;

    invoke-static {v0}, Lbe/gentgo/tetsuki/IndexView;->access$3(Lbe/gentgo/tetsuki/IndexView;)Lbe/gentgo/tetsuki/IndexView$OnIndexClickedListener;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lbe/gentgo/tetsuki/IndexView$1;->this$0:Lbe/gentgo/tetsuki/IndexView;

    invoke-static {v0}, Lbe/gentgo/tetsuki/IndexView;->access$3(Lbe/gentgo/tetsuki/IndexView;)Lbe/gentgo/tetsuki/IndexView$OnIndexClickedListener;

    move-result-object v0

    iget-object v2, p0, Lbe/gentgo/tetsuki/IndexView$1;->this$0:Lbe/gentgo/tetsuki/IndexView;

    invoke-static {v2}, Lbe/gentgo/tetsuki/IndexView;->access$1(Lbe/gentgo/tetsuki/IndexView;)I

    move-result v2

    invoke-virtual {v0, v2}, Lbe/gentgo/tetsuki/IndexView$OnIndexClickedListener;->onIndexClicked(I)V

    :cond_3
    move v0, v1

    .line 32
    goto :goto_0

    .line 34
    :cond_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x14

    if-ne v2, v3, :cond_7

    .line 35
    iget-object v0, p0, Lbe/gentgo/tetsuki/IndexView$1;->this$0:Lbe/gentgo/tetsuki/IndexView;

    invoke-static {v0}, Lbe/gentgo/tetsuki/IndexView;->access$1(Lbe/gentgo/tetsuki/IndexView;)I

    move-result v0

    iget-object v2, p0, Lbe/gentgo/tetsuki/IndexView$1;->this$0:Lbe/gentgo/tetsuki/IndexView;

    invoke-static {v2}, Lbe/gentgo/tetsuki/IndexView;->access$4(Lbe/gentgo/tetsuki/IndexView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_5

    iget-object v0, p0, Lbe/gentgo/tetsuki/IndexView$1;->this$0:Lbe/gentgo/tetsuki/IndexView;

    invoke-static {v0}, Lbe/gentgo/tetsuki/IndexView;->access$1(Lbe/gentgo/tetsuki/IndexView;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v2}, Lbe/gentgo/tetsuki/IndexView;->access$2(Lbe/gentgo/tetsuki/IndexView;I)V

    .line 36
    :cond_5
    iget-object v0, p0, Lbe/gentgo/tetsuki/IndexView$1;->this$0:Lbe/gentgo/tetsuki/IndexView;

    invoke-static {v0}, Lbe/gentgo/tetsuki/IndexView;->access$3(Lbe/gentgo/tetsuki/IndexView;)Lbe/gentgo/tetsuki/IndexView$OnIndexClickedListener;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lbe/gentgo/tetsuki/IndexView$1;->this$0:Lbe/gentgo/tetsuki/IndexView;

    invoke-static {v0}, Lbe/gentgo/tetsuki/IndexView;->access$3(Lbe/gentgo/tetsuki/IndexView;)Lbe/gentgo/tetsuki/IndexView$OnIndexClickedListener;

    move-result-object v0

    iget-object v2, p0, Lbe/gentgo/tetsuki/IndexView$1;->this$0:Lbe/gentgo/tetsuki/IndexView;

    invoke-static {v2}, Lbe/gentgo/tetsuki/IndexView;->access$1(Lbe/gentgo/tetsuki/IndexView;)I

    move-result v2

    invoke-virtual {v0, v2}, Lbe/gentgo/tetsuki/IndexView$OnIndexClickedListener;->onIndexClicked(I)V

    :cond_6
    move v0, v1

    .line 37
    goto :goto_0

    .line 39
    :cond_7
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 40
    iget-object v2, p0, Lbe/gentgo/tetsuki/IndexView$1;->this$0:Lbe/gentgo/tetsuki/IndexView;

    invoke-static {v2, v0}, Lbe/gentgo/tetsuki/IndexView;->access$5(Lbe/gentgo/tetsuki/IndexView;Z)V

    .line 41
    iget-object v0, p0, Lbe/gentgo/tetsuki/IndexView$1;->this$0:Lbe/gentgo/tetsuki/IndexView;

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/IndexView;->invalidate()V

    move v0, v1

    .line 42
    goto/16 :goto_0

    .line 45
    :cond_8
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 46
    iget-object v0, p0, Lbe/gentgo/tetsuki/IndexView$1;->this$0:Lbe/gentgo/tetsuki/IndexView;

    invoke-static {v0, v1}, Lbe/gentgo/tetsuki/IndexView;->access$5(Lbe/gentgo/tetsuki/IndexView;Z)V

    .line 47
    iget-object v0, p0, Lbe/gentgo/tetsuki/IndexView$1;->this$0:Lbe/gentgo/tetsuki/IndexView;

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/IndexView;->invalidate()V

    move v0, v1

    .line 48
    goto/16 :goto_0
.end method
