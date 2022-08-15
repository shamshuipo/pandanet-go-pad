.class Lbe/gentgo/tetsuki/OnlineGameActivity$1;
.super Ljava/lang/Object;
.source "OnlineGameActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbe/gentgo/tetsuki/OnlineGameActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbe/gentgo/tetsuki/OnlineGameActivity;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/OnlineGameActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/OnlineGameActivity$1;->this$0:Lbe/gentgo/tetsuki/OnlineGameActivity;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 28
    iget-object v1, p0, Lbe/gentgo/tetsuki/OnlineGameActivity$1;->this$0:Lbe/gentgo/tetsuki/OnlineGameActivity;

    const v2, 0x7f0b0029

    invoke-virtual {v1, v2}, Lbe/gentgo/tetsuki/OnlineGameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbe/gentgo/tetsuki/TitleView;

    .line 29
    .local v0, "title":Lbe/gentgo/tetsuki/TitleView;
    invoke-virtual {v0}, Lbe/gentgo/tetsuki/TitleView;->updateTime()V

    .line 31
    iget-object v1, p0, Lbe/gentgo/tetsuki/OnlineGameActivity$1;->this$0:Lbe/gentgo/tetsuki/OnlineGameActivity;

    iget-object v1, v1, Lbe/gentgo/tetsuki/OnlineGameActivity;->updateHandler:Landroid/os/Handler;

    iget-object v2, p0, Lbe/gentgo/tetsuki/OnlineGameActivity$1;->this$0:Lbe/gentgo/tetsuki/OnlineGameActivity;

    invoke-static {v2}, Lbe/gentgo/tetsuki/OnlineGameActivity;->access$0(Lbe/gentgo/tetsuki/OnlineGameActivity;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 32
    iget-object v1, p0, Lbe/gentgo/tetsuki/OnlineGameActivity$1;->this$0:Lbe/gentgo/tetsuki/OnlineGameActivity;

    iget-object v1, v1, Lbe/gentgo/tetsuki/OnlineGameActivity;->updateHandler:Landroid/os/Handler;

    iget-object v2, p0, Lbe/gentgo/tetsuki/OnlineGameActivity$1;->this$0:Lbe/gentgo/tetsuki/OnlineGameActivity;

    invoke-static {v2}, Lbe/gentgo/tetsuki/OnlineGameActivity;->access$0(Lbe/gentgo/tetsuki/OnlineGameActivity;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 33
    return-void
.end method
