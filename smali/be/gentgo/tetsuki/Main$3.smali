.class Lbe/gentgo/tetsuki/Main$3;
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


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 586
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 587
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->access$3()Lbe/gentgo/tetsuki/Main;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lbe/gentgo/tetsuki/Main;->access$3()Lbe/gentgo/tetsuki/Main;

    move-result-object v0

    invoke-static {v0}, Lbe/gentgo/tetsuki/Main;->access$5(Lbe/gentgo/tetsuki/Main;)Lbe/gentgo/tetsuki/HomeFragment;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/HomeFragment;->update(Z)V

    .line 588
    :cond_0
    return-void
.end method
