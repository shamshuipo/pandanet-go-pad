.class Lbe/gentgo/tetsuki/GameRecordActivity$2;
.super Ljava/lang/Object;
.source "GameRecordActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbe/gentgo/tetsuki/GameRecordActivity;->waitAndObserveGame()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbe/gentgo/tetsuki/GameRecordActivity;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/GameRecordActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/GameRecordActivity$2;->this$0:Lbe/gentgo/tetsuki/GameRecordActivity;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 131
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getDispatcher()Lbe/gentgo/tetsuki/Dispatcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getDispatcher()Lbe/gentgo/tetsuki/Dispatcher;

    move-result-object v0

    iget-object v1, p0, Lbe/gentgo/tetsuki/GameRecordActivity$2;->this$0:Lbe/gentgo/tetsuki/GameRecordActivity;

    iget-object v1, v1, Lbe/gentgo/tetsuki/GameRecordActivity;->observeHints:Lbe/gentgo/tetsuki/ObserveHints;

    invoke-interface {v0, v1}, Lbe/gentgo/tetsuki/Dispatcher;->goToGameOnServer(Lbe/gentgo/tetsuki/ObserveHints;)V

    .line 135
    :cond_0
    iget-object v0, p0, Lbe/gentgo/tetsuki/GameRecordActivity$2;->this$0:Lbe/gentgo/tetsuki/GameRecordActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lbe/gentgo/tetsuki/GameRecordActivity;->observeHints:Lbe/gentgo/tetsuki/ObserveHints;

    .line 136
    return-void
.end method
