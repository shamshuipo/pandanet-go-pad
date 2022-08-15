.class Lkankan/wheel/widget/WheelView$3;
.super Ljava/lang/Object;
.source "WheelView.java"

# interfaces
.implements Lkankan/wheel/widget/WheelScroller$ScrollingListener;


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
    iput-object p1, p0, Lkankan/wheel/widget/WheelView$3;->this$0:Lkankan/wheel/widget/WheelView;

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 211
    iget-object v0, p0, Lkankan/wheel/widget/WheelView$3;->this$0:Lkankan/wheel/widget/WheelView;

    invoke-static {v0}, Lkankan/wheel/widget/WheelView;->access$8(Lkankan/wheel/widget/WheelView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lkankan/wheel/widget/WheelView$3;->this$0:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v0}, Lkankan/wheel/widget/WheelView;->notifyScrollingListenersAboutEnd()V

    .line 213
    iget-object v0, p0, Lkankan/wheel/widget/WheelView$3;->this$0:Lkankan/wheel/widget/WheelView;

    invoke-static {v0, v1}, Lkankan/wheel/widget/WheelView;->access$3(Lkankan/wheel/widget/WheelView;Z)V

    .line 216
    :cond_0
    iget-object v0, p0, Lkankan/wheel/widget/WheelView$3;->this$0:Lkankan/wheel/widget/WheelView;

    invoke-static {v0, v1}, Lkankan/wheel/widget/WheelView;->access$6(Lkankan/wheel/widget/WheelView;I)V

    .line 217
    iget-object v0, p0, Lkankan/wheel/widget/WheelView$3;->this$0:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v0}, Lkankan/wheel/widget/WheelView;->invalidate()V

    .line 218
    return-void
.end method

.method public onJustify()V
    .locals 3

    .prologue
    .line 221
    iget-object v0, p0, Lkankan/wheel/widget/WheelView$3;->this$0:Lkankan/wheel/widget/WheelView;

    invoke-static {v0}, Lkankan/wheel/widget/WheelView;->access$5(Lkankan/wheel/widget/WheelView;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 222
    iget-object v0, p0, Lkankan/wheel/widget/WheelView$3;->this$0:Lkankan/wheel/widget/WheelView;

    invoke-static {v0}, Lkankan/wheel/widget/WheelView;->access$7(Lkankan/wheel/widget/WheelView;)Lkankan/wheel/widget/WheelScroller;

    move-result-object v0

    iget-object v1, p0, Lkankan/wheel/widget/WheelView$3;->this$0:Lkankan/wheel/widget/WheelView;

    invoke-static {v1}, Lkankan/wheel/widget/WheelView;->access$5(Lkankan/wheel/widget/WheelView;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lkankan/wheel/widget/WheelScroller;->scroll(II)V

    .line 224
    :cond_0
    return-void
.end method

.method public onScroll(I)V
    .locals 3
    .param p1, "distance"    # I

    .prologue
    .line 198
    iget-object v1, p0, Lkankan/wheel/widget/WheelView$3;->this$0:Lkankan/wheel/widget/WheelView;

    invoke-static {v1, p1}, Lkankan/wheel/widget/WheelView;->access$4(Lkankan/wheel/widget/WheelView;I)V

    .line 200
    iget-object v1, p0, Lkankan/wheel/widget/WheelView$3;->this$0:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v1}, Lkankan/wheel/widget/WheelView;->getHeight()I

    move-result v0

    .line 201
    .local v0, "height":I
    iget-object v1, p0, Lkankan/wheel/widget/WheelView$3;->this$0:Lkankan/wheel/widget/WheelView;

    invoke-static {v1}, Lkankan/wheel/widget/WheelView;->access$5(Lkankan/wheel/widget/WheelView;)I

    move-result v1

    if-le v1, v0, :cond_1

    .line 202
    iget-object v1, p0, Lkankan/wheel/widget/WheelView$3;->this$0:Lkankan/wheel/widget/WheelView;

    invoke-static {v1, v0}, Lkankan/wheel/widget/WheelView;->access$6(Lkankan/wheel/widget/WheelView;I)V

    .line 203
    iget-object v1, p0, Lkankan/wheel/widget/WheelView$3;->this$0:Lkankan/wheel/widget/WheelView;

    invoke-static {v1}, Lkankan/wheel/widget/WheelView;->access$7(Lkankan/wheel/widget/WheelView;)Lkankan/wheel/widget/WheelScroller;

    move-result-object v1

    invoke-virtual {v1}, Lkankan/wheel/widget/WheelScroller;->stopScrolling()V

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    iget-object v1, p0, Lkankan/wheel/widget/WheelView$3;->this$0:Lkankan/wheel/widget/WheelView;

    invoke-static {v1}, Lkankan/wheel/widget/WheelView;->access$5(Lkankan/wheel/widget/WheelView;)I

    move-result v1

    neg-int v2, v0

    if-ge v1, v2, :cond_0

    .line 205
    iget-object v1, p0, Lkankan/wheel/widget/WheelView$3;->this$0:Lkankan/wheel/widget/WheelView;

    neg-int v2, v0

    invoke-static {v1, v2}, Lkankan/wheel/widget/WheelView;->access$6(Lkankan/wheel/widget/WheelView;I)V

    .line 206
    iget-object v1, p0, Lkankan/wheel/widget/WheelView$3;->this$0:Lkankan/wheel/widget/WheelView;

    invoke-static {v1}, Lkankan/wheel/widget/WheelView;->access$7(Lkankan/wheel/widget/WheelView;)Lkankan/wheel/widget/WheelScroller;

    move-result-object v1

    invoke-virtual {v1}, Lkankan/wheel/widget/WheelScroller;->stopScrolling()V

    goto :goto_0
.end method

.method public onStarted()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lkankan/wheel/widget/WheelView$3;->this$0:Lkankan/wheel/widget/WheelView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lkankan/wheel/widget/WheelView;->access$3(Lkankan/wheel/widget/WheelView;Z)V

    .line 194
    iget-object v0, p0, Lkankan/wheel/widget/WheelView$3;->this$0:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v0}, Lkankan/wheel/widget/WheelView;->notifyScrollingListenersAboutStart()V

    .line 195
    return-void
.end method
