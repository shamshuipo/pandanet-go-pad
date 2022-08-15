.class public Lbe/gentgo/tetsuki/PreferencesFragment;
.super Landroid/app/Fragment;
.source "PreferencesFragment.java"


# instance fields
.field adapter:Landroid/widget/ListAdapter;

.field private appearanceHeader:I

.field private autoZoomRow:I

.field autoZoomToggleListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private confirmRow:I

.field confirmToggleListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private coordinatesRow:I

.field coordinatesToggleListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private customizeRow:I

.field dataObserver:Landroid/database/DataSetObserver;

.field gameView:Lbe/gentgo/tetsuki/GameView;

.field itemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private nrOfRows:I

.field private observeHeader:I

.field private parent:Lbe/gentgo/tetsuki/GameBaseActivity;

.field private playingHeader:I

.field private replaySpeedRow:I

.field private soundHeader:I

.field private volumeLabel:Landroid/widget/TextView;

.field private volumeRow:I

.field private zoomRow:I

.field zoomToggleListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method public constructor <init>(Lbe/gentgo/tetsuki/GameBaseActivity;)V
    .locals 2
    .param p1, "p"    # Lbe/gentgo/tetsuki/GameBaseActivity;

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 25
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 39
    iput-object v1, p0, Lbe/gentgo/tetsuki/PreferencesFragment;->volumeLabel:Landroid/widget/TextView;

    .line 54
    iput v0, p0, Lbe/gentgo/tetsuki/PreferencesFragment;->appearanceHeader:I

    .line 55
    iput v0, p0, Lbe/gentgo/tetsuki/PreferencesFragment;->coordinatesRow:I

    .line 56
    iput v0, p0, Lbe/gentgo/tetsuki/PreferencesFragment;->customizeRow:I

    .line 58
    iput v0, p0, Lbe/gentgo/tetsuki/PreferencesFragment;->playingHeader:I

    .line 59
    iput v0, p0, Lbe/gentgo/tetsuki/PreferencesFragment;->zoomRow:I

    .line 60
    iput v0, p0, Lbe/gentgo/tetsuki/PreferencesFragment;->autoZoomRow:I

    .line 61
    iput v0, p0, Lbe/gentgo/tetsuki/PreferencesFragment;->confirmRow:I

    .line 63
    iput v0, p0, Lbe/gentgo/tetsuki/PreferencesFragment;->observeHeader:I

    .line 64
    iput v0, p0, Lbe/gentgo/tetsuki/PreferencesFragment;->replaySpeedRow:I

    .line 66
    iput v0, p0, Lbe/gentgo/tetsuki/PreferencesFragment;->soundHeader:I

    .line 67
    iput v0, p0, Lbe/gentgo/tetsuki/PreferencesFragment;->volumeRow:I

    .line 97
    new-instance v0, Lbe/gentgo/tetsuki/PreferencesFragment$1;

    invoke-direct {v0, p0}, Lbe/gentgo/tetsuki/PreferencesFragment$1;-><init>(Lbe/gentgo/tetsuki/PreferencesFragment;)V

    iput-object v0, p0, Lbe/gentgo/tetsuki/PreferencesFragment;->adapter:Landroid/widget/ListAdapter;

    .line 244
    new-instance v0, Lbe/gentgo/tetsuki/PreferencesFragment$2;

    invoke-direct {v0, p0}, Lbe/gentgo/tetsuki/PreferencesFragment$2;-><init>(Lbe/gentgo/tetsuki/PreferencesFragment;)V

    iput-object v0, p0, Lbe/gentgo/tetsuki/PreferencesFragment;->autoZoomToggleListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 253
    new-instance v0, Lbe/gentgo/tetsuki/PreferencesFragment$3;

    invoke-direct {v0, p0}, Lbe/gentgo/tetsuki/PreferencesFragment$3;-><init>(Lbe/gentgo/tetsuki/PreferencesFragment;)V

    iput-object v0, p0, Lbe/gentgo/tetsuki/PreferencesFragment;->zoomToggleListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 265
    new-instance v0, Lbe/gentgo/tetsuki/PreferencesFragment$4;

    invoke-direct {v0, p0}, Lbe/gentgo/tetsuki/PreferencesFragment$4;-><init>(Lbe/gentgo/tetsuki/PreferencesFragment;)V

    iput-object v0, p0, Lbe/gentgo/tetsuki/PreferencesFragment;->confirmToggleListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 273
    new-instance v0, Lbe/gentgo/tetsuki/PreferencesFragment$5;

    invoke-direct {v0, p0}, Lbe/gentgo/tetsuki/PreferencesFragment$5;-><init>(Lbe/gentgo/tetsuki/PreferencesFragment;)V

    iput-object v0, p0, Lbe/gentgo/tetsuki/PreferencesFragment;->coordinatesToggleListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 284
    new-instance v0, Lbe/gentgo/tetsuki/PreferencesFragment$6;

    invoke-direct {v0, p0}, Lbe/gentgo/tetsuki/PreferencesFragment$6;-><init>(Lbe/gentgo/tetsuki/PreferencesFragment;)V

    iput-object v0, p0, Lbe/gentgo/tetsuki/PreferencesFragment;->itemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 469
    iput-object v1, p0, Lbe/gentgo/tetsuki/PreferencesFragment;->gameView:Lbe/gentgo/tetsuki/GameView;

    .line 470
    iput-object v1, p0, Lbe/gentgo/tetsuki/PreferencesFragment;->dataObserver:Landroid/database/DataSetObserver;

    .line 27
    iput-object p1, p0, Lbe/gentgo/tetsuki/PreferencesFragment;->parent:Lbe/gentgo/tetsuki/GameBaseActivity;

    .line 28
    return-void
.end method

.method static synthetic access$0(Lbe/gentgo/tetsuki/PreferencesFragment;)I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lbe/gentgo/tetsuki/PreferencesFragment;->nrOfRows:I

    return v0
.end method

.method static synthetic access$1(Lbe/gentgo/tetsuki/PreferencesFragment;)I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lbe/gentgo/tetsuki/PreferencesFragment;->appearanceHeader:I

    return v0
.end method

.method static synthetic access$10(Lbe/gentgo/tetsuki/PreferencesFragment;)I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lbe/gentgo/tetsuki/PreferencesFragment;->coordinatesRow:I

    return v0
.end method

.method static synthetic access$11(Lbe/gentgo/tetsuki/PreferencesFragment;)I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lbe/gentgo/tetsuki/PreferencesFragment;->confirmRow:I

    return v0
.end method

.method static synthetic access$12(Lbe/gentgo/tetsuki/PreferencesFragment;)V
    .locals 0

    .prologue
    .line 357
    invoke-direct {p0}, Lbe/gentgo/tetsuki/PreferencesFragment;->presentVolumeDialog()V

    return-void
.end method

.method static synthetic access$13(Lbe/gentgo/tetsuki/PreferencesFragment;)V
    .locals 0

    .prologue
    .line 396
    invoke-direct {p0}, Lbe/gentgo/tetsuki/PreferencesFragment;->presentAppearanceDialog()V

    return-void
.end method

.method static synthetic access$14(Lbe/gentgo/tetsuki/PreferencesFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lbe/gentgo/tetsuki/PreferencesFragment;->volumeLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2(Lbe/gentgo/tetsuki/PreferencesFragment;)I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lbe/gentgo/tetsuki/PreferencesFragment;->playingHeader:I

    return v0
.end method

.method static synthetic access$3(Lbe/gentgo/tetsuki/PreferencesFragment;)I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lbe/gentgo/tetsuki/PreferencesFragment;->observeHeader:I

    return v0
.end method

.method static synthetic access$4(Lbe/gentgo/tetsuki/PreferencesFragment;)I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lbe/gentgo/tetsuki/PreferencesFragment;->soundHeader:I

    return v0
.end method

.method static synthetic access$5(Lbe/gentgo/tetsuki/PreferencesFragment;)I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lbe/gentgo/tetsuki/PreferencesFragment;->customizeRow:I

    return v0
.end method

.method static synthetic access$6(Lbe/gentgo/tetsuki/PreferencesFragment;)I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lbe/gentgo/tetsuki/PreferencesFragment;->volumeRow:I

    return v0
.end method

.method static synthetic access$7(Lbe/gentgo/tetsuki/PreferencesFragment;)I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lbe/gentgo/tetsuki/PreferencesFragment;->replaySpeedRow:I

    return v0
.end method

.method static synthetic access$8(Lbe/gentgo/tetsuki/PreferencesFragment;)I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lbe/gentgo/tetsuki/PreferencesFragment;->autoZoomRow:I

    return v0
.end method

.method static synthetic access$9(Lbe/gentgo/tetsuki/PreferencesFragment;)I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lbe/gentgo/tetsuki/PreferencesFragment;->zoomRow:I

    return v0
.end method

.method private presentAppearanceDialog()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 398
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/PreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v2, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 399
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    const v8, 0x7f080128

    invoke-virtual {v2, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 400
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/PreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 401
    .local v5, "inflater":Landroid/view/LayoutInflater;
    const/high16 v8, 0x7f030000

    invoke-virtual {v5, v8, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 402
    .local v3, "content":Landroid/view/View;
    const/high16 v8, 0x7f0b0000

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lbe/gentgo/tetsuki/GameView;

    iput-object v8, p0, Lbe/gentgo/tetsuki/PreferencesFragment;->gameView:Lbe/gentgo/tetsuki/GameView;

    .line 403
    new-instance v6, Lbe/gentgo/tetsuki/GameSettings;

    invoke-direct {v6}, Lbe/gentgo/tetsuki/GameSettings;-><init>()V

    .line 404
    .local v6, "settings":Lbe/gentgo/tetsuki/GameSettings;
    const/4 v8, 0x3

    invoke-virtual {v6, v8}, Lbe/gentgo/tetsuki/GameSettings;->setSize(I)V

    .line 405
    new-instance v4, Lbe/gentgo/tetsuki/Game;

    invoke-direct {v4, v6}, Lbe/gentgo/tetsuki/Game;-><init>(Lbe/gentgo/tetsuki/GameSettings;)V

    .line 406
    .local v4, "game":Lbe/gentgo/tetsuki/Game;
    new-instance v8, Lbe/gentgo/tetsuki/Position;

    invoke-direct {v8, v10, v10}, Lbe/gentgo/tetsuki/Position;-><init>(II)V

    invoke-virtual {v4, v8, v10, v10}, Lbe/gentgo/tetsuki/Game;->play(Lbe/gentgo/tetsuki/Position;ZZ)Z

    .line 407
    new-instance v8, Lbe/gentgo/tetsuki/Position;

    invoke-direct {v8, v10, v11}, Lbe/gentgo/tetsuki/Position;-><init>(II)V

    invoke-virtual {v4, v8, v10, v10}, Lbe/gentgo/tetsuki/Game;->play(Lbe/gentgo/tetsuki/Position;ZZ)Z

    .line 408
    new-instance v8, Lbe/gentgo/tetsuki/Position;

    invoke-direct {v8, v11, v10}, Lbe/gentgo/tetsuki/Position;-><init>(II)V

    invoke-virtual {v4, v8, v10, v10}, Lbe/gentgo/tetsuki/Game;->play(Lbe/gentgo/tetsuki/Position;ZZ)Z

    .line 409
    new-instance v8, Lbe/gentgo/tetsuki/Position;

    const/4 v9, 0x2

    invoke-direct {v8, v9, v10}, Lbe/gentgo/tetsuki/Position;-><init>(II)V

    invoke-virtual {v4, v8, v10, v10}, Lbe/gentgo/tetsuki/Game;->play(Lbe/gentgo/tetsuki/Position;ZZ)Z

    .line 410
    invoke-virtual {v4, v11}, Lbe/gentgo/tetsuki/Game;->pass(Z)Z

    .line 411
    iget-object v8, p0, Lbe/gentgo/tetsuki/PreferencesFragment;->gameView:Lbe/gentgo/tetsuki/GameView;

    invoke-virtual {v8, v4, v12}, Lbe/gentgo/tetsuki/GameView;->setGameAndScore(Lbe/gentgo/tetsuki/Game;Lbe/gentgo/tetsuki/ScoreCount;)V

    .line 412
    iget-object v8, p0, Lbe/gentgo/tetsuki/PreferencesFragment;->gameView:Lbe/gentgo/tetsuki/GameView;

    invoke-virtual {v8, v11, v11, v11, v11}, Lbe/gentgo/tetsuki/GameView;->setMargin(IIII)V

    .line 414
    const v8, 0x7f0b0006

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    .line 415
    .local v1, "board":Landroid/widget/RadioGroup;
    const v8, 0x7f0b000a

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RadioGroup;

    .line 416
    .local v7, "stones":Landroid/widget/RadioGroup;
    const v8, 0x7f0b0002

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    .line 418
    .local v0, "background":Landroid/widget/RadioGroup;
    invoke-static {}, Lbe/gentgo/tetsuki/Preferences;->getWoodStyle()I

    move-result v8

    if-nez v8, :cond_0

    const v8, 0x7f0b0007

    :goto_0
    invoke-virtual {v1, v8}, Landroid/widget/RadioGroup;->check(I)V

    .line 419
    invoke-static {}, Lbe/gentgo/tetsuki/Preferences;->getStonesStyle()I

    move-result v8

    if-nez v8, :cond_1

    const v8, 0x7f0b000b

    :goto_1
    invoke-virtual {v7, v8}, Landroid/widget/RadioGroup;->check(I)V

    .line 420
    invoke-static {}, Lbe/gentgo/tetsuki/Preferences;->getBackgroundStyle()I

    move-result v8

    if-nez v8, :cond_2

    const v8, 0x7f0b0003

    :goto_2
    invoke-virtual {v0, v8}, Landroid/widget/RadioGroup;->check(I)V

    .line 422
    new-instance v8, Lbe/gentgo/tetsuki/PreferencesFragment$9;

    invoke-direct {v8, p0}, Lbe/gentgo/tetsuki/PreferencesFragment$9;-><init>(Lbe/gentgo/tetsuki/PreferencesFragment;)V

    invoke-virtual {v1, v8}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 432
    new-instance v8, Lbe/gentgo/tetsuki/PreferencesFragment$10;

    invoke-direct {v8, p0}, Lbe/gentgo/tetsuki/PreferencesFragment$10;-><init>(Lbe/gentgo/tetsuki/PreferencesFragment;)V

    invoke-virtual {v7, v8}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 442
    new-instance v8, Lbe/gentgo/tetsuki/PreferencesFragment$11;

    invoke-direct {v8, p0}, Lbe/gentgo/tetsuki/PreferencesFragment$11;-><init>(Lbe/gentgo/tetsuki/PreferencesFragment;)V

    invoke-virtual {v0, v8}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 452
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 453
    const v8, 0x7f08003b

    new-instance v9, Lbe/gentgo/tetsuki/PreferencesFragment$12;

    invoke-direct {v9, p0}, Lbe/gentgo/tetsuki/PreferencesFragment$12;-><init>(Lbe/gentgo/tetsuki/PreferencesFragment;)V

    invoke-virtual {v2, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 461
    new-instance v8, Lbe/gentgo/tetsuki/PreferencesFragment$13;

    invoke-direct {v8, p0}, Lbe/gentgo/tetsuki/PreferencesFragment$13;-><init>(Lbe/gentgo/tetsuki/PreferencesFragment;)V

    invoke-virtual {v2, v8}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 466
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 467
    return-void

    .line 418
    :cond_0
    const v8, 0x7f0b0008

    goto :goto_0

    .line 419
    :cond_1
    const v8, 0x7f0b000c

    goto :goto_1

    .line 420
    :cond_2
    const v8, 0x7f0b0004

    goto :goto_2
.end method

.method private presentVolumeDialog()V
    .locals 12

    .prologue
    .line 359
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/PreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 360
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v5, 0x7f080142

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 361
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/PreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 362
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f030030

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 363
    .local v1, "content":Landroid/view/View;
    const v5, 0x7f0b0053

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    .line 364
    .local v3, "slider":Landroid/widget/SeekBar;
    const v5, 0x7f0b00e8

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lbe/gentgo/tetsuki/PreferencesFragment;->volumeLabel:Landroid/widget/TextView;

    .line 365
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    invoke-static {}, Lbe/gentgo/tetsuki/Preferences;->getSoundVolume()F

    move-result v5

    float-to-double v10, v5

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-int v4, v6

    .line 366
    .local v4, "volume":I
    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 367
    iget-object v5, p0, Lbe/gentgo/tetsuki/PreferencesFragment;->volumeLabel:Landroid/widget/TextView;

    const-string v6, "%d%%"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 369
    new-instance v5, Lbe/gentgo/tetsuki/PreferencesFragment$7;

    invoke-direct {v5, p0}, Lbe/gentgo/tetsuki/PreferencesFragment$7;-><init>(Lbe/gentgo/tetsuki/PreferencesFragment;)V

    invoke-virtual {v3, v5}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 385
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 386
    const v5, 0x7f08003b

    new-instance v6, Lbe/gentgo/tetsuki/PreferencesFragment$8;

    invoke-direct {v6, p0}, Lbe/gentgo/tetsuki/PreferencesFragment$8;-><init>(Lbe/gentgo/tetsuki/PreferencesFragment;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 393
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 394
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 31
    const v2, 0x7f030026

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 32
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f0b002b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 33
    .local v0, "list":Landroid/widget/ListView;
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/PreferencesFragment;->updateIndices()V

    .line 34
    iget-object v2, p0, Lbe/gentgo/tetsuki/PreferencesFragment;->adapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 35
    iget-object v2, p0, Lbe/gentgo/tetsuki/PreferencesFragment;->itemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 36
    return-object v1
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 48
    invoke-static {}, Lbe/gentgo/tetsuki/Preferences;->save()V

    .line 49
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 50
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/PreferencesFragment;->updateIndices()V

    .line 43
    iget-object v0, p0, Lbe/gentgo/tetsuki/PreferencesFragment;->dataObserver:Landroid/database/DataSetObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbe/gentgo/tetsuki/PreferencesFragment;->dataObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 44
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 45
    return-void
.end method

.method updateIndices()V
    .locals 2

    .prologue
    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lbe/gentgo/tetsuki/PreferencesFragment;->nrOfRows:I

    .line 74
    iget v0, p0, Lbe/gentgo/tetsuki/PreferencesFragment;->nrOfRows:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lbe/gentgo/tetsuki/PreferencesFragment;->nrOfRows:I

    iput v0, p0, Lbe/gentgo/tetsuki/PreferencesFragment;->appearanceHeader:I

    .line 75
    iget v0, p0, Lbe/gentgo/tetsuki/PreferencesFragment;->nrOfRows:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lbe/gentgo/tetsuki/PreferencesFragment;->nrOfRows:I

    iput v0, p0, Lbe/gentgo/tetsuki/PreferencesFragment;->coordinatesRow:I

    .line 76
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lbe/gentgo/tetsuki/PreferencesFragment;->nrOfRows:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lbe/gentgo/tetsuki/PreferencesFragment;->nrOfRows:I

    iput v0, p0, Lbe/gentgo/tetsuki/PreferencesFragment;->customizeRow:I

    .line 78
    :cond_0
    iget-object v0, p0, Lbe/gentgo/tetsuki/PreferencesFragment;->parent:Lbe/gentgo/tetsuki/GameBaseActivity;

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/GameBaseActivity;->isReplayEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    iget v0, p0, Lbe/gentgo/tetsuki/PreferencesFragment;->nrOfRows:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lbe/gentgo/tetsuki/PreferencesFragment;->nrOfRows:I

    iput v0, p0, Lbe/gentgo/tetsuki/PreferencesFragment;->observeHeader:I

    .line 80
    iget v0, p0, Lbe/gentgo/tetsuki/PreferencesFragment;->nrOfRows:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lbe/gentgo/tetsuki/PreferencesFragment;->nrOfRows:I

    iput v0, p0, Lbe/gentgo/tetsuki/PreferencesFragment;->replaySpeedRow:I

    .line 93
    :goto_0
    iget v0, p0, Lbe/gentgo/tetsuki/PreferencesFragment;->nrOfRows:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lbe/gentgo/tetsuki/PreferencesFragment;->nrOfRows:I

    iput v0, p0, Lbe/gentgo/tetsuki/PreferencesFragment;->soundHeader:I

    .line 94
    iget v0, p0, Lbe/gentgo/tetsuki/PreferencesFragment;->nrOfRows:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lbe/gentgo/tetsuki/PreferencesFragment;->nrOfRows:I

    iput v0, p0, Lbe/gentgo/tetsuki/PreferencesFragment;->volumeRow:I

    .line 95
    return-void

    .line 84
    :cond_1
    iget v0, p0, Lbe/gentgo/tetsuki/PreferencesFragment;->nrOfRows:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lbe/gentgo/tetsuki/PreferencesFragment;->nrOfRows:I

    iput v0, p0, Lbe/gentgo/tetsuki/PreferencesFragment;->playingHeader:I

    .line 85
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lbe/gentgo/tetsuki/PreferencesFragment;->nrOfRows:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lbe/gentgo/tetsuki/PreferencesFragment;->nrOfRows:I

    iput v0, p0, Lbe/gentgo/tetsuki/PreferencesFragment;->zoomRow:I

    .line 86
    :cond_2
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lbe/gentgo/tetsuki/Preferences;->getZoom()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 87
    :cond_3
    iget v0, p0, Lbe/gentgo/tetsuki/PreferencesFragment;->nrOfRows:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lbe/gentgo/tetsuki/PreferencesFragment;->nrOfRows:I

    iput v0, p0, Lbe/gentgo/tetsuki/PreferencesFragment;->autoZoomRow:I

    .line 90
    :goto_1
    iget v0, p0, Lbe/gentgo/tetsuki/PreferencesFragment;->nrOfRows:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lbe/gentgo/tetsuki/PreferencesFragment;->nrOfRows:I

    iput v0, p0, Lbe/gentgo/tetsuki/PreferencesFragment;->confirmRow:I

    goto :goto_0

    .line 89
    :cond_4
    const/4 v0, -0x1

    iput v0, p0, Lbe/gentgo/tetsuki/PreferencesFragment;->autoZoomRow:I

    goto :goto_1
.end method
