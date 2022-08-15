.class Lbe/gentgo/tetsuki/Main$2;
.super Lbe/gentgo/tetsuki/Listener;
.source "Main.java"


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
    .line 581
    invoke-direct {p0}, Lbe/gentgo/tetsuki/Listener;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public Do()Z
    .locals 1

    .prologue
    .line 582
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->access$3()Lbe/gentgo/tetsuki/Main;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lbe/gentgo/tetsuki/Main;->access$3()Lbe/gentgo/tetsuki/Main;

    move-result-object v0

    invoke-static {v0}, Lbe/gentgo/tetsuki/Main;->access$4(Lbe/gentgo/tetsuki/Main;)V

    .line 583
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
