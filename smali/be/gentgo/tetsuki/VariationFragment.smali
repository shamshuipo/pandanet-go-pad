.class public Lbe/gentgo/tetsuki/VariationFragment;
.super Landroid/app/Fragment;
.source "VariationFragment.java"


# instance fields
.field private currentIndex:I

.field private game:Lbe/gentgo/tetsuki/Game;

.field private moveNr:I


# direct methods
.method public constructor <init>(Lbe/gentgo/tetsuki/Game;II)V
    .locals 0
    .param p1, "aGame"    # Lbe/gentgo/tetsuki/Game;
    .param p2, "aMoveNr"    # I
    .param p3, "anIndex"    # I

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 18
    iput-object p1, p0, Lbe/gentgo/tetsuki/VariationFragment;->game:Lbe/gentgo/tetsuki/Game;

    .line 19
    iput p2, p0, Lbe/gentgo/tetsuki/VariationFragment;->moveNr:I

    .line 20
    iput p3, p0, Lbe/gentgo/tetsuki/VariationFragment;->currentIndex:I

    .line 21
    return-void
.end method

.method static synthetic access$0(Lbe/gentgo/tetsuki/VariationFragment;)I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lbe/gentgo/tetsuki/VariationFragment;->currentIndex:I

    return v0
.end method

.method static synthetic access$1(Lbe/gentgo/tetsuki/VariationFragment;I)V
    .locals 0

    .prologue
    .line 148
    iput p1, p0, Lbe/gentgo/tetsuki/VariationFragment;->currentIndex:I

    return-void
.end method

.method static synthetic access$2(Lbe/gentgo/tetsuki/VariationFragment;)Lbe/gentgo/tetsuki/Game;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lbe/gentgo/tetsuki/VariationFragment;->game:Lbe/gentgo/tetsuki/Game;

    return-object v0
.end method

.method static synthetic access$3(Lbe/gentgo/tetsuki/VariationFragment;)I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lbe/gentgo/tetsuki/VariationFragment;->moveNr:I

    return v0
.end method

.method private copyButtonDrawable(Landroid/view/View;I)Landroid/widget/ImageView;
    .locals 3
    .param p1, "container"    # Landroid/view/View;
    .param p2, "id"    # I

    .prologue
    .line 92
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 93
    .local v0, "button":Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 94
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 95
    return-object v0
.end method

.method private setButtonEnabled(IZZ)Landroid/widget/ImageView;
    .locals 3
    .param p1, "id"    # I
    .param p2, "enabled"    # Z
    .param p3, "visible"    # Z

    .prologue
    .line 100
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/VariationFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 102
    .local v0, "button":Landroid/widget/ImageView;
    if-eqz p3, :cond_1

    .line 103
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 104
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz p2, :cond_0

    const/16 v1, 0xff

    :goto_0
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 105
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 110
    :goto_1
    return-object v0

    .line 104
    :cond_0
    const/16 v1, 0x7f

    goto :goto_0

    .line 108
    :cond_1
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 24
    const v3, 0x7f03002f

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 26
    .local v1, "result":Landroid/view/View;
    const v3, 0x7f0b00e5

    invoke-direct {p0, v1, v3}, Lbe/gentgo/tetsuki/VariationFragment;->copyButtonDrawable(Landroid/view/View;I)Landroid/widget/ImageView;

    move-result-object v3

    new-instance v4, Lbe/gentgo/tetsuki/VariationFragment$1;

    invoke-direct {v4, p0}, Lbe/gentgo/tetsuki/VariationFragment$1;-><init>(Lbe/gentgo/tetsuki/VariationFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    const v3, 0x7f0b00e6

    invoke-direct {p0, v1, v3}, Lbe/gentgo/tetsuki/VariationFragment;->copyButtonDrawable(Landroid/view/View;I)Landroid/widget/ImageView;

    move-result-object v3

    new-instance v4, Lbe/gentgo/tetsuki/VariationFragment$2;

    invoke-direct {v4, p0}, Lbe/gentgo/tetsuki/VariationFragment$2;-><init>(Lbe/gentgo/tetsuki/VariationFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    const v3, 0x7f0b0049

    invoke-direct {p0, v1, v3}, Lbe/gentgo/tetsuki/VariationFragment;->copyButtonDrawable(Landroid/view/View;I)Landroid/widget/ImageView;

    move-result-object v3

    new-instance v4, Lbe/gentgo/tetsuki/VariationFragment$3;

    invoke-direct {v4, p0}, Lbe/gentgo/tetsuki/VariationFragment$3;-><init>(Lbe/gentgo/tetsuki/VariationFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    const v3, 0x7f0b0054

    invoke-direct {p0, v1, v3}, Lbe/gentgo/tetsuki/VariationFragment;->copyButtonDrawable(Landroid/view/View;I)Landroid/widget/ImageView;

    move-result-object v3

    new-instance v4, Lbe/gentgo/tetsuki/VariationFragment$4;

    invoke-direct {v4, p0}, Lbe/gentgo/tetsuki/VariationFragment$4;-><init>(Lbe/gentgo/tetsuki/VariationFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    const v3, 0x7f0b0053

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lbe/gentgo/tetsuki/GameSliderView;

    .line 57
    .local v2, "slider":Lbe/gentgo/tetsuki/GameSliderView;
    new-instance v3, Lbe/gentgo/tetsuki/VariationFragment$5;

    invoke-direct {v3, p0}, Lbe/gentgo/tetsuki/VariationFragment$5;-><init>(Lbe/gentgo/tetsuki/VariationFragment;)V

    invoke-virtual {v2, v3}, Lbe/gentgo/tetsuki/GameSliderView;->setListener(Lbe/gentgo/tetsuki/GameSliderView$IndexListener;)V

    .line 68
    const v3, 0x7f0b005b

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f020025

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 71
    const/high16 v3, 0x7f0b0000

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbe/gentgo/tetsuki/GameView;

    .line 72
    .local v0, "gameView":Lbe/gentgo/tetsuki/GameView;
    iput-boolean v5, v0, Lbe/gentgo/tetsuki/GameView;->whiteBackground:Z

    .line 73
    iput-boolean v5, v0, Lbe/gentgo/tetsuki/GameView;->drawMoveNumbers:Z

    .line 75
    new-instance v3, Lbe/gentgo/tetsuki/VariationFragment$6;

    invoke-direct {v3, p0}, Lbe/gentgo/tetsuki/VariationFragment$6;-><init>(Lbe/gentgo/tetsuki/VariationFragment;)V

    invoke-virtual {v0, v3}, Lbe/gentgo/tetsuki/GameView;->setTapListener(Lbe/gentgo/tetsuki/TapListener;)V

    .line 81
    return-object v1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 86
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 87
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/VariationFragment;->update()V

    .line 88
    return-void
.end method

.method protected update()V
    .locals 14

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 114
    iget v8, p0, Lbe/gentgo/tetsuki/VariationFragment;->currentIndex:I

    iget-object v11, p0, Lbe/gentgo/tetsuki/VariationFragment;->game:Lbe/gentgo/tetsuki/Game;

    iget v12, p0, Lbe/gentgo/tetsuki/VariationFragment;->moveNr:I

    invoke-virtual {v11, v12}, Lbe/gentgo/tetsuki/Game;->getNrOfCommentedVariationsAtMove(I)I

    move-result v11

    if-lt v8, v11, :cond_0

    .line 144
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v8, p0, Lbe/gentgo/tetsuki/VariationFragment;->game:Lbe/gentgo/tetsuki/Game;

    iget v11, p0, Lbe/gentgo/tetsuki/VariationFragment;->moveNr:I

    iget v12, p0, Lbe/gentgo/tetsuki/VariationFragment;->currentIndex:I

    invoke-virtual {v8, v11, v12}, Lbe/gentgo/tetsuki/Game;->getCommentedVariation(II)Lbe/gentgo/tetsuki/Game;

    move-result-object v7

    .line 119
    .local v7, "variation":Lbe/gentgo/tetsuki/Game;
    iget-object v8, p0, Lbe/gentgo/tetsuki/VariationFragment;->game:Lbe/gentgo/tetsuki/Game;

    iget v11, p0, Lbe/gentgo/tetsuki/VariationFragment;->moveNr:I

    invoke-virtual {v8, v11}, Lbe/gentgo/tetsuki/Game;->getNrOfCommentedVariationsAtMove(I)I

    move-result v6

    .line 120
    .local v6, "total":I
    const v12, 0x7f0b00e5

    iget v8, p0, Lbe/gentgo/tetsuki/VariationFragment;->currentIndex:I

    if-lez v8, :cond_5

    move v11, v9

    :goto_1
    if-le v6, v9, :cond_6

    move v8, v9

    :goto_2
    invoke-direct {p0, v12, v11, v8}, Lbe/gentgo/tetsuki/VariationFragment;->setButtonEnabled(IZZ)Landroid/widget/ImageView;

    .line 121
    const v12, 0x7f0b00e6

    iget v8, p0, Lbe/gentgo/tetsuki/VariationFragment;->currentIndex:I

    add-int/lit8 v11, v6, -0x1

    if-ge v8, v11, :cond_7

    move v11, v9

    :goto_3
    if-le v6, v9, :cond_8

    move v8, v9

    :goto_4
    invoke-direct {p0, v12, v11, v8}, Lbe/gentgo/tetsuki/VariationFragment;->setButtonEnabled(IZZ)Landroid/widget/ImageView;

    .line 123
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/VariationFragment;->getView()Landroid/view/View;

    move-result-object v8

    const v11, 0x7f0b0029

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 124
    .local v5, "title":Landroid/widget/TextView;
    invoke-virtual {v7}, Lbe/gentgo/tetsuki/Game;->getGameSettings()Lbe/gentgo/tetsuki/GameSettings;

    move-result-object v8

    invoke-virtual {v8}, Lbe/gentgo/tetsuki/GameSettings;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 125
    .local v4, "t":Ljava/lang/String;
    if-eqz v4, :cond_1

    const-string v8, ""

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_1
    const v8, 0x7f080152

    invoke-virtual {p0, v8}, Lbe/gentgo/tetsuki/VariationFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 126
    :cond_2
    if-le v6, v9, :cond_3

    .line 127
    const-string v8, "%s %d/%d"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v4, v11, v10

    iget v12, p0, Lbe/gentgo/tetsuki/VariationFragment;->currentIndex:I

    add-int/lit8 v12, v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v9

    const/4 v12, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v8, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 128
    :cond_3
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/VariationFragment;->getView()Landroid/view/View;

    move-result-object v8

    const v11, 0x7f0b0081

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 132
    .local v0, "comment":Landroid/widget/TextView;
    invoke-virtual {v7}, Lbe/gentgo/tetsuki/Game;->getGameSettings()Lbe/gentgo/tetsuki/GameSettings;

    move-result-object v8

    invoke-virtual {v8}, Lbe/gentgo/tetsuki/GameSettings;->getComment()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/VariationFragment;->getView()Landroid/view/View;

    move-result-object v8

    const/high16 v11, 0x7f0b0000

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lbe/gentgo/tetsuki/GameView;

    .line 135
    .local v1, "gameView":Lbe/gentgo/tetsuki/GameView;
    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Lbe/gentgo/tetsuki/GameView;->setGameAndScore(Lbe/gentgo/tetsuki/Game;Lbe/gentgo/tetsuki/ScoreCount;)V

    .line 137
    invoke-virtual {v7, v9}, Lbe/gentgo/tetsuki/Game;->getMoveNr(Z)I

    move-result v2

    .line 138
    .local v2, "move":I
    invoke-virtual {v7, v9}, Lbe/gentgo/tetsuki/Game;->getLastMoveNr(Z)I

    move-result v6

    .line 139
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/VariationFragment;->getView()Landroid/view/View;

    move-result-object v8

    const v11, 0x7f0b0053

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lbe/gentgo/tetsuki/GameSliderView;

    .line 140
    .local v3, "slider":Lbe/gentgo/tetsuki/GameSliderView;
    invoke-virtual {v3, v2, v6}, Lbe/gentgo/tetsuki/GameSliderView;->setIndexAndTotal(II)V

    .line 142
    const v11, 0x7f0b0049

    if-lez v2, :cond_9

    move v8, v9

    :goto_5
    invoke-direct {p0, v11, v8, v9}, Lbe/gentgo/tetsuki/VariationFragment;->setButtonEnabled(IZZ)Landroid/widget/ImageView;

    .line 143
    const v8, 0x7f0b0054

    if-ge v2, v6, :cond_4

    move v10, v9

    :cond_4
    invoke-direct {p0, v8, v10, v9}, Lbe/gentgo/tetsuki/VariationFragment;->setButtonEnabled(IZZ)Landroid/widget/ImageView;

    goto/16 :goto_0

    .end local v0    # "comment":Landroid/widget/TextView;
    .end local v1    # "gameView":Lbe/gentgo/tetsuki/GameView;
    .end local v2    # "move":I
    .end local v3    # "slider":Lbe/gentgo/tetsuki/GameSliderView;
    .end local v4    # "t":Ljava/lang/String;
    .end local v5    # "title":Landroid/widget/TextView;
    :cond_5
    move v11, v10

    .line 120
    goto/16 :goto_1

    :cond_6
    move v8, v10

    goto/16 :goto_2

    :cond_7
    move v11, v10

    .line 121
    goto/16 :goto_3

    :cond_8
    move v8, v10

    goto/16 :goto_4

    .restart local v0    # "comment":Landroid/widget/TextView;
    .restart local v1    # "gameView":Lbe/gentgo/tetsuki/GameView;
    .restart local v2    # "move":I
    .restart local v3    # "slider":Lbe/gentgo/tetsuki/GameSliderView;
    .restart local v4    # "t":Ljava/lang/String;
    .restart local v5    # "title":Landroid/widget/TextView;
    :cond_9
    move v8, v10

    .line 142
    goto :goto_5
.end method
