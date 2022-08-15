.class public Lbe/gentgo/tetsuki/PlayersListAdapter;
.super Ljava/lang/Object;
.source "PlayersListAdapter.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# instance fields
.field private completedRequest:Lbe/gentgo/tetsuki/PlayerListRequest;

.field private friendCounterChanged:Ljava/lang/Runnable;

.field private friendListener:Lbe/gentgo/tetsuki/Listener;

.field inflater:Landroid/view/LayoutInflater;

.field private me:Lbe/gentgo/tetsuki/Player;

.field private observers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private ongoingRequest:Lbe/gentgo/tetsuki/PlayerListRequest;

.field private onlyShowAvailable:Z

.field private playerListListener:Lbe/gentgo/tetsuki/Listener;

.field private reconnectListener:Lbe/gentgo/tetsuki/Listener;

.field private registeredObserver:Landroid/database/DataSetObserver;

.field requestHandler:Landroid/os/Handler;

.field private requestRunnable:Ljava/lang/Runnable;

.field private roomChangeListener:Lbe/gentgo/tetsuki/Listener;

.field private sectionMarker:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private sortedPlayers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lbe/gentgo/tetsuki/Player;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    new-instance v2, Lbe/gentgo/tetsuki/PlayersListAdapter$1;

    invoke-direct {v2, p0}, Lbe/gentgo/tetsuki/PlayersListAdapter$1;-><init>(Lbe/gentgo/tetsuki/PlayersListAdapter;)V

    iput-object v2, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->requestRunnable:Ljava/lang/Runnable;

    .line 240
    new-instance v2, Lbe/gentgo/tetsuki/PlayersListAdapter$2;

    invoke-direct {v2, p0}, Lbe/gentgo/tetsuki/PlayersListAdapter$2;-><init>(Lbe/gentgo/tetsuki/PlayersListAdapter;)V

    iput-object v2, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->playerListListener:Lbe/gentgo/tetsuki/Listener;

    .line 347
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->sectionMarker:Ljava/util/ArrayList;

    .line 348
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->observers:Ljava/util/ArrayList;

    .line 349
    const/4 v2, 0x0

    iput-boolean v2, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->onlyShowAvailable:Z

    .line 357
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->requestHandler:Landroid/os/Handler;

    .line 21
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v1

    .line 23
    .local v1, "server":Lbe/gentgo/tetsuki/Server;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->sortedPlayers:Ljava/util/ArrayList;

    .line 24
    new-instance v2, Lbe/gentgo/tetsuki/PlayersListAdapter$3;

    invoke-direct {v2, p0}, Lbe/gentgo/tetsuki/PlayersListAdapter$3;-><init>(Lbe/gentgo/tetsuki/PlayersListAdapter;)V

    iput-object v2, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->reconnectListener:Lbe/gentgo/tetsuki/Listener;

    .line 33
    new-instance v2, Lbe/gentgo/tetsuki/PlayersListAdapter$4;

    invoke-direct {v2, p0}, Lbe/gentgo/tetsuki/PlayersListAdapter$4;-><init>(Lbe/gentgo/tetsuki/PlayersListAdapter;)V

    iput-object v2, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->roomChangeListener:Lbe/gentgo/tetsuki/Listener;

    .line 37
    new-instance v2, Lbe/gentgo/tetsuki/PlayersListAdapter$5;

    invoke-direct {v2, p0}, Lbe/gentgo/tetsuki/PlayersListAdapter$5;-><init>(Lbe/gentgo/tetsuki/PlayersListAdapter;)V

    iput-object v2, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->friendListener:Lbe/gentgo/tetsuki/Listener;

    .line 41
    invoke-virtual {v1}, Lbe/gentgo/tetsuki/Server;->observeError()Lbe/gentgo/tetsuki/Messenger;

    move-result-object v0

    .line 42
    .local v0, "req":Lbe/gentgo/tetsuki/Messenger;
    iget-object v2, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->reconnectListener:Lbe/gentgo/tetsuki/Listener;

    invoke-virtual {v0, v2}, Lbe/gentgo/tetsuki/Messenger;->addListener(Lbe/gentgo/tetsuki/Listener;)V

    .line 43
    invoke-virtual {v1}, Lbe/gentgo/tetsuki/Server;->observeRoomChange()Lbe/gentgo/tetsuki/Messenger;

    move-result-object v2

    iget-object v3, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->roomChangeListener:Lbe/gentgo/tetsuki/Listener;

    invoke-virtual {v2, v3}, Lbe/gentgo/tetsuki/Messenger;->addListener(Lbe/gentgo/tetsuki/Listener;)V

    .line 44
    iget-object v2, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->reconnectListener:Lbe/gentgo/tetsuki/Listener;

    invoke-virtual {v2}, Lbe/gentgo/tetsuki/Listener;->Do()Z

    .line 46
    invoke-virtual {v1}, Lbe/gentgo/tetsuki/Server;->observeFriends()Lbe/gentgo/tetsuki/Messenger;

    move-result-object v2

    iget-object v3, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->friendListener:Lbe/gentgo/tetsuki/Listener;

    invoke-virtual {v2, v3}, Lbe/gentgo/tetsuki/Messenger;->addListener(Lbe/gentgo/tetsuki/Listener;)V

    .line 47
    return-void
.end method

.method static synthetic access$0(Lbe/gentgo/tetsuki/PlayersListAdapter;Z)V
    .locals 0

    .prologue
    .line 246
    invoke-direct {p0, p1}, Lbe/gentgo/tetsuki/PlayersListAdapter;->checkForNewPlayerList(Z)V

    return-void
.end method

.method static synthetic access$1(Lbe/gentgo/tetsuki/PlayersListAdapter;)Lbe/gentgo/tetsuki/PlayerListRequest;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->ongoingRequest:Lbe/gentgo/tetsuki/PlayerListRequest;

    return-object v0
.end method

.method static synthetic access$2(Lbe/gentgo/tetsuki/PlayersListAdapter;)V
    .locals 0

    .prologue
    .line 265
    invoke-direct {p0}, Lbe/gentgo/tetsuki/PlayersListAdapter;->onRequestFinished()V

    return-void
.end method

.method static synthetic access$3(Lbe/gentgo/tetsuki/PlayersListAdapter;)Landroid/database/DataSetObserver;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->registeredObserver:Landroid/database/DataSetObserver;

    return-object v0
.end method

.method static synthetic access$4(Lbe/gentgo/tetsuki/PlayersListAdapter;)V
    .locals 0

    .prologue
    .line 282
    invoke-direct {p0}, Lbe/gentgo/tetsuki/PlayersListAdapter;->filterAndDisplayCompletedRequest()V

    return-void
.end method

.method private checkForNewPlayerList(Z)V
    .locals 6
    .param p1, "asap"    # Z

    .prologue
    .line 249
    iget-object v1, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->requestHandler:Landroid/os/Handler;

    iget-object v2, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->requestRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 250
    iget-object v1, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->requestHandler:Landroid/os/Handler;

    iget-object v2, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->requestRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x4e20

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 252
    iget-object v1, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->ongoingRequest:Lbe/gentgo/tetsuki/PlayerListRequest;

    if-eqz v1, :cond_1

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v0

    .line 254
    .local v0, "server":Lbe/gentgo/tetsuki/Server;
    if-nez p1, :cond_2

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/Server;->getMyGameID()I

    move-result v1

    if-gez v1, :cond_0

    .line 256
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/Server;->requestPlayerListNow()Lbe/gentgo/tetsuki/PlayerListRequest;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->ongoingRequest:Lbe/gentgo/tetsuki/PlayerListRequest;

    .line 257
    iget-object v1, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->ongoingRequest:Lbe/gentgo/tetsuki/PlayerListRequest;

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/PlayerListRequest;->isDone()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 259
    invoke-direct {p0}, Lbe/gentgo/tetsuki/PlayersListAdapter;->onRequestFinished()V

    goto :goto_0

    .line 256
    :cond_3
    invoke-virtual {v0}, Lbe/gentgo/tetsuki/Server;->requestPlayerList()Lbe/gentgo/tetsuki/PlayerListRequest;

    move-result-object v1

    goto :goto_1

    .line 261
    :cond_4
    iget-object v1, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->ongoingRequest:Lbe/gentgo/tetsuki/PlayerListRequest;

    iget-object v2, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->playerListListener:Lbe/gentgo/tetsuki/Listener;

    invoke-virtual {v1, v2}, Lbe/gentgo/tetsuki/PlayerListRequest;->addListener(Lbe/gentgo/tetsuki/Listener;)V

    goto :goto_0
.end method

.method private filterAndDisplayCompletedRequest()V
    .locals 11

    .prologue
    .line 284
    iget-object v9, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->completedRequest:Lbe/gentgo/tetsuki/PlayerListRequest;

    if-nez v9, :cond_1

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    const/4 v9, 0x0

    iput-object v9, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->me:Lbe/gentgo/tetsuki/Player;

    .line 286
    iget-object v9, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->sortedPlayers:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 287
    iget-object v9, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->observers:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 288
    iget-object v9, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->completedRequest:Lbe/gentgo/tetsuki/PlayerListRequest;

    invoke-virtual {v9}, Lbe/gentgo/tetsuki/PlayerListRequest;->getNrOfPlayers()I

    move-result v0

    .line 289
    .local v0, "count":I
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v9

    invoke-virtual {v9}, Lbe/gentgo/tetsuki/Server;->getMyID()Ljava/lang/String;

    move-result-object v4

    .line 290
    .local v4, "myID":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-lt v2, v0, :cond_2

    .line 306
    iget-object v9, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->sortedPlayers:Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 309
    const/4 v5, 0x0

    .line 310
    .local v5, "nrOfFriends":I
    const/4 v2, 0x0

    :goto_2
    iget-object v9, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->sortedPlayers:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lt v2, v9, :cond_9

    .line 320
    invoke-virtual {p0, v5}, Lbe/gentgo/tetsuki/PlayersListAdapter;->updateRanks(I)V

    .line 322
    iget-object v9, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->friendCounterChanged:Ljava/lang/Runnable;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->friendCounterChanged:Ljava/lang/Runnable;

    invoke-interface {v9}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 292
    .end local v5    # "nrOfFriends":I
    :cond_2
    iget-object v9, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->completedRequest:Lbe/gentgo/tetsuki/PlayerListRequest;

    invoke-virtual {v9, v2}, Lbe/gentgo/tetsuki/PlayerListRequest;->getPlayerAtIndex(I)Lbe/gentgo/tetsuki/Player;

    move-result-object v8

    .line 293
    .local v8, "player":Lbe/gentgo/tetsuki/Player;
    invoke-virtual {v8}, Lbe/gentgo/tetsuki/Player;->getID()Ljava/lang/String;

    move-result-object v3

    .line 294
    .local v3, "id":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    iput-object v8, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->me:Lbe/gentgo/tetsuki/Player;

    .line 296
    :cond_3
    iget-boolean v9, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->onlyShowAvailable:Z

    if-eqz v9, :cond_4

    invoke-virtual {v8}, Lbe/gentgo/tetsuki/Player;->isAvailable()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 297
    :cond_4
    iget-object v9, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->sortedPlayers:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    :cond_5
    invoke-virtual {v8}, Lbe/gentgo/tetsuki/Player;->gameWatching()I

    move-result v1

    .line 299
    .local v1, "game":I
    if-ltz v1, :cond_6

    .line 301
    :goto_3
    iget-object v9, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->observers:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v1, v9, :cond_8

    .line 303
    iget-object v10, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->observers:Ljava/util/ArrayList;

    iget-object v9, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->observers:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v10, v1, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 290
    .end local v1    # "game":I
    :cond_6
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 295
    :cond_7
    const-string v9, "guest"

    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_4

    .line 302
    .restart local v1    # "game":I
    :cond_8
    iget-object v9, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->observers:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 311
    .end local v1    # "game":I
    .end local v3    # "id":Ljava/lang/String;
    .end local v8    # "player":Lbe/gentgo/tetsuki/Player;
    .restart local v5    # "nrOfFriends":I
    :cond_9
    iget-object v9, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->sortedPlayers:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lbe/gentgo/tetsuki/Player;

    .line 312
    .local v7, "p":Lbe/gentgo/tetsuki/Player;
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v9

    invoke-virtual {v7}, Lbe/gentgo/tetsuki/Player;->getID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lbe/gentgo/tetsuki/Server;->isMyFriend(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 314
    iget-object v9, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->sortedPlayers:Ljava/util/ArrayList;

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "nrOfFriends":I
    .local v6, "nrOfFriends":I
    invoke-virtual {v9, v5, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 315
    add-int/lit8 v2, v2, 0x1

    move v5, v6

    .line 310
    .end local v6    # "nrOfFriends":I
    .restart local v5    # "nrOfFriends":I
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2
.end method

.method private onRequestFinished()V
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->ongoingRequest:Lbe/gentgo/tetsuki/PlayerListRequest;

    iput-object v0, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->completedRequest:Lbe/gentgo/tetsuki/PlayerListRequest;

    .line 268
    const/4 v0, 0x0

    iput-object v0, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->ongoingRequest:Lbe/gentgo/tetsuki/PlayerListRequest;

    .line 269
    invoke-direct {p0}, Lbe/gentgo/tetsuki/PlayersListAdapter;->filterAndDisplayCompletedRequest()V

    .line 270
    return-void
.end method

.method private section(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v0, -0x1

    .line 337
    iget-object v2, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->sectionMarker:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 344
    :cond_0
    :goto_0
    return v0

    .line 338
    :cond_1
    if-ltz p1, :cond_0

    .line 339
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->sectionMarker:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v0, v2, :cond_2

    .line 344
    iget-object v2, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->sectionMarker:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    .line 341
    :cond_2
    iget-object v2, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->sectionMarker:Ljava/util/ArrayList;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v0

    add-int/lit8 v1, v2, 0x1

    .line 342
    .local v1, "next":I
    if-lt p1, v1, :cond_0

    .line 339
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 223
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v0

    .line 224
    .local v0, "server":Lbe/gentgo/tetsuki/Server;
    invoke-virtual {v0}, Lbe/gentgo/tetsuki/Server;->observeError()Lbe/gentgo/tetsuki/Messenger;

    move-result-object v1

    iget-object v2, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->reconnectListener:Lbe/gentgo/tetsuki/Listener;

    invoke-virtual {v1, v2}, Lbe/gentgo/tetsuki/Messenger;->removeListener(Lbe/gentgo/tetsuki/Listener;)V

    .line 225
    invoke-virtual {v0}, Lbe/gentgo/tetsuki/Server;->observeRoomChange()Lbe/gentgo/tetsuki/Messenger;

    move-result-object v1

    iget-object v2, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->roomChangeListener:Lbe/gentgo/tetsuki/Listener;

    invoke-virtual {v1, v2}, Lbe/gentgo/tetsuki/Messenger;->removeListener(Lbe/gentgo/tetsuki/Listener;)V

    .line 226
    invoke-virtual {v0}, Lbe/gentgo/tetsuki/Server;->observeFriends()Lbe/gentgo/tetsuki/Messenger;

    move-result-object v1

    iget-object v2, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->friendListener:Lbe/gentgo/tetsuki/Listener;

    invoke-virtual {v1, v2}, Lbe/gentgo/tetsuki/Messenger;->removeListener(Lbe/gentgo/tetsuki/Listener;)V

    .line 228
    iget-object v1, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->requestHandler:Landroid/os/Handler;

    iget-object v2, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->requestRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 229
    iget-object v1, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->ongoingRequest:Lbe/gentgo/tetsuki/PlayerListRequest;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->ongoingRequest:Lbe/gentgo/tetsuki/PlayerListRequest;

    iget-object v2, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->playerListListener:Lbe/gentgo/tetsuki/Listener;

    invoke-virtual {v1, v2}, Lbe/gentgo/tetsuki/PlayerListRequest;->removeListener(Lbe/gentgo/tetsuki/Listener;)V

    .line 231
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 232
    return-void
.end method

.method public findPlayer(Ljava/lang/String;)Lbe/gentgo/tetsuki/Player;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 209
    iget-object v1, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->sortedPlayers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 213
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 209
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbe/gentgo/tetsuki/Player;

    .line 211
    .local v0, "p":Lbe/gentgo/tetsuki/Player;
    invoke-virtual {v0}, Lbe/gentgo/tetsuki/Player;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method public getCount()I
    .locals 3

    .prologue
    .line 58
    iget-object v1, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->sortedPlayers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->sectionMarker:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int v0, v1, v2

    .line 59
    .local v0, "count":I
    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 60
    :cond_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 62
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 63
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lbe/gentgo/tetsuki/PlayersListAdapter;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 67
    :goto_0
    return v0

    .line 66
    :cond_0
    iget-object v0, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->sortedPlayers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    .line 67
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMe()Lbe/gentgo/tetsuki/Player;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->me:Lbe/gentgo/tetsuki/Player;

    return-object v0
.end method

.method public getNrOfObservers(I)I
    .locals 2
    .param p1, "gameID"    # I

    .prologue
    const/4 v0, 0x0

    .line 274
    iget-object v1, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->observers:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 279
    :cond_0
    :goto_0
    return v0

    .line 275
    :cond_1
    if-ltz p1, :cond_0

    .line 276
    iget-object v1, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->observers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, p1, :cond_0

    .line 277
    iget-object v0, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->observers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getNumberOfOnlineFriends()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 329
    iget-object v0, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->sectionMarker:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 332
    :goto_0
    return v0

    .line 330
    :cond_0
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v2

    iget-object v0, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->sortedPlayers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbe/gentgo/tetsuki/Player;

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/Player;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lbe/gentgo/tetsuki/Server;->isMyFriend(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    .line 331
    :cond_1
    iget-object v0, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->sectionMarker:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->sortedPlayers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 332
    :cond_2
    iget-object v0, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->sectionMarker:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getPlayerAtPosition(I)Lbe/gentgo/tetsuki/Player;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 216
    invoke-direct {p0, p1}, Lbe/gentgo/tetsuki/PlayersListAdapter;->section(I)I

    move-result v1

    sub-int v1, p1, v1

    add-int/lit8 v0, v1, -0x1

    .line 217
    .local v0, "index":I
    if-gez v0, :cond_0

    const/4 v1, 0x0

    .line 218
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->sortedPlayers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbe/gentgo/tetsuki/Player;

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 72
    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 73
    .local v2, "inflater":Landroid/view/LayoutInflater;
    move-object/from16 v8, p2

    .line 75
    .local v8, "result":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v13, v0, Lbe/gentgo/tetsuki/PlayersListAdapter;->sortedPlayers:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 77
    if-nez v8, :cond_0

    .line 78
    const v13, 0x7f03000a

    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v2, v13, v0, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 79
    :cond_0
    const v13, 0x7f0b003d

    invoke-virtual {v8, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 80
    .local v3, "label":Landroid/widget/TextView;
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v13

    invoke-virtual {v13}, Lbe/gentgo/tetsuki/Server;->getErrorState()I

    move-result v13

    if-nez v13, :cond_1

    .line 81
    const v13, 0x7f0800c0

    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setText(I)V

    .line 84
    :goto_0
    const/16 v13, 0x80

    const/16 v14, 0x80

    const/16 v15, 0x80

    invoke-static {v13, v14, v15}, Landroid/graphics/Color;->rgb(III)I

    move-result v13

    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setTextColor(I)V

    move-object v9, v8

    .line 143
    .end local v3    # "label":Landroid/widget/TextView;
    .end local v8    # "result":Landroid/view/View;
    .local v9, "result":Landroid/view/View;
    :goto_1
    return-object v9

    .line 83
    .end local v9    # "result":Landroid/view/View;
    .restart local v3    # "label":Landroid/widget/TextView;
    .restart local v8    # "result":Landroid/view/View;
    :cond_1
    const v13, 0x7f0800e9

    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 88
    .end local v3    # "label":Landroid/widget/TextView;
    :cond_2
    invoke-direct/range {p0 .. p1}, Lbe/gentgo/tetsuki/PlayersListAdapter;->section(I)I

    move-result v10

    .line 89
    .local v10, "section":I
    sub-int v14, p1, v10

    move-object/from16 v0, p0

    iget-object v13, v0, Lbe/gentgo/tetsuki/PlayersListAdapter;->sectionMarker:Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    sub-int v12, v14, v13

    .line 91
    .local v12, "subIndex":I
    if-lez v12, :cond_a

    .line 93
    if-nez v8, :cond_3

    .line 95
    const v13, 0x7f030021

    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v2, v13, v0, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 98
    :cond_3
    const v13, 0x7f0b00b0

    invoke-virtual {v8, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 99
    .local v4, "name":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v14, v0, Lbe/gentgo/tetsuki/PlayersListAdapter;->sortedPlayers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lbe/gentgo/tetsuki/PlayersListAdapter;->sectionMarker:Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    add-int/2addr v13, v12

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lbe/gentgo/tetsuki/Player;

    .line 100
    .local v7, "player":Lbe/gentgo/tetsuki/Player;
    invoke-virtual {v7}, Lbe/gentgo/tetsuki/Player;->getID()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    move-object/from16 v0, p0

    iget-object v13, v0, Lbe/gentgo/tetsuki/PlayersListAdapter;->me:Lbe/gentgo/tetsuki/Player;

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lbe/gentgo/tetsuki/PlayersListAdapter;->me:Lbe/gentgo/tetsuki/Player;

    invoke-virtual {v7, v13}, Lbe/gentgo/tetsuki/Player;->equalsPlayer(Lbe/gentgo/tetsuki/Player;)Z

    move-result v13

    if-eqz v13, :cond_4

    const/16 v13, 0x3f

    const/16 v14, 0x96

    const/16 v15, 0xff

    invoke-static {v13, v14, v15}, Landroid/graphics/Color;->rgb(III)I

    move-result v13

    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 103
    :goto_2
    const v13, 0x7f0b00b1

    invoke-virtual {v8, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 104
    .local v11, "state":Landroid/widget/ImageView;
    const v13, 0x7f0b00b2

    invoke-virtual {v8, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 105
    .local v6, "observer":Landroid/widget/TextView;
    invoke-virtual {v7}, Lbe/gentgo/tetsuki/Player;->gamePlaying()I

    move-result v1

    .line 106
    .local v1, "game":I
    if-ltz v1, :cond_7

    .line 108
    const v13, 0x7f020054

    invoke-virtual {v11, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 109
    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 110
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/PlayersListAdapter;->getNrOfObservers(I)I

    move-result v5

    .line 111
    .local v5, "obs":I
    if-nez v5, :cond_6

    const-string v13, ""

    :goto_3
    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .end local v1    # "game":I
    .end local v5    # "obs":I
    .end local v6    # "observer":Landroid/widget/TextView;
    .end local v11    # "state":Landroid/widget/ImageView;
    :goto_4
    move-object v9, v8

    .line 143
    .end local v8    # "result":Landroid/view/View;
    .restart local v9    # "result":Landroid/view/View;
    goto/16 :goto_1

    .line 102
    .end local v9    # "result":Landroid/view/View;
    .restart local v8    # "result":Landroid/view/View;
    :cond_4
    invoke-virtual {v7}, Lbe/gentgo/tetsuki/Player;->isAvailable()Z

    move-result v13

    if-eqz v13, :cond_5

    const/16 v13, 0x14

    const/16 v14, 0x14

    const/16 v15, 0x14

    invoke-static {v13, v14, v15}, Landroid/graphics/Color;->rgb(III)I

    move-result v13

    :goto_5
    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    :cond_5
    const/16 v13, 0x80

    const/16 v14, 0x80

    const/16 v15, 0x80

    invoke-static {v13, v14, v15}, Landroid/graphics/Color;->rgb(III)I

    move-result v13

    goto :goto_5

    .line 111
    .restart local v1    # "game":I
    .restart local v5    # "obs":I
    .restart local v6    # "observer":Landroid/widget/TextView;
    .restart local v11    # "state":Landroid/widget/ImageView;
    :cond_6
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_3

    .line 115
    .end local v5    # "obs":I
    :cond_7
    const-string v13, ""

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    invoke-virtual {v7}, Lbe/gentgo/tetsuki/Player;->isSeekingGame()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 118
    const v13, 0x7f020042

    invoke-virtual {v11, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 119
    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 121
    :cond_8
    invoke-virtual {v7}, Lbe/gentgo/tetsuki/Player;->isAvailable()Z

    move-result v13

    if-eqz v13, :cond_9

    .line 122
    const/4 v13, 0x4

    invoke-virtual {v11, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 125
    :cond_9
    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 126
    const v13, 0x7f020056

    invoke-virtual {v11, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 132
    .end local v1    # "game":I
    .end local v4    # "name":Landroid/widget/TextView;
    .end local v6    # "observer":Landroid/widget/TextView;
    .end local v7    # "player":Lbe/gentgo/tetsuki/Player;
    .end local v11    # "state":Landroid/widget/ImageView;
    :cond_a
    if-nez v8, :cond_b

    .line 134
    const v13, 0x7f03000f

    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v2, v13, v0, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 136
    :cond_b
    const v13, 0x7f0b005c

    invoke-virtual {v8, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 137
    .restart local v4    # "name":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v14, v0, Lbe/gentgo/tetsuki/PlayersListAdapter;->sortedPlayers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lbe/gentgo/tetsuki/PlayersListAdapter;->sectionMarker:Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lbe/gentgo/tetsuki/Player;

    .line 138
    .restart local v7    # "player":Lbe/gentgo/tetsuki/Player;
    if-nez p1, :cond_c

    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v13

    invoke-virtual {v7}, Lbe/gentgo/tetsuki/Player;->getID()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lbe/gentgo/tetsuki/Server;->isMyFriend(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 139
    const v13, 0x7f080174

    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_4

    .line 141
    :cond_c
    invoke-virtual {v7}, Lbe/gentgo/tetsuki/Player;->getRankSection()I

    move-result v13

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lbe/gentgo/tetsuki/Player;->getNameForRankSection(IZ)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x4

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 205
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/PlayersListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x0

    .line 52
    invoke-direct {p0, p1}, Lbe/gentgo/tetsuki/PlayersListAdapter;->section(I)I

    move-result v1

    .line 53
    .local v1, "section":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    move v2, v3

    .line 55
    :goto_0
    return v2

    .line 54
    :cond_0
    iget-object v2, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->sectionMarker:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int v0, v2, v1

    .line 55
    .local v0, "header":I
    if-eq p1, v0, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 206
    iput-object p1, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->registeredObserver:Landroid/database/DataSetObserver;

    return-void
.end method

.method public scrollToMe(Landroid/widget/ListView;)V
    .locals 3
    .param p1, "list"    # Landroid/widget/ListView;

    .prologue
    .line 191
    iget-object v2, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->me:Lbe/gentgo/tetsuki/Player;

    if-nez v2, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/PlayersListAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 194
    invoke-virtual {p0, v0}, Lbe/gentgo/tetsuki/PlayersListAdapter;->getPlayerAtPosition(I)Lbe/gentgo/tetsuki/Player;

    move-result-object v1

    .line 195
    .local v1, "p":Lbe/gentgo/tetsuki/Player;
    iget-object v2, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->me:Lbe/gentgo/tetsuki/Player;

    if-ne v1, v2, :cond_2

    .line 197
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 192
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public scrollToRankSection(Landroid/widget/ListView;I)V
    .locals 5
    .param p1, "list"    # Landroid/widget/ListView;
    .param p2, "ranksection"    # I

    .prologue
    .line 178
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->sectionMarker:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 188
    :goto_1
    return-void

    .line 180
    :cond_0
    iget-object v4, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->sortedPlayers:Ljava/util/ArrayList;

    iget-object v3, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->sectionMarker:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbe/gentgo/tetsuki/Player;

    .line 181
    .local v2, "p":Lbe/gentgo/tetsuki/Player;
    if-nez v0, :cond_2

    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v3

    invoke-virtual {v2}, Lbe/gentgo/tetsuki/Player;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lbe/gentgo/tetsuki/Server;->isMyFriend(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 178
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 182
    :cond_2
    invoke-virtual {v2}, Lbe/gentgo/tetsuki/Player;->getRankSection()I

    move-result v3

    if-gt v3, p2, :cond_1

    .line 183
    iget-object v3, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->sectionMarker:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int v1, v3, v0

    .line 184
    .local v1, "index":I
    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_1
.end method

.method public scrollToTop(Landroid/widget/ListView;)V
    .locals 1
    .param p1, "list"    # Landroid/widget/ListView;

    .prologue
    .line 173
    iget-object v0, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->sectionMarker:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 175
    :goto_0
    return-void

    .line 174
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0
.end method

.method public setFriendCounterListener(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "l"    # Ljava/lang/Runnable;

    .prologue
    .line 326
    iput-object p1, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->friendCounterChanged:Ljava/lang/Runnable;

    return-void
.end method

.method public setOnlyShowAvailable(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "av"    # Ljava/lang/Boolean;

    .prologue
    .line 167
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-boolean v1, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->onlyShowAvailable:Z

    if-ne v0, v1, :cond_0

    .line 170
    :goto_0
    return-void

    .line 168
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->onlyShowAvailable:Z

    .line 169
    invoke-direct {p0}, Lbe/gentgo/tetsuki/PlayersListAdapter;->filterAndDisplayCompletedRequest()V

    goto :goto_0
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 207
    const/4 v0, 0x0

    iput-object v0, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->registeredObserver:Landroid/database/DataSetObserver;

    return-void
.end method

.method public updateRanks(I)V
    .locals 7
    .param p1, "NrOfFriendsOnTop"    # I

    .prologue
    const/4 v5, 0x0

    .line 147
    iget-object v4, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->sectionMarker:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 148
    iget-object v4, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->sortedPlayers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 150
    if-eqz p1, :cond_0

    iget-object v4, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->sectionMarker:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    :cond_0
    const/4 v3, 0x0

    .line 152
    .local v3, "section":I
    move v0, p1

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->sortedPlayers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v0, v4, :cond_3

    .line 163
    .end local v0    # "i":I
    .end local v3    # "section":I
    :cond_1
    iget-object v4, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->registeredObserver:Landroid/database/DataSetObserver;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->registeredObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v4}, Landroid/database/DataSetObserver;->onChanged()V

    .line 164
    :cond_2
    return-void

    .line 154
    .restart local v0    # "i":I
    .restart local v3    # "section":I
    :cond_3
    iget-object v4, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->sortedPlayers:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbe/gentgo/tetsuki/Player;

    invoke-virtual {v4}, Lbe/gentgo/tetsuki/Player;->getRankSection()I

    move-result v2

    .line 155
    .local v2, "s":I
    if-eq v0, p1, :cond_5

    if-ne v3, v2, :cond_5

    move v1, v5

    .line 156
    .local v1, "newSection":Z
    :goto_1
    if-eqz v1, :cond_4

    .line 158
    move v3, v2

    .line 159
    iget-object v4, p0, Lbe/gentgo/tetsuki/PlayersListAdapter;->sectionMarker:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
    .end local v1    # "newSection":Z
    :cond_5
    const/4 v1, 0x1

    goto :goto_1
.end method
