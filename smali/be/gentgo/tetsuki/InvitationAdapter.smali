.class public Lbe/gentgo/tetsuki/InvitationAdapter;
.super Ljava/lang/Object;
.source "InvitationAdapter.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# instance fields
.field private activity:Landroid/app/Activity;

.field public highlightedRow:I

.field private listObserver:Landroid/database/DataSetObserver;

.field private settings:Lbe/gentgo/tetsuki/GameSettings;

.field private showHandicap:Z


# direct methods
.method public constructor <init>(Lbe/gentgo/tetsuki/GameSettings;ZLandroid/app/Activity;)V
    .locals 1
    .param p1, "sett"    # Lbe/gentgo/tetsuki/GameSettings;
    .param p2, "showHandi"    # Z
    .param p3, "act"    # Landroid/app/Activity;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, -0x1

    iput v0, p0, Lbe/gentgo/tetsuki/InvitationAdapter;->highlightedRow:I

    .line 16
    iput-object p1, p0, Lbe/gentgo/tetsuki/InvitationAdapter;->settings:Lbe/gentgo/tetsuki/GameSettings;

    .line 17
    iput-boolean p2, p0, Lbe/gentgo/tetsuki/InvitationAdapter;->showHandicap:Z

    .line 18
    iput-object p3, p0, Lbe/gentgo/tetsuki/InvitationAdapter;->activity:Landroid/app/Activity;

    .line 19
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x1

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lbe/gentgo/tetsuki/InvitationAdapter;->showHandicap:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    .line 29
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 39
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 44
    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 14
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 49
    move-object/from16 v4, p2

    .line 51
    .local v4, "result":Landroid/view/View;
    iget-object v10, p0, Lbe/gentgo/tetsuki/InvitationAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 53
    .local v3, "infl":Landroid/view/LayoutInflater;
    iget v10, p0, Lbe/gentgo/tetsuki/InvitationAdapter;->highlightedRow:I

    if-ne p1, v10, :cond_8

    const/4 v6, -0x1

    .line 54
    .local v6, "textColor":I
    :goto_0
    if-nez p1, :cond_2

    .line 56
    if-nez v4, :cond_0

    .line 57
    const v10, 0x7f03001f

    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v3, v10, v0, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 59
    :cond_0
    const/4 v1, 0x0

    .line 60
    .local v1, "black":Lbe/gentgo/tetsuki/Player;
    const/4 v9, 0x0

    .line 61
    .local v9, "white":Lbe/gentgo/tetsuki/Player;
    iget-object v10, p0, Lbe/gentgo/tetsuki/InvitationAdapter;->settings:Lbe/gentgo/tetsuki/GameSettings;

    invoke-virtual {v10}, Lbe/gentgo/tetsuki/GameSettings;->isIncomplete()Z

    move-result v10

    if-nez v10, :cond_1

    .line 63
    iget-object v10, p0, Lbe/gentgo/tetsuki/InvitationAdapter;->settings:Lbe/gentgo/tetsuki/GameSettings;

    invoke-virtual {v10}, Lbe/gentgo/tetsuki/GameSettings;->getBlackPlayer()Lbe/gentgo/tetsuki/Player;

    move-result-object v1

    .line 64
    iget-object v10, p0, Lbe/gentgo/tetsuki/InvitationAdapter;->settings:Lbe/gentgo/tetsuki/GameSettings;

    invoke-virtual {v10}, Lbe/gentgo/tetsuki/GameSettings;->getWhitePlayer()Lbe/gentgo/tetsuki/Player;

    move-result-object v9

    .line 67
    :cond_1
    const v10, 0x7f0b00a8

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 68
    .local v8, "v":Landroid/widget/TextView;
    if-nez v1, :cond_9

    const-string v10, ""

    :goto_1
    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 70
    const v10, 0x7f0b00a9

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .end local v8    # "v":Landroid/widget/TextView;
    check-cast v8, Landroid/widget/TextView;

    .line 71
    .restart local v8    # "v":Landroid/widget/TextView;
    if-nez v1, :cond_a

    const-string v10, ""

    :goto_2
    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 73
    const v10, 0x7f0b00a5

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .end local v8    # "v":Landroid/widget/TextView;
    check-cast v8, Landroid/widget/TextView;

    .line 74
    .restart local v8    # "v":Landroid/widget/TextView;
    if-nez v9, :cond_b

    const-string v10, ""

    :goto_3
    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 76
    const v10, 0x7f0b00a6

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .end local v8    # "v":Landroid/widget/TextView;
    check-cast v8, Landroid/widget/TextView;

    .line 77
    .restart local v8    # "v":Landroid/widget/TextView;
    if-nez v9, :cond_c

    const-string v10, ""

    :goto_4
    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 79
    const v10, 0x7f0b00a7

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .end local v8    # "v":Landroid/widget/TextView;
    check-cast v8, Landroid/widget/TextView;

    .line 81
    .restart local v8    # "v":Landroid/widget/TextView;
    const-string v10, "%d\u2715%d"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lbe/gentgo/tetsuki/InvitationAdapter;->settings:Lbe/gentgo/tetsuki/GameSettings;

    invoke-virtual {v13}, Lbe/gentgo/tetsuki/GameSettings;->getColumns()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    iget-object v13, p0, Lbe/gentgo/tetsuki/InvitationAdapter;->settings:Lbe/gentgo/tetsuki/GameSettings;

    invoke-virtual {v13}, Lbe/gentgo/tetsuki/GameSettings;->getRows()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 83
    const v10, 0x7f0b00a1

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 84
    .local v2, "i":Landroid/widget/ImageView;
    iget-object v10, p0, Lbe/gentgo/tetsuki/InvitationAdapter;->settings:Lbe/gentgo/tetsuki/GameSettings;

    invoke-virtual {v10}, Lbe/gentgo/tetsuki/GameSettings;->isNigiri()Z

    move-result v10

    if-eqz v10, :cond_d

    .line 85
    const v10, 0x7f02002f

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 89
    .end local v1    # "black":Lbe/gentgo/tetsuki/Player;
    .end local v2    # "i":Landroid/widget/ImageView;
    .end local v8    # "v":Landroid/widget/TextView;
    .end local v9    # "white":Lbe/gentgo/tetsuki/Player;
    :cond_2
    :goto_5
    const/4 v10, 0x1

    if-ne p1, v10, :cond_4

    iget-boolean v10, p0, Lbe/gentgo/tetsuki/InvitationAdapter;->showHandicap:Z

    if-eqz v10, :cond_4

    .line 92
    if-nez v4, :cond_3

    .line 93
    const v10, 0x7f030017

    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v3, v10, v0, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 95
    :cond_3
    const v10, 0x7f0b0085

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 96
    .local v5, "t":Landroid/widget/TextView;
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 97
    iget-object v10, p0, Lbe/gentgo/tetsuki/InvitationAdapter;->settings:Lbe/gentgo/tetsuki/GameSettings;

    invoke-virtual {v10}, Lbe/gentgo/tetsuki/GameSettings;->isNigiri()Z

    move-result v10

    if-eqz v10, :cond_e

    .line 98
    const v10, 0x7f080074

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(I)V

    .line 111
    :goto_6
    const v10, 0x7f0b0084

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5    # "t":Landroid/widget/TextView;
    check-cast v5, Landroid/widget/TextView;

    .line 112
    .restart local v5    # "t":Landroid/widget/TextView;
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 113
    const-string v10, ""

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    .end local v5    # "t":Landroid/widget/TextView;
    :cond_4
    const/4 v10, 0x2

    if-eq p1, v10, :cond_5

    const/4 v10, 0x1

    if-ne p1, v10, :cond_7

    iget-boolean v10, p0, Lbe/gentgo/tetsuki/InvitationAdapter;->showHandicap:Z

    if-nez v10, :cond_7

    .line 119
    :cond_5
    if-nez v4, :cond_6

    .line 120
    const v10, 0x7f030017

    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v3, v10, v0, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 121
    :cond_6
    iget-object v10, p0, Lbe/gentgo/tetsuki/InvitationAdapter;->settings:Lbe/gentgo/tetsuki/GameSettings;

    invoke-virtual {v10}, Lbe/gentgo/tetsuki/GameSettings;->getTimeSettings()Lbe/gentgo/tetsuki/GameTimeSettings;

    move-result-object v7

    .line 122
    .local v7, "timeSettings":Lbe/gentgo/tetsuki/GameTimeSettings;
    const v10, 0x7f0b0084

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 123
    .restart local v5    # "t":Landroid/widget/TextView;
    iget-object v10, p0, Lbe/gentgo/tetsuki/InvitationAdapter;->activity:Landroid/app/Activity;

    const v11, 0x7f080013

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v7}, Lbe/gentgo/tetsuki/GameTimeSettings;->getInitialTime()I

    move-result v13

    div-int/lit8 v13, v13, 0x3c

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 125
    const v10, 0x7f0b0085

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5    # "t":Landroid/widget/TextView;
    check-cast v5, Landroid/widget/TextView;

    .line 126
    .restart local v5    # "t":Landroid/widget/TextView;
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 128
    invoke-virtual {v7}, Lbe/gentgo/tetsuki/GameTimeSettings;->hasExtraTime()Z

    move-result v10

    if-nez v10, :cond_11

    .line 129
    const-string v10, ""

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    .end local v5    # "t":Landroid/widget/TextView;
    .end local v7    # "timeSettings":Lbe/gentgo/tetsuki/GameTimeSettings;
    :cond_7
    :goto_7
    iget v10, p0, Lbe/gentgo/tetsuki/InvitationAdapter;->highlightedRow:I

    if-ne p1, v10, :cond_15

    .line 140
    const v10, -0x777778

    invoke-virtual {v4, v10}, Landroid/view/View;->setBackgroundColor(I)V

    .line 145
    :goto_8
    return-object v4

    .line 53
    .end local v6    # "textColor":I
    :cond_8
    const/high16 v6, -0x1000000

    goto/16 :goto_0

    .line 68
    .restart local v1    # "black":Lbe/gentgo/tetsuki/Player;
    .restart local v6    # "textColor":I
    .restart local v8    # "v":Landroid/widget/TextView;
    .restart local v9    # "white":Lbe/gentgo/tetsuki/Player;
    :cond_9
    invoke-virtual {v1}, Lbe/gentgo/tetsuki/Player;->getID()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    .line 71
    :cond_a
    invoke-virtual {v1}, Lbe/gentgo/tetsuki/Player;->getFullRank()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_2

    .line 74
    :cond_b
    invoke-virtual {v9}, Lbe/gentgo/tetsuki/Player;->getID()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_3

    .line 77
    :cond_c
    invoke-virtual {v9}, Lbe/gentgo/tetsuki/Player;->getFullRank()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_4

    .line 87
    .restart local v2    # "i":Landroid/widget/ImageView;
    :cond_d
    const v10, 0x7f02002e

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_5

    .line 100
    .end local v1    # "black":Lbe/gentgo/tetsuki/Player;
    .end local v2    # "i":Landroid/widget/ImageView;
    .end local v8    # "v":Landroid/widget/TextView;
    .end local v9    # "white":Lbe/gentgo/tetsuki/Player;
    .restart local v5    # "t":Landroid/widget/TextView;
    :cond_e
    iget-object v10, p0, Lbe/gentgo/tetsuki/InvitationAdapter;->settings:Lbe/gentgo/tetsuki/GameSettings;

    invoke-virtual {v10}, Lbe/gentgo/tetsuki/GameSettings;->getNrOfHandicapStones()I

    move-result v10

    if-lez v10, :cond_10

    .line 101
    iget-object v10, p0, Lbe/gentgo/tetsuki/InvitationAdapter;->settings:Lbe/gentgo/tetsuki/GameSettings;

    invoke-virtual {v10}, Lbe/gentgo/tetsuki/GameSettings;->isIncomplete()Z

    move-result v10

    if-eqz v10, :cond_f

    .line 102
    iget-object v10, p0, Lbe/gentgo/tetsuki/InvitationAdapter;->activity:Landroid/app/Activity;

    const v11, 0x7f0800c3

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lbe/gentgo/tetsuki/InvitationAdapter;->settings:Lbe/gentgo/tetsuki/GameSettings;

    invoke-virtual {v13}, Lbe/gentgo/tetsuki/GameSettings;->getNrOfHandicapStones()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 104
    :cond_f
    iget-object v10, p0, Lbe/gentgo/tetsuki/InvitationAdapter;->activity:Landroid/app/Activity;

    const v11, 0x7f080076

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lbe/gentgo/tetsuki/InvitationAdapter;->settings:Lbe/gentgo/tetsuki/GameSettings;

    invoke-virtual {v13}, Lbe/gentgo/tetsuki/GameSettings;->getNrOfHandicapStones()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 108
    :cond_10
    const-string v10, "No handicap"

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 130
    .restart local v7    # "timeSettings":Lbe/gentgo/tetsuki/GameTimeSettings;
    :cond_11
    invoke-virtual {v7}, Lbe/gentgo/tetsuki/GameTimeSettings;->isCanadianExtraTime()Z

    move-result v10

    if-eqz v10, :cond_12

    .line 131
    iget-object v10, p0, Lbe/gentgo/tetsuki/InvitationAdapter;->activity:Landroid/app/Activity;

    const v11, 0x7f080014

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v7}, Lbe/gentgo/tetsuki/GameTimeSettings;->getPeriod()I

    move-result v13

    div-int/lit8 v13, v13, 0x3c

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-virtual {v7}, Lbe/gentgo/tetsuki/GameTimeSettings;->getNrOfStones()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 132
    :cond_12
    invoke-virtual {v7}, Lbe/gentgo/tetsuki/GameTimeSettings;->isJapaneseExtraTime()Z

    move-result v10

    if-eqz v10, :cond_13

    .line 133
    iget-object v10, p0, Lbe/gentgo/tetsuki/InvitationAdapter;->activity:Landroid/app/Activity;

    const v11, 0x7f08009e

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v7}, Lbe/gentgo/tetsuki/GameTimeSettings;->getNrOfPeriods()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-virtual {v7}, Lbe/gentgo/tetsuki/GameTimeSettings;->getPeriod()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 134
    :cond_13
    invoke-virtual {v7}, Lbe/gentgo/tetsuki/GameTimeSettings;->isKouryoExtraTime()Z

    move-result v10

    if-eqz v10, :cond_14

    .line 135
    iget-object v10, p0, Lbe/gentgo/tetsuki/InvitationAdapter;->activity:Landroid/app/Activity;

    const v11, 0x7f08009f

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v7}, Lbe/gentgo/tetsuki/GameTimeSettings;->getTimePerMove()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-virtual {v7}, Lbe/gentgo/tetsuki/GameTimeSettings;->getNrOfPeriods()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    invoke-virtual {v7}, Lbe/gentgo/tetsuki/GameTimeSettings;->getPeriod()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 137
    :cond_14
    const-string v10, "Unsupported timing"

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 143
    .end local v5    # "t":Landroid/widget/TextView;
    .end local v7    # "timeSettings":Lbe/gentgo/tetsuki/GameTimeSettings;
    :cond_15
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_8
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x3

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 180
    const/4 v0, 0x1

    return v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 165
    iput-object p1, p0, Lbe/gentgo/tetsuki/InvitationAdapter;->listObserver:Landroid/database/DataSetObserver;

    .line 166
    return-void
.end method

.method public reload()V
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lbe/gentgo/tetsuki/InvitationAdapter;->listObserver:Landroid/database/DataSetObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbe/gentgo/tetsuki/InvitationAdapter;->listObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 23
    :cond_0
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lbe/gentgo/tetsuki/InvitationAdapter;->listObserver:Landroid/database/DataSetObserver;

    .line 171
    return-void
.end method
