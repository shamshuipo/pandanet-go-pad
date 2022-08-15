.class Lbe/gentgo/tetsuki/Main$10;
.super Ljava/lang/Object;
.source "Main.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbe/gentgo/tetsuki/Main;->goToPlayer(Ljava/lang/String;Z)Z
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
    iput-object p1, p0, Lbe/gentgo/tetsuki/Main$10;->this$0:Lbe/gentgo/tetsuki/Main;

    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lbe/gentgo/tetsuki/Main$10;)Lbe/gentgo/tetsuki/Main;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lbe/gentgo/tetsuki/Main$10;->this$0:Lbe/gentgo/tetsuki/Main;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 348
    iget-object v0, p0, Lbe/gentgo/tetsuki/Main$10;->this$0:Lbe/gentgo/tetsuki/Main;

    invoke-static {v0}, Lbe/gentgo/tetsuki/Main;->access$5(Lbe/gentgo/tetsuki/Main;)Lbe/gentgo/tetsuki/HomeFragment;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/HomeFragment;->setSelection(I)V

    .line 349
    iget-object v0, p0, Lbe/gentgo/tetsuki/Main$10;->this$0:Lbe/gentgo/tetsuki/Main;

    iget-object v1, p0, Lbe/gentgo/tetsuki/Main$10;->this$0:Lbe/gentgo/tetsuki/Main;

    invoke-static {v1}, Lbe/gentgo/tetsuki/Main;->access$7(Lbe/gentgo/tetsuki/Main;)Lbe/gentgo/tetsuki/PlayersListFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/Main;->setContentFragment(Landroid/app/Fragment;)V

    .line 350
    iget-object v0, p0, Lbe/gentgo/tetsuki/Main$10;->this$0:Lbe/gentgo/tetsuki/Main;

    invoke-static {v0}, Lbe/gentgo/tetsuki/Main;->access$1(Lbe/gentgo/tetsuki/Main;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lbe/gentgo/tetsuki/Main$10$1;

    invoke-direct {v1, p0}, Lbe/gentgo/tetsuki/Main$10$1;-><init>(Lbe/gentgo/tetsuki/Main$10;)V

    .line 355
    const-wide/16 v2, 0x64

    .line 350
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 356
    return-void
.end method
