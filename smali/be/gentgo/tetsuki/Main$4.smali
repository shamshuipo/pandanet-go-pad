.class Lbe/gentgo/tetsuki/Main$4;
.super Ljava/lang/Object;
.source "Main.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbe/gentgo/tetsuki/Main;->initApp(Landroid/app/Activity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 171
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->access$0()Lbe/gentgo/tetsuki/Server;

    move-result-object v0

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/Server;->getErrorState()I

    move-result v0

    if-nez v0, :cond_0

    .line 172
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->access$0()Lbe/gentgo/tetsuki/Server;

    move-result-object v0

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/Server;->disconnect(Z)V

    .line 174
    :cond_0
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 175
    return-void
.end method
