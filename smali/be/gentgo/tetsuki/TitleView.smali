.class public Lbe/gentgo/tetsuki/TitleView;
.super Landroid/widget/LinearLayout;
.source "TitleView.java"


# instance fields
.field private game:Lbe/gentgo/tetsuki/Game;

.field private score:Lbe/gentgo/tetsuki/ScoreCount;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 16
    .local v0, "infl":Landroid/view/LayoutInflater;
    const v1, 0x7f03002c

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 17
    return-void
.end method

.method private stringForSeconds(I)Ljava/lang/String;
    .locals 4
    .param p1, "seconds"    # I

    .prologue
    .line 172
    const-string v0, "%d:%02d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    div-int/lit8 v3, p1, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    rem-int/lit8 v3, p1, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private stringForTimer(Lbe/gentgo/tetsuki/PlayerTimer;)Ljava/lang/String;
    .locals 8
    .param p1, "timer"    # Lbe/gentgo/tetsuki/PlayerTimer;

    .prologue
    const/4 v3, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 161
    invoke-virtual {p1}, Lbe/gentgo/tetsuki/PlayerTimer;->getTime()I

    move-result v0

    .line 162
    .local v0, "remaining":I
    invoke-virtual {p1}, Lbe/gentgo/tetsuki/PlayerTimer;->getNrOfStones()I

    move-result v1

    .line 163
    .local v1, "stones":I
    invoke-virtual {p1}, Lbe/gentgo/tetsuki/PlayerTimer;->isInExtraTime()Z

    move-result v2

    if-nez v2, :cond_0

    .line 164
    const-string v2, "%d:%02d"

    new-array v3, v7, [Ljava/lang/Object;

    div-int/lit8 v4, v0, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    rem-int/lit8 v4, v0, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 168
    :goto_0
    return-object v2

    .line 165
    :cond_0
    if-lez v1, :cond_1

    .line 166
    const-string v2, "%d:%02d (%d)"

    new-array v3, v3, [Ljava/lang/Object;

    div-int/lit8 v4, v0, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    rem-int/lit8 v4, v0, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 168
    :cond_1
    const-string v2, "%d:%02d + %d"

    new-array v3, v3, [Ljava/lang/Object;

    div-int/lit8 v4, v0, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    rem-int/lit8 v4, v0, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p1}, Lbe/gentgo/tetsuki/PlayerTimer;->getNrOfPeriods()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public setGameAndScore(Lbe/gentgo/tetsuki/Game;Lbe/gentgo/tetsuki/ScoreCount;)V
    .locals 10
    .param p1, "g"    # Lbe/gentgo/tetsuki/Game;
    .param p2, "s"    # Lbe/gentgo/tetsuki/ScoreCount;

    .prologue
    const/4 v9, 0x4

    .line 20
    iput-object p1, p0, Lbe/gentgo/tetsuki/TitleView;->game:Lbe/gentgo/tetsuki/Game;

    .line 21
    iput-object p2, p0, Lbe/gentgo/tetsuki/TitleView;->score:Lbe/gentgo/tetsuki/ScoreCount;

    .line 22
    const v8, 0x7f0b00a8

    invoke-virtual {p0, v8}, Lbe/gentgo/tetsuki/TitleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 23
    .local v0, "blackPlayer":Landroid/widget/TextView;
    const v8, 0x7f0b00a5

    invoke-virtual {p0, v8}, Lbe/gentgo/tetsuki/TitleView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 24
    .local v6, "whitePlayer":Landroid/widget/TextView;
    const v8, 0x7f0b00e1

    invoke-virtual {p0, v8}, Lbe/gentgo/tetsuki/TitleView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 25
    .local v3, "title":Landroid/widget/TextView;
    const v8, 0x7f0b00df

    invoke-virtual {p0, v8}, Lbe/gentgo/tetsuki/TitleView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 27
    .local v2, "image":Landroid/widget/ImageView;
    iget-object v8, p0, Lbe/gentgo/tetsuki/TitleView;->game:Lbe/gentgo/tetsuki/Game;

    if-nez v8, :cond_0

    .line 29
    const v8, 0x7f080058

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(I)V

    .line 30
    const v8, 0x7f080059

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(I)V

    .line 31
    const v8, 0x7f0b00e0

    invoke-virtual {p0, v8}, Lbe/gentgo/tetsuki/TitleView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 32
    .local v1, "blackTime":Landroid/widget/TextView;
    const v8, 0x7f0b00de

    invoke-virtual {p0, v8}, Lbe/gentgo/tetsuki/TitleView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 33
    .local v7, "whiteTime":Landroid/widget/TextView;
    const-string v8, "0:00"

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    const-string v8, "0:00"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 36
    const-string v8, ""

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    .end local v1    # "blackTime":Landroid/widget/TextView;
    .end local v7    # "whiteTime":Landroid/widget/TextView;
    :goto_0
    return-void

    .line 40
    :cond_0
    iget-object v8, p0, Lbe/gentgo/tetsuki/TitleView;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v8}, Lbe/gentgo/tetsuki/Game;->getGameSettings()Lbe/gentgo/tetsuki/GameSettings;

    move-result-object v8

    invoke-virtual {v8}, Lbe/gentgo/tetsuki/GameSettings;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 41
    .local v4, "titleString":Ljava/lang/String;
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v8, p0, Lbe/gentgo/tetsuki/TitleView;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v8}, Lbe/gentgo/tetsuki/Game;->getGameSettings()Lbe/gentgo/tetsuki/GameSettings;

    move-result-object v8

    invoke-virtual {v8}, Lbe/gentgo/tetsuki/GameSettings;->getBlackPlayer()Lbe/gentgo/tetsuki/Player;

    move-result-object v8

    invoke-virtual {v8}, Lbe/gentgo/tetsuki/Player;->getID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v8, p0, Lbe/gentgo/tetsuki/TitleView;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v8}, Lbe/gentgo/tetsuki/Game;->getGameSettings()Lbe/gentgo/tetsuki/GameSettings;

    move-result-object v8

    invoke-virtual {v8}, Lbe/gentgo/tetsuki/GameSettings;->getWhitePlayer()Lbe/gentgo/tetsuki/Player;

    move-result-object v8

    invoke-virtual {v8}, Lbe/gentgo/tetsuki/Player;->getID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 45
    iget-object v8, p0, Lbe/gentgo/tetsuki/TitleView;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v8}, Lbe/gentgo/tetsuki/Game;->getTurn()I

    move-result v5

    .line 46
    .local v5, "turn":I
    const/4 v8, 0x1

    if-ne v5, v8, :cond_1

    .line 47
    const v8, 0x7f020009

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 53
    :goto_1
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/TitleView;->updateTime()V

    goto :goto_0

    .line 48
    :cond_1
    const/4 v8, -0x1

    if-ne v5, v8, :cond_2

    .line 49
    const v8, 0x7f020077

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 51
    :cond_2
    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public updateTime()V
    .locals 22

    .prologue
    .line 58
    const/4 v12, 0x0

    .line 59
    .local v12, "tiktak":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/TitleView;->game:Lbe/gentgo/tetsuki/Game;

    move-object/from16 v18, v0

    if-nez v18, :cond_0

    .line 158
    :goto_0
    return-void

    .line 60
    :cond_0
    const v18, 0x7f0b00e0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/TitleView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 61
    .local v5, "blackTime":Landroid/widget/TextView;
    const v18, 0x7f0b00de

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/TitleView;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 62
    .local v16, "whiteTime":Landroid/widget/TextView;
    const v18, 0x7f0b00e1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/TitleView;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 63
    .local v13, "title":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/TitleView;->game:Lbe/gentgo/tetsuki/Game;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lbe/gentgo/tetsuki/Game;->isOver()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 65
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 66
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/TitleView;->game:Lbe/gentgo/tetsuki/Game;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lbe/gentgo/tetsuki/Game;->getTurn()I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 68
    const v18, 0x7f08009d

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(I)V

    .line 69
    const-string v18, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    :goto_1
    if-eqz v12, :cond_10

    .line 155
    const v18, 0x7f06000c

    invoke-static/range {v18 .. v18}, Lbe/gentgo/tetsuki/SoundManager;->playLoopedSound(I)V

    goto :goto_0

    .line 73
    :cond_1
    const-string v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    const v18, 0x7f08009d

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 77
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/TitleView;->game:Lbe/gentgo/tetsuki/Game;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lbe/gentgo/tetsuki/Game;->hasReconnectTimer()Z

    move-result v18

    if-eqz v18, :cond_4

    .line 80
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/TitleView;->game:Lbe/gentgo/tetsuki/Game;

    move-object/from16 v18, v0

    invoke-static {}, Lbe/gentgo/tetsuki/PlayerTimer;->getCurrentTime()J

    move-result-wide v20

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lbe/gentgo/tetsuki/Game;->getReconnectTimerSeconds(J)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lbe/gentgo/tetsuki/TitleView;->stringForSeconds(I)Ljava/lang/String;

    move-result-object v9

    .line 81
    .local v9, "reconnectTime":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/TitleView;->game:Lbe/gentgo/tetsuki/Game;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lbe/gentgo/tetsuki/Game;->getGameSettings()Lbe/gentgo/tetsuki/GameSettings;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lbe/gentgo/tetsuki/GameSettings;->getBlackPlayer()Lbe/gentgo/tetsuki/Player;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lbe/gentgo/tetsuki/Player;->getID()Ljava/lang/String;

    move-result-object v18

    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lbe/gentgo/tetsuki/Server;->getMyID()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 83
    const-string v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    :goto_2
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 88
    :cond_3
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    const-string v18, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 95
    .end local v9    # "reconnectTime":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/TitleView;->score:Lbe/gentgo/tetsuki/ScoreCount;

    move-object/from16 v18, v0

    if-eqz v18, :cond_7

    .line 97
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    invoke-virtual/range {p0 .. p0}, Lbe/gentgo/tetsuki/TitleView;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 100
    .local v7, "context":Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/TitleView;->score:Lbe/gentgo/tetsuki/ScoreCount;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lbe/gentgo/tetsuki/ScoreCount;->getBlackScore()F

    move-result v4

    .line 101
    .local v4, "blackScore":F
    float-to-int v0, v4

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    cmpl-float v18, v4, v18

    if-nez v18, :cond_5

    .line 102
    const v18, 0x7f080062

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    float-to-int v0, v4

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/TitleView;->score:Lbe/gentgo/tetsuki/ScoreCount;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lbe/gentgo/tetsuki/ScoreCount;->getWhiteScore()F

    move-result v15

    .line 107
    .local v15, "whiteScore":F
    float-to-int v0, v15

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    cmpl-float v18, v15, v18

    if-nez v18, :cond_6

    .line 108
    const v18, 0x7f080062

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    float-to-int v0, v15

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 104
    .end local v15    # "whiteScore":F
    :cond_5
    const v18, 0x7f080063

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    float-to-int v0, v4

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 110
    .restart local v15    # "whiteScore":F
    :cond_6
    const v18, 0x7f080063

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    float-to-int v0, v15

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 113
    .end local v4    # "blackScore":F
    .end local v7    # "context":Landroid/content/Context;
    .end local v15    # "whiteScore":F
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/TitleView;->game:Lbe/gentgo/tetsuki/Game;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lbe/gentgo/tetsuki/Game;->getGameSettings()Lbe/gentgo/tetsuki/GameSettings;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lbe/gentgo/tetsuki/GameSettings;->hasTitle()Z

    move-result v18

    if-eqz v18, :cond_8

    .line 115
    const-string v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    const-string v18, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 120
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/TitleView;->game:Lbe/gentgo/tetsuki/Game;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lbe/gentgo/tetsuki/Game;->isAfterLastMove()Z

    move-result v18

    if-nez v18, :cond_9

    .line 122
    const-string v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    const-string v18, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 128
    :cond_9
    invoke-static {}, Lbe/gentgo/tetsuki/PlayerTimer;->getCurrentTime()J

    move-result-wide v10

    .line 129
    .local v10, "now":J
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 130
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lbe/gentgo/tetsuki/Server;->getMyID()Ljava/lang/String;

    move-result-object v8

    .line 131
    .local v8, "myId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/TitleView;->game:Lbe/gentgo/tetsuki/Game;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lbe/gentgo/tetsuki/Game;->getBlackPlayerTimer()Lbe/gentgo/tetsuki/PlayerTimer;

    move-result-object v6

    .line 132
    .local v6, "blackTimer":Lbe/gentgo/tetsuki/PlayerTimer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/TitleView;->game:Lbe/gentgo/tetsuki/Game;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lbe/gentgo/tetsuki/Game;->getTurn()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_c

    const/4 v14, 0x1

    .line 133
    .local v14, "turn":Z
    :goto_4
    invoke-virtual {v6, v10, v11, v14}, Lbe/gentgo/tetsuki/PlayerTimer;->update(JZ)V

    .line 134
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lbe/gentgo/tetsuki/TitleView;->stringForTimer(Lbe/gentgo/tetsuki/PlayerTimer;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    if-eqz v14, :cond_d

    invoke-virtual {v6}, Lbe/gentgo/tetsuki/PlayerTimer;->isNearlyOutOfTime()Z

    move-result v18

    if-eqz v18, :cond_d

    .line 137
    if-eqz v8, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/TitleView;->game:Lbe/gentgo/tetsuki/Game;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lbe/gentgo/tetsuki/Game;->getGameSettings()Lbe/gentgo/tetsuki/GameSettings;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lbe/gentgo/tetsuki/GameSettings;->getBlackPlayer()Lbe/gentgo/tetsuki/Player;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lbe/gentgo/tetsuki/Player;->getID()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    const/4 v12, 0x1

    .line 138
    :cond_a
    const v18, -0xaaab

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 142
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/TitleView;->game:Lbe/gentgo/tetsuki/Game;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lbe/gentgo/tetsuki/Game;->getWhitePlayerTimer()Lbe/gentgo/tetsuki/PlayerTimer;

    move-result-object v17

    .line 143
    .local v17, "whiteTimer":Lbe/gentgo/tetsuki/PlayerTimer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/TitleView;->game:Lbe/gentgo/tetsuki/Game;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lbe/gentgo/tetsuki/Game;->getTurn()I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_e

    const/4 v14, 0x1

    .line 144
    :goto_6
    move-object/from16 v0, v17

    invoke-virtual {v0, v10, v11, v14}, Lbe/gentgo/tetsuki/PlayerTimer;->update(JZ)V

    .line 145
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lbe/gentgo/tetsuki/TitleView;->stringForTimer(Lbe/gentgo/tetsuki/PlayerTimer;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    if-eqz v14, :cond_f

    invoke-virtual/range {v17 .. v17}, Lbe/gentgo/tetsuki/PlayerTimer;->isNearlyOutOfTime()Z

    move-result v18

    if-eqz v18, :cond_f

    .line 148
    if-eqz v8, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/TitleView;->game:Lbe/gentgo/tetsuki/Game;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lbe/gentgo/tetsuki/Game;->getGameSettings()Lbe/gentgo/tetsuki/GameSettings;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lbe/gentgo/tetsuki/GameSettings;->getWhitePlayer()Lbe/gentgo/tetsuki/Player;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lbe/gentgo/tetsuki/Player;->getID()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b

    const/4 v12, 0x1

    .line 149
    :cond_b
    const v18, -0xaaab

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 132
    .end local v14    # "turn":Z
    .end local v17    # "whiteTimer":Lbe/gentgo/tetsuki/PlayerTimer;
    :cond_c
    const/4 v14, 0x0

    goto/16 :goto_4

    .line 141
    .restart local v14    # "turn":Z
    :cond_d
    const/16 v18, -0x1

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_5

    .line 143
    .restart local v17    # "whiteTimer":Lbe/gentgo/tetsuki/PlayerTimer;
    :cond_e
    const/4 v14, 0x0

    goto :goto_6

    .line 152
    :cond_f
    const/16 v18, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 157
    .end local v6    # "blackTimer":Lbe/gentgo/tetsuki/PlayerTimer;
    .end local v8    # "myId":Ljava/lang/String;
    .end local v10    # "now":J
    .end local v14    # "turn":Z
    .end local v17    # "whiteTimer":Lbe/gentgo/tetsuki/PlayerTimer;
    :cond_10
    invoke-static {}, Lbe/gentgo/tetsuki/SoundManager;->stopLoopedSound()V

    goto/16 :goto_0
.end method
