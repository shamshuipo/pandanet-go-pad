.class Lbe/gentgo/tetsuki/GamePlayActivity$1;
.super Lbe/gentgo/tetsuki/Listener;
.source "GamePlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbe/gentgo/tetsuki/GamePlayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 282
    invoke-direct {p0}, Lbe/gentgo/tetsuki/Listener;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public Do()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 284
    invoke-static {}, Lbe/gentgo/tetsuki/GamePlayActivity;->access$0()Lbe/gentgo/tetsuki/GameRequest;

    move-result-object v1

    if-nez v1, :cond_0

    move v1, v2

    .line 315
    :goto_0
    return v1

    .line 287
    :cond_0
    invoke-static {}, Lbe/gentgo/tetsuki/GamePlayActivity;->access$1()Lbe/gentgo/tetsuki/GamePlayActivity;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lbe/gentgo/tetsuki/GamePlayActivity;->access$1()Lbe/gentgo/tetsuki/GamePlayActivity;

    move-result-object v1

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/GamePlayActivity;->finish()V

    .line 289
    :cond_1
    invoke-static {}, Lbe/gentgo/tetsuki/GamePlayActivity;->access$2()Lbe/gentgo/tetsuki/GameRequest;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 290
    invoke-static {}, Lbe/gentgo/tetsuki/GamePlayActivity;->access$2()Lbe/gentgo/tetsuki/GameRequest;

    move-result-object v1

    invoke-static {}, Lbe/gentgo/tetsuki/GamePlayActivity;->access$3()Lbe/gentgo/tetsuki/Listener;

    move-result-object v4

    invoke-virtual {v1, v4}, Lbe/gentgo/tetsuki/GameRequest;->removeListener(Lbe/gentgo/tetsuki/Listener;)V

    .line 291
    invoke-static {}, Lbe/gentgo/tetsuki/GamePlayActivity;->access$2()Lbe/gentgo/tetsuki/GameRequest;

    move-result-object v1

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/GameRequest;->release()V

    .line 292
    invoke-static {v5}, Lbe/gentgo/tetsuki/GamePlayActivity;->access$4(Lbe/gentgo/tetsuki/GameRequest;)V

    .line 296
    :cond_2
    invoke-static {}, Lbe/gentgo/tetsuki/GamePlayActivity;->access$0()Lbe/gentgo/tetsuki/GameRequest;

    move-result-object v1

    invoke-static {}, Lbe/gentgo/tetsuki/GamePlayActivity;->access$5()Lbe/gentgo/tetsuki/Listener;

    move-result-object v4

    invoke-virtual {v1, v4}, Lbe/gentgo/tetsuki/GameRequest;->removeListener(Lbe/gentgo/tetsuki/Listener;)V

    .line 297
    invoke-static {}, Lbe/gentgo/tetsuki/GamePlayActivity;->access$0()Lbe/gentgo/tetsuki/GameRequest;

    move-result-object v1

    invoke-static {v1}, Lbe/gentgo/tetsuki/GamePlayActivity;->access$4(Lbe/gentgo/tetsuki/GameRequest;)V

    .line 298
    invoke-static {v5}, Lbe/gentgo/tetsuki/GamePlayActivity;->access$6(Lbe/gentgo/tetsuki/GameRequest;)V

    .line 300
    invoke-static {}, Lbe/gentgo/tetsuki/GamePlayActivity;->access$2()Lbe/gentgo/tetsuki/GameRequest;

    move-result-object v1

    invoke-static {}, Lbe/gentgo/tetsuki/GamePlayActivity;->access$3()Lbe/gentgo/tetsuki/Listener;

    move-result-object v4

    invoke-virtual {v1, v4}, Lbe/gentgo/tetsuki/GameRequest;->addListener(Lbe/gentgo/tetsuki/Listener;)V

    .line 301
    invoke-static {}, Lbe/gentgo/tetsuki/GamePlayActivity;->access$2()Lbe/gentgo/tetsuki/GameRequest;

    move-result-object v1

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/GameRequest;->getResult()Lbe/gentgo/tetsuki/Game;

    move-result-object v0

    .line 302
    .local v0, "game":Lbe/gentgo/tetsuki/Game;
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v1

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/Server;->getMyID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/Game;->getGameSettings()Lbe/gentgo/tetsuki/GameSettings;

    move-result-object v4

    invoke-virtual {v4}, Lbe/gentgo/tetsuki/GameSettings;->getBlackPlayer()Lbe/gentgo/tetsuki/Player;

    move-result-object v4

    invoke-virtual {v4}, Lbe/gentgo/tetsuki/Player;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 303
    invoke-static {v3}, Lbe/gentgo/tetsuki/GamePlayActivity;->access$7(I)V

    .line 307
    :goto_1
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v4

    .line 308
    invoke-static {}, Lbe/gentgo/tetsuki/GamePlayActivity;->access$8()I

    move-result v1

    if-ne v1, v3, :cond_4

    .line 309
    invoke-virtual {v0}, Lbe/gentgo/tetsuki/Game;->getGameSettings()Lbe/gentgo/tetsuki/GameSettings;

    move-result-object v1

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/GameSettings;->getWhitePlayer()Lbe/gentgo/tetsuki/Player;

    move-result-object v1

    .line 307
    :goto_2
    invoke-virtual {v4, v1}, Lbe/gentgo/tetsuki/Server;->requestPlayerDetails(Lbe/gentgo/tetsuki/Player;)Lbe/gentgo/tetsuki/PlayerDetailsRequest;

    move-result-object v1

    invoke-static {v1}, Lbe/gentgo/tetsuki/GamePlayActivity;->access$9(Lbe/gentgo/tetsuki/PlayerDetailsRequest;)V

    .line 312
    const/high16 v1, 0x7f060000

    invoke-static {v1, v2}, Lbe/gentgo/tetsuki/SoundManager;->playSound(IZ)V

    .line 313
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getDispatcher()Lbe/gentgo/tetsuki/Dispatcher;

    move-result-object v1

    invoke-interface {v1}, Lbe/gentgo/tetsuki/Dispatcher;->goToMyGame()V

    move v1, v3

    .line 315
    goto/16 :goto_0

    .line 305
    :cond_3
    const/4 v1, -0x1

    invoke-static {v1}, Lbe/gentgo/tetsuki/GamePlayActivity;->access$7(I)V

    goto :goto_1

    .line 310
    :cond_4
    invoke-virtual {v0}, Lbe/gentgo/tetsuki/Game;->getGameSettings()Lbe/gentgo/tetsuki/GameSettings;

    move-result-object v1

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/GameSettings;->getBlackPlayer()Lbe/gentgo/tetsuki/Player;

    move-result-object v1

    goto :goto_2
.end method
