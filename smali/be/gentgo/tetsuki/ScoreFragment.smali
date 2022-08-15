.class public Lbe/gentgo/tetsuki/ScoreFragment;
.super Landroid/app/Fragment;
.source "ScoreFragment.java"


# instance fields
.field game:Lbe/gentgo/tetsuki/Game;

.field gameActivity:Lbe/gentgo/tetsuki/GameBaseActivity;

.field score:Lbe/gentgo/tetsuki/ScoreCount;


# direct methods
.method public constructor <init>(Lbe/gentgo/tetsuki/GameBaseActivity;Lbe/gentgo/tetsuki/Game;Lbe/gentgo/tetsuki/ScoreCount;)V
    .locals 1
    .param p1, "act"    # Lbe/gentgo/tetsuki/GameBaseActivity;
    .param p2, "game"    # Lbe/gentgo/tetsuki/Game;
    .param p3, "score"    # Lbe/gentgo/tetsuki/ScoreCount;

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 273
    const/4 v0, 0x0

    iput-object v0, p0, Lbe/gentgo/tetsuki/ScoreFragment;->gameActivity:Lbe/gentgo/tetsuki/GameBaseActivity;

    .line 20
    iput-object p1, p0, Lbe/gentgo/tetsuki/ScoreFragment;->gameActivity:Lbe/gentgo/tetsuki/GameBaseActivity;

    .line 21
    iput-object p2, p0, Lbe/gentgo/tetsuki/ScoreFragment;->game:Lbe/gentgo/tetsuki/Game;

    .line 22
    iput-object p3, p0, Lbe/gentgo/tetsuki/ScoreFragment;->score:Lbe/gentgo/tetsuki/ScoreCount;

    .line 23
    return-void
.end method

.method static synthetic access$0(Lbe/gentgo/tetsuki/ScoreFragment;)V
    .locals 0

    .prologue
    .line 243
    invoke-direct {p0}, Lbe/gentgo/tetsuki/ScoreFragment;->updateLockControls()V

    return-void
.end method

.method public static localizedTextForGameResult(Landroid/content/Context;Lbe/gentgo/tetsuki/Game;Lbe/gentgo/tetsuki/ScoreCount;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "game"    # Lbe/gentgo/tetsuki/Game;
    .param p2, "score"    # Lbe/gentgo/tetsuki/ScoreCount;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 118
    if-nez p1, :cond_0

    .line 119
    const-string v2, ""

    .line 149
    :goto_0
    return-object v2

    .line 120
    :cond_0
    invoke-virtual {p1}, Lbe/gentgo/tetsuki/Game;->getTurn()I

    move-result v2

    if-nez v2, :cond_1

    .line 121
    const v2, 0x7f080079

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 122
    :cond_1
    invoke-virtual {p1}, Lbe/gentgo/tetsuki/Game;->isOver()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 124
    invoke-virtual {p1}, Lbe/gentgo/tetsuki/Game;->getTurn()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 125
    const v2, 0x7f08002e

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 127
    :cond_2
    invoke-virtual {p1}, Lbe/gentgo/tetsuki/Game;->getTurn()I

    move-result v2

    if-ne v2, v6, :cond_3

    const v2, 0x7f080058

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, "winner":Ljava/lang/String;
    :goto_1
    invoke-virtual {p1}, Lbe/gentgo/tetsuki/Game;->isWonOnTime()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 129
    const v2, 0x7f08002a

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 127
    .end local v1    # "winner":Ljava/lang/String;
    :cond_3
    const v2, 0x7f080059

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 130
    .restart local v1    # "winner":Ljava/lang/String;
    :cond_4
    invoke-virtual {p1}, Lbe/gentgo/tetsuki/Game;->isWonOnPoints()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 131
    if-nez p2, :cond_7

    .line 133
    invoke-virtual {p1}, Lbe/gentgo/tetsuki/Game;->getTurn()I

    move-result v2

    if-ne v2, v6, :cond_5

    .line 134
    const v2, 0x7f080029

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 135
    :cond_5
    invoke-virtual {p1}, Lbe/gentgo/tetsuki/Game;->getTurn()I

    move-result v2

    const/4 v3, -0x2

    if-ne v2, v3, :cond_6

    .line 136
    const v2, 0x7f080028

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 137
    :cond_6
    const-string v2, ""

    goto :goto_0

    .line 139
    :cond_7
    invoke-virtual {p2}, Lbe/gentgo/tetsuki/ScoreCount;->getBlackScore()F

    move-result v2

    invoke-virtual {p2}, Lbe/gentgo/tetsuki/ScoreCount;->getWhiteScore()F

    move-result v3

    sub-float v0, v2, v3

    .line 140
    .local v0, "result":F
    const/4 v2, 0x0

    cmpg-float v2, v0, v2

    if-gez v2, :cond_8

    neg-float v0, v0

    .line 141
    :cond_8
    float-to-int v2, v0

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-nez v2, :cond_9

    .line 142
    const v2, 0x7f08002c

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v4

    float-to-int v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 144
    :cond_9
    const v2, 0x7f08002d

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v4

    float-to-int v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 146
    .end local v0    # "result":F
    :cond_a
    const v2, 0x7f08002b

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 149
    .end local v1    # "winner":Ljava/lang/String;
    :cond_b
    invoke-virtual {p1}, Lbe/gentgo/tetsuki/Game;->getGameSettings()Lbe/gentgo/tetsuki/GameSettings;

    move-result-object v2

    invoke-virtual {v2}, Lbe/gentgo/tetsuki/GameSettings;->getTitle()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0
.end method

.method private updateLockControls()V
    .locals 7

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 244
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/ScoreFragment;->getView()Landroid/view/View;

    move-result-object v3

    const v6, 0x7f0b008f

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget-object v3, p0, Lbe/gentgo/tetsuki/ScoreFragment;->gameActivity:Lbe/gentgo/tetsuki/GameBaseActivity;

    invoke-virtual {v3}, Lbe/gentgo/tetsuki/GameBaseActivity;->canSaveCopyToArchive()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 247
    iget-object v3, p0, Lbe/gentgo/tetsuki/ScoreFragment;->gameActivity:Lbe/gentgo/tetsuki/GameBaseActivity;

    invoke-virtual {v3}, Lbe/gentgo/tetsuki/GameBaseActivity;->getDocument()Lbe/gentgo/tetsuki/Document;

    move-result-object v0

    .line 248
    .local v0, "doc":Lbe/gentgo/tetsuki/Document;
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/ScoreFragment;->getView()Landroid/view/View;

    move-result-object v3

    const v6, 0x7f0b00c8

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-nez v0, :cond_2

    :goto_1
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 249
    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/ScoreFragment;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0b00ca

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 251
    .local v1, "editButton":Landroid/widget/Button;
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/ScoreFragment;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0b00c9

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 252
    .local v2, "viewButton":Landroid/widget/Button;
    invoke-virtual {v0}, Lbe/gentgo/tetsuki/Document;->getReadOnly()Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 253
    invoke-virtual {v0}, Lbe/gentgo/tetsuki/Document;->getReadOnly()Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :goto_3
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 256
    .end local v1    # "editButton":Landroid/widget/Button;
    .end local v2    # "viewButton":Landroid/widget/Button;
    :cond_0
    return-void

    .end local v0    # "doc":Lbe/gentgo/tetsuki/Document;
    :cond_1
    move v3, v5

    .line 244
    goto :goto_0

    .restart local v0    # "doc":Lbe/gentgo/tetsuki/Document;
    :cond_2
    move v5, v4

    .line 248
    goto :goto_1

    .line 252
    .restart local v1    # "editButton":Landroid/widget/Button;
    .restart local v2    # "viewButton":Landroid/widget/Button;
    :cond_3
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_2

    .line 253
    :cond_4
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    goto :goto_3
.end method


# virtual methods
.method findLabel(I)Landroid/widget/TextView;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 259
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/ScoreFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method format(F)Ljava/lang/String;
    .locals 7
    .param p1, "value"    # F

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 262
    cmpl-float v0, p1, v6

    if-nez v0, :cond_0

    const-string v0, ""

    .line 271
    :goto_0
    return-object v0

    .line 263
    :cond_0
    float-to-double v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    const-string v0, "\u00bd"

    goto :goto_0

    .line 264
    :cond_1
    float-to-double v0, p1

    const-wide/high16 v2, -0x4020000000000000L    # -0.5

    cmpl-double v0, v0, v2

    if-nez v0, :cond_2

    const-string v0, "-\u00bd"

    goto :goto_0

    .line 265
    :cond_2
    float-to-int v0, p1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_3

    .line 266
    const-string v0, "%d"

    new-array v1, v5, [Ljava/lang/Object;

    float-to-int v2, p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 268
    :cond_3
    cmpg-float v0, p1, v6

    if-gez v0, :cond_4

    .line 269
    const-string v0, "-%d\u00bd"

    new-array v1, v5, [Ljava/lang/Object;

    neg-float v2, p1

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 271
    :cond_4
    const-string v0, "%d\u00bd"

    new-array v1, v5, [Ljava/lang/Object;

    float-to-int v2, p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 26
    const v6, 0x7f030024

    const/4 v7, 0x0

    invoke-virtual {p1, v6, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 28
    .local v3, "result":Landroid/view/View;
    const v6, 0x7f0b00b6

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 29
    .local v0, "done":Landroid/widget/Button;
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 30
    new-instance v6, Lbe/gentgo/tetsuki/ScoreFragment$1;

    invoke-direct {v6, p0}, Lbe/gentgo/tetsuki/ScoreFragment$1;-><init>(Lbe/gentgo/tetsuki/ScoreFragment;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    :goto_0
    const v6, 0x7f0b008f

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 43
    .local v4, "save":Landroid/widget/Button;
    new-instance v6, Lbe/gentgo/tetsuki/ScoreFragment$2;

    invoke-direct {v6, p0}, Lbe/gentgo/tetsuki/ScoreFragment$2;-><init>(Lbe/gentgo/tetsuki/ScoreFragment;)V

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    const v6, 0x7f0b00c5

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance v7, Lbe/gentgo/tetsuki/ScoreFragment$3;

    invoke-direct {v7, p0}, Lbe/gentgo/tetsuki/ScoreFragment$3;-><init>(Lbe/gentgo/tetsuki/ScoreFragment;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    const v6, 0x7f0b00c7

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance v7, Lbe/gentgo/tetsuki/ScoreFragment$4;

    invoke-direct {v7, p0}, Lbe/gentgo/tetsuki/ScoreFragment$4;-><init>(Lbe/gentgo/tetsuki/ScoreFragment;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    new-instance v2, Lbe/gentgo/tetsuki/ScoreFragment$5;

    invoke-direct {v2, p0}, Lbe/gentgo/tetsuki/ScoreFragment$5;-><init>(Lbe/gentgo/tetsuki/ScoreFragment;)V

    .line 86
    .local v2, "handicapTap":Landroid/view/View$OnClickListener;
    const v6, 0x7f0b00b7

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    const v6, 0x7f0b00b8

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    const v6, 0x7f0b00ca

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 90
    .local v1, "editButton":Landroid/widget/Button;
    new-instance v6, Lbe/gentgo/tetsuki/ScoreFragment$6;

    invoke-direct {v6, p0}, Lbe/gentgo/tetsuki/ScoreFragment$6;-><init>(Lbe/gentgo/tetsuki/ScoreFragment;)V

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    const v6, 0x7f0b00c9

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 99
    .local v5, "viewButton":Landroid/widget/Button;
    new-instance v6, Lbe/gentgo/tetsuki/ScoreFragment$7;

    invoke-direct {v6, p0}, Lbe/gentgo/tetsuki/ScoreFragment$7;-><init>(Lbe/gentgo/tetsuki/ScoreFragment;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    return-object v3

    .line 39
    .end local v1    # "editButton":Landroid/widget/Button;
    .end local v2    # "handicapTap":Landroid/view/View$OnClickListener;
    .end local v4    # "save":Landroid/widget/Button;
    .end local v5    # "viewButton":Landroid/widget/Button;
    :cond_0
    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 112
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 113
    iget-object v0, p0, Lbe/gentgo/tetsuki/ScoreFragment;->game:Lbe/gentgo/tetsuki/Game;

    iget-object v1, p0, Lbe/gentgo/tetsuki/ScoreFragment;->score:Lbe/gentgo/tetsuki/ScoreCount;

    invoke-virtual {p0, v0, v1}, Lbe/gentgo/tetsuki/ScoreFragment;->updateGame(Lbe/gentgo/tetsuki/Game;Lbe/gentgo/tetsuki/ScoreCount;)V

    .line 114
    return-void
.end method

.method public updateGame(Lbe/gentgo/tetsuki/Game;Lbe/gentgo/tetsuki/ScoreCount;)V
    .locals 18
    .param p1, "game"    # Lbe/gentgo/tetsuki/Game;
    .param p2, "score"    # Lbe/gentgo/tetsuki/ScoreCount;

    .prologue
    .line 154
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lbe/gentgo/tetsuki/ScoreFragment;->game:Lbe/gentgo/tetsuki/Game;

    .line 155
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lbe/gentgo/tetsuki/ScoreFragment;->score:Lbe/gentgo/tetsuki/ScoreCount;

    .line 156
    invoke-virtual/range {p0 .. p0}, Lbe/gentgo/tetsuki/ScoreFragment;->getView()Landroid/view/View;

    move-result-object v13

    if-nez v13, :cond_0

    .line 241
    :goto_0
    return-void

    .line 161
    :cond_0
    if-nez p1, :cond_7

    .line 162
    const v13, 0x7f0b00b7

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lbe/gentgo/tetsuki/ScoreFragment;->findLabel(I)Landroid/widget/TextView;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    const v13, 0x7f0b00bb

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lbe/gentgo/tetsuki/ScoreFragment;->findLabel(I)Landroid/widget/TextView;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    const v13, 0x7f0b00b9

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lbe/gentgo/tetsuki/ScoreFragment;->findLabel(I)Landroid/widget/TextView;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    invoke-virtual/range {p0 .. p0}, Lbe/gentgo/tetsuki/ScoreFragment;->getView()Landroid/view/View;

    move-result-object v13

    const v14, 0x7f0b00b8

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 184
    :goto_1
    const/4 v2, 0x0

    .local v2, "b":I
    const/4 v9, 0x0

    .line 185
    .local v9, "w":I
    if-eqz p1, :cond_1

    .line 186
    invoke-virtual/range {p1 .. p1}, Lbe/gentgo/tetsuki/Game;->getBlackPrisoners()I

    move-result v2

    .line 187
    invoke-virtual/range {p1 .. p1}, Lbe/gentgo/tetsuki/Game;->getWhitePrisoners()I

    move-result v9

    .line 189
    :cond_1
    const v13, 0x7f0b00be

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lbe/gentgo/tetsuki/ScoreFragment;->findLabel(I)Landroid/widget/TextView;

    move-result-object v13

    int-to-float v14, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lbe/gentgo/tetsuki/ScoreFragment;->format(F)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    const v13, 0x7f0b00bc

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lbe/gentgo/tetsuki/ScoreFragment;->findLabel(I)Landroid/widget/TextView;

    move-result-object v13

    int-to-float v14, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lbe/gentgo/tetsuki/ScoreFragment;->format(F)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    if-eqz p2, :cond_c

    .line 193
    const v13, 0x7f0b00c1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lbe/gentgo/tetsuki/ScoreFragment;->findLabel(I)Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lbe/gentgo/tetsuki/ScoreCount;->getBlackTerritory()I

    move-result v14

    int-to-float v14, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lbe/gentgo/tetsuki/ScoreFragment;->format(F)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    const v13, 0x7f0b00bf

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lbe/gentgo/tetsuki/ScoreFragment;->findLabel(I)Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lbe/gentgo/tetsuki/ScoreCount;->getWhiteTerritory()I

    move-result v14

    int-to-float v14, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lbe/gentgo/tetsuki/ScoreFragment;->format(F)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    const v13, 0x7f0b00c4

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lbe/gentgo/tetsuki/ScoreFragment;->findLabel(I)Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lbe/gentgo/tetsuki/ScoreCount;->getBlackScore()F

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lbe/gentgo/tetsuki/ScoreFragment;->format(F)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    const v13, 0x7f0b00c2

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lbe/gentgo/tetsuki/ScoreFragment;->findLabel(I)Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lbe/gentgo/tetsuki/ScoreCount;->getWhiteScore()F

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lbe/gentgo/tetsuki/ScoreFragment;->format(F)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    const v13, 0x7f0b00c0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lbe/gentgo/tetsuki/ScoreFragment;->findLabel(I)Landroid/widget/TextView;

    move-result-object v13

    const/4 v14, -0x1

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 198
    const v13, 0x7f0b00c3

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lbe/gentgo/tetsuki/ScoreFragment;->findLabel(I)Landroid/widget/TextView;

    move-result-object v13

    const/4 v14, -0x1

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 208
    :goto_2
    const v13, 0x7f0b0088

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lbe/gentgo/tetsuki/ScoreFragment;->findLabel(I)Landroid/widget/TextView;

    move-result-object v7

    .line 209
    .local v7, "info":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lbe/gentgo/tetsuki/ScoreFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v13, v0, v1}, Lbe/gentgo/tetsuki/ScoreFragment;->localizedTextForGameResult(Landroid/content/Context;Lbe/gentgo/tetsuki/Game;Lbe/gentgo/tetsuki/ScoreCount;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    const v13, 0x7f0b00c5

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lbe/gentgo/tetsuki/ScoreFragment;->findLabel(I)Landroid/widget/TextView;

    move-result-object v14

    if-nez p1, :cond_d

    const/16 v13, 0x8

    :goto_3
    invoke-virtual {v14, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 212
    const v13, 0x7f0b00c7

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lbe/gentgo/tetsuki/ScoreFragment;->findLabel(I)Landroid/widget/TextView;

    move-result-object v14

    if-nez p1, :cond_e

    const/16 v13, 0x8

    :goto_4
    invoke-virtual {v14, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 213
    if-eqz p1, :cond_6

    .line 215
    move-object/from16 v0, p1

    iget-object v13, v0, Lbe/gentgo/tetsuki/Game;->gameSettings:Lbe/gentgo/tetsuki/GameSettings;

    invoke-virtual {v13}, Lbe/gentgo/tetsuki/GameSettings;->getBlackPlayer()Lbe/gentgo/tetsuki/Player;

    move-result-object v3

    .line 216
    .local v3, "black":Lbe/gentgo/tetsuki/Player;
    invoke-virtual {v3}, Lbe/gentgo/tetsuki/Player;->getID()Ljava/lang/String;

    move-result-object v5

    .line 217
    .local v5, "blackTitle":Ljava/lang/String;
    invoke-virtual {v3}, Lbe/gentgo/tetsuki/Player;->hasTitle()Z

    move-result v13

    if-eqz v13, :cond_f

    .line 218
    const-string v13, "%s (%s)"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v5, v14, v15

    const/4 v15, 0x1

    invoke-virtual {v3}, Lbe/gentgo/tetsuki/Player;->getTitle()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 221
    :cond_2
    :goto_5
    invoke-virtual {v3}, Lbe/gentgo/tetsuki/Player;->isOffline()Z

    move-result v13

    if-nez v13, :cond_3

    .line 222
    const v13, 0x7f080112

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lbe/gentgo/tetsuki/ScoreFragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v5, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 223
    :cond_3
    const v13, 0x7f0b00c7

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lbe/gentgo/tetsuki/ScoreFragment;->findLabel(I)Landroid/widget/TextView;

    move-result-object v4

    .line 224
    .local v4, "blackLabel":Landroid/widget/TextView;
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    invoke-virtual {v3}, Lbe/gentgo/tetsuki/Player;->isOffline()Z

    move-result v13

    if-eqz v13, :cond_11

    const/4 v13, 0x0

    :goto_6
    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 227
    move-object/from16 v0, p1

    iget-object v13, v0, Lbe/gentgo/tetsuki/Game;->gameSettings:Lbe/gentgo/tetsuki/GameSettings;

    invoke-virtual {v13}, Lbe/gentgo/tetsuki/GameSettings;->getWhitePlayer()Lbe/gentgo/tetsuki/Player;

    move-result-object v10

    .line 228
    .local v10, "white":Lbe/gentgo/tetsuki/Player;
    invoke-virtual {v10}, Lbe/gentgo/tetsuki/Player;->getID()Ljava/lang/String;

    move-result-object v12

    .line 229
    .local v12, "whiteTitle":Ljava/lang/String;
    invoke-virtual {v10}, Lbe/gentgo/tetsuki/Player;->hasTitle()Z

    move-result v13

    if-eqz v13, :cond_12

    .line 230
    const-string v13, "%s (%s)"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v12, v14, v15

    const/4 v15, 0x1

    invoke-virtual {v10}, Lbe/gentgo/tetsuki/Player;->getTitle()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 233
    :cond_4
    :goto_7
    invoke-virtual {v10}, Lbe/gentgo/tetsuki/Player;->isOffline()Z

    move-result v13

    if-nez v13, :cond_5

    .line 234
    const v13, 0x7f080112

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lbe/gentgo/tetsuki/ScoreFragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v12, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 235
    :cond_5
    const v13, 0x7f0b00c5

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lbe/gentgo/tetsuki/ScoreFragment;->findLabel(I)Landroid/widget/TextView;

    move-result-object v11

    .line 236
    .local v11, "whiteLabel":Landroid/widget/TextView;
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    invoke-virtual {v10}, Lbe/gentgo/tetsuki/Player;->isOffline()Z

    move-result v13

    if-eqz v13, :cond_14

    const/4 v13, 0x0

    :goto_8
    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 240
    .end local v3    # "black":Lbe/gentgo/tetsuki/Player;
    .end local v4    # "blackLabel":Landroid/widget/TextView;
    .end local v5    # "blackTitle":Ljava/lang/String;
    .end local v10    # "white":Lbe/gentgo/tetsuki/Player;
    .end local v11    # "whiteLabel":Landroid/widget/TextView;
    .end local v12    # "whiteTitle":Ljava/lang/String;
    :cond_6
    invoke-direct/range {p0 .. p0}, Lbe/gentgo/tetsuki/ScoreFragment;->updateLockControls()V

    goto/16 :goto_0

    .line 168
    .end local v2    # "b":I
    .end local v7    # "info":Landroid/widget/TextView;
    .end local v9    # "w":I
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lbe/gentgo/tetsuki/Game;->getGameSettings()Lbe/gentgo/tetsuki/GameSettings;

    move-result-object v13

    invoke-virtual {v13}, Lbe/gentgo/tetsuki/GameSettings;->blackCanChooseHandicap()Z

    move-result v13

    if-eqz v13, :cond_8

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lbe/gentgo/tetsuki/Game;->getLastMoveNr(Z)I

    move-result v13

    if-nez v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lbe/gentgo/tetsuki/ScoreFragment;->gameActivity:Lbe/gentgo/tetsuki/GameBaseActivity;

    invoke-virtual {v13}, Lbe/gentgo/tetsuki/GameBaseActivity;->isMyTurn()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 169
    invoke-virtual/range {p0 .. p0}, Lbe/gentgo/tetsuki/ScoreFragment;->getView()Landroid/view/View;

    move-result-object v13

    const v14, 0x7f0b00b8

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 170
    const v13, 0x7f0b00b7

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lbe/gentgo/tetsuki/ScoreFragment;->findLabel(I)Landroid/widget/TextView;

    move-result-object v13

    const v14, 0x7f08006d

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(I)V

    .line 179
    :goto_9
    invoke-virtual/range {p1 .. p1}, Lbe/gentgo/tetsuki/Game;->getGameSettings()Lbe/gentgo/tetsuki/GameSettings;

    move-result-object v13

    invoke-virtual {v13}, Lbe/gentgo/tetsuki/GameSettings;->getKomi()F

    move-result v8

    .line 180
    .local v8, "komi":F
    const v13, 0x7f0b00bb

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lbe/gentgo/tetsuki/ScoreFragment;->findLabel(I)Landroid/widget/TextView;

    move-result-object v14

    const/4 v13, 0x0

    cmpg-float v13, v8, v13

    if-gez v13, :cond_a

    neg-float v13, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lbe/gentgo/tetsuki/ScoreFragment;->format(F)Ljava/lang/String;

    move-result-object v13

    :goto_a
    invoke-virtual {v14, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    const v13, 0x7f0b00b9

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lbe/gentgo/tetsuki/ScoreFragment;->findLabel(I)Landroid/widget/TextView;

    move-result-object v14

    const/4 v13, 0x0

    cmpl-float v13, v8, v13

    if-lez v13, :cond_b

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lbe/gentgo/tetsuki/ScoreFragment;->format(F)Ljava/lang/String;

    move-result-object v13

    :goto_b
    invoke-virtual {v14, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 173
    .end local v8    # "komi":F
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lbe/gentgo/tetsuki/Game;->getGameSettings()Lbe/gentgo/tetsuki/GameSettings;

    move-result-object v13

    invoke-virtual {v13}, Lbe/gentgo/tetsuki/GameSettings;->getNrOfHandicapStones()I

    move-result v6

    .line 174
    .local v6, "handicap":I
    if-nez v6, :cond_9

    const v13, 0x7f0b00b7

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lbe/gentgo/tetsuki/ScoreFragment;->findLabel(I)Landroid/widget/TextView;

    move-result-object v13

    const v14, 0x7f080074

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(I)V

    .line 176
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lbe/gentgo/tetsuki/ScoreFragment;->getView()Landroid/view/View;

    move-result-object v13

    const v14, 0x7f0b00b8

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    goto :goto_9

    .line 175
    :cond_9
    const v13, 0x7f0b00b7

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lbe/gentgo/tetsuki/ScoreFragment;->findLabel(I)Landroid/widget/TextView;

    move-result-object v13

    const v14, 0x7f080075

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lbe/gentgo/tetsuki/ScoreFragment;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c

    .line 180
    .end local v6    # "handicap":I
    .restart local v8    # "komi":F
    :cond_a
    const-string v13, ""

    goto :goto_a

    .line 181
    :cond_b
    const-string v13, ""

    goto :goto_b

    .line 200
    .end local v8    # "komi":F
    .restart local v2    # "b":I
    .restart local v9    # "w":I
    :cond_c
    const v13, 0x7f0b00c4

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lbe/gentgo/tetsuki/ScoreFragment;->findLabel(I)Landroid/widget/TextView;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    const v13, 0x7f0b00c2

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lbe/gentgo/tetsuki/ScoreFragment;->findLabel(I)Landroid/widget/TextView;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    const v13, 0x7f0b00c1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lbe/gentgo/tetsuki/ScoreFragment;->findLabel(I)Landroid/widget/TextView;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    const v13, 0x7f0b00bf

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lbe/gentgo/tetsuki/ScoreFragment;->findLabel(I)Landroid/widget/TextView;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    const v13, 0x7f0b00c0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lbe/gentgo/tetsuki/ScoreFragment;->findLabel(I)Landroid/widget/TextView;

    move-result-object v13

    const v14, -0x7f000001

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 205
    const v13, 0x7f0b00c3

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lbe/gentgo/tetsuki/ScoreFragment;->findLabel(I)Landroid/widget/TextView;

    move-result-object v13

    const v14, -0x7f000001

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 211
    .restart local v7    # "info":Landroid/widget/TextView;
    :cond_d
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 212
    :cond_e
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 219
    .restart local v3    # "black":Lbe/gentgo/tetsuki/Player;
    .restart local v5    # "blackTitle":Ljava/lang/String;
    :cond_f
    invoke-virtual {v3}, Lbe/gentgo/tetsuki/Player;->isRankProven()Z

    move-result v13

    if-nez v13, :cond_10

    invoke-virtual {v3}, Lbe/gentgo/tetsuki/Player;->getRank()F

    move-result v13

    const/high16 v14, -0x3d3a0000    # -99.0f

    cmpl-float v13, v13, v14

    if-eqz v13, :cond_2

    .line 220
    :cond_10
    const-string v13, "%s (%s)"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v5, v14, v15

    const/4 v15, 0x1

    invoke-virtual {v3}, Lbe/gentgo/tetsuki/Player;->getShortNameForRank()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_5

    .line 225
    .restart local v4    # "blackLabel":Landroid/widget/TextView;
    :cond_11
    const/4 v13, 0x1

    goto/16 :goto_6

    .line 231
    .restart local v10    # "white":Lbe/gentgo/tetsuki/Player;
    .restart local v12    # "whiteTitle":Ljava/lang/String;
    :cond_12
    invoke-virtual {v10}, Lbe/gentgo/tetsuki/Player;->isRankProven()Z

    move-result v13

    if-nez v13, :cond_13

    invoke-virtual {v10}, Lbe/gentgo/tetsuki/Player;->getRank()F

    move-result v13

    const/high16 v14, -0x3d3a0000    # -99.0f

    cmpl-float v13, v13, v14

    if-eqz v13, :cond_4

    .line 232
    :cond_13
    const-string v13, "%s (%s)"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v12, v14, v15

    const/4 v15, 0x1

    invoke-virtual {v10}, Lbe/gentgo/tetsuki/Player;->getShortNameForRank()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_7

    .line 237
    .restart local v11    # "whiteLabel":Landroid/widget/TextView;
    :cond_14
    const/4 v13, 0x1

    goto/16 :goto_8
.end method
