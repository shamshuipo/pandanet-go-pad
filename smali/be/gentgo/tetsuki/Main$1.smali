.class Lbe/gentgo/tetsuki/Main$1;
.super Ljava/lang/Object;
.source "Main.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbe/gentgo/tetsuki/Main;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbe/gentgo/tetsuki/Main;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/Main;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/Main$1;->this$0:Lbe/gentgo/tetsuki/Main;

    .line 565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 567
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->access$0()Lbe/gentgo/tetsuki/Server;

    move-result-object v0

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/Server;->ping()V

    .line 568
    iget-object v0, p0, Lbe/gentgo/tetsuki/Main$1;->this$0:Lbe/gentgo/tetsuki/Main;

    invoke-static {v0}, Lbe/gentgo/tetsuki/Main;->access$1(Lbe/gentgo/tetsuki/Main;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lbe/gentgo/tetsuki/Main$1;->this$0:Lbe/gentgo/tetsuki/Main;

    invoke-static {v1}, Lbe/gentgo/tetsuki/Main;->access$2(Lbe/gentgo/tetsuki/Main;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 569
    iget-object v0, p0, Lbe/gentgo/tetsuki/Main$1;->this$0:Lbe/gentgo/tetsuki/Main;

    invoke-static {v0}, Lbe/gentgo/tetsuki/Main;->access$1(Lbe/gentgo/tetsuki/Main;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lbe/gentgo/tetsuki/Main$1;->this$0:Lbe/gentgo/tetsuki/Main;

    invoke-static {v1}, Lbe/gentgo/tetsuki/Main;->access$2(Lbe/gentgo/tetsuki/Main;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 570
    return-void
.end method
