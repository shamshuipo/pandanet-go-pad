.class public Lbe/gentgo/tetsuki/OnlineGameActivity;
.super Lbe/gentgo/tetsuki/GameBaseActivity;
.source "OnlineGameActivity.java"


# instance fields
.field updateHandler:Landroid/os/Handler;

.field private updateRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Lbe/gentgo/tetsuki/GameBaseActivity;-><init>()V

    .line 26
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lbe/gentgo/tetsuki/OnlineGameActivity;->updateHandler:Landroid/os/Handler;

    .line 27
    new-instance v0, Lbe/gentgo/tetsuki/OnlineGameActivity$1;

    invoke-direct {v0, p0}, Lbe/gentgo/tetsuki/OnlineGameActivity$1;-><init>(Lbe/gentgo/tetsuki/OnlineGameActivity;)V

    iput-object v0, p0, Lbe/gentgo/tetsuki/OnlineGameActivity;->updateRunnable:Ljava/lang/Runnable;

    .line 7
    return-void
.end method

.method static synthetic access$0(Lbe/gentgo/tetsuki/OnlineGameActivity;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lbe/gentgo/tetsuki/OnlineGameActivity;->updateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public attachmentFileName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 36
    iget-object v1, p0, Lbe/gentgo/tetsuki/OnlineGameActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/Game;->getGameSettings()Lbe/gentgo/tetsuki/GameSettings;

    move-result-object v0

    .line 37
    .local v0, "settings":Lbe/gentgo/tetsuki/GameSettings;
    const-string v1, "%s - %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/GameSettings;->getWhitePlayer()Lbe/gentgo/tetsuki/Player;

    move-result-object v4

    invoke-virtual {v4}, Lbe/gentgo/tetsuki/Player;->getID()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/GameSettings;->getBlackPlayer()Lbe/gentgo/tetsuki/Player;

    move-result-object v4

    invoke-virtual {v4}, Lbe/gentgo/tetsuki/Player;->getID()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isChatEnabled()Z
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lbe/gentgo/tetsuki/OnlineGameActivity;->game:Lbe/gentgo/tetsuki/Game;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 10
    invoke-super {p0, p1}, Lbe/gentgo/tetsuki/GameBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 11
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/OnlineGameActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 12
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 20
    iget-object v0, p0, Lbe/gentgo/tetsuki/OnlineGameActivity;->updateHandler:Landroid/os/Handler;

    iget-object v1, p0, Lbe/gentgo/tetsuki/OnlineGameActivity;->updateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 21
    invoke-static {}, Lbe/gentgo/tetsuki/SoundManager;->stopLoopedSound()V

    .line 22
    invoke-super {p0}, Lbe/gentgo/tetsuki/GameBaseActivity;->onPause()V

    .line 23
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 14
    invoke-super {p0}, Lbe/gentgo/tetsuki/GameBaseActivity;->onResume()V

    .line 15
    iget-object v0, p0, Lbe/gentgo/tetsuki/OnlineGameActivity;->updateHandler:Landroid/os/Handler;

    iget-object v1, p0, Lbe/gentgo/tetsuki/OnlineGameActivity;->updateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 16
    iget-object v0, p0, Lbe/gentgo/tetsuki/OnlineGameActivity;->updateHandler:Landroid/os/Handler;

    iget-object v1, p0, Lbe/gentgo/tetsuki/OnlineGameActivity;->updateRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 17
    return-void
.end method
