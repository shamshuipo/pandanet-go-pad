.class public Lbe/gentgo/tetsuki/Main;
.super Lbe/gentgo/tetsuki/TetsukiActivity;
.source "Main.java"

# interfaces
.implements Lbe/gentgo/tetsuki/Dispatcher;


# static fields
.field private static appInitialized:Z

.field private static connectionListener:Lbe/gentgo/tetsuki/Listener;

.field private static friendListener:Ljava/lang/Runnable;

.field private static invitationManager:Lbe/gentgo/tetsuki/InvitationManager;

.field private static invitationsFragment:Lbe/gentgo/tetsuki/PlayFragment;

.field private static jniLoaded:Z

.field private static sInstance:Lbe/gentgo/tetsuki/Main;

.field private static sMainServer:Lbe/gentgo/tetsuki/Server;

.field private static screenDiagonal:D


# instance fields
.field private archiveFragment:Lbe/gentgo/tetsuki/ArchiveFragment;

.field private contentFragment:Landroid/app/Fragment;

.field private homeFragment:Lbe/gentgo/tetsuki/HomeFragment;

.field private observeFragment:Lbe/gentgo/tetsuki/ObserveFragment;

.field private openGameOfPlayer:Z

.field private pingHandler:Landroid/os/Handler;

.field private pingRunnable:Ljava/lang/Runnable;

.field private playerToGoTo:Ljava/lang/String;

.field private playersListFragment:Lbe/gentgo/tetsuki/PlayersListFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 96
    sput-boolean v0, Lbe/gentgo/tetsuki/Main;->appInitialized:Z

    .line 97
    sput-boolean v0, Lbe/gentgo/tetsuki/Main;->jniLoaded:Z

    .line 515
    const-wide/16 v0, 0x0

    sput-wide v0, Lbe/gentgo/tetsuki/Main;->screenDiagonal:D

    .line 581
    new-instance v0, Lbe/gentgo/tetsuki/Main$2;

    invoke-direct {v0}, Lbe/gentgo/tetsuki/Main$2;-><init>()V

    sput-object v0, Lbe/gentgo/tetsuki/Main;->connectionListener:Lbe/gentgo/tetsuki/Listener;

    .line 586
    new-instance v0, Lbe/gentgo/tetsuki/Main$3;

    invoke-direct {v0}, Lbe/gentgo/tetsuki/Main$3;-><init>()V

    sput-object v0, Lbe/gentgo/tetsuki/Main;->friendListener:Ljava/lang/Runnable;

    .line 588
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Lbe/gentgo/tetsuki/TetsukiActivity;-><init>()V

    .line 335
    iput-object v1, p0, Lbe/gentgo/tetsuki/Main;->playerToGoTo:Ljava/lang/String;

    .line 336
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbe/gentgo/tetsuki/Main;->openGameOfPlayer:Z

    .line 558
    iput-object v1, p0, Lbe/gentgo/tetsuki/Main;->contentFragment:Landroid/app/Fragment;

    .line 563
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lbe/gentgo/tetsuki/Main;->pingHandler:Landroid/os/Handler;

    .line 565
    new-instance v0, Lbe/gentgo/tetsuki/Main$1;

    invoke-direct {v0, p0}, Lbe/gentgo/tetsuki/Main$1;-><init>(Lbe/gentgo/tetsuki/Main;)V

    iput-object v0, p0, Lbe/gentgo/tetsuki/Main;->pingRunnable:Ljava/lang/Runnable;

    .line 31
    return-void
.end method

.method static synthetic access$0()Lbe/gentgo/tetsuki/Server;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lbe/gentgo/tetsuki/Main;->sMainServer:Lbe/gentgo/tetsuki/Server;

    return-object v0
.end method

.method static synthetic access$1(Lbe/gentgo/tetsuki/Main;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lbe/gentgo/tetsuki/Main;->pingHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Lbe/gentgo/tetsuki/Main;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lbe/gentgo/tetsuki/Main;->pingRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3()Lbe/gentgo/tetsuki/Main;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lbe/gentgo/tetsuki/Main;->sInstance:Lbe/gentgo/tetsuki/Main;

    return-object v0
.end method

.method static synthetic access$4(Lbe/gentgo/tetsuki/Main;)V
    .locals 0

    .prologue
    .line 573
    invoke-direct {p0}, Lbe/gentgo/tetsuki/Main;->connectionChanged()V

    return-void
.end method

.method static synthetic access$5(Lbe/gentgo/tetsuki/Main;)Lbe/gentgo/tetsuki/HomeFragment;
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lbe/gentgo/tetsuki/Main;->homeFragment:Lbe/gentgo/tetsuki/HomeFragment;

    return-object v0
.end method

.method static synthetic access$6()Lbe/gentgo/tetsuki/InvitationManager;
    .locals 1

    .prologue
    .line 421
    sget-object v0, Lbe/gentgo/tetsuki/Main;->invitationManager:Lbe/gentgo/tetsuki/InvitationManager;

    return-object v0
.end method

.method static synthetic access$7(Lbe/gentgo/tetsuki/Main;)Lbe/gentgo/tetsuki/PlayersListFragment;
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lbe/gentgo/tetsuki/Main;->playersListFragment:Lbe/gentgo/tetsuki/PlayersListFragment;

    return-object v0
.end method

.method static synthetic access$8(Lbe/gentgo/tetsuki/Main;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lbe/gentgo/tetsuki/Main;->playerToGoTo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9(Lbe/gentgo/tetsuki/Main;)Z
    .locals 1

    .prologue
    .line 336
    iget-boolean v0, p0, Lbe/gentgo/tetsuki/Main;->openGameOfPlayer:Z

    return v0
.end method

.method private static clearActivityBackStack()V
    .locals 4

    .prologue
    .line 509
    sget-object v1, Lbe/gentgo/tetsuki/Main;->sInstance:Lbe/gentgo/tetsuki/Main;

    if-nez v1, :cond_0

    .line 513
    .local v0, "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 510
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    sget-object v2, Lbe/gentgo/tetsuki/Main;->sInstance:Lbe/gentgo/tetsuki/Main;

    const-class v3, Lbe/gentgo/tetsuki/Main;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 511
    .restart local v0    # "intent":Landroid/content/Intent;
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 512
    sget-object v1, Lbe/gentgo/tetsuki/Main;->sInstance:Lbe/gentgo/tetsuki/Main;

    invoke-virtual {v1, v0}, Lbe/gentgo/tetsuki/Main;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private connectionChanged()V
    .locals 6

    .prologue
    .line 574
    iget-object v1, p0, Lbe/gentgo/tetsuki/Main;->pingHandler:Landroid/os/Handler;

    iget-object v2, p0, Lbe/gentgo/tetsuki/Main;->pingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 575
    sget-object v1, Lbe/gentgo/tetsuki/Main;->sMainServer:Lbe/gentgo/tetsuki/Server;

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/Server;->getErrorState()I

    move-result v0

    .line 576
    .local v0, "errorState":I
    if-nez v0, :cond_0

    .line 577
    iget-object v1, p0, Lbe/gentgo/tetsuki/Main;->pingHandler:Landroid/os/Handler;

    iget-object v2, p0, Lbe/gentgo/tetsuki/Main;->pingRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x7530

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 579
    :cond_0
    return-void
.end method

.method public static getDispatcher()Lbe/gentgo/tetsuki/Dispatcher;
    .locals 1

    .prologue
    .line 309
    sget-object v0, Lbe/gentgo/tetsuki/Main;->sInstance:Lbe/gentgo/tetsuki/Main;

    return-object v0
.end method

.method public static getInvitationManager()Lbe/gentgo/tetsuki/InvitationManager;
    .locals 1

    .prologue
    .line 555
    sget-object v0, Lbe/gentgo/tetsuki/Main;->invitationManager:Lbe/gentgo/tetsuki/InvitationManager;

    return-object v0
.end method

.method public static getMainActionBar()Landroid/view/View;
    .locals 2

    .prologue
    .line 548
    sget-object v0, Lbe/gentgo/tetsuki/Main;->sInstance:Lbe/gentgo/tetsuki/Main;

    const v1, 0x7f0b0017

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/Main;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static getMainServer()Lbe/gentgo/tetsuki/Server;
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lbe/gentgo/tetsuki/Main;->sMainServer:Lbe/gentgo/tetsuki/Server;

    return-object v0
.end method

.method public static getNumberOfOnlineFriends()I
    .locals 1

    .prologue
    .line 552
    sget-object v0, Lbe/gentgo/tetsuki/Main;->sInstance:Lbe/gentgo/tetsuki/Main;

    iget-object v0, v0, Lbe/gentgo/tetsuki/Main;->playersListFragment:Lbe/gentgo/tetsuki/PlayersListFragment;

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/PlayersListFragment;->getAdapter()Lbe/gentgo/tetsuki/PlayersListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/PlayersListAdapter;->getNumberOfOnlineFriends()I

    move-result v0

    return v0
.end method

.method public static getScreenDiagonalInInch(Landroid/app/Activity;)D
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const-wide/16 v4, 0x0

    .line 518
    sget-wide v6, Lbe/gentgo/tetsuki/Main;->screenDiagonal:D

    cmpl-double v6, v6, v4

    if-nez v6, :cond_1

    .line 519
    if-nez p0, :cond_0

    .line 529
    :goto_0
    return-wide v4

    .line 520
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 521
    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 522
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 524
    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    div-int v3, v4, v5

    .line 525
    .local v3, "width":I
    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v5, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    div-int v2, v4, v5

    .line 527
    .local v2, "height":I
    mul-int v4, v3, v3

    mul-int v5, v2, v2

    add-int/2addr v4, v5

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    sput-wide v4, Lbe/gentgo/tetsuki/Main;->screenDiagonal:D

    .line 529
    .end local v0    # "display":Landroid/view/Display;
    .end local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v2    # "height":I
    .end local v3    # "width":I
    :cond_1
    sget-wide v4, Lbe/gentgo/tetsuki/Main;->screenDiagonal:D

    goto :goto_0
.end method

.method private static getScreenWidthInDP()D
    .locals 4

    .prologue
    .line 533
    sget-object v2, Lbe/gentgo/tetsuki/Main;->sInstance:Lbe/gentgo/tetsuki/Main;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    .line 537
    .local v0, "display":Landroid/view/Display;
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    :goto_0
    return-wide v2

    .line 534
    .end local v0    # "display":Landroid/view/Display;
    .end local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    :cond_0
    sget-object v2, Lbe/gentgo/tetsuki/Main;->sInstance:Lbe/gentgo/tetsuki/Main;

    invoke-virtual {v2}, Lbe/gentgo/tetsuki/Main;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 535
    .restart local v0    # "display":Landroid/view/Display;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 536
    .restart local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 537
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    float-to-double v2, v2

    goto :goto_0
.end method

.method static initApp(Landroid/app/Activity;Z)V
    .locals 13
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "tryToConnect"    # Z

    .prologue
    .line 113
    sget-boolean v0, Lbe/gentgo/tetsuki/Main;->appInitialized:Z

    if-nez v0, :cond_4

    .line 114
    const/4 v0, 0x1

    sput-boolean v0, Lbe/gentgo/tetsuki/Main;->appInitialized:Z

    .line 115
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->loadJNI()V

    .line 116
    const/4 v8, 0x0

    .line 117
    .local v8, "japaneseDefaults":Z
    const v0, 0x7f080007

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v8, 0x1

    .line 120
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "Settings"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    const-string v2, "Preferences"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    .line 122
    .local v9, "prefsFile":Ljava/lang/String;
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v8, v0, v9}, Lbe/gentgo/tetsuki/Preferences;->init(ZLjava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->isTablet()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-static {v0}, Lbe/gentgo/tetsuki/Preferences;->setZoom(Z)V

    .line 124
    :cond_1
    invoke-static {}, Lbe/gentgo/tetsuki/Preferences;->japaneseRanking()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 126
    const/4 v0, -0x2

    invoke-static {v0}, Lbe/gentgo/tetsuki/Player;->setShodanRank(I)V

    .line 129
    :cond_2
    const-string v0, "Archive"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbe/gentgo/tetsuki/Document;->setGamesPath(Ljava/lang/String;)V

    .line 133
    const v0, 0x7f080070

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 134
    const v1, 0x7f080008

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 135
    const v2, 0x7f080009

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 136
    const v3, 0x7f08000a

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 137
    const v4, 0x7f08000b

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 138
    const v5, 0x7f08000c

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 139
    const v6, 0x7f08000d

    invoke-virtual {p0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 132
    invoke-static/range {v0 .. v6}, Lbe/gentgo/tetsuki/GameSettings;->setLocalizedKomiStrings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const v0, 0x7f080055

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 143
    const v1, 0x7f080056

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 144
    const v2, 0x7f080054

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 145
    const v3, 0x7f080057

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 146
    const v4, 0x7f080100

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 147
    const v5, 0x7f080101

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 148
    const v6, 0x7f080102

    invoke-virtual {p0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 149
    const v7, 0x7f080103

    invoke-virtual {p0, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 141
    invoke-static/range {v0 .. v7}, Lbe/gentgo/tetsuki/Player;->setLocalizedRanks(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const/4 v0, 0x1

    const v1, 0x7f0800f6

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbe/gentgo/tetsuki/Player;->setLocalizedDanRank(ILjava/lang/String;)V

    .line 153
    const/4 v0, 0x2

    const v1, 0x7f0800f7

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbe/gentgo/tetsuki/Player;->setLocalizedDanRank(ILjava/lang/String;)V

    .line 154
    const/4 v0, 0x3

    const v1, 0x7f0800f8

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbe/gentgo/tetsuki/Player;->setLocalizedDanRank(ILjava/lang/String;)V

    .line 155
    const/4 v0, 0x4

    const v1, 0x7f0800f9

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbe/gentgo/tetsuki/Player;->setLocalizedDanRank(ILjava/lang/String;)V

    .line 156
    const/4 v0, 0x5

    const v1, 0x7f0800fa

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbe/gentgo/tetsuki/Player;->setLocalizedDanRank(ILjava/lang/String;)V

    .line 157
    const/4 v0, 0x6

    const v1, 0x7f0800fb

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbe/gentgo/tetsuki/Player;->setLocalizedDanRank(ILjava/lang/String;)V

    .line 158
    const/4 v0, 0x7

    const v1, 0x7f0800fc

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbe/gentgo/tetsuki/Player;->setLocalizedDanRank(ILjava/lang/String;)V

    .line 159
    const/16 v0, 0x8

    const v1, 0x7f0800fd

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbe/gentgo/tetsuki/Player;->setLocalizedDanRank(ILjava/lang/String;)V

    .line 160
    const/16 v0, 0x9

    const v1, 0x7f0800fe

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbe/gentgo/tetsuki/Player;->setLocalizedDanRank(ILjava/lang/String;)V

    .line 161
    const/16 v0, 0xa

    const v1, 0x7f0800ff

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbe/gentgo/tetsuki/Player;->setLocalizedDanRank(ILjava/lang/String;)V

    .line 162
    new-instance v0, Lbe/gentgo/tetsuki/Server;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbe/gentgo/tetsuki/Server;-><init>(Z)V

    sput-object v0, Lbe/gentgo/tetsuki/Main;->sMainServer:Lbe/gentgo/tetsuki/Server;

    .line 163
    if-eqz p1, :cond_3

    sget-object v0, Lbe/gentgo/tetsuki/Main;->sMainServer:Lbe/gentgo/tetsuki/Server;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/Server;->connectFromPreferences(Z)V

    .line 164
    :cond_3
    sget-object v0, Lbe/gentgo/tetsuki/Main;->sMainServer:Lbe/gentgo/tetsuki/Server;

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/Server;->observeError()Lbe/gentgo/tetsuki/Messenger;

    move-result-object v0

    sget-object v1, Lbe/gentgo/tetsuki/Main;->connectionListener:Lbe/gentgo/tetsuki/Listener;

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/Messenger;->addListener(Lbe/gentgo/tetsuki/Listener;)V

    .line 166
    new-instance v0, Lbe/gentgo/tetsuki/InvitationManager;

    invoke-direct {v0}, Lbe/gentgo/tetsuki/InvitationManager;-><init>()V

    sput-object v0, Lbe/gentgo/tetsuki/Main;->invitationManager:Lbe/gentgo/tetsuki/InvitationManager;

    .line 167
    new-instance v0, Lbe/gentgo/tetsuki/PlayFragment;

    sget-object v1, Lbe/gentgo/tetsuki/Main;->invitationManager:Lbe/gentgo/tetsuki/InvitationManager;

    invoke-direct {v0, v1}, Lbe/gentgo/tetsuki/PlayFragment;-><init>(Lbe/gentgo/tetsuki/InvitationManager;)V

    sput-object v0, Lbe/gentgo/tetsuki/Main;->invitationsFragment:Lbe/gentgo/tetsuki/PlayFragment;

    .line 170
    new-instance v0, Lbe/gentgo/tetsuki/Main$4;

    invoke-direct {v0}, Lbe/gentgo/tetsuki/Main$4;-><init>()V

    .line 175
    const v1, 0xdbba0

    .line 170
    invoke-static {v0, v1}, Lbe/gentgo/tetsuki/TetsukiActivity;->setOnBackgroundListener(Ljava/lang/Runnable;I)V

    .line 179
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lbe/gentgo/tetsuki/SoundManager;->initSounds(Landroid/content/Context;Z)V

    .line 181
    const/16 v0, 0xc

    new-array v11, v0, [I

    fill-array-data v11, :array_0

    .line 182
    .local v11, "sounds":[I
    array-length v1, v11

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_5

    .line 186
    sget-object v12, Landroid/os/StrictMode$ThreadPolicy;->LAX:Landroid/os/StrictMode$ThreadPolicy;

    .line 187
    .local v12, "tp":Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {v12}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 189
    .end local v8    # "japaneseDefaults":Z
    .end local v9    # "prefsFile":Ljava/lang/String;
    .end local v11    # "sounds":[I
    .end local v12    # "tp":Landroid/os/StrictMode$ThreadPolicy;
    :cond_4
    return-void

    .line 182
    .restart local v8    # "japaneseDefaults":Z
    .restart local v9    # "prefsFile":Ljava/lang/String;
    .restart local v11    # "sounds":[I
    :cond_5
    aget v10, v11, v0

    .local v10, "s":I
    invoke-static {v10}, Lbe/gentgo/tetsuki/SoundManager;->addSound(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 181
    nop

    :array_0
    .array-data 4
        0x7f060000
        0x7f060001
        0x7f060002
        0x7f060003
        0x7f060006
        0x7f060007
        0x7f060008
        0x7f060009
        0x7f06000a
        0x7f06000b
        0x7f06000c
        0x7f06000d
    .end array-data
.end method

.method public static isTablet()Z
    .locals 4

    .prologue
    .line 543
    sget-object v0, Lbe/gentgo/tetsuki/Main;->sInstance:Lbe/gentgo/tetsuki/Main;

    invoke-static {v0}, Lbe/gentgo/tetsuki/Main;->getScreenDiagonalInInch(Landroid/app/Activity;)D

    move-result-wide v0

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static loadJNI()V
    .locals 1

    .prologue
    .line 101
    sget-boolean v0, Lbe/gentgo/tetsuki/Main;->jniLoaded:Z

    if-nez v0, :cond_0

    .line 102
    const-string v0, "tetsuki"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 103
    const/4 v0, 0x1

    sput-boolean v0, Lbe/gentgo/tetsuki/Main;->jniLoaded:Z

    .line 105
    :cond_0
    return-void
.end method

.method public static screenIsFitForLandscape()Z
    .locals 1

    .prologue
    .line 192
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->isTablet()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public canGoToMyGame()Z
    .locals 1

    .prologue
    .line 409
    invoke-static {}, Lbe/gentgo/tetsuki/GamePlayActivity;->hasGameToShow()Z

    move-result v0

    return v0
.end method

.method public getTitleBar()Landroid/view/View;
    .locals 1

    .prologue
    .line 325
    const v0, 0x7f0b0017

    invoke-virtual {p0, v0}, Lbe/gentgo/tetsuki/Main;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public goToArchive()V
    .locals 2

    .prologue
    .line 370
    iget-object v0, p0, Lbe/gentgo/tetsuki/Main;->archiveFragment:Lbe/gentgo/tetsuki/ArchiveFragment;

    if-nez v0, :cond_0

    .line 371
    new-instance v0, Lbe/gentgo/tetsuki/ArchiveFragment;

    invoke-direct {v0}, Lbe/gentgo/tetsuki/ArchiveFragment;-><init>()V

    iput-object v0, p0, Lbe/gentgo/tetsuki/Main;->archiveFragment:Lbe/gentgo/tetsuki/ArchiveFragment;

    .line 373
    :cond_0
    iget-object v0, p0, Lbe/gentgo/tetsuki/Main;->archiveFragment:Lbe/gentgo/tetsuki/ArchiveFragment;

    invoke-virtual {p0, v0}, Lbe/gentgo/tetsuki/Main;->setContentFragment(Landroid/app/Fragment;)V

    .line 374
    iget-object v0, p0, Lbe/gentgo/tetsuki/Main;->homeFragment:Lbe/gentgo/tetsuki/HomeFragment;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/HomeFragment;->setSelection(I)V

    .line 375
    return-void
.end method

.method public goToDailyProblem()V
    .locals 3

    .prologue
    .line 454
    sget-object v1, Lbe/gentgo/tetsuki/Main;->sMainServer:Lbe/gentgo/tetsuki/Server;

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/Server;->isGuestLogin()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 459
    :goto_0
    return-void

    .line 455
    :cond_0
    new-instance v0, Lbe/gentgo/tetsuki/WebFragment;

    const v1, 0x7f0800e1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbe/gentgo/tetsuki/WebFragment;-><init>(ILjava/lang/String;)V

    .line 456
    .local v0, "frag":Lbe/gentgo/tetsuki/WebFragment;
    invoke-virtual {p0, v0}, Lbe/gentgo/tetsuki/Main;->setContentFragment(Landroid/app/Fragment;)V

    .line 457
    invoke-static {}, Lbe/gentgo/tetsuki/Preferences;->getLoginID()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lbe/gentgo/tetsuki/Preferences;->getLoginPassword()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lbe/gentgo/tetsuki/LoadMemberPageTask;->makeForDailyProblem(Landroid/content/Context;Lbe/gentgo/tetsuki/WebFragment;Ljava/lang/String;Ljava/lang/String;)Lbe/gentgo/tetsuki/LoadMemberPageTask;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lbe/gentgo/tetsuki/LoadMemberPageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 458
    iget-object v1, p0, Lbe/gentgo/tetsuki/Main;->homeFragment:Lbe/gentgo/tetsuki/HomeFragment;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lbe/gentgo/tetsuki/HomeFragment;->setSelection(I)V

    goto :goto_0
.end method

.method public goToDocument(Lbe/gentgo/tetsuki/Document;)V
    .locals 4
    .param p1, "d"    # Lbe/gentgo/tetsuki/Document;

    .prologue
    .line 491
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->clearActivityBackStack()V

    .line 493
    invoke-static {p1}, Lbe/gentgo/tetsuki/GameRecordActivity;->setDocument(Lbe/gentgo/tetsuki/Document;)V

    .line 494
    iget-object v0, p0, Lbe/gentgo/tetsuki/Main;->pingHandler:Landroid/os/Handler;

    new-instance v1, Lbe/gentgo/tetsuki/Main$11;

    invoke-direct {v1, p0}, Lbe/gentgo/tetsuki/Main$11;-><init>(Lbe/gentgo/tetsuki/Main;)V

    .line 498
    const-wide/16 v2, 0x64

    .line 494
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 499
    return-void
.end method

.method public goToGame(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 379
    if-gez p1, :cond_0

    .line 392
    :goto_0
    return-void

    .line 380
    :cond_0
    sget-object v1, Lbe/gentgo/tetsuki/Main;->sMainServer:Lbe/gentgo/tetsuki/Server;

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/Server;->getMyGameID()I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 382
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/Main;->goToMyGame()V

    goto :goto_0

    .line 386
    :cond_1
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->clearActivityBackStack()V

    .line 388
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lbe/gentgo/tetsuki/GameObserveActivity;->setStaticGameAndServer(ILbe/gentgo/tetsuki/Server;)V

    .line 389
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    sget-object v2, Lbe/gentgo/tetsuki/Main;->sInstance:Lbe/gentgo/tetsuki/Main;

    const-class v3, Lbe/gentgo/tetsuki/GameObserveActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 391
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lbe/gentgo/tetsuki/Main;->sInstance:Lbe/gentgo/tetsuki/Main;

    invoke-virtual {v1, v0}, Lbe/gentgo/tetsuki/Main;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public goToGameList()V
    .locals 2

    .prologue
    .line 319
    iget-object v0, p0, Lbe/gentgo/tetsuki/Main;->observeFragment:Lbe/gentgo/tetsuki/ObserveFragment;

    if-nez v0, :cond_0

    new-instance v0, Lbe/gentgo/tetsuki/ObserveFragment;

    invoke-direct {v0}, Lbe/gentgo/tetsuki/ObserveFragment;-><init>()V

    iput-object v0, p0, Lbe/gentgo/tetsuki/Main;->observeFragment:Lbe/gentgo/tetsuki/ObserveFragment;

    .line 320
    :cond_0
    iget-object v0, p0, Lbe/gentgo/tetsuki/Main;->homeFragment:Lbe/gentgo/tetsuki/HomeFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/HomeFragment;->setSelection(I)V

    .line 321
    iget-object v0, p0, Lbe/gentgo/tetsuki/Main;->observeFragment:Lbe/gentgo/tetsuki/ObserveFragment;

    invoke-virtual {p0, v0}, Lbe/gentgo/tetsuki/Main;->setContentFragment(Landroid/app/Fragment;)V

    .line 322
    return-void
.end method

.method public goToGameOnServer(Lbe/gentgo/tetsuki/ObserveHints;)V
    .locals 5
    .param p1, "hints"    # Lbe/gentgo/tetsuki/ObserveHints;

    .prologue
    .line 396
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->clearActivityBackStack()V

    .line 398
    new-instance v0, Lbe/gentgo/tetsuki/Server;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lbe/gentgo/tetsuki/Server;-><init>(Z)V

    .line 399
    .local v0, "gateway":Lbe/gentgo/tetsuki/Server;
    invoke-virtual {v0, p1}, Lbe/gentgo/tetsuki/Server;->addObserveHints(Lbe/gentgo/tetsuki/ObserveHints;)V

    .line 400
    invoke-virtual {v0, p1}, Lbe/gentgo/tetsuki/Server;->connectFromObserveHints(Lbe/gentgo/tetsuki/ObserveHints;)V

    .line 402
    const/4 v2, -0x1

    invoke-static {v2, v0}, Lbe/gentgo/tetsuki/GameObserveActivity;->setStaticGameAndServer(ILbe/gentgo/tetsuki/Server;)V

    .line 403
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    sget-object v3, Lbe/gentgo/tetsuki/Main;->sInstance:Lbe/gentgo/tetsuki/Main;

    const-class v4, Lbe/gentgo/tetsuki/GameObserveActivity;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    .line 404
    .local v1, "intent":Landroid/content/Intent;
    sget-object v2, Lbe/gentgo/tetsuki/Main;->sInstance:Lbe/gentgo/tetsuki/Main;

    invoke-virtual {v2, v1}, Lbe/gentgo/tetsuki/Main;->startActivity(Landroid/content/Intent;)V

    .line 405
    return-void
.end method

.method public goToHelp()V
    .locals 3

    .prologue
    .line 477
    new-instance v0, Lbe/gentgo/tetsuki/WebFragment;

    const v1, 0x7f08015e

    const v2, 0x7f080004

    invoke-virtual {p0, v2}, Lbe/gentgo/tetsuki/Main;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lbe/gentgo/tetsuki/WebFragment;-><init>(ILjava/lang/String;)V

    .line 478
    .local v0, "helpFragment":Landroid/app/Fragment;
    invoke-virtual {p0, v0}, Lbe/gentgo/tetsuki/Main;->setContentFragment(Landroid/app/Fragment;)V

    .line 479
    iget-object v1, p0, Lbe/gentgo/tetsuki/Main;->homeFragment:Lbe/gentgo/tetsuki/HomeFragment;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lbe/gentgo/tetsuki/HomeFragment;->setSelection(I)V

    .line 480
    return-void
.end method

.method public goToHome()V
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lbe/gentgo/tetsuki/Main;->homeFragment:Lbe/gentgo/tetsuki/HomeFragment;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/HomeFragment;->setSelection(I)V

    .line 314
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbe/gentgo/tetsuki/Main;->setContentFragment(Landroid/app/Fragment;)V

    .line 315
    return-void
.end method

.method public goToInvitations()V
    .locals 2

    .prologue
    .line 425
    sget-object v0, Lbe/gentgo/tetsuki/Main;->invitationsFragment:Lbe/gentgo/tetsuki/PlayFragment;

    invoke-virtual {p0, v0}, Lbe/gentgo/tetsuki/Main;->setContentFragment(Landroid/app/Fragment;)V

    .line 426
    iget-object v0, p0, Lbe/gentgo/tetsuki/Main;->homeFragment:Lbe/gentgo/tetsuki/HomeFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/HomeFragment;->setSelection(I)V

    .line 427
    return-void
.end method

.method public goToMyGame()V
    .locals 4

    .prologue
    .line 414
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->clearActivityBackStack()V

    .line 416
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    sget-object v2, Lbe/gentgo/tetsuki/Main;->sInstance:Lbe/gentgo/tetsuki/Main;

    const-class v3, Lbe/gentgo/tetsuki/GamePlayActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 417
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lbe/gentgo/tetsuki/Main;->sInstance:Lbe/gentgo/tetsuki/Main;

    invoke-virtual {v1, v0}, Lbe/gentgo/tetsuki/Main;->startActivity(Landroid/content/Intent;)V

    .line 418
    return-void
.end method

.method public goToMyGames()V
    .locals 0

    .prologue
    .line 504
    return-void
.end method

.method public goToMyProgress()V
    .locals 3

    .prologue
    .line 445
    sget-object v1, Lbe/gentgo/tetsuki/Main;->sMainServer:Lbe/gentgo/tetsuki/Server;

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/Server;->isGuestLogin()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 450
    :goto_0
    return-void

    .line 446
    :cond_0
    new-instance v0, Lbe/gentgo/tetsuki/WebFragment;

    const v1, 0x7f0800df

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbe/gentgo/tetsuki/WebFragment;-><init>(ILjava/lang/String;)V

    .line 447
    .local v0, "frag":Lbe/gentgo/tetsuki/WebFragment;
    invoke-virtual {p0, v0}, Lbe/gentgo/tetsuki/Main;->setContentFragment(Landroid/app/Fragment;)V

    .line 448
    invoke-static {}, Lbe/gentgo/tetsuki/Preferences;->getLoginID()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lbe/gentgo/tetsuki/Preferences;->getLoginPassword()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lbe/gentgo/tetsuki/LoadMemberPageTask;->makeForMyProgress(Landroid/content/Context;Lbe/gentgo/tetsuki/WebFragment;Ljava/lang/String;Ljava/lang/String;)Lbe/gentgo/tetsuki/LoadMemberPageTask;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lbe/gentgo/tetsuki/LoadMemberPageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 449
    iget-object v1, p0, Lbe/gentgo/tetsuki/Main;->homeFragment:Lbe/gentgo/tetsuki/HomeFragment;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lbe/gentgo/tetsuki/HomeFragment;->setSelection(I)V

    goto :goto_0
.end method

.method public goToNetSocial()V
    .locals 1

    .prologue
    .line 463
    invoke-static {}, Lbe/gentgo/tetsuki/Preferences;->getLoginID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbe/gentgo/tetsuki/Main;->goToPlayerPage(Ljava/lang/String;)V

    .line 464
    return-void
.end method

.method public goToNews()V
    .locals 3

    .prologue
    .line 431
    new-instance v0, Lbe/gentgo/tetsuki/WebFragment;

    const v1, 0x7f0800dc

    const v2, 0x7f080001

    invoke-virtual {p0, v2}, Lbe/gentgo/tetsuki/Main;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lbe/gentgo/tetsuki/WebFragment;-><init>(ILjava/lang/String;)V

    .line 432
    .local v0, "newsFragment":Landroid/app/Fragment;
    invoke-virtual {p0, v0}, Lbe/gentgo/tetsuki/Main;->setContentFragment(Landroid/app/Fragment;)V

    .line 433
    iget-object v1, p0, Lbe/gentgo/tetsuki/Main;->homeFragment:Lbe/gentgo/tetsuki/HomeFragment;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lbe/gentgo/tetsuki/HomeFragment;->setSelection(I)V

    .line 434
    return-void
.end method

.method public goToPandanetSite()V
    .locals 3

    .prologue
    .line 484
    const v2, 0x7f080005

    invoke-virtual {p0, v2}, Lbe/gentgo/tetsuki/Main;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 485
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 486
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lbe/gentgo/tetsuki/Main;->startActivity(Landroid/content/Intent;)V

    .line 487
    return-void
.end method

.method public goToPlayer(Ljava/lang/String;Z)Z
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "openGame"    # Z

    .prologue
    .line 342
    iget-object v1, p0, Lbe/gentgo/tetsuki/Main;->playersListFragment:Lbe/gentgo/tetsuki/PlayersListFragment;

    invoke-virtual {v1, p1}, Lbe/gentgo/tetsuki/PlayersListFragment;->canGoToPlayer(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 365
    :goto_0
    return v1

    .line 343
    :cond_0
    iput-boolean p2, p0, Lbe/gentgo/tetsuki/Main;->openGameOfPlayer:Z

    .line 344
    iput-object p1, p0, Lbe/gentgo/tetsuki/Main;->playerToGoTo:Ljava/lang/String;

    .line 345
    new-instance v0, Lbe/gentgo/tetsuki/Main$10;

    invoke-direct {v0, p0}, Lbe/gentgo/tetsuki/Main$10;-><init>(Lbe/gentgo/tetsuki/Main;)V

    .line 359
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->clearActivityBackStack()V

    .line 360
    iget-object v1, p0, Lbe/gentgo/tetsuki/Main;->contentFragment:Landroid/app/Fragment;

    iget-object v2, p0, Lbe/gentgo/tetsuki/Main;->playersListFragment:Lbe/gentgo/tetsuki/PlayersListFragment;

    if-eq v1, v2, :cond_1

    .line 361
    iget-object v1, p0, Lbe/gentgo/tetsuki/Main;->pingHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 365
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 363
    :cond_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1
.end method

.method public goToPlayerList()V
    .locals 2

    .prologue
    .line 330
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->clearActivityBackStack()V

    .line 331
    iget-object v0, p0, Lbe/gentgo/tetsuki/Main;->homeFragment:Lbe/gentgo/tetsuki/HomeFragment;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/HomeFragment;->setSelection(I)V

    .line 332
    iget-object v0, p0, Lbe/gentgo/tetsuki/Main;->playersListFragment:Lbe/gentgo/tetsuki/PlayersListFragment;

    invoke-virtual {p0, v0}, Lbe/gentgo/tetsuki/Main;->setContentFragment(Landroid/app/Fragment;)V

    .line 333
    return-void
.end method

.method public goToPlayerPage(Ljava/lang/String;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 468
    sget-object v1, Lbe/gentgo/tetsuki/Main;->sMainServer:Lbe/gentgo/tetsuki/Server;

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/Server;->isGuestLogin()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 473
    :goto_0
    return-void

    .line 469
    :cond_0
    new-instance v0, Lbe/gentgo/tetsuki/WebFragment;

    const v1, 0x7f0800dd

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbe/gentgo/tetsuki/WebFragment;-><init>(ILjava/lang/String;)V

    .line 470
    .local v0, "frag":Lbe/gentgo/tetsuki/WebFragment;
    invoke-virtual {p0, v0}, Lbe/gentgo/tetsuki/Main;->setContentFragment(Landroid/app/Fragment;)V

    .line 471
    invoke-static {}, Lbe/gentgo/tetsuki/Preferences;->getLoginID()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lbe/gentgo/tetsuki/Preferences;->getLoginPassword()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v1, v2, p1}, Lbe/gentgo/tetsuki/LoadMemberPageTask;->makeForPlayerPage(Landroid/content/Context;Lbe/gentgo/tetsuki/WebFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lbe/gentgo/tetsuki/LoadMemberPageTask;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lbe/gentgo/tetsuki/LoadMemberPageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 472
    iget-object v1, p0, Lbe/gentgo/tetsuki/Main;->homeFragment:Lbe/gentgo/tetsuki/HomeFragment;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lbe/gentgo/tetsuki/HomeFragment;->setSelection(I)V

    goto :goto_0
.end method

.method public goToProDiaries()V
    .locals 3

    .prologue
    .line 438
    new-instance v0, Lbe/gentgo/tetsuki/WebFragment;

    const v1, 0x7f0800de

    const v2, 0x7f080002

    invoke-virtual {p0, v2}, Lbe/gentgo/tetsuki/Main;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lbe/gentgo/tetsuki/WebFragment;-><init>(ILjava/lang/String;)V

    .line 439
    .local v0, "diariesFragment":Landroid/app/Fragment;
    invoke-virtual {p0, v0}, Lbe/gentgo/tetsuki/Main;->setContentFragment(Landroid/app/Fragment;)V

    .line 440
    iget-object v1, p0, Lbe/gentgo/tetsuki/Main;->homeFragment:Lbe/gentgo/tetsuki/HomeFragment;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lbe/gentgo/tetsuki/HomeFragment;->setSelection(I)V

    .line 441
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    .line 275
    iget-object v2, p0, Lbe/gentgo/tetsuki/Main;->contentFragment:Landroid/app/Fragment;

    if-eqz v2, :cond_1

    .line 276
    iget-object v2, p0, Lbe/gentgo/tetsuki/Main;->contentFragment:Landroid/app/Fragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    move-result v1

    .line 277
    .local v1, "poppedSomething":Z
    if-nez v1, :cond_0

    .line 278
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lbe/gentgo/tetsuki/Main;->setContentFragment(Landroid/app/Fragment;)V

    .line 279
    iget-object v2, p0, Lbe/gentgo/tetsuki/Main;->homeFragment:Lbe/gentgo/tetsuki/HomeFragment;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lbe/gentgo/tetsuki/HomeFragment;->setSelection(I)V

    .line 302
    .end local v1    # "poppedSomething":Z
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    sget-object v2, Lbe/gentgo/tetsuki/Main;->sMainServer:Lbe/gentgo/tetsuki/Server;

    invoke-virtual {v2}, Lbe/gentgo/tetsuki/Server;->getErrorState()I

    move-result v2

    if-nez v2, :cond_2

    .line 284
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v2, Lbe/gentgo/tetsuki/Main;->sInstance:Lbe/gentgo/tetsuki/Main;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 285
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f08013d

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 286
    const v2, 0x7f08013e

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 287
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 288
    const v2, 0x7f080039

    new-instance v3, Lbe/gentgo/tetsuki/Main$8;

    invoke-direct {v3, p0}, Lbe/gentgo/tetsuki/Main$8;-><init>(Lbe/gentgo/tetsuki/Main;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 293
    const v2, 0x7f08013f

    new-instance v3, Lbe/gentgo/tetsuki/Main$9;

    invoke-direct {v3, p0}, Lbe/gentgo/tetsuki/Main$9;-><init>(Lbe/gentgo/tetsuki/Main;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 299
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 301
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_2
    invoke-super {p0}, Lbe/gentgo/tetsuki/TetsukiActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 305
    invoke-super {p0, p1}, Lbe/gentgo/tetsuki/TetsukiActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 306
    iget-object v0, p0, Lbe/gentgo/tetsuki/Main;->contentFragment:Landroid/app/Fragment;

    invoke-virtual {p0, v0}, Lbe/gentgo/tetsuki/Main;->setContentFragment(Landroid/app/Fragment;)V

    .line 307
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 202
    sput-object p0, Lbe/gentgo/tetsuki/Main;->sInstance:Lbe/gentgo/tetsuki/Main;

    .line 203
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->loadJNI()V

    .line 205
    invoke-super {p0, p1}, Lbe/gentgo/tetsuki/TetsukiActivity;->onCreate(Landroid/os/Bundle;)V

    .line 207
    invoke-static {p0, v2}, Lbe/gentgo/tetsuki/Main;->initApp(Landroid/app/Activity;Z)V

    .line 208
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->screenIsFitForLandscape()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v2}, Lbe/gentgo/tetsuki/Main;->setRequestedOrientation(I)V

    .line 210
    :cond_0
    invoke-virtual {p0, v2}, Lbe/gentgo/tetsuki/Main;->requestWindowFeature(I)Z

    .line 212
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f030002

    :goto_0
    invoke-virtual {p0, v1}, Lbe/gentgo/tetsuki/Main;->setContentView(I)V

    .line 213
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/Main;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0b0011

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lbe/gentgo/tetsuki/HomeFragment;

    iput-object v1, p0, Lbe/gentgo/tetsuki/Main;->homeFragment:Lbe/gentgo/tetsuki/HomeFragment;

    .line 214
    sget-object v1, Lbe/gentgo/tetsuki/Main;->invitationManager:Lbe/gentgo/tetsuki/InvitationManager;

    new-instance v2, Lbe/gentgo/tetsuki/Main$5;

    invoke-direct {v2, p0}, Lbe/gentgo/tetsuki/Main$5;-><init>(Lbe/gentgo/tetsuki/Main;)V

    invoke-virtual {v1, v2}, Lbe/gentgo/tetsuki/InvitationManager;->addInvitationsChangedListener(Ljava/lang/Runnable;)V

    .line 224
    sget-object v1, Lbe/gentgo/tetsuki/Main;->invitationManager:Lbe/gentgo/tetsuki/InvitationManager;

    new-instance v2, Lbe/gentgo/tetsuki/Main$6;

    invoke-direct {v2, p0}, Lbe/gentgo/tetsuki/Main$6;-><init>(Lbe/gentgo/tetsuki/Main;)V

    invoke-virtual {v1, v2}, Lbe/gentgo/tetsuki/InvitationManager;->setNewInvitationListener(Ljava/lang/Runnable;)V

    .line 234
    iget-object v1, p0, Lbe/gentgo/tetsuki/Main;->homeFragment:Lbe/gentgo/tetsuki/HomeFragment;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lbe/gentgo/tetsuki/HomeFragment;->setSelection(I)V

    .line 235
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lbe/gentgo/tetsuki/Main;->setContentFragment(Landroid/app/Fragment;)V

    .line 237
    const v1, 0x7f0b0018

    invoke-virtual {p0, v1}, Lbe/gentgo/tetsuki/Main;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 238
    .local v0, "homeButton":Landroid/view/View;
    new-instance v1, Lbe/gentgo/tetsuki/Main$7;

    invoke-direct {v1, p0}, Lbe/gentgo/tetsuki/Main$7;-><init>(Lbe/gentgo/tetsuki/Main;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    new-instance v1, Lbe/gentgo/tetsuki/PlayersListFragment;

    invoke-direct {v1}, Lbe/gentgo/tetsuki/PlayersListFragment;-><init>()V

    iput-object v1, p0, Lbe/gentgo/tetsuki/Main;->playersListFragment:Lbe/gentgo/tetsuki/PlayersListFragment;

    .line 247
    iget-object v1, p0, Lbe/gentgo/tetsuki/Main;->playersListFragment:Lbe/gentgo/tetsuki/PlayersListFragment;

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/PlayersListFragment;->getAdapter()Lbe/gentgo/tetsuki/PlayersListAdapter;

    move-result-object v1

    sget-object v2, Lbe/gentgo/tetsuki/Main;->friendListener:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lbe/gentgo/tetsuki/PlayersListAdapter;->setFriendCounterListener(Ljava/lang/Runnable;)V

    .line 249
    invoke-static {}, Lbe/gentgo/tetsuki/GamePlayActivity;->init()V

    .line 251
    return-void

    .line 212
    .end local v0    # "homeButton":Landroid/view/View;
    :cond_1
    const v1, 0x7f030001

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 262
    sget-object v0, Lbe/gentgo/tetsuki/Main;->sMainServer:Lbe/gentgo/tetsuki/Server;

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/Server;->observeError()Lbe/gentgo/tetsuki/Messenger;

    move-result-object v0

    sget-object v1, Lbe/gentgo/tetsuki/Main;->connectionListener:Lbe/gentgo/tetsuki/Listener;

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/Messenger;->removeListener(Lbe/gentgo/tetsuki/Listener;)V

    .line 263
    iget-object v0, p0, Lbe/gentgo/tetsuki/Main;->pingHandler:Landroid/os/Handler;

    iget-object v1, p0, Lbe/gentgo/tetsuki/Main;->pingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 264
    invoke-static {}, Lbe/gentgo/tetsuki/Preferences;->save()V

    .line 266
    sget-object v0, Lbe/gentgo/tetsuki/Main;->sMainServer:Lbe/gentgo/tetsuki/Server;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/Server;->disconnect(Z)V

    .line 267
    invoke-super {p0}, Lbe/gentgo/tetsuki/TetsukiActivity;->onDestroy()V

    .line 268
    sget-object v0, Lbe/gentgo/tetsuki/Main;->sInstance:Lbe/gentgo/tetsuki/Main;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lbe/gentgo/tetsuki/Main;->sInstance:Lbe/gentgo/tetsuki/Main;

    .line 269
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lbe/gentgo/tetsuki/Main;->appInitialized:Z

    .line 270
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lbe/gentgo/tetsuki/Main;->contentFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbe/gentgo/tetsuki/Main;->contentFragment:Landroid/app/Fragment;

    iget-object v1, p0, Lbe/gentgo/tetsuki/Main;->observeFragment:Lbe/gentgo/tetsuki/ObserveFragment;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lbe/gentgo/tetsuki/Main;->observeFragment:Lbe/gentgo/tetsuki/ObserveFragment;

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/ObserveFragment;->willPause()V

    .line 256
    :cond_0
    iget-object v0, p0, Lbe/gentgo/tetsuki/Main;->contentFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbe/gentgo/tetsuki/Main;->contentFragment:Landroid/app/Fragment;

    iget-object v1, p0, Lbe/gentgo/tetsuki/Main;->playersListFragment:Lbe/gentgo/tetsuki/PlayersListFragment;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lbe/gentgo/tetsuki/Main;->playersListFragment:Lbe/gentgo/tetsuki/PlayersListFragment;

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/PlayersListFragment;->willPause()V

    .line 257
    :cond_1
    invoke-super {p0}, Lbe/gentgo/tetsuki/TetsukiActivity;->onPause()V

    .line 258
    return-void
.end method

.method public setContentFragment(Landroid/app/Fragment;)V
    .locals 12
    .param p1, "content"    # Landroid/app/Fragment;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 35
    iget-object v8, p0, Lbe/gentgo/tetsuki/Main;->contentFragment:Landroid/app/Fragment;

    if-eq p1, v8, :cond_4

    .line 37
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x13

    if-lt v8, v9, :cond_0

    invoke-static {}, Lbe/gentgo/tetsuki/Main;->isTablet()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 39
    if-eqz p1, :cond_0

    .line 40
    const v8, 0x7f0b000d

    invoke-virtual {p0, v8}, Lbe/gentgo/tetsuki/Main;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    invoke-static {v8}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 43
    :cond_0
    iget-object v8, p0, Lbe/gentgo/tetsuki/Main;->contentFragment:Landroid/app/Fragment;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lbe/gentgo/tetsuki/Main;->contentFragment:Landroid/app/Fragment;

    iget-object v9, p0, Lbe/gentgo/tetsuki/Main;->observeFragment:Lbe/gentgo/tetsuki/ObserveFragment;

    if-ne v8, v9, :cond_1

    iget-object v8, p0, Lbe/gentgo/tetsuki/Main;->observeFragment:Lbe/gentgo/tetsuki/ObserveFragment;

    invoke-virtual {v8}, Lbe/gentgo/tetsuki/ObserveFragment;->willPause()V

    .line 44
    :cond_1
    iget-object v8, p0, Lbe/gentgo/tetsuki/Main;->contentFragment:Landroid/app/Fragment;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lbe/gentgo/tetsuki/Main;->contentFragment:Landroid/app/Fragment;

    iget-object v9, p0, Lbe/gentgo/tetsuki/Main;->playersListFragment:Lbe/gentgo/tetsuki/PlayersListFragment;

    if-ne v8, v9, :cond_2

    iget-object v8, p0, Lbe/gentgo/tetsuki/Main;->playersListFragment:Lbe/gentgo/tetsuki/PlayersListFragment;

    invoke-virtual {v8}, Lbe/gentgo/tetsuki/PlayersListFragment;->willPause()V

    .line 46
    :cond_2
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/Main;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v7

    .line 47
    .local v7, "transaction":Landroid/app/FragmentTransaction;
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->isTablet()Z

    move-result v8

    if-nez v8, :cond_3

    .line 49
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0xd

    if-lt v8, v9, :cond_5

    .line 50
    const v8, 0x7f040001

    const v9, 0x7f040002

    const/high16 v10, 0x7f040000

    const v11, 0x7f040003

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/app/FragmentTransaction;

    .line 55
    :cond_3
    :goto_0
    if-eqz p1, :cond_6

    .line 56
    const v8, 0x7f0b0021

    invoke-virtual {v7, v8, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 63
    :goto_1
    invoke-virtual {v7}, Landroid/app/FragmentTransaction;->commit()I

    .line 65
    iput-object p1, p0, Lbe/gentgo/tetsuki/Main;->contentFragment:Landroid/app/Fragment;

    .line 68
    .end local v7    # "transaction":Landroid/app/FragmentTransaction;
    :cond_4
    const v8, 0x7f0b0016

    invoke-virtual {p0, v8}, Lbe/gentgo/tetsuki/Main;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iget-object v8, p0, Lbe/gentgo/tetsuki/Main;->contentFragment:Landroid/app/Fragment;

    if-nez v8, :cond_7

    const/16 v8, 0x8

    :goto_2
    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    .line 70
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->isTablet()Z

    move-result v8

    if-nez v8, :cond_8

    iget-object v8, p0, Lbe/gentgo/tetsuki/Main;->contentFragment:Landroid/app/Fragment;

    if-eqz v8, :cond_8

    .line 72
    const v8, 0x7f0b000e

    invoke-virtual {p0, v8}, Lbe/gentgo/tetsuki/Main;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 92
    :goto_3
    return-void

    .line 52
    .restart local v7    # "transaction":Landroid/app/FragmentTransaction;
    :cond_5
    const v8, 0x7f040001

    const v9, 0x7f040002

    invoke-virtual {v7, v8, v9}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    goto :goto_0

    .line 59
    :cond_6
    iget-object v8, p0, Lbe/gentgo/tetsuki/Main;->contentFragment:Landroid/app/Fragment;

    invoke-virtual {v7, v8}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 60
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainActionBar()Landroid/view/View;

    move-result-object v8

    const v9, 0x7f0b001a

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 61
    .local v6, "title":Landroid/widget/TextView;
    const v8, 0x7f080082

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 68
    .end local v6    # "title":Landroid/widget/TextView;
    .end local v7    # "transaction":Landroid/app/FragmentTransaction;
    :cond_7
    const/4 v8, 0x0

    goto :goto_2

    .line 76
    :cond_8
    const v8, 0x7f0b000e

    invoke-virtual {p0, v8}, Lbe/gentgo/tetsuki/Main;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 78
    if-nez p1, :cond_9

    invoke-static {}, Lbe/gentgo/tetsuki/Main;->isTablet()Z

    move-result v8

    if-eqz v8, :cond_9

    const/4 v4, 0x1

    .line 79
    .local v4, "leftVisible":Z
    :goto_4
    const/4 v5, 0x1

    .line 80
    .local v5, "rightVisible":Z
    if-eqz p1, :cond_a

    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getScreenWidthInDP()D

    move-result-wide v8

    const-wide v10, 0x408c200000000000L    # 900.0

    cmpl-double v8, v8, v10

    if-gtz v8, :cond_a

    const/4 v1, 0x0

    .line 81
    .local v1, "buttonTitlesVisible":Z
    :goto_5
    if-eqz p1, :cond_b

    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getScreenWidthInDP()D

    move-result-wide v8

    const-wide v10, 0x4097700000000000L    # 1500.0

    cmpl-double v8, v8, v10

    if-gtz v8, :cond_b

    const/4 v0, 0x0

    .line 83
    .local v0, "buttonSubTitlesVisible":Z
    :goto_6
    iget-object v8, p0, Lbe/gentgo/tetsuki/Main;->homeFragment:Lbe/gentgo/tetsuki/HomeFragment;

    invoke-virtual {v8, v4, v5, v1, v0}, Lbe/gentgo/tetsuki/HomeFragment;->setLayout(ZZZZ)V

    .line 85
    const v8, 0x7f0b000e

    invoke-virtual {p0, v8}, Lbe/gentgo/tetsuki/Main;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 86
    .local v2, "homeParent":Landroid/view/View;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 87
    iget-object v8, p0, Lbe/gentgo/tetsuki/Main;->contentFragment:Landroid/app/Fragment;

    if-nez v8, :cond_c

    const/4 v8, -0x1

    .line 88
    :goto_7
    const/4 v9, -0x1

    .line 86
    invoke-direct {v3, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 89
    .local v3, "layout":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v8, 0x0

    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 90
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 78
    .end local v0    # "buttonSubTitlesVisible":Z
    .end local v1    # "buttonTitlesVisible":Z
    .end local v2    # "homeParent":Landroid/view/View;
    .end local v3    # "layout":Landroid/widget/LinearLayout$LayoutParams;
    .end local v4    # "leftVisible":Z
    .end local v5    # "rightVisible":Z
    :cond_9
    const/4 v4, 0x0

    goto :goto_4

    .line 80
    .restart local v4    # "leftVisible":Z
    .restart local v5    # "rightVisible":Z
    :cond_a
    const/4 v1, 0x1

    goto :goto_5

    .line 81
    .restart local v1    # "buttonTitlesVisible":Z
    :cond_b
    const/4 v0, 0x1

    goto :goto_6

    .line 87
    .restart local v0    # "buttonSubTitlesVisible":Z
    .restart local v2    # "homeParent":Landroid/view/View;
    :cond_c
    const/4 v8, -0x2

    goto :goto_7
.end method
