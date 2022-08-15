.class Lbe/gentgo/tetsuki/WebFragment$ObservePlayerForLiveGameListener;
.super Lbe/gentgo/tetsuki/Listener;
.source "WebFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbe/gentgo/tetsuki/WebFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ObservePlayerForLiveGameListener"
.end annotation


# instance fields
.field private player:Ljava/lang/String;

.field final synthetic this$0:Lbe/gentgo/tetsuki/WebFragment;


# direct methods
.method public constructor <init>(Lbe/gentgo/tetsuki/WebFragment;Ljava/lang/String;)V
    .locals 0
    .param p2, "playerID"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lbe/gentgo/tetsuki/WebFragment$ObservePlayerForLiveGameListener;->this$0:Lbe/gentgo/tetsuki/WebFragment;

    .line 35
    invoke-direct {p0}, Lbe/gentgo/tetsuki/Listener;-><init>()V

    .line 37
    iput-object p2, p0, Lbe/gentgo/tetsuki/WebFragment$ObservePlayerForLiveGameListener;->player:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public Do()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 41
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getDispatcher()Lbe/gentgo/tetsuki/Dispatcher;

    move-result-object v1

    iget-object v2, p0, Lbe/gentgo/tetsuki/WebFragment$ObservePlayerForLiveGameListener;->player:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lbe/gentgo/tetsuki/Dispatcher;->goToPlayer(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method
