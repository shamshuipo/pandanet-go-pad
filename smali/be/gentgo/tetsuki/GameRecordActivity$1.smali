.class Lbe/gentgo/tetsuki/GameRecordActivity$1;
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
    iput-object p1, p0, Lbe/gentgo/tetsuki/GameRecordActivity$1;->this$0:Lbe/gentgo/tetsuki/GameRecordActivity;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 105
    const/4 v0, 0x0

    .line 106
    .local v0, "req":Lbe/gentgo/tetsuki/Messenger;
    iget-object v2, p0, Lbe/gentgo/tetsuki/GameRecordActivity$1;->this$0:Lbe/gentgo/tetsuki/GameRecordActivity;

    iget-object v2, v2, Lbe/gentgo/tetsuki/GameRecordActivity;->observeHints:Lbe/gentgo/tetsuki/ObserveHints;

    invoke-virtual {v2}, Lbe/gentgo/tetsuki/ObserveHints;->hasHost()Z

    move-result v2

    if-nez v2, :cond_0

    .line 108
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v1

    .line 109
    .local v1, "server":Lbe/gentgo/tetsuki/Server;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lbe/gentgo/tetsuki/Server;->connectFromPreferences(Z)V

    .line 110
    iget-object v2, p0, Lbe/gentgo/tetsuki/GameRecordActivity$1;->this$0:Lbe/gentgo/tetsuki/GameRecordActivity;

    iget-object v2, v2, Lbe/gentgo/tetsuki/GameRecordActivity;->observeHints:Lbe/gentgo/tetsuki/ObserveHints;

    invoke-virtual {v1, v2}, Lbe/gentgo/tetsuki/Server;->addObserveHints(Lbe/gentgo/tetsuki/ObserveHints;)V

    .line 111
    iget-object v2, p0, Lbe/gentgo/tetsuki/GameRecordActivity$1;->this$0:Lbe/gentgo/tetsuki/GameRecordActivity;

    iget-object v2, v2, Lbe/gentgo/tetsuki/GameRecordActivity;->observeHints:Lbe/gentgo/tetsuki/ObserveHints;

    invoke-virtual {v2}, Lbe/gentgo/tetsuki/ObserveHints;->getPlayerID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbe/gentgo/tetsuki/Server;->observePlayer(Ljava/lang/String;)Lbe/gentgo/tetsuki/Messenger;

    move-result-object v0

    .line 112
    new-instance v2, Lbe/gentgo/tetsuki/ObservePlayerForLiveGameListener;

    iget-object v3, p0, Lbe/gentgo/tetsuki/GameRecordActivity$1;->this$0:Lbe/gentgo/tetsuki/GameRecordActivity;

    iget-object v3, v3, Lbe/gentgo/tetsuki/GameRecordActivity;->observeHints:Lbe/gentgo/tetsuki/ObserveHints;

    invoke-virtual {v3}, Lbe/gentgo/tetsuki/ObserveHints;->getPlayerID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lbe/gentgo/tetsuki/ObservePlayerForLiveGameListener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lbe/gentgo/tetsuki/Messenger;->addListener(Lbe/gentgo/tetsuki/Listener;)V

    .line 113
    iget-object v2, p0, Lbe/gentgo/tetsuki/GameRecordActivity$1;->this$0:Lbe/gentgo/tetsuki/GameRecordActivity;

    const/4 v3, 0x0

    iput-object v3, v2, Lbe/gentgo/tetsuki/GameRecordActivity;->observeHints:Lbe/gentgo/tetsuki/ObserveHints;

    .line 115
    .end local v1    # "server":Lbe/gentgo/tetsuki/Server;
    :cond_0
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getDispatcher()Lbe/gentgo/tetsuki/Dispatcher;

    move-result-object v2

    if-nez v2, :cond_2

    .line 117
    iget-object v2, p0, Lbe/gentgo/tetsuki/GameRecordActivity$1;->this$0:Lbe/gentgo/tetsuki/GameRecordActivity;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lbe/gentgo/tetsuki/GameRecordActivity$1;->this$0:Lbe/gentgo/tetsuki/GameRecordActivity;

    const-class v5, Lbe/gentgo/tetsuki/Main;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Lbe/gentgo/tetsuki/GameRecordActivity;->startActivity(Landroid/content/Intent;)V

    .line 124
    :cond_1
    :goto_0
    return-void

    .line 121
    :cond_2
    iget-object v2, p0, Lbe/gentgo/tetsuki/GameRecordActivity$1;->this$0:Lbe/gentgo/tetsuki/GameRecordActivity;

    invoke-virtual {v2}, Lbe/gentgo/tetsuki/GameRecordActivity;->finish()V

    .line 122
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/Messenger;->notifyListeners()V

    goto :goto_0
.end method
