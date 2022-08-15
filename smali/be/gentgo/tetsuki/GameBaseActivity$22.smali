.class Lbe/gentgo/tetsuki/GameBaseActivity$22;
.super Ljava/lang/Object;
.source "GameBaseActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbe/gentgo/tetsuki/GameBaseActivity;->presentBubble(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbe/gentgo/tetsuki/GameBaseActivity;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/GameBaseActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/GameBaseActivity$22;->this$0:Lbe/gentgo/tetsuki/GameBaseActivity;

    .line 767
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 5
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 774
    iget-object v3, p0, Lbe/gentgo/tetsuki/GameBaseActivity$22;->this$0:Lbe/gentgo/tetsuki/GameBaseActivity;

    const v4, 0x7f0b0048

    invoke-virtual {v3, v4}, Lbe/gentgo/tetsuki/GameBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 775
    .local v2, "parent":Landroid/view/ViewGroup;
    iget-object v3, p0, Lbe/gentgo/tetsuki/GameBaseActivity$22;->this$0:Lbe/gentgo/tetsuki/GameBaseActivity;

    invoke-static {v3}, Lbe/gentgo/tetsuki/GameBaseActivity;->access$4(Lbe/gentgo/tetsuki/GameBaseActivity;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 777
    .local v1, "bubble":Landroid/view/View;
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 778
    iget-object v3, p0, Lbe/gentgo/tetsuki/GameBaseActivity$22;->this$0:Lbe/gentgo/tetsuki/GameBaseActivity;

    invoke-static {v3}, Lbe/gentgo/tetsuki/GameBaseActivity;->access$4(Lbe/gentgo/tetsuki/GameBaseActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 779
    iget-object v3, p0, Lbe/gentgo/tetsuki/GameBaseActivity$22;->this$0:Lbe/gentgo/tetsuki/GameBaseActivity;

    invoke-static {v3}, Lbe/gentgo/tetsuki/GameBaseActivity;->access$5(Lbe/gentgo/tetsuki/GameBaseActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 780
    iget-object v3, p0, Lbe/gentgo/tetsuki/GameBaseActivity$22;->this$0:Lbe/gentgo/tetsuki/GameBaseActivity;

    invoke-static {v3}, Lbe/gentgo/tetsuki/GameBaseActivity;->access$4(Lbe/gentgo/tetsuki/GameBaseActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lbe/gentgo/tetsuki/GameBaseActivity$22;->this$0:Lbe/gentgo/tetsuki/GameBaseActivity;

    iget-object v3, v3, Lbe/gentgo/tetsuki/GameBaseActivity;->chatView:Lbe/gentgo/tetsuki/ChatView;

    if-nez v3, :cond_0

    .line 782
    iget-object v3, p0, Lbe/gentgo/tetsuki/GameBaseActivity$22;->this$0:Lbe/gentgo/tetsuki/GameBaseActivity;

    invoke-static {v3}, Lbe/gentgo/tetsuki/GameBaseActivity;->access$5(Lbe/gentgo/tetsuki/GameBaseActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 784
    iget-object v3, p0, Lbe/gentgo/tetsuki/GameBaseActivity$22;->this$0:Lbe/gentgo/tetsuki/GameBaseActivity;

    invoke-static {v3}, Lbe/gentgo/tetsuki/GameBaseActivity;->access$5(Lbe/gentgo/tetsuki/GameBaseActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 786
    :cond_0
    return-void

    .line 782
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 783
    .local v0, "b":Landroid/view/View;
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 789
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 792
    return-void
.end method
