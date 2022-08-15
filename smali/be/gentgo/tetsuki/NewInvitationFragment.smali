.class public Lbe/gentgo/tetsuki/NewInvitationFragment;
.super Landroid/app/Fragment;
.source "NewInvitationFragment.java"


# instance fields
.field adapter:Lbe/gentgo/tetsuki/InvitationAdapter;

.field blackButton:Landroid/widget/Button;

.field byoyomiWheel:Lkankan/wheel/widget/WheelView;

.field handicapWheel:Lkankan/wheel/widget/WheelView;

.field mainTimeWheel:Lkankan/wheel/widget/WheelView;

.field nigiriButton:Landroid/widget/Button;

.field private nmatch:Z

.field private settings:Lbe/gentgo/tetsuki/GameSettings;

.field sizeSlider:Landroid/widget/SeekBar;

.field whiteButton:Landroid/widget/Button;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbe/gentgo/tetsuki/NewInvitationFragment;->nmatch:Z

    .line 25
    new-instance v0, Lbe/gentgo/tetsuki/GameSettings;

    invoke-direct {v0}, Lbe/gentgo/tetsuki/GameSettings;-><init>()V

    iput-object v0, p0, Lbe/gentgo/tetsuki/NewInvitationFragment;->settings:Lbe/gentgo/tetsuki/GameSettings;

    .line 26
    iget-object v0, p0, Lbe/gentgo/tetsuki/NewInvitationFragment;->settings:Lbe/gentgo/tetsuki/GameSettings;

    iget-wide v0, v0, Lbe/gentgo/tetsuki/GameSettings;->nativePointer:J

    invoke-static {v0, v1}, Lbe/gentgo/tetsuki/Preferences;->getDefaultSeekSettings(J)V

    .line 27
    return-void
.end method

.method constructor <init>(Lbe/gentgo/tetsuki/Player;Lbe/gentgo/tetsuki/Player;Z)V
    .locals 3
    .param p1, "me"    # Lbe/gentgo/tetsuki/Player;
    .param p2, "opponent"    # Lbe/gentgo/tetsuki/Player;
    .param p3, "nmatch"    # Z

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 31
    iput-boolean p3, p0, Lbe/gentgo/tetsuki/NewInvitationFragment;->nmatch:Z

    .line 32
    new-instance v0, Lbe/gentgo/tetsuki/GameSettings;

    invoke-direct {v0}, Lbe/gentgo/tetsuki/GameSettings;-><init>()V

    iput-object v0, p0, Lbe/gentgo/tetsuki/NewInvitationFragment;->settings:Lbe/gentgo/tetsuki/GameSettings;

    .line 33
    iget-object v0, p0, Lbe/gentgo/tetsuki/NewInvitationFragment;->settings:Lbe/gentgo/tetsuki/GameSettings;

    invoke-virtual {v0, p1}, Lbe/gentgo/tetsuki/GameSettings;->setBlackPlayer(Lbe/gentgo/tetsuki/Player;)V

    .line 34
    iget-object v0, p0, Lbe/gentgo/tetsuki/NewInvitationFragment;->settings:Lbe/gentgo/tetsuki/GameSettings;

    invoke-virtual {v0, p2}, Lbe/gentgo/tetsuki/GameSettings;->setWhitePlayer(Lbe/gentgo/tetsuki/Player;)V

    .line 35
    iget-object v0, p0, Lbe/gentgo/tetsuki/NewInvitationFragment;->settings:Lbe/gentgo/tetsuki/GameSettings;

    invoke-virtual {v0, p3}, Lbe/gentgo/tetsuki/GameSettings;->makeFair(Z)V

    .line 37
    iget-object v0, p0, Lbe/gentgo/tetsuki/NewInvitationFragment;->settings:Lbe/gentgo/tetsuki/GameSettings;

    iget-wide v0, v0, Lbe/gentgo/tetsuki/GameSettings;->nativePointer:J

    iget-boolean v2, p0, Lbe/gentgo/tetsuki/NewInvitationFragment;->nmatch:Z

    invoke-static {v0, v1, v2}, Lbe/gentgo/tetsuki/Preferences;->getDefaultGameSettings(JZ)V

    .line 38
    return-void
.end method

.method static synthetic access$0(Lbe/gentgo/tetsuki/NewInvitationFragment;)Lbe/gentgo/tetsuki/GameSettings;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lbe/gentgo/tetsuki/NewInvitationFragment;->settings:Lbe/gentgo/tetsuki/GameSettings;

    return-object v0
.end method

.method static synthetic access$1(Lbe/gentgo/tetsuki/NewInvitationFragment;)Z
    .locals 1

    .prologue
    .line 277
    iget-boolean v0, p0, Lbe/gentgo/tetsuki/NewInvitationFragment;->nmatch:Z

    return v0
.end method

.method static synthetic access$2(Lbe/gentgo/tetsuki/NewInvitationFragment;Z)V
    .locals 0

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lbe/gentgo/tetsuki/NewInvitationFragment;->update(Z)V

    return-void
.end method

.method private update(Z)V
    .locals 11
    .param p1, "sizeChanged"    # Z

    .prologue
    const/4 v10, 0x0

    .line 227
    iget-object v7, p0, Lbe/gentgo/tetsuki/NewInvitationFragment;->sizeSlider:Landroid/widget/SeekBar;

    iget-object v8, p0, Lbe/gentgo/tetsuki/NewInvitationFragment;->settings:Lbe/gentgo/tetsuki/GameSettings;

    invoke-virtual {v8}, Lbe/gentgo/tetsuki/GameSettings;->getRows()I

    move-result v8

    add-int/lit8 v8, v8, -0x5

    div-int/lit8 v8, v8, 0x2

    invoke-virtual {v7, v8}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 228
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v7

    invoke-virtual {v7}, Lbe/gentgo/tetsuki/Server;->getMyID()Ljava/lang/String;

    move-result-object v5

    .line 230
    .local v5, "me":Ljava/lang/String;
    iget-object v8, p0, Lbe/gentgo/tetsuki/NewInvitationFragment;->blackButton:Landroid/widget/Button;

    iget-object v7, p0, Lbe/gentgo/tetsuki/NewInvitationFragment;->settings:Lbe/gentgo/tetsuki/GameSettings;

    invoke-virtual {v7}, Lbe/gentgo/tetsuki/GameSettings;->isNigiri()Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Lbe/gentgo/tetsuki/NewInvitationFragment;->settings:Lbe/gentgo/tetsuki/GameSettings;

    invoke-virtual {v7}, Lbe/gentgo/tetsuki/GameSettings;->getBlackPlayer()Lbe/gentgo/tetsuki/Player;

    move-result-object v7

    invoke-virtual {v7}, Lbe/gentgo/tetsuki/Player;->getID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    sget-object v7, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    :goto_0
    invoke-virtual {v8, v7}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 231
    iget-object v8, p0, Lbe/gentgo/tetsuki/NewInvitationFragment;->nigiriButton:Landroid/widget/Button;

    iget-object v7, p0, Lbe/gentgo/tetsuki/NewInvitationFragment;->settings:Lbe/gentgo/tetsuki/GameSettings;

    invoke-virtual {v7}, Lbe/gentgo/tetsuki/GameSettings;->isNigiri()Z

    move-result v7

    if-eqz v7, :cond_5

    sget-object v7, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    :goto_1
    invoke-virtual {v8, v7}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 232
    iget-object v8, p0, Lbe/gentgo/tetsuki/NewInvitationFragment;->whiteButton:Landroid/widget/Button;

    iget-object v7, p0, Lbe/gentgo/tetsuki/NewInvitationFragment;->settings:Lbe/gentgo/tetsuki/GameSettings;

    invoke-virtual {v7}, Lbe/gentgo/tetsuki/GameSettings;->isNigiri()Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, p0, Lbe/gentgo/tetsuki/NewInvitationFragment;->settings:Lbe/gentgo/tetsuki/GameSettings;

    invoke-virtual {v7}, Lbe/gentgo/tetsuki/GameSettings;->getWhitePlayer()Lbe/gentgo/tetsuki/Player;

    move-result-object v7

    invoke-virtual {v7}, Lbe/gentgo/tetsuki/Player;->getID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    sget-object v7, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    :goto_2
    invoke-virtual {v8, v7}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 234
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/NewInvitationFragment;->getView()Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0b008c

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lkankan/wheel/widget/WheelView;

    .line 236
    .local v1, "handicapWheel":Lkankan/wheel/widget/WheelView;
    if-eqz p1, :cond_1

    .line 238
    iget-object v7, p0, Lbe/gentgo/tetsuki/NewInvitationFragment;->settings:Lbe/gentgo/tetsuki/GameSettings;

    invoke-virtual {v7}, Lbe/gentgo/tetsuki/GameSettings;->getMaximumHandicap()I

    move-result v4

    .line 239
    .local v4, "maxHandi":I
    if-nez v4, :cond_0

    const/4 v4, 0x1

    .line 240
    :cond_0
    new-array v2, v4, [Ljava/lang/String;

    .line 241
    .local v2, "handis":[Ljava/lang/String;
    const v7, 0x7f080074

    invoke-virtual {p0, v7}, Lbe/gentgo/tetsuki/NewInvitationFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v10

    .line 242
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_3
    if-lt v3, v4, :cond_7

    .line 244
    new-instance v7, Lkankan/wheel/widget/adapters/ArrayWheelAdapter;

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/NewInvitationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v8, v2}, Lkankan/wheel/widget/adapters/ArrayWheelAdapter;-><init>(Landroid/content/Context;[Ljava/lang/Object;)V

    invoke-virtual {v1, v7}, Lkankan/wheel/widget/WheelView;->setViewAdapter(Lkankan/wheel/widget/adapters/WheelViewAdapter;)V

    .line 247
    .end local v2    # "handis":[Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "maxHandi":I
    :cond_1
    iget-object v7, p0, Lbe/gentgo/tetsuki/NewInvitationFragment;->settings:Lbe/gentgo/tetsuki/GameSettings;

    invoke-virtual {v7}, Lbe/gentgo/tetsuki/GameSettings;->getNrOfHandicapStones()I

    move-result v0

    .local v0, "h":I
    if-lez v0, :cond_2

    add-int/lit8 v0, v0, -0x1

    .line 248
    :cond_2
    invoke-virtual {v1, v0, v10}, Lkankan/wheel/widget/WheelView;->setCurrentItem(IZ)V

    .line 251
    iget-object v7, p0, Lbe/gentgo/tetsuki/NewInvitationFragment;->settings:Lbe/gentgo/tetsuki/GameSettings;

    invoke-virtual {v7}, Lbe/gentgo/tetsuki/GameSettings;->isIncomplete()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 253
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_4
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v7

    invoke-virtual {v7}, Lbe/gentgo/tetsuki/Server;->getNrOfSeekTimeSettings()I

    move-result v7

    if-lt v3, v7, :cond_8

    .line 266
    .end local v3    # "i":I
    :cond_3
    :goto_5
    iget-object v7, p0, Lbe/gentgo/tetsuki/NewInvitationFragment;->adapter:Lbe/gentgo/tetsuki/InvitationAdapter;

    invoke-virtual {v7}, Lbe/gentgo/tetsuki/InvitationAdapter;->reload()V

    .line 267
    return-void

    .line 230
    .end local v0    # "h":I
    .end local v1    # "handicapWheel":Lkankan/wheel/widget/WheelView;
    :cond_4
    sget-object v7, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto/16 :goto_0

    .line 231
    :cond_5
    sget-object v7, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_1

    .line 232
    :cond_6
    sget-object v7, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_2

    .line 243
    .restart local v1    # "handicapWheel":Lkankan/wheel/widget/WheelView;
    .restart local v2    # "handis":[Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v4    # "maxHandi":I
    :cond_7
    const v7, 0x7f080076

    invoke-virtual {p0, v7}, Lbe/gentgo/tetsuki/NewInvitationFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    add-int/lit8 v9, v3, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v3

    .line 242
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 254
    .end local v2    # "handis":[Ljava/lang/String;
    .end local v4    # "maxHandi":I
    .restart local v0    # "h":I
    :cond_8
    iget-object v7, p0, Lbe/gentgo/tetsuki/NewInvitationFragment;->settings:Lbe/gentgo/tetsuki/GameSettings;

    invoke-virtual {v7}, Lbe/gentgo/tetsuki/GameSettings;->getTimeSettings()Lbe/gentgo/tetsuki/GameTimeSettings;

    move-result-object v7

    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v8

    invoke-virtual {v8, v3}, Lbe/gentgo/tetsuki/Server;->getSeekTimeSettings(I)Lbe/gentgo/tetsuki/GameTimeSettings;

    move-result-object v8

    invoke-virtual {v7, v8}, Lbe/gentgo/tetsuki/GameTimeSettings;->equals(Lbe/gentgo/tetsuki/GameTimeSettings;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 255
    iget-object v7, p0, Lbe/gentgo/tetsuki/NewInvitationFragment;->mainTimeWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v7, v3, v10}, Lkankan/wheel/widget/WheelView;->setCurrentItem(IZ)V

    .line 253
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 259
    .end local v3    # "i":I
    :cond_a
    iget-boolean v7, p0, Lbe/gentgo/tetsuki/NewInvitationFragment;->nmatch:Z

    if-nez v7, :cond_3

    .line 260
    iget-object v7, p0, Lbe/gentgo/tetsuki/NewInvitationFragment;->settings:Lbe/gentgo/tetsuki/GameSettings;

    invoke-virtual {v7}, Lbe/gentgo/tetsuki/GameSettings;->getTimeSettings()Lbe/gentgo/tetsuki/GameTimeSettings;

    move-result-object v6

    .line 261
    .local v6, "t":Lbe/gentgo/tetsuki/GameTimeSettings;
    iget-object v7, p0, Lbe/gentgo/tetsuki/NewInvitationFragment;->mainTimeWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v6}, Lbe/gentgo/tetsuki/GameTimeSettings;->getInitialTime()I

    move-result v8

    div-int/lit8 v8, v8, 0x3c

    invoke-virtual {v7, v8}, Lkankan/wheel/widget/WheelView;->setCurrentItem(I)V

    .line 262
    iget-object v7, p0, Lbe/gentgo/tetsuki/NewInvitationFragment;->byoyomiWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v6}, Lbe/gentgo/tetsuki/GameTimeSettings;->getPeriod()I

    move-result v8

    div-int/lit8 v8, v8, 0x3c

    invoke-virtual {v7, v8}, Lkankan/wheel/widget/WheelView;->setCurrentItem(I)V

    goto :goto_5
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 18
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    const v14, 0x7f03001c

    const/4 v15, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v14, v1, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v13

    .line 43
    .local v13, "view":Landroid/view/View;
    const v14, 0x7f0b0029

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 44
    .local v12, "title":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v14, v0, Lbe/gentgo/tetsuki/NewInvitationFragment;->settings:Lbe/gentgo/tetsuki/GameSettings;

    invoke-virtual {v14}, Lbe/gentgo/tetsuki/GameSettings;->isIncomplete()Z

    move-result v14

    if-eqz v14, :cond_0

    const v14, 0x7f0800a4

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setText(I)V

    .line 46
    :cond_0
    const v14, 0x7f0b0097

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v14, v0, Lbe/gentgo/tetsuki/NewInvitationFragment;->blackButton:Landroid/widget/Button;

    .line 47
    const v14, 0x7f0b0098

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v14, v0, Lbe/gentgo/tetsuki/NewInvitationFragment;->nigiriButton:Landroid/widget/Button;

    .line 48
    const v14, 0x7f0b0099

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v14, v0, Lbe/gentgo/tetsuki/NewInvitationFragment;->whiteButton:Landroid/widget/Button;

    .line 49
    move-object/from16 v0, p0

    iget-object v14, v0, Lbe/gentgo/tetsuki/NewInvitationFragment;->settings:Lbe/gentgo/tetsuki/GameSettings;

    invoke-virtual {v14}, Lbe/gentgo/tetsuki/GameSettings;->isIncomplete()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 51
    move-object/from16 v0, p0

    iget-object v14, v0, Lbe/gentgo/tetsuki/NewInvitationFragment;->blackButton:Landroid/widget/Button;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setVisibility(I)V

    .line 52
    move-object/from16 v0, p0

    iget-object v14, v0, Lbe/gentgo/tetsuki/NewInvitationFragment;->nigiriButton:Landroid/widget/Button;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setVisibility(I)V

    .line 53
    move-object/from16 v0, p0

    iget-object v14, v0, Lbe/gentgo/tetsuki/NewInvitationFragment;->whiteButton:Landroid/widget/Button;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setVisibility(I)V

    .line 54
    const v14, 0x7f0b0096

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 57
    :cond_1
    const v14, 0x7f0b008c

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lkankan/wheel/widget/WheelView;

    move-object/from16 v0, p0

    iput-object v14, v0, Lbe/gentgo/tetsuki/NewInvitationFragment;->handicapWheel:Lkankan/wheel/widget/WheelView;

    .line 58
    const v14, 0x7f0b009e

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lkankan/wheel/widget/WheelView;

    move-object/from16 v0, p0

    iput-object v14, v0, Lbe/gentgo/tetsuki/NewInvitationFragment;->mainTimeWheel:Lkankan/wheel/widget/WheelView;

    .line 59
    const v14, 0x7f0b009f

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lkankan/wheel/widget/WheelView;

    move-object/from16 v0, p0

    iput-object v14, v0, Lbe/gentgo/tetsuki/NewInvitationFragment;->byoyomiWheel:Lkankan/wheel/widget/WheelView;

    .line 60
    const v14, 0x7f0b0093

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/SeekBar;

    move-object/from16 v0, p0

    iput-object v14, v0, Lbe/gentgo/tetsuki/NewInvitationFragment;->sizeSlider:Landroid/widget/SeekBar;

    .line 63
    const v14, 0x7f0b0091

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ViewFlipper;

    .line 64
    .local v4, "flipper":Landroid/widget/ViewFlipper;
    const/4 v14, 0x4

    invoke-virtual {v4, v14}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    .line 67
    const v14, 0x7f0b002b

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ListView;

    .line 68
    .local v8, "list":Landroid/widget/ListView;
    new-instance v14, Lbe/gentgo/tetsuki/InvitationAdapter;

    move-object/from16 v0, p0

    iget-object v15, v0, Lbe/gentgo/tetsuki/NewInvitationFragment;->settings:Lbe/gentgo/tetsuki/GameSettings;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lbe/gentgo/tetsuki/NewInvitationFragment;->nmatch:Z

    move/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Lbe/gentgo/tetsuki/NewInvitationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-direct/range {v14 .. v17}, Lbe/gentgo/tetsuki/InvitationAdapter;-><init>(Lbe/gentgo/tetsuki/GameSettings;ZLandroid/app/Activity;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lbe/gentgo/tetsuki/NewInvitationFragment;->adapter:Lbe/gentgo/tetsuki/InvitationAdapter;

    .line 69
    move-object/from16 v0, p0

    iget-object v14, v0, Lbe/gentgo/tetsuki/NewInvitationFragment;->adapter:Lbe/gentgo/tetsuki/InvitationAdapter;

    invoke-virtual {v8, v14}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 70
    new-instance v14, Lbe/gentgo/tetsuki/NewInvitationFragment$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lbe/gentgo/tetsuki/NewInvitationFragment$1;-><init>(Lbe/gentgo/tetsuki/NewInvitationFragment;)V

    invoke-virtual {v8, v14}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 92
    move-object/from16 v0, p0

    iget-object v14, v0, Lbe/gentgo/tetsuki/NewInvitationFragment;->sizeSlider:Landroid/widget/SeekBar;

    const/4 v15, 0x7

    invoke-virtual {v14, v15}, Landroid/widget/SeekBar;->setMax(I)V

    .line 93
    move-object/from16 v0, p0

    iget-object v14, v0, Lbe/gentgo/tetsuki/NewInvitationFragment;->sizeSlider:Landroid/widget/SeekBar;

    new-instance v15, Lbe/gentgo/tetsuki/NewInvitationFragment$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lbe/gentgo/tetsuki/NewInvitationFragment$2;-><init>(Lbe/gentgo/tetsuki/NewInvitationFragment;)V

    invoke-virtual {v14, v15}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 112
    new-instance v2, Lbe/gentgo/tetsuki/NewInvitationFragment$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lbe/gentgo/tetsuki/NewInvitationFragment$3;-><init>(Lbe/gentgo/tetsuki/NewInvitationFragment;)V

    .line 124
    .local v2, "clickListener":Landroid/view/View$OnClickListener;
    move-object/from16 v0, p0

    iget-object v14, v0, Lbe/gentgo/tetsuki/NewInvitationFragment;->blackButton:Landroid/widget/Button;

    invoke-virtual {v14, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    move-object/from16 v0, p0

    iget-object v14, v0, Lbe/gentgo/tetsuki/NewInvitationFragment;->nigiriButton:Landroid/widget/Button;

    invoke-virtual {v14, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    move-object/from16 v0, p0

    iget-object v14, v0, Lbe/gentgo/tetsuki/NewInvitationFragment;->whiteButton:Landroid/widget/Button;

    invoke-virtual {v14, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    const v14, 0x7f0b0090

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 138
    .local v7, "inviteButton":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v14, v0, Lbe/gentgo/tetsuki/NewInvitationFragment;->settings:Lbe/gentgo/tetsuki/GameSettings;

    invoke-virtual {v14}, Lbe/gentgo/tetsuki/GameSettings;->isIncomplete()Z

    move-result v14

    if-eqz v14, :cond_2

    const v14, 0x7f0800a5

    invoke-virtual {v7, v14}, Landroid/widget/Button;->setText(I)V

    .line 139
    :cond_2
    new-instance v14, Lbe/gentgo/tetsuki/NewInvitationFragment$4;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lbe/gentgo/tetsuki/NewInvitationFragment$4;-><init>(Lbe/gentgo/tetsuki/NewInvitationFragment;)V

    invoke-virtual {v7, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    const v14, 0x7f0b006c

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 153
    .local v5, "footer":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v14, v0, Lbe/gentgo/tetsuki/NewInvitationFragment;->settings:Lbe/gentgo/tetsuki/GameSettings;

    invoke-virtual {v14}, Lbe/gentgo/tetsuki/GameSettings;->isIncomplete()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 154
    const v14, 0x7f0800a0

    invoke-virtual {v5, v14}, Landroid/widget/TextView;->setText(I)V

    .line 159
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lbe/gentgo/tetsuki/NewInvitationFragment;->nigiriButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lbe/gentgo/tetsuki/NewInvitationFragment;->nmatch:Z

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setEnabled(Z)V

    .line 162
    move-object/from16 v0, p0

    iget-object v14, v0, Lbe/gentgo/tetsuki/NewInvitationFragment;->handicapWheel:Lkankan/wheel/widget/WheelView;

    new-instance v15, Lbe/gentgo/tetsuki/NewInvitationFragment$5;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lbe/gentgo/tetsuki/NewInvitationFragment$5;-><init>(Lbe/gentgo/tetsuki/NewInvitationFragment;)V

    invoke-virtual {v14, v15}, Lkankan/wheel/widget/WheelView;->addChangingListener(Lkankan/wheel/widget/OnWheelChangedListener;)V

    .line 170
    move-object/from16 v0, p0

    iget-object v14, v0, Lbe/gentgo/tetsuki/NewInvitationFragment;->mainTimeWheel:Lkankan/wheel/widget/WheelView;

    new-instance v15, Lbe/gentgo/tetsuki/NewInvitationFragment$6;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lbe/gentgo/tetsuki/NewInvitationFragment$6;-><init>(Lbe/gentgo/tetsuki/NewInvitationFragment;)V

    invoke-virtual {v14, v15}, Lkankan/wheel/widget/WheelView;->addChangingListener(Lkankan/wheel/widget/OnWheelChangedListener;)V

    .line 186
    move-object/from16 v0, p0

    iget-object v14, v0, Lbe/gentgo/tetsuki/NewInvitationFragment;->byoyomiWheel:Lkankan/wheel/widget/WheelView;

    new-instance v15, Lbe/gentgo/tetsuki/NewInvitationFragment$7;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lbe/gentgo/tetsuki/NewInvitationFragment$7;-><init>(Lbe/gentgo/tetsuki/NewInvitationFragment;)V

    invoke-virtual {v14, v15}, Lkankan/wheel/widget/WheelView;->addChangingListener(Lkankan/wheel/widget/OnWheelChangedListener;)V

    .line 195
    const/16 v14, 0x3c

    new-array v11, v14, [Ljava/lang/String;

    .line 196
    .local v11, "times":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    const/16 v14, 0x3c

    if-lt v6, v14, :cond_5

    .line 198
    move-object/from16 v0, p0

    iget-object v14, v0, Lbe/gentgo/tetsuki/NewInvitationFragment;->settings:Lbe/gentgo/tetsuki/GameSettings;

    invoke-virtual {v14}, Lbe/gentgo/tetsuki/GameSettings;->isIncomplete()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 199
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v14

    invoke-virtual {v14}, Lbe/gentgo/tetsuki/Server;->getNrOfSeekTimeSettings()I

    move-result v3

    .line 200
    .local v3, "cnt":I
    new-array v10, v3, [Ljava/lang/String;

    .line 201
    .local v10, "seekTimes":[Ljava/lang/String;
    const/4 v6, 0x0

    :goto_2
    if-lt v6, v3, :cond_6

    .line 209
    move-object/from16 v0, p0

    iget-object v14, v0, Lbe/gentgo/tetsuki/NewInvitationFragment;->mainTimeWheel:Lkankan/wheel/widget/WheelView;

    new-instance v15, Lkankan/wheel/widget/adapters/ArrayWheelAdapter;

    invoke-virtual/range {p0 .. p0}, Lbe/gentgo/tetsuki/NewInvitationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v10}, Lkankan/wheel/widget/adapters/ArrayWheelAdapter;-><init>(Landroid/content/Context;[Ljava/lang/Object;)V

    invoke-virtual {v14, v15}, Lkankan/wheel/widget/WheelView;->setViewAdapter(Lkankan/wheel/widget/adapters/WheelViewAdapter;)V

    .line 210
    move-object/from16 v0, p0

    iget-object v14, v0, Lbe/gentgo/tetsuki/NewInvitationFragment;->byoyomiWheel:Lkankan/wheel/widget/WheelView;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Lkankan/wheel/widget/WheelView;->setVisibility(I)V

    .line 217
    .end local v3    # "cnt":I
    .end local v10    # "seekTimes":[Ljava/lang/String;
    :goto_3
    return-object v13

    .line 155
    .end local v6    # "i":I
    .end local v11    # "times":[Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lbe/gentgo/tetsuki/NewInvitationFragment;->nmatch:Z

    if-eqz v14, :cond_4

    .line 156
    const-string v14, ""

    invoke-virtual {v5, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 158
    :cond_4
    const v14, 0x7f080104

    invoke-virtual {v5, v14}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 196
    .restart local v6    # "i":I
    .restart local v11    # "times":[Ljava/lang/String;
    :cond_5
    const v14, 0x7f08000e

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lbe/gentgo/tetsuki/NewInvitationFragment;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v11, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 203
    .restart local v3    # "cnt":I
    .restart local v10    # "seekTimes":[Ljava/lang/String;
    :cond_6
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v14

    invoke-virtual {v14, v6}, Lbe/gentgo/tetsuki/Server;->getSeekTimeSettings(I)Lbe/gentgo/tetsuki/GameTimeSettings;

    move-result-object v9

    .line 204
    .local v9, "s":Lbe/gentgo/tetsuki/GameTimeSettings;
    invoke-virtual {v9}, Lbe/gentgo/tetsuki/GameTimeSettings;->isCanadianExtraTime()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 205
    const v14, 0x7f080015

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lbe/gentgo/tetsuki/NewInvitationFragment;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual {v9}, Lbe/gentgo/tetsuki/GameTimeSettings;->getInitialTime()I

    move-result v17

    div-int/lit8 v17, v17, 0x3c

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-virtual {v9}, Lbe/gentgo/tetsuki/GameTimeSettings;->getPeriod()I

    move-result v17

    div-int/lit8 v17, v17, 0x3c

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    invoke-virtual {v9}, Lbe/gentgo/tetsuki/GameTimeSettings;->getNrOfStones()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v10, v6

    .line 201
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 207
    :cond_7
    const-string v14, "other"

    aput-object v14, v10, v6

    goto :goto_4

    .line 213
    .end local v3    # "cnt":I
    .end local v9    # "s":Lbe/gentgo/tetsuki/GameTimeSettings;
    .end local v10    # "seekTimes":[Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lbe/gentgo/tetsuki/NewInvitationFragment;->mainTimeWheel:Lkankan/wheel/widget/WheelView;

    new-instance v15, Lkankan/wheel/widget/adapters/ArrayWheelAdapter;

    invoke-virtual/range {p0 .. p0}, Lbe/gentgo/tetsuki/NewInvitationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v11}, Lkankan/wheel/widget/adapters/ArrayWheelAdapter;-><init>(Landroid/content/Context;[Ljava/lang/Object;)V

    invoke-virtual {v14, v15}, Lkankan/wheel/widget/WheelView;->setViewAdapter(Lkankan/wheel/widget/adapters/WheelViewAdapter;)V

    .line 214
    move-object/from16 v0, p0

    iget-object v14, v0, Lbe/gentgo/tetsuki/NewInvitationFragment;->byoyomiWheel:Lkankan/wheel/widget/WheelView;

    new-instance v15, Lkankan/wheel/widget/adapters/ArrayWheelAdapter;

    invoke-virtual/range {p0 .. p0}, Lbe/gentgo/tetsuki/NewInvitationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v11}, Lkankan/wheel/widget/adapters/ArrayWheelAdapter;-><init>(Landroid/content/Context;[Ljava/lang/Object;)V

    invoke-virtual {v14, v15}, Lkankan/wheel/widget/WheelView;->setViewAdapter(Lkankan/wheel/widget/adapters/WheelViewAdapter;)V

    goto/16 :goto_3
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 222
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 223
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lbe/gentgo/tetsuki/NewInvitationFragment;->update(Z)V

    .line 224
    return-void
.end method
