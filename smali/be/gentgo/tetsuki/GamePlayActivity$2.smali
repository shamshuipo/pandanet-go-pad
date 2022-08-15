.class Lbe/gentgo/tetsuki/GamePlayActivity$2;
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
    .line 321
    invoke-direct {p0}, Lbe/gentgo/tetsuki/Listener;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public Do()Z
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 326
    invoke-static {}, Lbe/gentgo/tetsuki/GamePlayActivity;->access$2()Lbe/gentgo/tetsuki/GameRequest;

    move-result-object v11

    invoke-virtual {v11}, Lbe/gentgo/tetsuki/GameRequest;->isAvailable()Z

    move-result v11

    if-nez v11, :cond_1

    .line 409
    :cond_0
    :goto_0
    return v10

    .line 327
    :cond_1
    invoke-static {}, Lbe/gentgo/tetsuki/GamePlayActivity;->access$2()Lbe/gentgo/tetsuki/GameRequest;

    move-result-object v11

    invoke-virtual {v11}, Lbe/gentgo/tetsuki/GameRequest;->getResult()Lbe/gentgo/tetsuki/Game;

    move-result-object v2

    .line 329
    .local v2, "game":Lbe/gentgo/tetsuki/Game;
    invoke-static {}, Lbe/gentgo/tetsuki/GamePlayActivity;->access$1()Lbe/gentgo/tetsuki/GamePlayActivity;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 330
    invoke-static {}, Lbe/gentgo/tetsuki/GamePlayActivity;->access$1()Lbe/gentgo/tetsuki/GamePlayActivity;

    move-result-object v11

    invoke-virtual {v11, v2}, Lbe/gentgo/tetsuki/GamePlayActivity;->updateGame(Lbe/gentgo/tetsuki/Game;)V

    .line 332
    :cond_2
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lbe/gentgo/tetsuki/Game;->isOver()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 334
    invoke-static {}, Lbe/gentgo/tetsuki/GamePlayActivity;->access$0()Lbe/gentgo/tetsuki/GameRequest;

    move-result-object v11

    if-nez v11, :cond_7

    .line 337
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v11

    invoke-virtual {v11}, Lbe/gentgo/tetsuki/Server;->observeMyNextGame()Lbe/gentgo/tetsuki/GameRequest;

    move-result-object v11

    invoke-static {v11}, Lbe/gentgo/tetsuki/GamePlayActivity;->access$6(Lbe/gentgo/tetsuki/GameRequest;)V

    .line 338
    invoke-static {}, Lbe/gentgo/tetsuki/GamePlayActivity;->access$0()Lbe/gentgo/tetsuki/GameRequest;

    move-result-object v11

    invoke-static {}, Lbe/gentgo/tetsuki/GamePlayActivity;->access$5()Lbe/gentgo/tetsuki/Listener;

    move-result-object v12

    invoke-virtual {v11, v12}, Lbe/gentgo/tetsuki/GameRequest;->addListener(Lbe/gentgo/tetsuki/Listener;)V

    .line 344
    invoke-static {}, Lbe/gentgo/tetsuki/TetsukiActivity;->getForegroundActivity()Lbe/gentgo/tetsuki/TetsukiActivity;

    move-result-object v1

    .line 346
    .local v1, "context":Landroid/content/Context;
    invoke-static {}, Lbe/gentgo/tetsuki/GamePlayActivity;->access$10()Landroid/app/Dialog;

    move-result-object v11

    if-eqz v11, :cond_3

    invoke-static {}, Lbe/gentgo/tetsuki/GamePlayActivity;->access$10()Landroid/app/Dialog;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Dialog;->dismiss()V

    invoke-static {v13}, Lbe/gentgo/tetsuki/GamePlayActivity;->access$11(Landroid/app/Dialog;)V

    .line 347
    :cond_3
    invoke-static {}, Lbe/gentgo/tetsuki/GamePlayActivity;->access$12()Landroid/app/Dialog;

    move-result-object v11

    if-eqz v11, :cond_4

    invoke-static {}, Lbe/gentgo/tetsuki/GamePlayActivity;->access$12()Landroid/app/Dialog;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Dialog;->dismiss()V

    invoke-static {v13}, Lbe/gentgo/tetsuki/GamePlayActivity;->access$13(Landroid/app/Dialog;)V

    .line 349
    :cond_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 351
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v8, 0x0

    .line 352
    .local v8, "score":Lbe/gentgo/tetsuki/ScoreCount;
    invoke-virtual {v2}, Lbe/gentgo/tetsuki/Game;->isWonOnPoints()Z

    move-result v11

    if-eqz v11, :cond_5

    new-instance v8, Lbe/gentgo/tetsuki/ScoreCount;

    .end local v8    # "score":Lbe/gentgo/tetsuki/ScoreCount;
    invoke-direct {v8, v2}, Lbe/gentgo/tetsuki/ScoreCount;-><init>(Lbe/gentgo/tetsuki/Game;)V

    .line 353
    .restart local v8    # "score":Lbe/gentgo/tetsuki/ScoreCount;
    :cond_5
    const v11, 0x7f080030

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 354
    invoke-static {v1, v2, v8}, Lbe/gentgo/tetsuki/ScoreFragment;->localizedTextForGameResult(Landroid/content/Context;Lbe/gentgo/tetsuki/Game;Lbe/gentgo/tetsuki/ScoreCount;)Ljava/lang/String;

    move-result-object v3

    .line 355
    .local v3, "message":Ljava/lang/String;
    invoke-static {}, Lbe/gentgo/tetsuki/GamePlayActivity;->access$1()Lbe/gentgo/tetsuki/GamePlayActivity;

    move-result-object v11

    if-eqz v11, :cond_6

    .line 357
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const v12, 0x7f08002f

    invoke-virtual {v1, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 358
    const v11, 0x7f080032

    new-instance v12, Lbe/gentgo/tetsuki/GamePlayActivity$2$1;

    invoke-direct {v12, p0}, Lbe/gentgo/tetsuki/GamePlayActivity$2$1;-><init>(Lbe/gentgo/tetsuki/GamePlayActivity$2;)V

    invoke-virtual {v0, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 366
    :cond_6
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 367
    const v11, 0x7f080031

    new-instance v12, Lbe/gentgo/tetsuki/GamePlayActivity$2$2;

    invoke-direct {v12, p0}, Lbe/gentgo/tetsuki/GamePlayActivity$2$2;-><init>(Lbe/gentgo/tetsuki/GamePlayActivity$2;)V

    invoke-virtual {v0, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 372
    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 373
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v11

    invoke-static {v11}, Lbe/gentgo/tetsuki/GamePlayActivity;->access$11(Landroid/app/Dialog;)V

    .line 374
    invoke-static {}, Lbe/gentgo/tetsuki/GamePlayActivity;->access$10()Landroid/app/Dialog;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Dialog;->show()V

    .line 377
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "context":Landroid/content/Context;
    .end local v3    # "message":Ljava/lang/String;
    .end local v8    # "score":Lbe/gentgo/tetsuki/ScoreCount;
    :cond_7
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lbe/gentgo/tetsuki/Game;->isOver()Z

    move-result v11

    if-nez v11, :cond_0

    .line 379
    invoke-virtual {v2}, Lbe/gentgo/tetsuki/Game;->hasReconnectTimer()Z

    move-result v11

    if-eqz v11, :cond_a

    move v5, v9

    .line 380
    .local v5, "opponentConnected":Z
    :goto_1
    invoke-static {}, Lbe/gentgo/tetsuki/GamePlayActivity;->access$14()Z

    move-result v11

    if-eq v5, v11, :cond_0

    .line 382
    invoke-static {v5}, Lbe/gentgo/tetsuki/GamePlayActivity;->access$15(Z)V

    .line 383
    invoke-static {}, Lbe/gentgo/tetsuki/TetsukiActivity;->getForegroundActivity()Lbe/gentgo/tetsuki/TetsukiActivity;

    move-result-object v1

    .line 385
    .restart local v1    # "context":Landroid/content/Context;
    invoke-static {}, Lbe/gentgo/tetsuki/GamePlayActivity;->access$10()Landroid/app/Dialog;

    move-result-object v11

    if-eqz v11, :cond_8

    invoke-static {}, Lbe/gentgo/tetsuki/GamePlayActivity;->access$10()Landroid/app/Dialog;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Dialog;->dismiss()V

    invoke-static {v13}, Lbe/gentgo/tetsuki/GamePlayActivity;->access$11(Landroid/app/Dialog;)V

    .line 386
    :cond_8
    invoke-static {}, Lbe/gentgo/tetsuki/GamePlayActivity;->access$12()Landroid/app/Dialog;

    move-result-object v11

    if-eqz v11, :cond_9

    invoke-static {}, Lbe/gentgo/tetsuki/GamePlayActivity;->access$12()Landroid/app/Dialog;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Dialog;->dismiss()V

    invoke-static {v13}, Lbe/gentgo/tetsuki/GamePlayActivity;->access$13(Landroid/app/Dialog;)V

    .line 387
    :cond_9
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 388
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    if-eqz v5, :cond_b

    const v11, 0x7f080036

    :goto_2
    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 389
    if-eqz v5, :cond_c

    .line 391
    const-string v11, ""

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 399
    :goto_3
    const v11, 0x7f08003b

    new-instance v12, Lbe/gentgo/tetsuki/GamePlayActivity$2$3;

    invoke-direct {v12, p0}, Lbe/gentgo/tetsuki/GamePlayActivity$2$3;-><init>(Lbe/gentgo/tetsuki/GamePlayActivity$2;)V

    invoke-virtual {v0, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 404
    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 405
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    invoke-static {v9}, Lbe/gentgo/tetsuki/GamePlayActivity;->access$13(Landroid/app/Dialog;)V

    .line 406
    invoke-static {}, Lbe/gentgo/tetsuki/GamePlayActivity;->access$12()Landroid/app/Dialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "context":Landroid/content/Context;
    .end local v5    # "opponentConnected":Z
    :cond_a
    move v5, v10

    .line 379
    goto :goto_1

    .line 388
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v5    # "opponentConnected":Z
    :cond_b
    const v11, 0x7f080033

    goto :goto_2

    .line 395
    :cond_c
    invoke-static {}, Lbe/gentgo/tetsuki/PlayerTimer;->getCurrentTime()J

    move-result-wide v6

    .line 396
    .local v6, "now":J
    invoke-virtual {v2, v6, v7}, Lbe/gentgo/tetsuki/Game;->getReconnectTimerSeconds(J)I

    move-result v11

    add-int/lit8 v11, v11, 0x1e

    div-int/lit8 v4, v11, 0x3c

    .line 397
    .local v4, "minutes":I
    const v11, 0x7f080034

    invoke-virtual {v1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-array v12, v10, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v9

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_3
.end method
