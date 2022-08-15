.class public Lbe/gentgo/tetsuki/GameRecordActivity;
.super Lbe/gentgo/tetsuki/GameBaseActivity;
.source "GameRecordActivity.java"


# static fields
.field static sDocument:Lbe/gentgo/tetsuki/Document;

.field private static sHandler:Landroid/os/Handler;


# instance fields
.field document:Lbe/gentgo/tetsuki/Document;

.field observeHints:Lbe/gentgo/tetsuki/ObserveHints;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 97
    sput-object v0, Lbe/gentgo/tetsuki/GameRecordActivity;->sHandler:Landroid/os/Handler;

    .line 332
    sput-object v0, Lbe/gentgo/tetsuki/GameRecordActivity;->sDocument:Lbe/gentgo/tetsuki/Document;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Lbe/gentgo/tetsuki/GameBaseActivity;-><init>()V

    .line 25
    iput-object v0, p0, Lbe/gentgo/tetsuki/GameRecordActivity;->observeHints:Lbe/gentgo/tetsuki/ObserveHints;

    .line 331
    iput-object v0, p0, Lbe/gentgo/tetsuki/GameRecordActivity;->document:Lbe/gentgo/tetsuki/Document;

    .line 19
    return-void
.end method

.method public static downloadUri(Landroid/net/Uri;Landroid/app/Activity;)Ljava/lang/String;
    .locals 12
    .param p0, "src"    # Landroid/net/Uri;
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 341
    const/4 v3, 0x0

    .line 343
    .local v3, "fileName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    .line 344
    .local v4, "host":Ljava/lang/String;
    if-eqz v4, :cond_0

    const-string v10, ""

    if-ne v4, v10, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v10

    .line 377
    .end local v4    # "host":Ljava/lang/String;
    :goto_0
    return-object v10

    .line 348
    .restart local v4    # "host":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    const-string v11, "content"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    const-string v11, "file"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 350
    :cond_2
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-virtual {v10, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    .line 362
    .local v5, "in":Ljava/io/InputStream;
    :goto_1
    new-instance v7, Ljava/io/File;

    const-string v10, "Temp"

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Landroid/app/Activity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v10

    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 363
    .local v7, "out":Ljava/io/File;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 364
    .local v2, "f":Ljava/io/FileOutputStream;
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 366
    const/16 v10, 0x400

    new-array v0, v10, [B

    .line 368
    .local v0, "buffer":[B
    :goto_2
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .local v6, "length":I
    if-gtz v6, :cond_4

    .line 371
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 372
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .end local v0    # "buffer":[B
    .end local v2    # "f":Ljava/io/FileOutputStream;
    .end local v4    # "host":Ljava/lang/String;
    .end local v5    # "in":Ljava/io/InputStream;
    .end local v6    # "length":I
    .end local v7    # "out":Ljava/io/File;
    :goto_3
    move-object v10, v3

    .line 377
    goto :goto_0

    .line 354
    .restart local v4    # "host":Ljava/lang/String;
    :cond_3
    new-instance v9, Ljava/net/URL;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 355
    .local v9, "u":Ljava/net/URL;
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 356
    .local v1, "c":Ljava/net/HttpURLConnection;
    const-string v10, "User-Agent"

    const-string v11, "Mozilla/5.0 ( compatible ) "

    invoke-virtual {v1, v10, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const-string v10, "Accept"

    const-string v11, "*/*"

    invoke-virtual {v1, v10, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "GET"

    invoke-virtual {v1, v10}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 359
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 360
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .restart local v5    # "in":Ljava/io/InputStream;
    goto :goto_1

    .line 369
    .end local v1    # "c":Ljava/net/HttpURLConnection;
    .end local v9    # "u":Ljava/net/URL;
    .restart local v0    # "buffer":[B
    .restart local v2    # "f":Ljava/io/FileOutputStream;
    .restart local v6    # "length":I
    .restart local v7    # "out":Ljava/io/File;
    :cond_4
    const/4 v10, 0x0

    invoke-virtual {v2, v0, v10, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 374
    .end local v0    # "buffer":[B
    .end local v2    # "f":Ljava/io/FileOutputStream;
    .end local v4    # "host":Ljava/lang/String;
    .end local v5    # "in":Ljava/io/InputStream;
    .end local v6    # "length":I
    .end local v7    # "out":Ljava/io/File;
    :catch_0
    move-exception v8

    .line 375
    .local v8, "t":Ljava/lang/Throwable;
    const/4 v3, 0x0

    goto :goto_3
.end method

.method public static setDocument(Lbe/gentgo/tetsuki/Document;)V
    .locals 0
    .param p0, "doc"    # Lbe/gentgo/tetsuki/Document;

    .prologue
    .line 334
    sput-object p0, Lbe/gentgo/tetsuki/GameRecordActivity;->sDocument:Lbe/gentgo/tetsuki/Document;

    .line 335
    return-void
.end method

.method private waitAndObserveGame()V
    .locals 6

    .prologue
    .line 100
    iget-object v2, p0, Lbe/gentgo/tetsuki/GameRecordActivity;->observeHints:Lbe/gentgo/tetsuki/ObserveHints;

    if-nez v2, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    sget-object v2, Lbe/gentgo/tetsuki/GameRecordActivity;->sHandler:Landroid/os/Handler;

    if-nez v2, :cond_2

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    sput-object v2, Lbe/gentgo/tetsuki/GameRecordActivity;->sHandler:Landroid/os/Handler;

    .line 103
    :cond_2
    new-instance v1, Lbe/gentgo/tetsuki/GameRecordActivity$1;

    invoke-direct {v1, p0}, Lbe/gentgo/tetsuki/GameRecordActivity$1;-><init>(Lbe/gentgo/tetsuki/GameRecordActivity;)V

    .line 126
    .local v1, "launchMain":Ljava/lang/Runnable;
    sget-object v2, Lbe/gentgo/tetsuki/GameRecordActivity;->sHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 128
    iget-object v2, p0, Lbe/gentgo/tetsuki/GameRecordActivity;->observeHints:Lbe/gentgo/tetsuki/ObserveHints;

    invoke-virtual {v2}, Lbe/gentgo/tetsuki/ObserveHints;->hasHost()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 129
    new-instance v0, Lbe/gentgo/tetsuki/GameRecordActivity$2;

    invoke-direct {v0, p0}, Lbe/gentgo/tetsuki/GameRecordActivity$2;-><init>(Lbe/gentgo/tetsuki/GameRecordActivity;)V

    .line 138
    .local v0, "goToGame":Ljava/lang/Runnable;
    sget-object v2, Lbe/gentgo/tetsuki/GameRecordActivity;->sHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method public attachmentFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lbe/gentgo/tetsuki/GameRecordActivity;->document:Lbe/gentgo/tetsuki/Document;

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/Document;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public canIResign()Z
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lbe/gentgo/tetsuki/GameRecordActivity;->game:Lbe/gentgo/tetsuki/Game;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbe/gentgo/tetsuki/GameRecordActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/Game;->isOver()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canReport()Z
    .locals 1

    .prologue
    .line 324
    const/4 v0, 0x0

    return v0
.end method

.method public canSaveCopyToArchive()Z
    .locals 1

    .prologue
    .line 328
    const/4 v0, 0x0

    return v0
.end method

.method public canSpeak()Z
    .locals 1

    .prologue
    .line 325
    const/4 v0, 0x0

    return v0
.end method

.method public chooseHandicap(I)V
    .locals 1
    .param p1, "stones"    # I

    .prologue
    .line 284
    iget-object v0, p0, Lbe/gentgo/tetsuki/GameRecordActivity;->game:Lbe/gentgo/tetsuki/Game;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lbe/gentgo/tetsuki/GameRecordActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v0, p1}, Lbe/gentgo/tetsuki/Game;->handicap(I)Z

    .line 286
    :cond_0
    iget-object v0, p0, Lbe/gentgo/tetsuki/GameRecordActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {p0, v0}, Lbe/gentgo/tetsuki/GameRecordActivity;->updateGame(Lbe/gentgo/tetsuki/Game;)V

    .line 287
    return-void
.end method

.method public getDocument()Lbe/gentgo/tetsuki/Document;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lbe/gentgo/tetsuki/GameRecordActivity;->document:Lbe/gentgo/tetsuki/Document;

    return-object v0
.end method

.method public isChatEnabled()Z
    .locals 1

    .prologue
    .line 326
    const/4 v0, 0x0

    return v0
.end method

.method public isMyTurn()Z
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lbe/gentgo/tetsuki/GameRecordActivity;->game:Lbe/gentgo/tetsuki/Game;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbe/gentgo/tetsuki/GameRecordActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/Game;->isOver()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbe/gentgo/tetsuki/GameRecordActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/Game;->isAfterLastMove()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReplayEnabled()Z
    .locals 2

    .prologue
    .line 153
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameRecordActivity;->getDocument()Lbe/gentgo/tetsuki/Document;

    move-result-object v0

    .line 154
    .local v0, "doc":Lbe/gentgo/tetsuki/Document;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/Document;->getReadOnly()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 155
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isZoomEnabled()Z
    .locals 2

    .prologue
    .line 145
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameRecordActivity;->getGameView()Lbe/gentgo/tetsuki/GameView;

    move-result-object v1

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/GameView;->getTotalView()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 148
    :goto_0
    return v1

    .line 146
    :cond_0
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameRecordActivity;->getDocument()Lbe/gentgo/tetsuki/Document;

    move-result-object v0

    .line 147
    .local v0, "doc":Lbe/gentgo/tetsuki/Document;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/Document;->getReadOnly()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 148
    :cond_1
    invoke-static {}, Lbe/gentgo/tetsuki/Preferences;->getZoom()Z

    move-result v1

    goto :goto_0
.end method

.method public nrOfMovesToShowCommentMarks()I
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x5

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 29
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->loadJNI()V

    .line 30
    invoke-super {p0, p1}, Lbe/gentgo/tetsuki/GameBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    iput-object v5, p0, Lbe/gentgo/tetsuki/GameRecordActivity;->observeHints:Lbe/gentgo/tetsuki/ObserveHints;

    .line 32
    invoke-static {p0, v6}, Lbe/gentgo/tetsuki/Main;->initApp(Landroid/app/Activity;Z)V

    .line 33
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameRecordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 34
    .local v0, "dataURI":Landroid/net/Uri;
    if-eqz v0, :cond_1

    .line 37
    sput-object v5, Lbe/gentgo/tetsuki/GameRecordActivity;->sDocument:Lbe/gentgo/tetsuki/Document;

    .line 38
    invoke-static {v0, p0}, Lbe/gentgo/tetsuki/GameRecordActivity;->downloadUri(Landroid/net/Uri;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    .line 41
    .local v1, "fileSpec":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 43
    new-instance v3, Lbe/gentgo/tetsuki/SGFLoader;

    invoke-direct {v3}, Lbe/gentgo/tetsuki/SGFLoader;-><init>()V

    .line 44
    .local v3, "loader":Lbe/gentgo/tetsuki/SGFLoader;
    invoke-virtual {v3, v1}, Lbe/gentgo/tetsuki/SGFLoader;->newGame(Ljava/lang/String;)Lbe/gentgo/tetsuki/Game;

    move-result-object v2

    .line 46
    .local v2, "game":Lbe/gentgo/tetsuki/Game;
    invoke-virtual {v3}, Lbe/gentgo/tetsuki/SGFLoader;->getObserveHints()Lbe/gentgo/tetsuki/ObserveHints;

    move-result-object v4

    iput-object v4, p0, Lbe/gentgo/tetsuki/GameRecordActivity;->observeHints:Lbe/gentgo/tetsuki/ObserveHints;

    .line 47
    iget-object v4, p0, Lbe/gentgo/tetsuki/GameRecordActivity;->observeHints:Lbe/gentgo/tetsuki/ObserveHints;

    if-eqz v4, :cond_0

    .line 48
    invoke-direct {p0}, Lbe/gentgo/tetsuki/GameRecordActivity;->waitAndObserveGame()V

    .line 50
    :cond_0
    if-eqz v2, :cond_1

    .line 51
    new-instance v4, Lbe/gentgo/tetsuki/Document;

    invoke-direct {v4, v2, v6}, Lbe/gentgo/tetsuki/Document;-><init>(Lbe/gentgo/tetsuki/Game;Z)V

    sput-object v4, Lbe/gentgo/tetsuki/GameRecordActivity;->sDocument:Lbe/gentgo/tetsuki/Document;

    .line 56
    .end local v1    # "fileSpec":Ljava/lang/String;
    .end local v2    # "game":Lbe/gentgo/tetsuki/Game;
    .end local v3    # "loader":Lbe/gentgo/tetsuki/SGFLoader;
    :cond_1
    sget-object v4, Lbe/gentgo/tetsuki/GameRecordActivity;->sDocument:Lbe/gentgo/tetsuki/Document;

    iput-object v4, p0, Lbe/gentgo/tetsuki/GameRecordActivity;->document:Lbe/gentgo/tetsuki/Document;

    .line 57
    sput-object v5, Lbe/gentgo/tetsuki/GameRecordActivity;->sDocument:Lbe/gentgo/tetsuki/Document;

    .line 60
    iget-object v4, p0, Lbe/gentgo/tetsuki/GameRecordActivity;->document:Lbe/gentgo/tetsuki/Document;

    if-nez v4, :cond_2

    iget-object v4, p0, Lbe/gentgo/tetsuki/GameRecordActivity;->observeHints:Lbe/gentgo/tetsuki/ObserveHints;

    if-nez v4, :cond_2

    .line 62
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameRecordActivity;->finish()V

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_2
    iget-object v4, p0, Lbe/gentgo/tetsuki/GameRecordActivity;->document:Lbe/gentgo/tetsuki/Document;

    invoke-virtual {v4}, Lbe/gentgo/tetsuki/Document;->getGame()Lbe/gentgo/tetsuki/Game;

    move-result-object v4

    iput-object v4, p0, Lbe/gentgo/tetsuki/GameRecordActivity;->game:Lbe/gentgo/tetsuki/Game;

    .line 67
    iget-object v4, p0, Lbe/gentgo/tetsuki/GameRecordActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {p0, v4}, Lbe/gentgo/tetsuki/GameRecordActivity;->updateGame(Lbe/gentgo/tetsuki/Game;)V

    goto :goto_0
.end method

.method public onDoneTapped()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 307
    iget-object v0, p0, Lbe/gentgo/tetsuki/GameRecordActivity;->game:Lbe/gentgo/tetsuki/Game;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lbe/gentgo/tetsuki/GameRecordActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v0, v1, v1}, Lbe/gentgo/tetsuki/Game;->done(ZZ)Z

    .line 309
    iget-object v0, p0, Lbe/gentgo/tetsuki/GameRecordActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {p0, v0}, Lbe/gentgo/tetsuki/GameRecordActivity;->updateGame(Lbe/gentgo/tetsuki/Game;)V

    .line 310
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameRecordActivity;->showScore()V

    .line 312
    :cond_0
    return-void
.end method

.method protected onGobanTapped(Lbe/gentgo/tetsuki/Position;Z)V
    .locals 13
    .param p1, "pos"    # Lbe/gentgo/tetsuki/Position;
    .param p2, "accurate"    # Z

    .prologue
    .line 162
    invoke-virtual {p0, p1, p2}, Lbe/gentgo/tetsuki/GameRecordActivity;->checkCommentTap(Lbe/gentgo/tetsuki/Position;Z)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameRecordActivity;->getGameView()Lbe/gentgo/tetsuki/GameView;

    move-result-object v3

    .line 165
    .local v3, "gameView":Lbe/gentgo/tetsuki/GameView;
    if-nez p2, :cond_2

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameRecordActivity;->isZoomEnabled()Z

    move-result v9

    if-nez v9, :cond_10

    :cond_2
    iget-object v9, p0, Lbe/gentgo/tetsuki/GameRecordActivity;->game:Lbe/gentgo/tetsuki/Game;

    if-eqz v9, :cond_10

    .line 166
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameRecordActivity;->getDocument()Lbe/gentgo/tetsuki/Document;

    move-result-object v9

    invoke-virtual {v9}, Lbe/gentgo/tetsuki/Document;->getReadOnly()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 168
    const/4 v9, 0x0

    invoke-static {v9}, Lbe/gentgo/tetsuki/Preferences;->isMessageShown(I)Z

    move-result v9

    if-nez v9, :cond_3

    .line 170
    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-direct {v9, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 171
    const v10, 0x7f08014c

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 172
    const v10, 0x7f08014d

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 173
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 174
    const v10, 0x7f08003b

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 175
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 176
    const/4 v9, 0x0

    invoke-static {v9}, Lbe/gentgo/tetsuki/Preferences;->setMessageShown(I)V

    goto :goto_0

    .line 180
    :cond_3
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {p0, v9, v10, v11}, Lbe/gentgo/tetsuki/GameRecordActivity;->goForward(IZZ)V

    .line 181
    iget-object v9, p0, Lbe/gentgo/tetsuki/GameRecordActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {p0, v9}, Lbe/gentgo/tetsuki/GameRecordActivity;->updateGame(Lbe/gentgo/tetsuki/Game;)V

    goto :goto_0

    .line 184
    :cond_4
    iget-object v9, p0, Lbe/gentgo/tetsuki/GameRecordActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v9}, Lbe/gentgo/tetsuki/Game;->getTurn()I

    move-result v9

    if-nez v9, :cond_7

    .line 187
    iget-object v9, p0, Lbe/gentgo/tetsuki/GameRecordActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v9}, Lbe/gentgo/tetsuki/Game;->getGoban()Lbe/gentgo/tetsuki/Goban;

    move-result-object v9

    invoke-virtual {v9, p1}, Lbe/gentgo/tetsuki/Goban;->hasStone(Lbe/gentgo/tetsuki/Position;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 189
    invoke-static {}, Lbe/gentgo/tetsuki/Preferences;->moveConfirmation()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v3, p1}, Lbe/gentgo/tetsuki/GameView;->getGhostState(Lbe/gentgo/tetsuki/Position;)I

    move-result v9

    if-eqz v9, :cond_6

    .line 190
    new-instance v4, Lbe/gentgo/tetsuki/Chain;

    iget-object v9, p0, Lbe/gentgo/tetsuki/GameRecordActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v9}, Lbe/gentgo/tetsuki/Game;->getGoban()Lbe/gentgo/tetsuki/Goban;

    move-result-object v9

    invoke-direct {v4, p1, v9}, Lbe/gentgo/tetsuki/Chain;-><init>(Lbe/gentgo/tetsuki/Position;Lbe/gentgo/tetsuki/Goban;)V

    .line 191
    .local v4, "group":Lbe/gentgo/tetsuki/Chain;
    invoke-virtual {v4}, Lbe/gentgo/tetsuki/Chain;->size()I

    move-result v9

    new-array v2, v9, [Lbe/gentgo/tetsuki/Position;

    .line 192
    .local v2, "deadStones":[Lbe/gentgo/tetsuki/Position;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual {v4}, Lbe/gentgo/tetsuki/Chain;->size()I

    move-result v9

    if-lt v5, v9, :cond_5

    .line 196
    iget-object v9, p0, Lbe/gentgo/tetsuki/GameRecordActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v9}, Lbe/gentgo/tetsuki/Game;->getGoban()Lbe/gentgo/tetsuki/Goban;

    move-result-object v9

    invoke-virtual {v9, p1}, Lbe/gentgo/tetsuki/Goban;->getState(Lbe/gentgo/tetsuki/Position;)I

    move-result v9

    invoke-virtual {v3, v2, v9}, Lbe/gentgo/tetsuki/GameView;->setGhostStones([Lbe/gentgo/tetsuki/Position;I)V

    goto/16 :goto_0

    .line 193
    :cond_5
    new-instance v9, Lbe/gentgo/tetsuki/Position;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Lbe/gentgo/tetsuki/Position;-><init>(II)V

    aput-object v9, v2, v5

    .line 194
    aget-object v9, v2, v5

    invoke-virtual {v4, v5, v9}, Lbe/gentgo/tetsuki/Chain;->getPosition(ILbe/gentgo/tetsuki/Position;)V

    .line 192
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 199
    .end local v2    # "deadStones":[Lbe/gentgo/tetsuki/Position;
    .end local v4    # "group":Lbe/gentgo/tetsuki/Chain;
    .end local v5    # "i":I
    :cond_6
    iget-object v9, p0, Lbe/gentgo/tetsuki/GameRecordActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v9, p1}, Lbe/gentgo/tetsuki/Game;->removeDeadGroup(Lbe/gentgo/tetsuki/Position;)Z

    .line 206
    :goto_2
    iget-object v9, p0, Lbe/gentgo/tetsuki/GameRecordActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {p0, v9}, Lbe/gentgo/tetsuki/GameRecordActivity;->updateGame(Lbe/gentgo/tetsuki/Game;)V

    .line 210
    :cond_7
    new-instance v6, Lbe/gentgo/tetsuki/Position;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v6, v9, v10}, Lbe/gentgo/tetsuki/Position;-><init>(II)V

    .line 211
    .local v6, "lastMove":Lbe/gentgo/tetsuki/Position;
    iget-object v9, p0, Lbe/gentgo/tetsuki/GameRecordActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v9, v6}, Lbe/gentgo/tetsuki/Game;->getCurrentMove(Lbe/gentgo/tetsuki/Position;)Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-virtual {v6, p1}, Lbe/gentgo/tetsuki/Position;->equals(Lbe/gentgo/tetsuki/Position;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 214
    iget-object v9, p0, Lbe/gentgo/tetsuki/GameRecordActivity;->game:Lbe/gentgo/tetsuki/Game;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lbe/gentgo/tetsuki/Game;->getNrOfMovesAfterCurrentMove(Z)I

    move-result v9

    add-int/lit8 v8, v9, 0x1

    .line 215
    .local v8, "moves":I
    const/4 v9, 0x1

    if-ne v8, v9, :cond_a

    const v9, 0x7f08006c

    invoke-virtual {p0, v9}, Lbe/gentgo/tetsuki/GameRecordActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 216
    .local v7, "message":Ljava/lang/String;
    :goto_3
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 217
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 218
    const v9, 0x7f080039

    new-instance v10, Lbe/gentgo/tetsuki/GameRecordActivity$3;

    invoke-direct {v10, p0}, Lbe/gentgo/tetsuki/GameRecordActivity$3;-><init>(Lbe/gentgo/tetsuki/GameRecordActivity;)V

    invoke-virtual {v1, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 222
    const v9, 0x7f080031

    new-instance v10, Lbe/gentgo/tetsuki/GameRecordActivity$4;

    invoke-direct {v10, p0}, Lbe/gentgo/tetsuki/GameRecordActivity$4;-><init>(Lbe/gentgo/tetsuki/GameRecordActivity;)V

    invoke-virtual {v1, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 228
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 203
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v6    # "lastMove":Lbe/gentgo/tetsuki/Position;
    .end local v7    # "message":Ljava/lang/String;
    .end local v8    # "moves":I
    :cond_8
    invoke-virtual {v3}, Lbe/gentgo/tetsuki/GameView;->hasGhostStones()Z

    move-result v9

    if-eqz v9, :cond_9

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Lbe/gentgo/tetsuki/GameView;->setGhostStones([Lbe/gentgo/tetsuki/Position;I)V

    goto/16 :goto_0

    .line 204
    :cond_9
    iget-object v9, p0, Lbe/gentgo/tetsuki/GameRecordActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v9, p1}, Lbe/gentgo/tetsuki/Game;->toggleDame(Lbe/gentgo/tetsuki/Position;)Z

    goto :goto_2

    .line 215
    .restart local v6    # "lastMove":Lbe/gentgo/tetsuki/Position;
    .restart local v8    # "moves":I
    :cond_a
    const v9, 0x7f080127

    invoke-virtual {p0, v9}, Lbe/gentgo/tetsuki/GameRecordActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 232
    .end local v8    # "moves":I
    :cond_b
    iget-object v9, p0, Lbe/gentgo/tetsuki/GameRecordActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v9}, Lbe/gentgo/tetsuki/Game;->getTurn()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_c

    iget-object v9, p0, Lbe/gentgo/tetsuki/GameRecordActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v9}, Lbe/gentgo/tetsuki/Game;->getTurn()I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_10

    .line 234
    :cond_c
    iget-object v9, p0, Lbe/gentgo/tetsuki/GameRecordActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v9}, Lbe/gentgo/tetsuki/Game;->isAfterLastMove()Z

    move-result v0

    .line 236
    .local v0, "afterLastMove":Z
    if-nez v0, :cond_d

    .line 238
    iget-object v9, p0, Lbe/gentgo/tetsuki/GameRecordActivity;->game:Lbe/gentgo/tetsuki/Game;

    const/4 v10, 0x1

    invoke-virtual {v9, p1, v10}, Lbe/gentgo/tetsuki/Game;->forwardIntoVariation(Lbe/gentgo/tetsuki/Position;Z)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 240
    iget-object v9, p0, Lbe/gentgo/tetsuki/GameRecordActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {p0, v9}, Lbe/gentgo/tetsuki/GameRecordActivity;->updateGame(Lbe/gentgo/tetsuki/Game;)V

    .line 241
    invoke-static {}, Lbe/gentgo/tetsuki/Preferences;->getAutoZoom()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameRecordActivity;->zoomOutDelayed()V

    goto/16 :goto_0

    .line 246
    :cond_d
    invoke-static {}, Lbe/gentgo/tetsuki/Preferences;->moveConfirmation()Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-virtual {v3, p1}, Lbe/gentgo/tetsuki/GameView;->getGhostState(Lbe/gentgo/tetsuki/Position;)I

    move-result v9

    if-nez v9, :cond_e

    .line 250
    iget-object v9, p0, Lbe/gentgo/tetsuki/GameRecordActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v9}, Lbe/gentgo/tetsuki/Game;->getGoban()Lbe/gentgo/tetsuki/Goban;

    move-result-object v9

    invoke-virtual {v9, p1}, Lbe/gentgo/tetsuki/Goban;->hasStone(Lbe/gentgo/tetsuki/Position;)Z

    move-result v9

    if-nez v9, :cond_e

    .line 252
    iget-object v9, p0, Lbe/gentgo/tetsuki/GameRecordActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v9}, Lbe/gentgo/tetsuki/Game;->getTurn()I

    move-result v9

    invoke-virtual {v3, p1, v9}, Lbe/gentgo/tetsuki/GameView;->setGhostStone(Lbe/gentgo/tetsuki/Position;I)V

    goto/16 :goto_0

    .line 256
    :cond_e
    iget-object v9, p0, Lbe/gentgo/tetsuki/GameRecordActivity;->game:Lbe/gentgo/tetsuki/Game;

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-virtual {v9, p1, v10, v11}, Lbe/gentgo/tetsuki/Game;->play(Lbe/gentgo/tetsuki/Position;ZZ)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 258
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Lbe/gentgo/tetsuki/GameView;->setGhostStones([Lbe/gentgo/tetsuki/Position;I)V

    .line 259
    iget-object v9, p0, Lbe/gentgo/tetsuki/GameRecordActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {p0, v9}, Lbe/gentgo/tetsuki/GameRecordActivity;->updateGame(Lbe/gentgo/tetsuki/Game;)V

    .line 260
    invoke-static {}, Lbe/gentgo/tetsuki/Preferences;->getAutoZoom()Z

    move-result v9

    if-eqz v9, :cond_f

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameRecordActivity;->zoomOutDelayed()V

    .line 261
    :cond_f
    if-nez v0, :cond_0

    .line 264
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 265
    .restart local v1    # "builder":Landroid/app/AlertDialog$Builder;
    const v9, 0x7f080110

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 266
    const v9, 0x7f08003a

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 267
    const v9, 0x7f080039

    new-instance v10, Lbe/gentgo/tetsuki/GameRecordActivity$5;

    invoke-direct {v10, p0}, Lbe/gentgo/tetsuki/GameRecordActivity$5;-><init>(Lbe/gentgo/tetsuki/GameRecordActivity;)V

    invoke-virtual {v1, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 273
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 279
    .end local v0    # "afterLastMove":Z
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v6    # "lastMove":Lbe/gentgo/tetsuki/Position;
    :cond_10
    invoke-super {p0, p1, p2}, Lbe/gentgo/tetsuki/GameBaseActivity;->onGobanTapped(Lbe/gentgo/tetsuki/Position;Z)V

    goto/16 :goto_0
.end method

.method public onPassTapped()V
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Lbe/gentgo/tetsuki/GameRecordActivity;->game:Lbe/gentgo/tetsuki/Game;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbe/gentgo/tetsuki/GameRecordActivity;->game:Lbe/gentgo/tetsuki/Game;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/Game;->pass(Z)Z

    .line 299
    :cond_0
    iget-object v0, p0, Lbe/gentgo/tetsuki/GameRecordActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {p0, v0}, Lbe/gentgo/tetsuki/GameRecordActivity;->updateGame(Lbe/gentgo/tetsuki/Game;)V

    .line 300
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lbe/gentgo/tetsuki/GameRecordActivity;->document:Lbe/gentgo/tetsuki/Document;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbe/gentgo/tetsuki/GameRecordActivity;->document:Lbe/gentgo/tetsuki/Document;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/Document;->save(Z)V

    .line 73
    :cond_0
    invoke-super {p0}, Lbe/gentgo/tetsuki/GameBaseActivity;->onPause()V

    .line 74
    return-void
.end method

.method public onRecountTapped()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 314
    iget-object v1, p0, Lbe/gentgo/tetsuki/GameRecordActivity;->game:Lbe/gentgo/tetsuki/Game;

    if-nez v1, :cond_0

    .line 322
    :goto_0
    return-void

    .line 315
    :cond_0
    iget-object v1, p0, Lbe/gentgo/tetsuki/GameRecordActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/Game;->WindToEnd()V

    .line 316
    iget-object v1, p0, Lbe/gentgo/tetsuki/GameRecordActivity;->game:Lbe/gentgo/tetsuki/Game;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v3}, Lbe/gentgo/tetsuki/Game;->Wind(IZ)V

    .line 317
    iget-object v1, p0, Lbe/gentgo/tetsuki/GameRecordActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/Game;->isScoring()Z

    move-result v0

    .line 318
    .local v0, "scoring":Z
    iget-object v1, p0, Lbe/gentgo/tetsuki/GameRecordActivity;->game:Lbe/gentgo/tetsuki/Game;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Lbe/gentgo/tetsuki/Game;->Wind(IZ)V

    .line 319
    if-eqz v0, :cond_1

    .line 320
    iget-object v1, p0, Lbe/gentgo/tetsuki/GameRecordActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/Game;->deleteCurrentMove()V

    .line 321
    :cond_1
    iget-object v1, p0, Lbe/gentgo/tetsuki/GameRecordActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {p0, v1}, Lbe/gentgo/tetsuki/GameRecordActivity;->updateGame(Lbe/gentgo/tetsuki/Game;)V

    goto :goto_0
.end method

.method public onReportTapped()V
    .locals 0

    .prologue
    .line 323
    return-void
.end method

.method public onResignTapped()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 303
    iget-object v0, p0, Lbe/gentgo/tetsuki/GameRecordActivity;->game:Lbe/gentgo/tetsuki/Game;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbe/gentgo/tetsuki/GameRecordActivity;->game:Lbe/gentgo/tetsuki/Game;

    iget-object v1, p0, Lbe/gentgo/tetsuki/GameRecordActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/Game;->getTurn()I

    move-result v1

    invoke-virtual {v0, v1, v2, v2}, Lbe/gentgo/tetsuki/Game;->resign(IZZ)Z

    .line 304
    :cond_0
    iget-object v0, p0, Lbe/gentgo/tetsuki/GameRecordActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {p0, v0}, Lbe/gentgo/tetsuki/GameRecordActivity;->updateGame(Lbe/gentgo/tetsuki/Game;)V

    .line 305
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 78
    invoke-super {p0}, Lbe/gentgo/tetsuki/GameBaseActivity;->onResume()V

    .line 80
    iget-object v1, p0, Lbe/gentgo/tetsuki/GameRecordActivity;->game:Lbe/gentgo/tetsuki/Game;

    if-eqz v1, :cond_0

    invoke-static {v4}, Lbe/gentgo/tetsuki/Preferences;->isMessageShown(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 81
    iget-object v1, p0, Lbe/gentgo/tetsuki/GameRecordActivity;->game:Lbe/gentgo/tetsuki/Game;

    const/16 v2, 0x3e7

    invoke-virtual {v1, v2}, Lbe/gentgo/tetsuki/Game;->getNrOfMovesWithCommentedVariations(I)I

    move-result v0

    .line 82
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 84
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 85
    const v2, 0x7f080156

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 86
    const v2, 0x7f080157

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 87
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 88
    const v2, 0x7f08003b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 89
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 90
    invoke-static {v4}, Lbe/gentgo/tetsuki/Preferences;->setMessageShown(I)V

    .line 91
    invoke-static {}, Lbe/gentgo/tetsuki/Preferences;->save()V

    .line 94
    .end local v0    # "count":I
    :cond_0
    return-void
.end method

.method public speak(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 327
    return-void
.end method
