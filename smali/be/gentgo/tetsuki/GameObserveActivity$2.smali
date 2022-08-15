.class Lbe/gentgo/tetsuki/GameObserveActivity$2;
.super Lbe/gentgo/tetsuki/Listener;
.source "GameObserveActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbe/gentgo/tetsuki/GameObserveActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbe/gentgo/tetsuki/GameObserveActivity;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/GameObserveActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/GameObserveActivity$2;->this$0:Lbe/gentgo/tetsuki/GameObserveActivity;

    .line 108
    invoke-direct {p0}, Lbe/gentgo/tetsuki/Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public Do()Z
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lbe/gentgo/tetsuki/GameObserveActivity$2;->this$0:Lbe/gentgo/tetsuki/GameObserveActivity;

    iget-object v0, v0, Lbe/gentgo/tetsuki/GameObserveActivity;->gameRequest:Lbe/gentgo/tetsuki/GameRequest;

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/GameRequest;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lbe/gentgo/tetsuki/GameObserveActivity$2;->this$0:Lbe/gentgo/tetsuki/GameObserveActivity;

    iget-object v1, p0, Lbe/gentgo/tetsuki/GameObserveActivity$2;->this$0:Lbe/gentgo/tetsuki/GameObserveActivity;

    iget-object v1, v1, Lbe/gentgo/tetsuki/GameObserveActivity;->gameRequest:Lbe/gentgo/tetsuki/GameRequest;

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/GameRequest;->getResult()Lbe/gentgo/tetsuki/Game;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/GameObserveActivity;->updateGame(Lbe/gentgo/tetsuki/Game;)V

    .line 112
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
