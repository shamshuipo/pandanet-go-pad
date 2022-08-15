.class Lbe/gentgo/tetsuki/Main$10$1;
.super Ljava/lang/Object;
.source "Main.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbe/gentgo/tetsuki/Main$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lbe/gentgo/tetsuki/Main$10;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/Main$10;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/Main$10$1;->this$1:Lbe/gentgo/tetsuki/Main$10;

    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 353
    iget-object v0, p0, Lbe/gentgo/tetsuki/Main$10$1;->this$1:Lbe/gentgo/tetsuki/Main$10;

    invoke-static {v0}, Lbe/gentgo/tetsuki/Main$10;->access$0(Lbe/gentgo/tetsuki/Main$10;)Lbe/gentgo/tetsuki/Main;

    move-result-object v0

    invoke-static {v0}, Lbe/gentgo/tetsuki/Main;->access$7(Lbe/gentgo/tetsuki/Main;)Lbe/gentgo/tetsuki/PlayersListFragment;

    move-result-object v0

    iget-object v1, p0, Lbe/gentgo/tetsuki/Main$10$1;->this$1:Lbe/gentgo/tetsuki/Main$10;

    invoke-static {v1}, Lbe/gentgo/tetsuki/Main$10;->access$0(Lbe/gentgo/tetsuki/Main$10;)Lbe/gentgo/tetsuki/Main;

    move-result-object v1

    invoke-static {v1}, Lbe/gentgo/tetsuki/Main;->access$8(Lbe/gentgo/tetsuki/Main;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lbe/gentgo/tetsuki/Main$10$1;->this$1:Lbe/gentgo/tetsuki/Main$10;

    invoke-static {v2}, Lbe/gentgo/tetsuki/Main$10;->access$0(Lbe/gentgo/tetsuki/Main$10;)Lbe/gentgo/tetsuki/Main;

    move-result-object v2

    invoke-static {v2}, Lbe/gentgo/tetsuki/Main;->access$9(Lbe/gentgo/tetsuki/Main;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lbe/gentgo/tetsuki/PlayersListFragment;->goToPlayer(Ljava/lang/String;Z)V

    .line 354
    return-void
.end method
