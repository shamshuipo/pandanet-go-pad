.class public Lbe/gentgo/tetsuki/ObservePlayerForLiveGameListener;
.super Lbe/gentgo/tetsuki/Listener;
.source "ObservePlayerForLiveGameListener.java"


# instance fields
.field private playerID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "player"    # Ljava/lang/String;

    .prologue
    .line 8
    invoke-direct {p0}, Lbe/gentgo/tetsuki/Listener;-><init>()V

    .line 9
    iput-object p1, p0, Lbe/gentgo/tetsuki/ObservePlayerForLiveGameListener;->playerID:Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method public Do()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 14
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getDispatcher()Lbe/gentgo/tetsuki/Dispatcher;

    move-result-object v1

    iget-object v2, p0, Lbe/gentgo/tetsuki/ObservePlayerForLiveGameListener;->playerID:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lbe/gentgo/tetsuki/Dispatcher;->goToPlayer(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method
