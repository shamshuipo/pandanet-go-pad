.class Lbe/gentgo/tetsuki/PlayerDetailsFragment$4;
.super Ljava/lang/Object;
.source "PlayerDetailsFragment.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbe/gentgo/tetsuki/PlayerDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$4;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lbe/gentgo/tetsuki/PlayerDetailsFragment$4;)Lbe/gentgo/tetsuki/PlayerDetailsFragment;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$4;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    return-object v0
.end method

.method private configureInviteButton(Landroid/widget/Button;)V
    .locals 2
    .param p1, "button"    # Landroid/widget/Button;

    .prologue
    .line 384
    const v1, 0x7f08004d

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(I)V

    .line 385
    iget-object v1, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$4;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    invoke-static {v1}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$20(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$4;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    invoke-static {v1}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$2(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)Lbe/gentgo/tetsuki/PlayerDetailsRequest;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$4;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    invoke-static {v1}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$2(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)Lbe/gentgo/tetsuki/PlayerDetailsRequest;

    move-result-object v1

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/PlayerDetailsRequest;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 386
    .local v0, "enabled":Z
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 387
    if-eqz v0, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setAlpha(F)V

    .line 388
    iget-object v1, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$4;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    invoke-static {v1}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$21(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 389
    return-void

    .line 385
    .end local v0    # "enabled":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 387
    .restart local v0    # "enabled":Z
    :cond_1
    const v1, 0x3e99999a    # 0.3f

    goto :goto_1
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x1

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$4;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    invoke-static {v0}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$4(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 160
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 161
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 166
    iget-object v0, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$4;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    invoke-static {v0}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$5(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$4;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    invoke-static {v0}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$6(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$4;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    invoke-static {v0}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$7(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)I

    move-result v0

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 169
    :goto_0
    return v0

    .line 167
    :cond_1
    iget-object v0, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$4;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    invoke-static {v0}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$8(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)I

    move-result v0

    if-ne p1, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    .line 168
    :cond_2
    iget-object v0, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$4;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    invoke-static {v0}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$9(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)I

    move-result v0

    if-ne p1, v0, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    .line 169
    :cond_3
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 24
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 186
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v15

    .line 187
    .local v15, "server":Lbe/gentgo/tetsuki/Server;
    move-object/from16 v18, p2

    .line 188
    .local v18, "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$4;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$8(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)I

    move-result v20

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 191
    if-nez v18, :cond_0

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$4;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v11

    .line 194
    .local v11, "infl":Landroid/view/LayoutInflater;
    const v20, 0x7f030020

    const/16 v21, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p3

    move/from16 v2, v21

    invoke-virtual {v11, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v18

    .line 197
    .end local v11    # "infl":Landroid/view/LayoutInflater;
    :cond_0
    const v20, 0x7f0b0067

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 198
    .local v13, "label":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$4;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$0(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)Lbe/gentgo/tetsuki/Player;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lbe/gentgo/tetsuki/Player;->getID()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    const v20, 0x7f0b0068

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .end local v13    # "label":Landroid/widget/TextView;
    check-cast v13, Landroid/widget/TextView;

    .line 200
    .restart local v13    # "label":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$4;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$0(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)Lbe/gentgo/tetsuki/Player;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lbe/gentgo/tetsuki/Player;->getFullRank()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$4;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$2(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)Lbe/gentgo/tetsuki/PlayerDetailsRequest;

    move-result-object v20

    if-eqz v20, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$4;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$2(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)Lbe/gentgo/tetsuki/PlayerDetailsRequest;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lbe/gentgo/tetsuki/PlayerDetailsRequest;->isDone()Z

    move-result v20

    if-eqz v20, :cond_1

    const/4 v14, 0x1

    .line 204
    .local v14, "playerDetails":Z
    :goto_0
    const v20, 0x7f0b00ad

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .end local v13    # "label":Landroid/widget/TextView;
    check-cast v13, Landroid/widget/TextView;

    .line 205
    .restart local v13    # "label":Landroid/widget/TextView;
    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$4;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$0(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)Lbe/gentgo/tetsuki/Player;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lbe/gentgo/tetsuki/Player;->getCountry()Ljava/lang/String;

    move-result-object v20

    :goto_1
    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    const v20, 0x7f0b00ae

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .end local v13    # "label":Landroid/widget/TextView;
    check-cast v13, Landroid/widget/TextView;

    .line 207
    .restart local v13    # "label":Landroid/widget/TextView;
    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$4;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$0(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)Lbe/gentgo/tetsuki/Player;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lbe/gentgo/tetsuki/Player;->isRankProven()Z

    move-result v20

    if-nez v20, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$4;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    move-object/from16 v20, v0

    const v21, 0x7f0800a2

    invoke-virtual/range {v20 .. v21}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v20

    :goto_2
    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v19, v18

    .line 377
    .end local v13    # "label":Landroid/widget/TextView;
    .end local v14    # "playerDetails":Z
    .end local v18    # "view":Landroid/view/View;
    .local v19, "view":Landroid/view/View;
    :goto_3
    return-object v19

    .line 202
    .end local v19    # "view":Landroid/view/View;
    .restart local v13    # "label":Landroid/widget/TextView;
    .restart local v18    # "view":Landroid/view/View;
    :cond_1
    const/4 v14, 0x0

    goto :goto_0

    .line 205
    .restart local v14    # "playerDetails":Z
    :cond_2
    const-string v20, " "

    goto :goto_1

    .line 207
    :cond_3
    const-string v20, ""

    goto :goto_2

    .line 210
    .end local v13    # "label":Landroid/widget/TextView;
    .end local v14    # "playerDetails":Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$4;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$9(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)I

    move-result v20

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_d

    .line 212
    if-nez v18, :cond_5

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$4;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v11

    .line 215
    .restart local v11    # "infl":Landroid/view/LayoutInflater;
    const v20, 0x7f030016

    const/16 v21, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p3

    move/from16 v2, v21

    invoke-virtual {v11, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v18

    .line 217
    .end local v11    # "infl":Landroid/view/LayoutInflater;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$4;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$0(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)Lbe/gentgo/tetsuki/Player;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lbe/gentgo/tetsuki/Player;->gamePlaying()I

    move-result v8

    .line 220
    .local v8, "game":I
    const v20, 0x7f0b0080

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 221
    .local v5, "caption":Landroid/widget/TextView;
    if-ltz v8, :cond_8

    .line 222
    const v20, 0x7f080041

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(I)V

    .line 233
    :goto_4
    const v20, 0x7f0b0081

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 234
    .local v17, "text":Landroid/widget/TextView;
    const v20, 0x7f0b0082

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 235
    .local v3, "accessory":Landroid/widget/ImageView;
    if-ltz v8, :cond_b

    .line 237
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$4;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$13(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)Lbe/gentgo/tetsuki/GameDetailsRequest;

    move-result-object v20

    if-eqz v20, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$4;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$13(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)Lbe/gentgo/tetsuki/GameDetailsRequest;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lbe/gentgo/tetsuki/GameDetailsRequest;->isDone()Z

    move-result v20

    if-nez v20, :cond_a

    .line 240
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$4;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    move-object/from16 v20, v0

    const v21, 0x7f080045

    invoke-virtual/range {v20 .. v21}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    :goto_5
    const/high16 v20, 0x7f0b0000

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lbe/gentgo/tetsuki/GameView;

    .line 255
    .local v10, "gameView":Lbe/gentgo/tetsuki/GameView;
    const v20, 0x7f0b0083

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 256
    .local v9, "gameCaption":Landroid/widget/TextView;
    if-eqz v10, :cond_7

    .line 257
    const/16 v20, 0x0

    move/from16 v0, v20

    iput-boolean v0, v10, Lbe/gentgo/tetsuki/GameView;->allowCoordinates:Z

    .line 259
    new-instance v20, Lbe/gentgo/tetsuki/PlayerDetailsFragment$4$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lbe/gentgo/tetsuki/PlayerDetailsFragment$4$1;-><init>(Lbe/gentgo/tetsuki/PlayerDetailsFragment$4;)V

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lbe/gentgo/tetsuki/GameView;->setTapListener(Lbe/gentgo/tetsuki/TapListener;)V

    .line 266
    if-ltz v8, :cond_c

    .line 267
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Lbe/gentgo/tetsuki/GameView;->setVisibility(I)V

    .line 268
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 276
    :cond_7
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$4;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$14(Lbe/gentgo/tetsuki/PlayerDetailsFragment;Landroid/view/View;)V

    move-object/from16 v19, v18

    .line 277
    .end local v18    # "view":Landroid/view/View;
    .restart local v19    # "view":Landroid/view/View;
    goto/16 :goto_3

    .line 225
    .end local v3    # "accessory":Landroid/widget/ImageView;
    .end local v9    # "gameCaption":Landroid/widget/TextView;
    .end local v10    # "gameView":Lbe/gentgo/tetsuki/GameView;
    .end local v17    # "text":Landroid/widget/TextView;
    .end local v19    # "view":Landroid/view/View;
    .restart local v18    # "view":Landroid/view/View;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$4;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$0(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)Lbe/gentgo/tetsuki/Player;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lbe/gentgo/tetsuki/Player;->gameWatching()I

    move-result v8

    .line 226
    if-ltz v8, :cond_9

    .line 227
    const v20, 0x7f080042

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_4

    .line 229
    :cond_9
    const v20, 0x7f080043

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_4

    .line 243
    .restart local v3    # "accessory":Landroid/widget/ImageView;
    .restart local v17    # "text":Landroid/widget/TextView;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$4;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$13(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)Lbe/gentgo/tetsuki/GameDetailsRequest;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lbe/gentgo/tetsuki/GameDetailsRequest;->getResult()Lbe/gentgo/tetsuki/GameSettings;

    move-result-object v16

    .line 244
    .local v16, "set":Lbe/gentgo/tetsuki/GameSettings;
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$4;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    move-object/from16 v20, v0

    const v21, 0x7f080044

    invoke-virtual/range {v20 .. v21}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v16 .. v16}, Lbe/gentgo/tetsuki/GameSettings;->getWhitePlayer()Lbe/gentgo/tetsuki/Player;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lbe/gentgo/tetsuki/Player;->getID()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    invoke-virtual/range {v16 .. v16}, Lbe/gentgo/tetsuki/GameSettings;->getBlackPlayer()Lbe/gentgo/tetsuki/Player;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lbe/gentgo/tetsuki/Player;->getID()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 249
    .end local v16    # "set":Lbe/gentgo/tetsuki/GameSettings;
    :cond_b
    const/16 v20, 0x4

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 250
    const-string v20, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 272
    .restart local v9    # "gameCaption":Landroid/widget/TextView;
    .restart local v10    # "gameView":Lbe/gentgo/tetsuki/GameView;
    :cond_c
    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Lbe/gentgo/tetsuki/GameView;->setVisibility(I)V

    .line 273
    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 279
    .end local v3    # "accessory":Landroid/widget/ImageView;
    .end local v5    # "caption":Landroid/widget/TextView;
    .end local v8    # "game":I
    .end local v9    # "gameCaption":Landroid/widget/TextView;
    .end local v10    # "gameView":Lbe/gentgo/tetsuki/GameView;
    .end local v17    # "text":Landroid/widget/TextView;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$4;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$11(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)I

    move-result v20

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_10

    .line 281
    if-nez v18, :cond_e

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$4;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v11

    .line 284
    .restart local v11    # "infl":Landroid/view/LayoutInflater;
    const v20, 0x7f03002e

    const/16 v21, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p3

    move/from16 v2, v21

    invoke-virtual {v11, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v18

    .line 286
    .end local v11    # "infl":Landroid/view/LayoutInflater;
    :cond_e
    const v20, 0x7f0b0080

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 287
    .restart local v5    # "caption":Landroid/widget/TextView;
    const v20, 0x7f0b0081

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 288
    .restart local v17    # "text":Landroid/widget/TextView;
    const v20, 0x7f080046

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(I)V

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$4;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$15(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    const v20, 0x7f0b0082

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 291
    .restart local v3    # "accessory":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$4;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$0(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)Lbe/gentgo/tetsuki/Player;

    move-result-object v20

    if-eqz v20, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$4;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$0(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)Lbe/gentgo/tetsuki/Player;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$4;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$1(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)Lbe/gentgo/tetsuki/Player;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lbe/gentgo/tetsuki/Player;->equalsPlayer(Lbe/gentgo/tetsuki/Player;)Z

    move-result v20

    if-eqz v20, :cond_f

    .line 293
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_7
    move-object/from16 v19, v18

    .line 297
    .end local v18    # "view":Landroid/view/View;
    .restart local v19    # "view":Landroid/view/View;
    goto/16 :goto_3

    .line 296
    .end local v19    # "view":Landroid/view/View;
    .restart local v18    # "view":Landroid/view/View;
    :cond_f
    const/16 v20, 0x4

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_7

    .line 299
    .end local v3    # "accessory":Landroid/widget/ImageView;
    .end local v5    # "caption":Landroid/widget/TextView;
    .end local v17    # "text":Landroid/widget/TextView;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$4;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$5(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)I

    move-result v20

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_12

    .line 301
    if-nez v18, :cond_11

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$4;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v11

    .line 304
    .restart local v11    # "infl":Landroid/view/LayoutInflater;
    const v20, 0x7f030006

    const/16 v21, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p3

    move/from16 v2, v21

    invoke-virtual {v11, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v18

    .line 306
    .end local v11    # "infl":Landroid/view/LayoutInflater;
    :cond_11
    const v20, 0x7f0b0030

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 307
    .local v4, "button":Landroid/widget/Button;
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lbe/gentgo/tetsuki/PlayerDetailsFragment$4;->configureInviteButton(Landroid/widget/Button;)V

    move-object/from16 v19, v18

    .line 308
    .end local v18    # "view":Landroid/view/View;
    .restart local v19    # "view":Landroid/view/View;
    goto/16 :goto_3

    .line 310
    .end local v4    # "button":Landroid/widget/Button;
    .end local v19    # "view":Landroid/view/View;
    .restart local v18    # "view":Landroid/view/View;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$4;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$16(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)I

    move-result v20

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_14

    .line 312
    if-nez v18, :cond_13

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$4;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v11

    .line 315
    .restart local v11    # "infl":Landroid/view/LayoutInflater;
    const v20, 0x7f03002e

    const/16 v21, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p3

    move/from16 v2, v21

    invoke-virtual {v11, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v18

    .line 317
    .end local v11    # "infl":Landroid/view/LayoutInflater;
    :cond_13
    const v20, 0x7f0b0082

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 318
    .restart local v3    # "accessory":Landroid/widget/ImageView;
    const/16 v20, 0x4

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 319
    const v20, 0x7f0b0080

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 320
    .restart local v5    # "caption":Landroid/widget/TextView;
    const v20, 0x7f0b0081

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 321
    .restart local v17    # "text":Landroid/widget/TextView;
    const v20, 0x7f08004f

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(I)V

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$4;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$17(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v19, v18

    .line 323
    .end local v18    # "view":Landroid/view/View;
    .restart local v19    # "view":Landroid/view/View;
    goto/16 :goto_3

    .line 326
    .end local v3    # "accessory":Landroid/widget/ImageView;
    .end local v5    # "caption":Landroid/widget/TextView;
    .end local v17    # "text":Landroid/widget/TextView;
    .end local v19    # "view":Landroid/view/View;
    .restart local v18    # "view":Landroid/view/View;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$4;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$10(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)I

    move-result v20

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_18

    .line 328
    if-nez v18, :cond_15

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$4;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v11

    .line 331
    .restart local v11    # "infl":Landroid/view/LayoutInflater;
    const v20, 0x7f03002e

    const/16 v21, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p3

    move/from16 v2, v21

    invoke-virtual {v11, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v18

    .line 333
    .end local v11    # "infl":Landroid/view/LayoutInflater;
    :cond_15
    const v20, 0x7f0b0080

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 334
    .restart local v5    # "caption":Landroid/widget/TextView;
    const v20, 0x7f080050

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(I)V

    .line 335
    const v20, 0x7f0b0082

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 336
    .restart local v3    # "accessory":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$4;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$0(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)Lbe/gentgo/tetsuki/Player;

    move-result-object v20

    if-eqz v20, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$4;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$0(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)Lbe/gentgo/tetsuki/Player;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$4;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$1(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)Lbe/gentgo/tetsuki/Player;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lbe/gentgo/tetsuki/Player;->equalsPlayer(Lbe/gentgo/tetsuki/Player;)Z

    move-result v20

    if-eqz v20, :cond_16

    .line 337
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 340
    :goto_8
    const v20, 0x7f0b0081

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 341
    .restart local v17    # "text":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$4;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$0(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)Lbe/gentgo/tetsuki/Player;

    move-result-object v20

    if-nez v20, :cond_17

    const-string v12, ""

    .line 342
    .local v12, "infoText":Ljava/lang/String;
    :goto_9
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v19, v18

    .line 343
    .end local v18    # "view":Landroid/view/View;
    .restart local v19    # "view":Landroid/view/View;
    goto/16 :goto_3

    .line 339
    .end local v12    # "infoText":Ljava/lang/String;
    .end local v17    # "text":Landroid/widget/TextView;
    .end local v19    # "view":Landroid/view/View;
    .restart local v18    # "view":Landroid/view/View;
    :cond_16
    const/16 v20, 0x4

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_8

    .line 341
    .restart local v17    # "text":Landroid/widget/TextView;
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$4;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$0(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)Lbe/gentgo/tetsuki/Player;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lbe/gentgo/tetsuki/Player;->getInfoText()[B

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lbe/gentgo/tetsuki/Preferences;->decode([B)Ljava/lang/String;

    move-result-object v12

    goto :goto_9

    .line 345
    .end local v3    # "accessory":Landroid/widget/ImageView;
    .end local v5    # "caption":Landroid/widget/TextView;
    .end local v17    # "text":Landroid/widget/TextView;
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$4;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$7(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)I

    move-result v20

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_1e

    .line 348
    if-nez v18, :cond_19

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$4;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v11

    .line 351
    .restart local v11    # "infl":Landroid/view/LayoutInflater;
    const v20, 0x7f030006

    const/16 v21, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p3

    move/from16 v2, v21

    invoke-virtual {v11, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v18

    .line 353
    .end local v11    # "infl":Landroid/view/LayoutInflater;
    :cond_19
    const v20, 0x7f0b0030

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 354
    .restart local v4    # "button":Landroid/widget/Button;
    const/4 v7, 0x0

    .line 355
    .local v7, "friend":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$4;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$0(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)Lbe/gentgo/tetsuki/Player;

    move-result-object v20

    if-eqz v20, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$4;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$0(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)Lbe/gentgo/tetsuki/Player;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lbe/gentgo/tetsuki/Player;->getID()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Lbe/gentgo/tetsuki/Server;->isMyFriend(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_1a

    const/4 v7, 0x1

    .line 356
    :cond_1a
    if-eqz v7, :cond_1b

    const v20, 0x7f080173

    :goto_a
    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setText(I)V

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$4;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$0(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)Lbe/gentgo/tetsuki/Player;

    move-result-object v20

    if-eqz v20, :cond_1c

    invoke-virtual {v15}, Lbe/gentgo/tetsuki/Server;->isGuestLogin()Z

    move-result v20

    if-nez v20, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$4;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$0(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)Lbe/gentgo/tetsuki/Player;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lbe/gentgo/tetsuki/Player;->getID()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v15}, Lbe/gentgo/tetsuki/Server;->getMyID()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_1c

    const/4 v6, 0x1

    .line 358
    .local v6, "enabled":Z
    :goto_b
    invoke-virtual {v4, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 359
    if-eqz v6, :cond_1d

    const/high16 v20, 0x3f800000    # 1.0f

    :goto_c
    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setAlpha(F)V

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$4;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$18(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)Landroid/view/View$OnClickListener;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v19, v18

    .line 361
    .end local v18    # "view":Landroid/view/View;
    .restart local v19    # "view":Landroid/view/View;
    goto/16 :goto_3

    .line 356
    .end local v6    # "enabled":Z
    .end local v19    # "view":Landroid/view/View;
    .restart local v18    # "view":Landroid/view/View;
    :cond_1b
    const v20, 0x7f080172

    goto :goto_a

    .line 357
    :cond_1c
    const/4 v6, 0x0

    goto :goto_b

    .line 359
    .restart local v6    # "enabled":Z
    :cond_1d
    const v20, 0x3e99999a    # 0.3f

    goto :goto_c

    .line 366
    .end local v4    # "button":Landroid/widget/Button;
    .end local v6    # "enabled":Z
    .end local v7    # "friend":Z
    :cond_1e
    if-nez v18, :cond_1f

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$4;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v11

    .line 369
    .restart local v11    # "infl":Landroid/view/LayoutInflater;
    const v20, 0x7f030006

    const/16 v21, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p3

    move/from16 v2, v21

    invoke-virtual {v11, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v18

    .line 371
    .end local v11    # "infl":Landroid/view/LayoutInflater;
    :cond_1f
    const v20, 0x7f0b0030

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 372
    .restart local v4    # "button":Landroid/widget/Button;
    const v20, 0x7f080121

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setText(I)V

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$4;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$0(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)Lbe/gentgo/tetsuki/Player;

    move-result-object v20

    if-eqz v20, :cond_20

    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lbe/gentgo/tetsuki/Server;->isGuestLogin()Z

    move-result v20

    if-nez v20, :cond_20

    const/4 v6, 0x1

    .line 374
    .restart local v6    # "enabled":Z
    :goto_d
    invoke-virtual {v4, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 375
    if-eqz v6, :cond_21

    const/high16 v20, 0x3f800000    # 1.0f

    :goto_e
    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setAlpha(F)V

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$4;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$19(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)Landroid/view/View$OnClickListener;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v19, v18

    .line 377
    .end local v18    # "view":Landroid/view/View;
    .restart local v19    # "view":Landroid/view/View;
    goto/16 :goto_3

    .line 373
    .end local v6    # "enabled":Z
    .end local v19    # "view":Landroid/view/View;
    .restart local v18    # "view":Landroid/view/View;
    :cond_20
    const/4 v6, 0x0

    goto :goto_d

    .line 375
    .restart local v6    # "enabled":Z
    :cond_21
    const v20, 0x3e99999a    # 0.3f

    goto :goto_e
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x4

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 182
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/PlayerDetailsFragment$4;->getCount()I

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
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 173
    iget-object v2, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$4;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    invoke-static {v2}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$5(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)I

    move-result v2

    if-ne p1, v2, :cond_1

    .line 179
    :cond_0
    :goto_0
    return v0

    .line 174
    :cond_1
    iget-object v2, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$4;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    invoke-static {v2}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$6(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)I

    move-result v2

    if-eq p1, v2, :cond_0

    .line 175
    iget-object v2, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$4;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    invoke-static {v2}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$7(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)I

    move-result v2

    if-ne p1, v2, :cond_3

    iget-object v2, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$4;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    invoke-static {v2}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$0(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)Lbe/gentgo/tetsuki/Player;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$4;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    invoke-static {v2}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$0(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)Lbe/gentgo/tetsuki/Player;

    move-result-object v2

    invoke-virtual {v2}, Lbe/gentgo/tetsuki/Player;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v3

    invoke-virtual {v3}, Lbe/gentgo/tetsuki/Server;->getMyID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 176
    :cond_3
    iget-object v2, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$4;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    invoke-static {v2}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$10(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)I

    move-result v2

    if-eq p1, v2, :cond_0

    .line 177
    iget-object v2, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$4;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    invoke-static {v2}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$11(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)I

    move-result v2

    if-eq p1, v2, :cond_0

    .line 178
    iget-object v2, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$4;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    invoke-static {v2}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$9(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)I

    move-result v2

    if-ne p1, v2, :cond_4

    iget-object v2, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$4;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    invoke-static {v2}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$12(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)I

    move-result v2

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v1

    .line 179
    goto :goto_0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "obs"    # Landroid/database/DataSetObserver;

    .prologue
    .line 391
    iget-object v0, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$4;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    invoke-static {v0, p1}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$22(Lbe/gentgo/tetsuki/PlayerDetailsFragment;Landroid/database/DataSetObserver;)V

    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 2
    .param p1, "obs"    # Landroid/database/DataSetObserver;

    .prologue
    .line 392
    iget-object v0, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$4;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    invoke-static {v0}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$3(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)Landroid/database/DataSetObserver;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$4;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$22(Lbe/gentgo/tetsuki/PlayerDetailsFragment;Landroid/database/DataSetObserver;)V

    :cond_0
    return-void
.end method
