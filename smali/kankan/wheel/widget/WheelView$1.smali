.class Lkankan/wheel/widget/WheelView$1;
.super Ljava/lang/Object;
.source "WheelView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkankan/wheel/widget/WheelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lkankan/wheel/widget/WheelView;


# direct methods
.method constructor <init>(Lkankan/wheel/widget/WheelView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lkankan/wheel/widget/WheelView$1;->this$0:Lkankan/wheel/widget/WheelView;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 110
    iget-object v2, p0, Lkankan/wheel/widget/WheelView$1;->this$0:Lkankan/wheel/widget/WheelView;

    invoke-static {v2}, Lkankan/wheel/widget/WheelView;->access$0(Lkankan/wheel/widget/WheelView;)I

    move-result v2

    if-nez v2, :cond_1

    .line 128
    :cond_0
    :goto_0
    return v0

    .line 111
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 112
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x17

    if-ne v2, v3, :cond_3

    .line 113
    iget-object v0, p0, Lkankan/wheel/widget/WheelView$1;->this$0:Lkankan/wheel/widget/WheelView;

    invoke-static {v0}, Lkankan/wheel/widget/WheelView;->access$0(Lkankan/wheel/widget/WheelView;)I

    move-result v0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lkankan/wheel/widget/WheelView$1;->this$0:Lkankan/wheel/widget/WheelView;

    invoke-static {v0, v4}, Lkankan/wheel/widget/WheelView;->access$1(Lkankan/wheel/widget/WheelView;I)V

    .line 115
    :goto_1
    iget-object v0, p0, Lkankan/wheel/widget/WheelView$1;->this$0:Lkankan/wheel/widget/WheelView;

    invoke-static {v0}, Lkankan/wheel/widget/WheelView;->access$2(Lkankan/wheel/widget/WheelView;)V

    move v0, v1

    .line 116
    goto :goto_0

    .line 114
    :cond_2
    iget-object v0, p0, Lkankan/wheel/widget/WheelView$1;->this$0:Lkankan/wheel/widget/WheelView;

    invoke-static {v0, v1}, Lkankan/wheel/widget/WheelView;->access$1(Lkankan/wheel/widget/WheelView;I)V

    goto :goto_1

    .line 118
    :cond_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x14

    if-ne v2, v3, :cond_4

    .line 119
    iget-object v2, p0, Lkankan/wheel/widget/WheelView$1;->this$0:Lkankan/wheel/widget/WheelView;

    invoke-static {v2}, Lkankan/wheel/widget/WheelView;->access$0(Lkankan/wheel/widget/WheelView;)I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 120
    iget-object v0, p0, Lkankan/wheel/widget/WheelView$1;->this$0:Lkankan/wheel/widget/WheelView;

    iget-object v2, p0, Lkankan/wheel/widget/WheelView$1;->this$0:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v2}, Lkankan/wheel/widget/WheelView;->getCurrentItem()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2, v1}, Lkankan/wheel/widget/WheelView;->setCurrentItem(IZ)V

    move v0, v1

    .line 121
    goto :goto_0

    .line 123
    :cond_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x13

    if-ne v2, v3, :cond_0

    .line 124
    iget-object v2, p0, Lkankan/wheel/widget/WheelView$1;->this$0:Lkankan/wheel/widget/WheelView;

    invoke-static {v2}, Lkankan/wheel/widget/WheelView;->access$0(Lkankan/wheel/widget/WheelView;)I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 125
    iget-object v0, p0, Lkankan/wheel/widget/WheelView$1;->this$0:Lkankan/wheel/widget/WheelView;

    iget-object v2, p0, Lkankan/wheel/widget/WheelView$1;->this$0:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v2}, Lkankan/wheel/widget/WheelView;->getCurrentItem()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2, v1}, Lkankan/wheel/widget/WheelView;->setCurrentItem(IZ)V

    move v0, v1

    .line 126
    goto :goto_0
.end method
