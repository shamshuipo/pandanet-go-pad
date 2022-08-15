.class public Lbe/gentgo/tetsuki/HomeFragment;
.super Landroid/app/Fragment;
.source "HomeFragment.java"


# static fields
.field public static final ARCHIVE:I = 0x5

.field public static final DIARIES:I = 0x7

.field public static final HELP:I = 0x9

.field public static final NETSOCIAL:I = 0x6

.field public static final NEWS:I = 0x4

.field public static final PLAY:I = 0x1

.field public static final PLAYERS:I = 0x2

.field public static final PROBLEM:I = 0x3

.field public static final ROWS:I = 0xb

.field public static final VERSION:I = 0xa

.field public static final WATCH:I = 0x0

.field public static final WEBSITE:I = 0x8


# instance fields
.field accountButtonListener:Landroid/view/View$OnClickListener;

.field actionButtonListener:Landroid/view/View$OnClickListener;

.field private buttonSubTitlesVisible:Z

.field private buttonTitlesVisible:Z

.field private detailsListener:Lbe/gentgo/tetsuki/Listener;

.field private hasResumed:Z

.field private homeListAdapter:Landroid/widget/BaseAdapter;

.field private myDetailsRequest:Lbe/gentgo/tetsuki/PlayerDetailsRequest;

.field private myDetailsString:Ljava/lang/String;

.field private selection:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 179
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 141
    iput-object v0, p0, Lbe/gentgo/tetsuki/HomeFragment;->myDetailsString:Ljava/lang/String;

    .line 142
    iput-object v0, p0, Lbe/gentgo/tetsuki/HomeFragment;->myDetailsRequest:Lbe/gentgo/tetsuki/PlayerDetailsRequest;

    .line 143
    new-instance v0, Lbe/gentgo/tetsuki/HomeFragment$1;

    invoke-direct {v0, p0}, Lbe/gentgo/tetsuki/HomeFragment$1;-><init>(Lbe/gentgo/tetsuki/HomeFragment;)V

    iput-object v0, p0, Lbe/gentgo/tetsuki/HomeFragment;->detailsListener:Lbe/gentgo/tetsuki/Listener;

    .line 345
    new-instance v0, Lbe/gentgo/tetsuki/HomeFragment$2;

    invoke-direct {v0, p0}, Lbe/gentgo/tetsuki/HomeFragment$2;-><init>(Lbe/gentgo/tetsuki/HomeFragment;)V

    iput-object v0, p0, Lbe/gentgo/tetsuki/HomeFragment;->actionButtonListener:Landroid/view/View$OnClickListener;

    .line 377
    new-instance v0, Lbe/gentgo/tetsuki/HomeFragment$3;

    invoke-direct {v0, p0}, Lbe/gentgo/tetsuki/HomeFragment$3;-><init>(Lbe/gentgo/tetsuki/HomeFragment;)V

    iput-object v0, p0, Lbe/gentgo/tetsuki/HomeFragment;->accountButtonListener:Landroid/view/View$OnClickListener;

    .line 442
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbe/gentgo/tetsuki/HomeFragment;->hasResumed:Z

    .line 475
    new-instance v0, Lbe/gentgo/tetsuki/HomeFragment$4;

    invoke-direct {v0, p0}, Lbe/gentgo/tetsuki/HomeFragment$4;-><init>(Lbe/gentgo/tetsuki/HomeFragment;)V

    iput-object v0, p0, Lbe/gentgo/tetsuki/HomeFragment;->homeListAdapter:Landroid/widget/BaseAdapter;

    .line 622
    const/4 v0, -0x1

    iput v0, p0, Lbe/gentgo/tetsuki/HomeFragment;->selection:I

    .line 623
    iput-boolean v1, p0, Lbe/gentgo/tetsuki/HomeFragment;->buttonTitlesVisible:Z

    .line 624
    iput-boolean v1, p0, Lbe/gentgo/tetsuki/HomeFragment;->buttonSubTitlesVisible:Z

    .line 180
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v0

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/Server;->observeRoomChange()Lbe/gentgo/tetsuki/Messenger;

    move-result-object v0

    new-instance v1, Lbe/gentgo/tetsuki/HomeFragment$5;

    invoke-direct {v1, p0}, Lbe/gentgo/tetsuki/HomeFragment$5;-><init>(Lbe/gentgo/tetsuki/HomeFragment;)V

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/Messenger;->addListener(Lbe/gentgo/tetsuki/Listener;)V

    .line 187
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v0

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/Server;->observeError()Lbe/gentgo/tetsuki/Messenger;

    move-result-object v0

    new-instance v1, Lbe/gentgo/tetsuki/HomeFragment$6;

    invoke-direct {v1, p0}, Lbe/gentgo/tetsuki/HomeFragment$6;-><init>(Lbe/gentgo/tetsuki/HomeFragment;)V

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/Messenger;->addListener(Lbe/gentgo/tetsuki/Listener;)V

    .line 290
    return-void
.end method

.method static synthetic access$0(Lbe/gentgo/tetsuki/HomeFragment;)Lbe/gentgo/tetsuki/PlayerDetailsRequest;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lbe/gentgo/tetsuki/HomeFragment;->myDetailsRequest:Lbe/gentgo/tetsuki/PlayerDetailsRequest;

    return-object v0
.end method

.method static synthetic access$1(Lbe/gentgo/tetsuki/HomeFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lbe/gentgo/tetsuki/HomeFragment;->myDetailsString:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lbe/gentgo/tetsuki/HomeFragment;Lbe/gentgo/tetsuki/PlayerDetailsRequest;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lbe/gentgo/tetsuki/HomeFragment;->myDetailsRequest:Lbe/gentgo/tetsuki/PlayerDetailsRequest;

    return-void
.end method

.method static synthetic access$3(Lbe/gentgo/tetsuki/HomeFragment;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 411
    invoke-direct {p0, p1}, Lbe/gentgo/tetsuki/HomeFragment;->presentRoomMenu(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$4(Lbe/gentgo/tetsuki/HomeFragment;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 386
    invoke-direct {p0, p1}, Lbe/gentgo/tetsuki/HomeFragment;->presentStatusMenu(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$5(Lbe/gentgo/tetsuki/HomeFragment;)I
    .locals 1

    .prologue
    .line 622
    iget v0, p0, Lbe/gentgo/tetsuki/HomeFragment;->selection:I

    return v0
.end method

.method static synthetic access$6(Lbe/gentgo/tetsuki/HomeFragment;)Z
    .locals 1

    .prologue
    .line 623
    iget-boolean v0, p0, Lbe/gentgo/tetsuki/HomeFragment;->buttonTitlesVisible:Z

    return v0
.end method

.method static synthetic access$7(Lbe/gentgo/tetsuki/HomeFragment;)Z
    .locals 1

    .prologue
    .line 624
    iget-boolean v0, p0, Lbe/gentgo/tetsuki/HomeFragment;->buttonSubTitlesVisible:Z

    return v0
.end method

.method static synthetic access$8(Lbe/gentgo/tetsuki/HomeFragment;Z)V
    .locals 0

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lbe/gentgo/tetsuki/HomeFragment;->requestMyDetails(Z)V

    return-void
.end method

.method static synthetic access$9(Lbe/gentgo/tetsuki/HomeFragment;)Z
    .locals 1

    .prologue
    .line 442
    iget-boolean v0, p0, Lbe/gentgo/tetsuki/HomeFragment;->hasResumed:Z

    return v0
.end method

.method private presentRoomMenu(Landroid/view/View;)V
    .locals 6
    .param p1, "fromView"    # Landroid/view/View;

    .prologue
    .line 414
    :try_start_0
    new-instance v1, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 415
    .local v1, "roomMenu":Landroid/widget/PopupMenu;
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const v3, 0x7f080125

    invoke-interface {v2, v3}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    .line 416
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v2

    invoke-virtual {v2}, Lbe/gentgo/tetsuki/Server;->getNrOfRooms()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 419
    new-instance v2, Lbe/gentgo/tetsuki/HomeFragment$9;

    invoke-direct {v2, p0}, Lbe/gentgo/tetsuki/HomeFragment$9;-><init>(Lbe/gentgo/tetsuki/HomeFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 437
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    .line 440
    .end local v0    # "i":I
    .end local v1    # "roomMenu":Landroid/widget/PopupMenu;
    :goto_1
    return-void

    .line 417
    .restart local v0    # "i":I
    .restart local v1    # "roomMenu":Landroid/widget/PopupMenu;
    :cond_0
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v4

    invoke-static {}, Lbe/gentgo/tetsuki/Preferences;->isJapaneseUser()Z

    move-result v5

    invoke-virtual {v4, v0, v5}, Lbe/gentgo/tetsuki/Server;->getRoomName(IZ)[B

    move-result-object v4

    const-string v5, "SJIS"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v2, v3}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 438
    .end local v0    # "i":I
    .end local v1    # "roomMenu":Landroid/widget/PopupMenu;
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private presentStatusMenu(Landroid/view/View;)V
    .locals 4
    .param p1, "fromView"    # Landroid/view/View;

    .prologue
    .line 388
    new-instance v1, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 389
    .local v1, "statusMenu":Landroid/widget/PopupMenu;
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 390
    .local v0, "inflater":Landroid/view/MenuInflater;
    const/high16 v2, 0x7f0a0000

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 391
    new-instance v2, Lbe/gentgo/tetsuki/HomeFragment$8;

    invoke-direct {v2, p0}, Lbe/gentgo/tetsuki/HomeFragment$8;-><init>(Lbe/gentgo/tetsuki/HomeFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 408
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    .line 409
    return-void
.end method

.method private requestMyDetails(Z)V
    .locals 5
    .param p1, "force"    # Z

    .prologue
    const/4 v4, 0x0

    .line 161
    iget-object v2, p0, Lbe/gentgo/tetsuki/HomeFragment;->myDetailsRequest:Lbe/gentgo/tetsuki/PlayerDetailsRequest;

    if-eqz v2, :cond_0

    .line 162
    iget-object v2, p0, Lbe/gentgo/tetsuki/HomeFragment;->myDetailsRequest:Lbe/gentgo/tetsuki/PlayerDetailsRequest;

    iget-object v3, p0, Lbe/gentgo/tetsuki/HomeFragment;->detailsListener:Lbe/gentgo/tetsuki/Listener;

    invoke-virtual {v2, v3}, Lbe/gentgo/tetsuki/PlayerDetailsRequest;->removeListener(Lbe/gentgo/tetsuki/Listener;)V

    .line 163
    iput-object v4, p0, Lbe/gentgo/tetsuki/HomeFragment;->myDetailsRequest:Lbe/gentgo/tetsuki/PlayerDetailsRequest;

    .line 165
    :cond_0
    if-eqz p1, :cond_1

    iput-object v4, p0, Lbe/gentgo/tetsuki/HomeFragment;->myDetailsString:Ljava/lang/String;

    .line 167
    :cond_1
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v1

    .line 168
    .local v1, "server":Lbe/gentgo/tetsuki/Server;
    invoke-virtual {v1}, Lbe/gentgo/tetsuki/Server;->getErrorState()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/Server;->isGuestLogin()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 170
    new-instance v0, Lbe/gentgo/tetsuki/Player;

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/Server;->getMyID()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lbe/gentgo/tetsuki/Player;-><init>(Ljava/lang/String;)V

    .line 171
    .local v0, "me":Lbe/gentgo/tetsuki/Player;
    invoke-virtual {v1, v0}, Lbe/gentgo/tetsuki/Server;->requestPlayerDetails(Lbe/gentgo/tetsuki/Player;)Lbe/gentgo/tetsuki/PlayerDetailsRequest;

    move-result-object v2

    iput-object v2, p0, Lbe/gentgo/tetsuki/HomeFragment;->myDetailsRequest:Lbe/gentgo/tetsuki/PlayerDetailsRequest;

    .line 172
    iget-object v2, p0, Lbe/gentgo/tetsuki/HomeFragment;->myDetailsRequest:Lbe/gentgo/tetsuki/PlayerDetailsRequest;

    iget-object v3, p0, Lbe/gentgo/tetsuki/HomeFragment;->detailsListener:Lbe/gentgo/tetsuki/Listener;

    invoke-virtual {v2, v3}, Lbe/gentgo/tetsuki/PlayerDetailsRequest;->addListener(Lbe/gentgo/tetsuki/Listener;)V

    .line 174
    .end local v0    # "me":Lbe/gentgo/tetsuki/Player;
    :cond_2
    return-void
.end method


# virtual methods
.method public getSelection()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lbe/gentgo/tetsuki/HomeFragment;->selection:I

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 296
    const v2, 0x7f030011

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 297
    .local v1, "result":Landroid/view/View;
    const v2, 0x7f0b0065

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 298
    .local v0, "list":Landroid/widget/ListView;
    iget-object v2, p0, Lbe/gentgo/tetsuki/HomeFragment;->homeListAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 299
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 300
    new-instance v2, Lbe/gentgo/tetsuki/HomeFragment$7;

    invoke-direct {v2, p0}, Lbe/gentgo/tetsuki/HomeFragment$7;-><init>(Lbe/gentgo/tetsuki/HomeFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 342
    return-object v1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 456
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 457
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbe/gentgo/tetsuki/HomeFragment;->hasResumed:Z

    .line 458
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 445
    invoke-virtual {p0, v0}, Lbe/gentgo/tetsuki/HomeFragment;->update(Z)V

    .line 446
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 447
    iput-boolean v0, p0, Lbe/gentgo/tetsuki/HomeFragment;->hasResumed:Z

    .line 448
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbe/gentgo/tetsuki/HomeFragment;->requestMyDetails(Z)V

    .line 449
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/HomeFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0010

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lbe/gentgo/tetsuki/HomeFragment;->accountButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 450
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/HomeFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0013

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lbe/gentgo/tetsuki/HomeFragment;->actionButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 451
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/HomeFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0015

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lbe/gentgo/tetsuki/HomeFragment;->actionButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 452
    return-void
.end method

.method public setLayout(ZZZZ)V
    .locals 9
    .param p1, "leftVisible"    # Z
    .param p2, "rightVisible"    # Z
    .param p3, "buttonTitles"    # Z
    .param p4, "buttonSubTitles"    # Z

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 40
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v8, 0x7f0b0063

    invoke-virtual {v5, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    if-eqz p1, :cond_1

    move v5, v6

    :goto_0
    invoke-virtual {v8, v5}, Landroid/view/View;->setVisibility(I)V

    .line 41
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v8, 0x7f0b0065

    invoke-virtual {v5, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 43
    .local v0, "list":Landroid/widget/ListView;
    if-eqz p2, :cond_2

    :goto_1
    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setVisibility(I)V

    .line 44
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v2, v5, Landroid/util/DisplayMetrics;->density:F

    .line 45
    .local v2, "scaleValue":F
    if-eqz p4, :cond_3

    const/16 v3, 0x140

    .line 46
    .local v3, "titleWidth":I
    :goto_2
    const/high16 v5, 0x3f000000    # 0.5f

    int-to-float v6, v3

    mul-float/2addr v6, v2

    add-float/2addr v5, v6

    float-to-int v4, v5

    .line 47
    .local v4, "width":I
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->isTablet()Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v4, -0x1

    .line 48
    :cond_0
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 49
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    iput-boolean p3, p0, Lbe/gentgo/tetsuki/HomeFragment;->buttonTitlesVisible:Z

    .line 52
    iput-boolean p4, p0, Lbe/gentgo/tetsuki/HomeFragment;->buttonSubTitlesVisible:Z

    .line 53
    iget-object v5, p0, Lbe/gentgo/tetsuki/HomeFragment;->homeListAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v5}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 54
    return-void

    .end local v0    # "list":Landroid/widget/ListView;
    .end local v1    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v2    # "scaleValue":F
    .end local v3    # "titleWidth":I
    .end local v4    # "width":I
    :cond_1
    move v5, v7

    .line 40
    goto :goto_0

    .restart local v0    # "list":Landroid/widget/ListView;
    :cond_2
    move v6, v7

    .line 43
    goto :goto_1

    .line 45
    .restart local v2    # "scaleValue":F
    :cond_3
    if-eqz p3, :cond_4

    const/16 v3, 0xf0

    goto :goto_2

    :cond_4
    const/16 v3, 0x4a

    goto :goto_2
.end method

.method public setSelection(I)V
    .locals 1
    .param p1, "sel"    # I

    .prologue
    .line 58
    iget v0, p0, Lbe/gentgo/tetsuki/HomeFragment;->selection:I

    if-ne p1, v0, :cond_0

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_0
    iput p1, p0, Lbe/gentgo/tetsuki/HomeFragment;->selection:I

    .line 60
    iget-object v0, p0, Lbe/gentgo/tetsuki/HomeFragment;->homeListAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method update(Z)V
    .locals 18
    .param p1, "updateList"    # Z

    .prologue
    .line 69
    if-eqz p1, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lbe/gentgo/tetsuki/HomeFragment;->homeListAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v15}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 71
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lbe/gentgo/tetsuki/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .local v1, "activity":Landroid/app/Activity;
    if-nez v1, :cond_1

    .line 138
    :goto_0
    return-void

    .line 72
    :cond_1
    const v15, 0x7f0b000f

    invoke-virtual {v1, v15}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 73
    .local v14, "title":Landroid/widget/TextView;
    const v15, 0x7f0b0010

    invoke-virtual {v1, v15}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Button;

    .line 75
    .local v13, "subtitle":Landroid/widget/Button;
    const/4 v5, 0x0

    .line 76
    .local v5, "leftButtonText":Ljava/lang/String;
    const/4 v8, 0x0

    .line 78
    .local v8, "rightButtonText":Ljava/lang/String;
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v15

    invoke-virtual {v15}, Lbe/gentgo/tetsuki/Server;->getErrorState()I

    move-result v11

    .line 79
    .local v11, "state":I
    const/4 v15, 0x3

    if-ne v11, v15, :cond_4

    .line 80
    const v15, 0x7f0800d4

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(I)V

    .line 81
    const v15, 0x7f0800d5

    invoke-virtual {v13, v15}, Landroid/widget/Button;->setText(I)V

    .line 122
    :cond_2
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lbe/gentgo/tetsuki/HomeFragment;->getView()Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v15

    const v16, 0x7f0b0014

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    if-nez v8, :cond_c

    const/16 v15, 0x8

    :goto_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/view/View;->setVisibility(I)V

    .line 123
    invoke-virtual/range {p0 .. p0}, Lbe/gentgo/tetsuki/HomeFragment;->getView()Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v15

    const v16, 0x7f0b0025

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 124
    .local v6, "leftSeparator":Landroid/view/View;
    if-eqz v6, :cond_3

    if-nez v5, :cond_d

    const/16 v15, 0x8

    :goto_3
    invoke-virtual {v6, v15}, Landroid/view/View;->setVisibility(I)V

    .line 126
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lbe/gentgo/tetsuki/HomeFragment;->getView()Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v15

    const v16, 0x7f0b0013

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 127
    .local v4, "leftButton":Landroid/widget/Button;
    invoke-virtual/range {p0 .. p0}, Lbe/gentgo/tetsuki/HomeFragment;->getView()Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v15

    const v16, 0x7f0b0015

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 128
    .local v7, "rightButton":Landroid/widget/Button;
    if-nez v5, :cond_e

    const/16 v15, 0x8

    invoke-virtual {v4, v15}, Landroid/widget/Button;->setVisibility(I)V

    .line 133
    :goto_4
    if-nez v8, :cond_f

    const/16 v15, 0x8

    invoke-virtual {v7, v15}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 83
    .end local v4    # "leftButton":Landroid/widget/Button;
    .end local v6    # "leftSeparator":Landroid/view/View;
    .end local v7    # "rightButton":Landroid/widget/Button;
    :cond_4
    if-nez v11, :cond_a

    .line 84
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v15

    invoke-virtual {v15}, Lbe/gentgo/tetsuki/Server;->isGuestLogin()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 85
    const v15, 0x7f0800d6

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(I)V

    .line 86
    const v15, 0x7f08016b

    invoke-virtual {v13, v15}, Landroid/widget/Button;->setText(I)V

    .line 87
    invoke-virtual/range {p0 .. p0}, Lbe/gentgo/tetsuki/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v15

    const v16, 0x7f0800d7

    invoke-virtual/range {v15 .. v16}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    .line 88
    invoke-virtual/range {p0 .. p0}, Lbe/gentgo/tetsuki/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v15

    const v16, 0x7f080119

    invoke-virtual/range {v15 .. v16}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    .line 89
    goto/16 :goto_1

    .line 91
    :cond_5
    const v15, 0x7f0800d6

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(I)V

    .line 92
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lbe/gentgo/tetsuki/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v16

    const v17, 0x7f0800da

    invoke-virtual/range {v16 .. v17}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, " <B>"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lbe/gentgo/tetsuki/Server;->getMyID()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "</B>"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 93
    .local v12, "sub":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lbe/gentgo/tetsuki/HomeFragment;->myDetailsString:Ljava/lang/String;

    if-eqz v15, :cond_6

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, "<BR>"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/HomeFragment;->myDetailsString:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 94
    :cond_6
    invoke-static {v12}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v15

    invoke-virtual {v13, v15}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 95
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v15

    invoke-virtual {v15}, Lbe/gentgo/tetsuki/Server;->getCurrentRoomID()I

    move-result v9

    .line 96
    .local v9, "roomID":I
    const/4 v10, 0x0

    .line 97
    .local v10, "roomName":Ljava/lang/String;
    if-nez v9, :cond_8

    invoke-virtual/range {p0 .. p0}, Lbe/gentgo/tetsuki/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v15

    const v16, 0x7f080125

    invoke-virtual/range {v15 .. v16}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 106
    :cond_7
    :goto_5
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lbe/gentgo/tetsuki/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v16

    const v17, 0x7f080124

    invoke-virtual/range {v16 .. v17}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, "<BR><B>"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "</B>"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 107
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lbe/gentgo/tetsuki/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v16

    const v17, 0x7f080048

    invoke-virtual/range {v16 .. v17}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, "<BR><B>"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 108
    invoke-static {}, Lbe/gentgo/tetsuki/Preferences;->getStatus()I

    move-result v15

    packed-switch v15, :pswitch_data_0

    .line 112
    :goto_6
    new-instance v15, Ljava/lang/StringBuilder;

    .line 113
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, "</B>"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 115
    goto/16 :goto_1

    .line 100
    :cond_8
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7
    :try_start_0
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v15

    invoke-virtual {v15}, Lbe/gentgo/tetsuki/Server;->getNrOfRooms()I

    move-result v15

    if-ge v3, v15, :cond_7

    .line 101
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v15

    invoke-virtual {v15, v3}, Lbe/gentgo/tetsuki/Server;->getRoomID(I)I

    move-result v15

    if-ne v9, v15, :cond_9

    new-instance v10, Ljava/lang/String;

    .end local v10    # "roomName":Ljava/lang/String;
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v15

    invoke-static {}, Lbe/gentgo/tetsuki/Preferences;->isJapaneseUser()Z

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v15, v3, v0}, Lbe/gentgo/tetsuki/Server;->getRoomName(IZ)[B

    move-result-object v15

    const-string v16, "SJIS"

    move-object/from16 v0, v16

    invoke-direct {v10, v15, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .restart local v10    # "roomName":Ljava/lang/String;
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 102
    .end local v10    # "roomName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 103
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    const-string v10, "-"

    .restart local v10    # "roomName":Ljava/lang/String;
    goto/16 :goto_5

    .line 109
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v3    # "i":I
    :pswitch_0
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lbe/gentgo/tetsuki/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v16

    const v17, 0x7f08004a

    invoke-virtual/range {v16 .. v17}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_6

    .line 110
    :pswitch_1
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lbe/gentgo/tetsuki/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v16

    const v17, 0x7f08004c

    invoke-virtual/range {v16 .. v17}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_6

    .line 111
    :pswitch_2
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lbe/gentgo/tetsuki/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v16

    const v17, 0x7f08004b

    invoke-virtual/range {v16 .. v17}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_6

    .line 116
    .end local v9    # "roomID":I
    .end local v10    # "roomName":Ljava/lang/String;
    .end local v12    # "sub":Ljava/lang/String;
    :cond_a
    const/4 v15, 0x2

    if-eq v11, v15, :cond_b

    const/4 v15, 0x4

    if-eq v11, v15, :cond_b

    const/4 v15, 0x1

    if-ne v11, v15, :cond_2

    .line 117
    :cond_b
    const v15, 0x7f080022

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(I)V

    .line 118
    const v15, 0x7f080023

    invoke-virtual {v13, v15}, Landroid/widget/Button;->setText(I)V

    .line 119
    invoke-virtual/range {p0 .. p0}, Lbe/gentgo/tetsuki/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v15

    const v16, 0x7f08010f

    invoke-virtual/range {v15 .. v16}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 122
    :cond_c
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 124
    .restart local v6    # "leftSeparator":Landroid/view/View;
    :cond_d
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 130
    .restart local v4    # "leftButton":Landroid/widget/Button;
    .restart local v7    # "rightButton":Landroid/widget/Button;
    :cond_e
    const/4 v15, 0x0

    invoke-virtual {v4, v15}, Landroid/widget/Button;->setVisibility(I)V

    .line 131
    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v15

    invoke-virtual {v4, v15}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 135
    :cond_f
    const/4 v15, 0x0

    invoke-virtual {v7, v15}, Landroid/widget/Button;->setVisibility(I)V

    .line 136
    invoke-static {v8}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v15

    invoke-virtual {v7, v15}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 108
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
