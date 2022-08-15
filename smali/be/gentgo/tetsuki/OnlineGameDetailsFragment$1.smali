.class Lbe/gentgo/tetsuki/OnlineGameDetailsFragment$1;
.super Lbe/gentgo/tetsuki/Listener;
.source "OnlineGameDetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbe/gentgo/tetsuki/OnlineGameDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbe/gentgo/tetsuki/OnlineGameDetailsFragment;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/OnlineGameDetailsFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/OnlineGameDetailsFragment$1;->this$0:Lbe/gentgo/tetsuki/OnlineGameDetailsFragment;

    .line 74
    invoke-direct {p0}, Lbe/gentgo/tetsuki/Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public Do()Z
    .locals 14

    .prologue
    const v13, 0x7f080112

    const/16 v8, 0x8

    const/4 v11, 0x4

    const/4 v12, 0x1

    const/4 v9, 0x0

    .line 76
    iget-object v7, p0, Lbe/gentgo/tetsuki/OnlineGameDetailsFragment$1;->this$0:Lbe/gentgo/tetsuki/OnlineGameDetailsFragment;

    invoke-virtual {v7}, Lbe/gentgo/tetsuki/OnlineGameDetailsFragment;->getView()Landroid/view/View;

    move-result-object v7

    const v10, 0x7f0b0029

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 77
    .local v5, "title":Landroid/widget/TextView;
    iget-object v7, p0, Lbe/gentgo/tetsuki/OnlineGameDetailsFragment$1;->this$0:Lbe/gentgo/tetsuki/OnlineGameDetailsFragment;

    invoke-virtual {v7}, Lbe/gentgo/tetsuki/OnlineGameDetailsFragment;->getView()Landroid/view/View;

    move-result-object v7

    const v10, 0x7f0b00a2

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 78
    .local v3, "observers":Landroid/widget/TextView;
    iget-object v7, p0, Lbe/gentgo/tetsuki/OnlineGameDetailsFragment$1;->this$0:Lbe/gentgo/tetsuki/OnlineGameDetailsFragment;

    invoke-virtual {v7}, Lbe/gentgo/tetsuki/OnlineGameDetailsFragment;->getView()Landroid/view/View;

    move-result-object v7

    const v10, 0x7f0b00a3

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 79
    .local v6, "white":Landroid/widget/TextView;
    iget-object v7, p0, Lbe/gentgo/tetsuki/OnlineGameDetailsFragment$1;->this$0:Lbe/gentgo/tetsuki/OnlineGameDetailsFragment;

    invoke-virtual {v7}, Lbe/gentgo/tetsuki/OnlineGameDetailsFragment;->getView()Landroid/view/View;

    move-result-object v7

    const v10, 0x7f0b00a4

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 80
    .local v0, "black":Landroid/widget/TextView;
    iget-object v7, p0, Lbe/gentgo/tetsuki/OnlineGameDetailsFragment$1;->this$0:Lbe/gentgo/tetsuki/OnlineGameDetailsFragment;

    invoke-virtual {v7}, Lbe/gentgo/tetsuki/OnlineGameDetailsFragment;->getView()Landroid/view/View;

    move-result-object v7

    const v10, 0x7f0b00a1

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lbe/gentgo/tetsuki/GameView;

    .line 81
    .local v2, "goban":Lbe/gentgo/tetsuki/GameView;
    iget-object v7, p0, Lbe/gentgo/tetsuki/OnlineGameDetailsFragment$1;->this$0:Lbe/gentgo/tetsuki/OnlineGameDetailsFragment;

    invoke-static {v7}, Lbe/gentgo/tetsuki/OnlineGameDetailsFragment;->access$0(Lbe/gentgo/tetsuki/OnlineGameDetailsFragment;)Lbe/gentgo/tetsuki/GameRequest;

    move-result-object v7

    invoke-virtual {v7}, Lbe/gentgo/tetsuki/GameRequest;->isAvailable()Z

    move-result v7

    if-nez v7, :cond_0

    .line 82
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 83
    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 84
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 85
    const v7, 0x7f08006a

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    .line 86
    const/high16 v7, 0x3f000000    # 0.5f

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setAlpha(F)V

    .line 87
    invoke-virtual {v2, v11}, Lbe/gentgo/tetsuki/GameView;->setVisibility(I)V

    .line 108
    :goto_0
    return v12

    .line 90
    :cond_0
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 93
    iget-object v7, p0, Lbe/gentgo/tetsuki/OnlineGameDetailsFragment$1;->this$0:Lbe/gentgo/tetsuki/OnlineGameDetailsFragment;

    invoke-static {v7}, Lbe/gentgo/tetsuki/OnlineGameDetailsFragment;->access$0(Lbe/gentgo/tetsuki/OnlineGameDetailsFragment;)Lbe/gentgo/tetsuki/GameRequest;

    move-result-object v7

    invoke-virtual {v7}, Lbe/gentgo/tetsuki/GameRequest;->getResult()Lbe/gentgo/tetsuki/Game;

    move-result-object v1

    .line 94
    .local v1, "game":Lbe/gentgo/tetsuki/Game;
    invoke-virtual {v1}, Lbe/gentgo/tetsuki/Game;->getGameSettings()Lbe/gentgo/tetsuki/GameSettings;

    move-result-object v4

    .line 95
    .local v4, "settings":Lbe/gentgo/tetsuki/GameSettings;
    invoke-virtual {v4}, Lbe/gentgo/tetsuki/GameSettings;->getTitle()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v4}, Lbe/gentgo/tetsuki/GameSettings;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 96
    invoke-virtual {v4}, Lbe/gentgo/tetsuki/GameSettings;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    :goto_1
    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setAlpha(F)V

    .line 100
    iget-object v7, p0, Lbe/gentgo/tetsuki/OnlineGameDetailsFragment$1;->this$0:Lbe/gentgo/tetsuki/OnlineGameDetailsFragment;

    invoke-virtual {v7}, Lbe/gentgo/tetsuki/OnlineGameDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v10, 0x7f08010a

    invoke-virtual {v7, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v10, v12, [Ljava/lang/Object;

    iget-object v11, p0, Lbe/gentgo/tetsuki/OnlineGameDetailsFragment$1;->this$0:Lbe/gentgo/tetsuki/OnlineGameDetailsFragment;

    invoke-static {v11}, Lbe/gentgo/tetsuki/OnlineGameDetailsFragment;->access$1(Lbe/gentgo/tetsuki/OnlineGameDetailsFragment;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v9

    invoke-static {v7, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v7, p0, Lbe/gentgo/tetsuki/OnlineGameDetailsFragment$1;->this$0:Lbe/gentgo/tetsuki/OnlineGameDetailsFragment;

    invoke-virtual {v7}, Lbe/gentgo/tetsuki/OnlineGameDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v13}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v10, v12, [Ljava/lang/Object;

    invoke-virtual {v4}, Lbe/gentgo/tetsuki/GameSettings;->getWhitePlayer()Lbe/gentgo/tetsuki/Player;

    move-result-object v11

    invoke-virtual {v11}, Lbe/gentgo/tetsuki/Player;->getID()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v9

    invoke-static {v7, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v7, p0, Lbe/gentgo/tetsuki/OnlineGameDetailsFragment$1;->this$0:Lbe/gentgo/tetsuki/OnlineGameDetailsFragment;

    invoke-virtual {v7}, Lbe/gentgo/tetsuki/OnlineGameDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v13}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v10, v12, [Ljava/lang/Object;

    invoke-virtual {v4}, Lbe/gentgo/tetsuki/GameSettings;->getBlackPlayer()Lbe/gentgo/tetsuki/Player;

    move-result-object v11

    invoke-virtual {v11}, Lbe/gentgo/tetsuki/Player;->getID()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v9

    invoke-static {v7, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    invoke-virtual {v4}, Lbe/gentgo/tetsuki/GameSettings;->getWhitePlayer()Lbe/gentgo/tetsuki/Player;

    move-result-object v7

    invoke-virtual {v7}, Lbe/gentgo/tetsuki/Player;->isOffline()Z

    move-result v7

    if-eqz v7, :cond_2

    move v7, v8

    :goto_2
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    invoke-virtual {v4}, Lbe/gentgo/tetsuki/GameSettings;->getBlackPlayer()Lbe/gentgo/tetsuki/Player;

    move-result-object v7

    invoke-virtual {v7}, Lbe/gentgo/tetsuki/Player;->isOffline()Z

    move-result v7

    if-eqz v7, :cond_3

    :goto_3
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    invoke-virtual {v2, v9}, Lbe/gentgo/tetsuki/GameView;->setVisibility(I)V

    .line 106
    const/4 v7, 0x0

    invoke-virtual {v2, v1, v7}, Lbe/gentgo/tetsuki/GameView;->setGameAndScore(Lbe/gentgo/tetsuki/Game;Lbe/gentgo/tetsuki/ScoreCount;)V

    goto/16 :goto_0

    .line 98
    :cond_1
    iget-object v7, p0, Lbe/gentgo/tetsuki/OnlineGameDetailsFragment$1;->this$0:Lbe/gentgo/tetsuki/OnlineGameDetailsFragment;

    invoke-virtual {v7}, Lbe/gentgo/tetsuki/OnlineGameDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v10, 0x7f080044

    invoke-virtual {v7, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v4}, Lbe/gentgo/tetsuki/GameSettings;->getWhitePlayer()Lbe/gentgo/tetsuki/Player;

    move-result-object v11

    invoke-virtual {v11}, Lbe/gentgo/tetsuki/Player;->getID()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v9

    invoke-virtual {v4}, Lbe/gentgo/tetsuki/GameSettings;->getBlackPlayer()Lbe/gentgo/tetsuki/Player;

    move-result-object v11

    invoke-virtual {v11}, Lbe/gentgo/tetsuki/Player;->getID()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v7, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_2
    move v7, v9

    .line 103
    goto :goto_2

    :cond_3
    move v8, v9

    .line 104
    goto :goto_3
.end method
