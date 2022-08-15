.class Lbe/gentgo/tetsuki/GameBaseActivity$1;
.super Ljava/lang/Object;
.source "GameBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbe/gentgo/tetsuki/GameBaseActivity;
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
    iput-object p1, p0, Lbe/gentgo/tetsuki/GameBaseActivity$1;->this$0:Lbe/gentgo/tetsuki/GameBaseActivity;

    .line 748
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 749
    iget-object v0, p0, Lbe/gentgo/tetsuki/GameBaseActivity$1;->this$0:Lbe/gentgo/tetsuki/GameBaseActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/GameBaseActivity;->zoomOut(Z)V

    .line 750
    iget-object v0, p0, Lbe/gentgo/tetsuki/GameBaseActivity$1;->this$0:Lbe/gentgo/tetsuki/GameBaseActivity;

    iget-object v0, v0, Lbe/gentgo/tetsuki/GameBaseActivity;->autoZoomOutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lbe/gentgo/tetsuki/GameBaseActivity$1;->this$0:Lbe/gentgo/tetsuki/GameBaseActivity;

    invoke-static {v1}, Lbe/gentgo/tetsuki/GameBaseActivity;->access$0(Lbe/gentgo/tetsuki/GameBaseActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 751
    return-void
.end method
