.class Lbe/gentgo/tetsuki/GameObserveActivity$1;
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
.field protected oldGameID:I

.field final synthetic this$0:Lbe/gentgo/tetsuki/GameObserveActivity;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/GameObserveActivity;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/GameObserveActivity$1;->this$0:Lbe/gentgo/tetsuki/GameObserveActivity;

    .line 41
    invoke-direct {p0}, Lbe/gentgo/tetsuki/Listener;-><init>()V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lbe/gentgo/tetsuki/GameObserveActivity$1;->oldGameID:I

    return-void
.end method


# virtual methods
.method public Do()Z
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 44
    iget-object v0, p0, Lbe/gentgo/tetsuki/GameObserveActivity$1;->this$0:Lbe/gentgo/tetsuki/GameObserveActivity;

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/GameObserveActivity;->getServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v0

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/Server;->getErrorState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lbe/gentgo/tetsuki/GameObserveActivity$1;->this$0:Lbe/gentgo/tetsuki/GameObserveActivity;

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/GameObserveActivity;->getServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v0

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/Server;->getErrorState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 46
    :cond_0
    iget v0, p0, Lbe/gentgo/tetsuki/GameObserveActivity$1;->oldGameID:I

    if-ne v0, v2, :cond_1

    .line 48
    iget-object v0, p0, Lbe/gentgo/tetsuki/GameObserveActivity$1;->this$0:Lbe/gentgo/tetsuki/GameObserveActivity;

    iget v0, v0, Lbe/gentgo/tetsuki/GameObserveActivity;->gameID:I

    iput v0, p0, Lbe/gentgo/tetsuki/GameObserveActivity$1;->oldGameID:I

    .line 49
    iget-object v0, p0, Lbe/gentgo/tetsuki/GameObserveActivity$1;->this$0:Lbe/gentgo/tetsuki/GameObserveActivity;

    invoke-virtual {v0, v2}, Lbe/gentgo/tetsuki/GameObserveActivity;->setObserveGameID(I)V

    .line 52
    :cond_1
    iget-object v0, p0, Lbe/gentgo/tetsuki/GameObserveActivity$1;->this$0:Lbe/gentgo/tetsuki/GameObserveActivity;

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/GameObserveActivity;->getServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v0

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/Server;->getErrorState()I

    move-result v0

    if-nez v0, :cond_3

    .line 54
    iget-object v0, p0, Lbe/gentgo/tetsuki/GameObserveActivity$1;->this$0:Lbe/gentgo/tetsuki/GameObserveActivity;

    iget-object v0, v0, Lbe/gentgo/tetsuki/GameObserveActivity;->specialServer:Lbe/gentgo/tetsuki/Server;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput v0, p0, Lbe/gentgo/tetsuki/GameObserveActivity$1;->oldGameID:I

    .line 55
    :cond_2
    iget v0, p0, Lbe/gentgo/tetsuki/GameObserveActivity$1;->oldGameID:I

    if-ltz v0, :cond_3

    .line 57
    iget-object v0, p0, Lbe/gentgo/tetsuki/GameObserveActivity$1;->this$0:Lbe/gentgo/tetsuki/GameObserveActivity;

    iget v1, p0, Lbe/gentgo/tetsuki/GameObserveActivity$1;->oldGameID:I

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/GameObserveActivity;->setObserveGameID(I)V

    .line 58
    iput v2, p0, Lbe/gentgo/tetsuki/GameObserveActivity$1;->oldGameID:I

    .line 61
    :cond_3
    const/4 v0, 0x1

    return v0
.end method
