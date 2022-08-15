.class Lbe/gentgo/tetsuki/ObserveFragment$4;
.super Landroid/widget/BaseAdapter;
.source "ObserveFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbe/gentgo/tetsuki/ObserveFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbe/gentgo/tetsuki/ObserveFragment;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/ObserveFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/ObserveFragment$4;->this$0:Lbe/gentgo/tetsuki/ObserveFragment;

    .line 141
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lbe/gentgo/tetsuki/ObserveFragment$4;->this$0:Lbe/gentgo/tetsuki/ObserveFragment;

    iget-object v0, v0, Lbe/gentgo/tetsuki/ObserveFragment;->sortedGames:Ljava/util/List;

    if-nez v0, :cond_1

    iget-object v0, p0, Lbe/gentgo/tetsuki/ObserveFragment$4;->this$0:Lbe/gentgo/tetsuki/ObserveFragment;

    iget-object v0, v0, Lbe/gentgo/tetsuki/ObserveFragment;->request:Lbe/gentgo/tetsuki/GameListRequest;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 146
    :goto_0
    return v0

    .line 145
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 146
    :cond_1
    iget-object v0, p0, Lbe/gentgo/tetsuki/ObserveFragment$4;->this$0:Lbe/gentgo/tetsuki/ObserveFragment;

    iget-object v0, v0, Lbe/gentgo/tetsuki/ObserveFragment;->sortedGames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 195
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 199
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x1

    .line 152
    if-lez p1, :cond_1

    .line 154
    :cond_0
    :goto_0
    return v0

    .line 153
    :cond_1
    iget-object v1, p0, Lbe/gentgo/tetsuki/ObserveFragment$4;->this$0:Lbe/gentgo/tetsuki/ObserveFragment;

    iget-object v1, v1, Lbe/gentgo/tetsuki/ObserveFragment;->sortedGames:Ljava/util/List;

    if-nez v1, :cond_0

    .line 154
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 159
    move-object/from16 v9, p2

    .line 160
    .local v9, "result":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v12, v0, Lbe/gentgo/tetsuki/ObserveFragment$4;->this$0:Lbe/gentgo/tetsuki/ObserveFragment;

    invoke-virtual {v12}, Lbe/gentgo/tetsuki/ObserveFragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    .line 161
    .local v5, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual/range {p0 .. p1}, Lbe/gentgo/tetsuki/ObserveFragment$4;->getItemViewType(I)I

    move-result v12

    if-nez v12, :cond_1

    .line 162
    if-nez v9, :cond_0

    const v12, 0x7f03000a

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v5, v12, v0, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 163
    :cond_0
    const v12, 0x7f0b003d

    invoke-virtual {v9, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 164
    .local v6, "label":Landroid/widget/TextView;
    const v12, 0x7f0800c1

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setText(I)V

    .line 191
    .end local v6    # "label":Landroid/widget/TextView;
    :goto_0
    return-object v9

    .line 166
    :cond_1
    if-nez v9, :cond_2

    const v12, 0x7f03000b

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v5, v12, v0, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 167
    :cond_2
    const v12, 0x7f0b003e

    invoke-virtual {v9, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 168
    .local v4, "gameTitle":Landroid/widget/TextView;
    const v12, 0x7f0b003f

    invoke-virtual {v9, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 169
    .local v10, "whiteID":Landroid/widget/TextView;
    const v12, 0x7f0b0042

    invoke-virtual {v9, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 170
    .local v1, "blackID":Landroid/widget/TextView;
    const v12, 0x7f0b0040

    invoke-virtual {v9, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 171
    .local v11, "whiteRank":Landroid/widget/TextView;
    const v12, 0x7f0b0043

    invoke-virtual {v9, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 172
    .local v2, "blackRank":Landroid/widget/TextView;
    const v12, 0x7f0b0044

    invoke-virtual {v9, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 173
    .local v7, "moves":Landroid/widget/TextView;
    const v12, 0x7f0b0045

    invoke-virtual {v9, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 174
    .local v8, "observers":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v12, v0, Lbe/gentgo/tetsuki/ObserveFragment$4;->this$0:Lbe/gentgo/tetsuki/ObserveFragment;

    iget-object v12, v12, Lbe/gentgo/tetsuki/ObserveFragment;->sortedGames:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbe/gentgo/tetsuki/ObserveFragment$SimpleGameInfo;

    .line 175
    .local v3, "game":Lbe/gentgo/tetsuki/ObserveFragment$SimpleGameInfo;
    iget-object v12, v3, Lbe/gentgo/tetsuki/ObserveFragment$SimpleGameInfo;->white:Ljava/lang/String;

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v12, v3, Lbe/gentgo/tetsuki/ObserveFragment$SimpleGameInfo;->black:Ljava/lang/String;

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v12, v3, Lbe/gentgo/tetsuki/ObserveFragment$SimpleGameInfo;->title:Ljava/lang/String;

    if-nez v12, :cond_3

    .line 179
    const/16 v12, 0x8

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 186
    :goto_1
    iget-object v12, v3, Lbe/gentgo/tetsuki/ObserveFragment$SimpleGameInfo;->whiteTitle:Ljava/lang/String;

    if-nez v12, :cond_4

    iget v12, v3, Lbe/gentgo/tetsuki/ObserveFragment$SimpleGameInfo;->whiteRank:F

    invoke-static {v12}, Lbe/gentgo/tetsuki/Player;->getNameForRank(F)Ljava/lang/String;

    move-result-object v12

    :goto_2
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v12, v3, Lbe/gentgo/tetsuki/ObserveFragment$SimpleGameInfo;->blackTitle:Ljava/lang/String;

    if-nez v12, :cond_5

    iget v12, v3, Lbe/gentgo/tetsuki/ObserveFragment$SimpleGameInfo;->blackRank:F

    invoke-static {v12}, Lbe/gentgo/tetsuki/Player;->getNameForRank(F)Ljava/lang/String;

    move-result-object v12

    :goto_3
    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    const-string v12, "%d"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    iget v15, v3, Lbe/gentgo/tetsuki/ObserveFragment$SimpleGameInfo;->moves:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget v12, v3, Lbe/gentgo/tetsuki/ObserveFragment$SimpleGameInfo;->observers:I

    if-nez v12, :cond_6

    const-string v12, ""

    :goto_4
    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 183
    :cond_3
    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 184
    iget-object v12, v3, Lbe/gentgo/tetsuki/ObserveFragment$SimpleGameInfo;->title:Ljava/lang/String;

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 186
    :cond_4
    iget-object v12, v3, Lbe/gentgo/tetsuki/ObserveFragment$SimpleGameInfo;->whiteTitle:Ljava/lang/String;

    goto :goto_2

    .line 187
    :cond_5
    iget-object v12, v3, Lbe/gentgo/tetsuki/ObserveFragment$SimpleGameInfo;->blackTitle:Ljava/lang/String;

    goto :goto_3

    .line 189
    :cond_6
    const-string v12, "%d"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    iget v15, v3, Lbe/gentgo/tetsuki/ObserveFragment$SimpleGameInfo;->observers:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto :goto_4
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x2

    return v0
.end method
