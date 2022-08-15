.class Lbe/gentgo/tetsuki/PlayFragment$1;
.super Ljava/lang/Object;
.source "PlayFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbe/gentgo/tetsuki/PlayFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbe/gentgo/tetsuki/PlayFragment;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/PlayFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/PlayFragment$1;->this$0:Lbe/gentgo/tetsuki/PlayFragment;

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lbe/gentgo/tetsuki/PlayFragment$1;->this$0:Lbe/gentgo/tetsuki/PlayFragment;

    invoke-static {v0}, Lbe/gentgo/tetsuki/PlayFragment;->access$0(Lbe/gentgo/tetsuki/PlayFragment;)V

    .line 264
    return-void
.end method
