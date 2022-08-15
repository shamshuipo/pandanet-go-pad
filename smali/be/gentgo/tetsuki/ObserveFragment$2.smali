.class Lbe/gentgo/tetsuki/ObserveFragment$2;
.super Ljava/lang/Object;
.source "ObserveFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbe/gentgo/tetsuki/ObserveFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbe/gentgo/tetsuki/ObserveFragment;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/ObserveFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/ObserveFragment$2;->this$0:Lbe/gentgo/tetsuki/ObserveFragment;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 105
    iget-object v0, p0, Lbe/gentgo/tetsuki/ObserveFragment$2;->this$0:Lbe/gentgo/tetsuki/ObserveFragment;

    invoke-static {v0}, Lbe/gentgo/tetsuki/ObserveFragment;->access$0(Lbe/gentgo/tetsuki/ObserveFragment;)V

    .line 106
    iget-object v0, p0, Lbe/gentgo/tetsuki/ObserveFragment$2;->this$0:Lbe/gentgo/tetsuki/ObserveFragment;

    iget-object v0, v0, Lbe/gentgo/tetsuki/ObserveFragment;->requestHandler:Landroid/os/Handler;

    iget-object v1, p0, Lbe/gentgo/tetsuki/ObserveFragment$2;->this$0:Lbe/gentgo/tetsuki/ObserveFragment;

    iget-object v1, v1, Lbe/gentgo/tetsuki/ObserveFragment;->startRequest:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 107
    return-void
.end method
