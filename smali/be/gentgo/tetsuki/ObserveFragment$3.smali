.class Lbe/gentgo/tetsuki/ObserveFragment$3;
.super Lbe/gentgo/tetsuki/Listener;
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
    iput-object p1, p0, Lbe/gentgo/tetsuki/ObserveFragment$3;->this$0:Lbe/gentgo/tetsuki/ObserveFragment;

    .line 112
    invoke-direct {p0}, Lbe/gentgo/tetsuki/Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public Do()Z
    .locals 17

    .prologue
    .line 114
    move-object/from16 v0, p0

    iget-object v1, v0, Lbe/gentgo/tetsuki/ObserveFragment$3;->this$0:Lbe/gentgo/tetsuki/ObserveFragment;

    iget-object v1, v1, Lbe/gentgo/tetsuki/ObserveFragment;->request:Lbe/gentgo/tetsuki/GameListRequest;

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/GameListRequest;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 137
    :goto_0
    return v1

    .line 115
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lbe/gentgo/tetsuki/ObserveFragment$3;->this$0:Lbe/gentgo/tetsuki/ObserveFragment;

    iget-object v1, v1, Lbe/gentgo/tetsuki/ObserveFragment;->request:Lbe/gentgo/tetsuki/GameListRequest;

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/GameListRequest;->getNrOfGames()I

    move-result v14

    .line 116
    .local v14, "count":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lbe/gentgo/tetsuki/ObserveFragment$3;->this$0:Lbe/gentgo/tetsuki/ObserveFragment;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lbe/gentgo/tetsuki/ObserveFragment;->sortedGames:Ljava/util/List;

    .line 117
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    if-lt v15, v14, :cond_1

    .line 126
    new-instance v13, Lbe/gentgo/tetsuki/ObserveFragment$3$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lbe/gentgo/tetsuki/ObserveFragment$3$1;-><init>(Lbe/gentgo/tetsuki/ObserveFragment$3;)V

    .line 133
    .local v13, "comp":Ljava/util/Comparator;, "Ljava/util/Comparator<Lbe/gentgo/tetsuki/ObserveFragment$SimpleGameInfo;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lbe/gentgo/tetsuki/ObserveFragment$3;->this$0:Lbe/gentgo/tetsuki/ObserveFragment;

    iget-object v1, v1, Lbe/gentgo/tetsuki/ObserveFragment;->sortedGames:Ljava/util/List;

    invoke-static {v1, v13}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 134
    move-object/from16 v0, p0

    iget-object v1, v0, Lbe/gentgo/tetsuki/ObserveFragment$3;->this$0:Lbe/gentgo/tetsuki/ObserveFragment;

    const/4 v2, 0x0

    iput-object v2, v1, Lbe/gentgo/tetsuki/ObserveFragment;->request:Lbe/gentgo/tetsuki/GameListRequest;

    .line 136
    move-object/from16 v0, p0

    iget-object v1, v0, Lbe/gentgo/tetsuki/ObserveFragment$3;->this$0:Lbe/gentgo/tetsuki/ObserveFragment;

    iget-object v1, v1, Lbe/gentgo/tetsuki/ObserveFragment;->gameListAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 137
    const/4 v1, 0x0

    goto :goto_0

    .line 118
    .end local v13    # "comp":Ljava/util/Comparator;, "Ljava/util/Comparator<Lbe/gentgo/tetsuki/ObserveFragment$SimpleGameInfo;>;"
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lbe/gentgo/tetsuki/ObserveFragment$3;->this$0:Lbe/gentgo/tetsuki/ObserveFragment;

    iget-object v0, v1, Lbe/gentgo/tetsuki/ObserveFragment;->sortedGames:Ljava/util/List;

    move-object/from16 v16, v0

    new-instance v1, Lbe/gentgo/tetsuki/ObserveFragment$SimpleGameInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lbe/gentgo/tetsuki/ObserveFragment$3;->this$0:Lbe/gentgo/tetsuki/ObserveFragment;

    .line 119
    move-object/from16 v0, p0

    iget-object v3, v0, Lbe/gentgo/tetsuki/ObserveFragment$3;->this$0:Lbe/gentgo/tetsuki/ObserveFragment;

    iget-object v3, v3, Lbe/gentgo/tetsuki/ObserveFragment;->request:Lbe/gentgo/tetsuki/GameListRequest;

    invoke-virtual {v3, v15}, Lbe/gentgo/tetsuki/GameListRequest;->getWhiteName(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lbe/gentgo/tetsuki/ObserveFragment$3;->this$0:Lbe/gentgo/tetsuki/ObserveFragment;

    iget-object v4, v4, Lbe/gentgo/tetsuki/ObserveFragment;->request:Lbe/gentgo/tetsuki/GameListRequest;

    invoke-virtual {v4, v15}, Lbe/gentgo/tetsuki/GameListRequest;->getBlackName(I)Ljava/lang/String;

    move-result-object v4

    .line 120
    move-object/from16 v0, p0

    iget-object v5, v0, Lbe/gentgo/tetsuki/ObserveFragment$3;->this$0:Lbe/gentgo/tetsuki/ObserveFragment;

    iget-object v5, v5, Lbe/gentgo/tetsuki/ObserveFragment;->request:Lbe/gentgo/tetsuki/GameListRequest;

    invoke-virtual {v5, v15}, Lbe/gentgo/tetsuki/GameListRequest;->getWhiteRank(I)F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lbe/gentgo/tetsuki/ObserveFragment$3;->this$0:Lbe/gentgo/tetsuki/ObserveFragment;

    iget-object v6, v6, Lbe/gentgo/tetsuki/ObserveFragment;->request:Lbe/gentgo/tetsuki/GameListRequest;

    invoke-virtual {v6, v15}, Lbe/gentgo/tetsuki/GameListRequest;->getBlackRank(I)F

    move-result v6

    .line 121
    move-object/from16 v0, p0

    iget-object v7, v0, Lbe/gentgo/tetsuki/ObserveFragment$3;->this$0:Lbe/gentgo/tetsuki/ObserveFragment;

    iget-object v7, v7, Lbe/gentgo/tetsuki/ObserveFragment;->request:Lbe/gentgo/tetsuki/GameListRequest;

    invoke-virtual {v7, v15}, Lbe/gentgo/tetsuki/GameListRequest;->getNrOfMoves(I)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lbe/gentgo/tetsuki/ObserveFragment$3;->this$0:Lbe/gentgo/tetsuki/ObserveFragment;

    iget-object v8, v8, Lbe/gentgo/tetsuki/ObserveFragment;->request:Lbe/gentgo/tetsuki/GameListRequest;

    invoke-virtual {v8, v15}, Lbe/gentgo/tetsuki/GameListRequest;->getNrOfObservers(I)I

    move-result v8

    .line 122
    move-object/from16 v0, p0

    iget-object v9, v0, Lbe/gentgo/tetsuki/ObserveFragment$3;->this$0:Lbe/gentgo/tetsuki/ObserveFragment;

    iget-object v9, v9, Lbe/gentgo/tetsuki/ObserveFragment;->request:Lbe/gentgo/tetsuki/GameListRequest;

    invoke-virtual {v9, v15}, Lbe/gentgo/tetsuki/GameListRequest;->getGameID(I)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lbe/gentgo/tetsuki/ObserveFragment$3;->this$0:Lbe/gentgo/tetsuki/ObserveFragment;

    iget-object v10, v10, Lbe/gentgo/tetsuki/ObserveFragment;->request:Lbe/gentgo/tetsuki/GameListRequest;

    invoke-virtual {v10, v15}, Lbe/gentgo/tetsuki/GameListRequest;->getTitle(I)Ljava/lang/String;

    move-result-object v10

    .line 123
    move-object/from16 v0, p0

    iget-object v11, v0, Lbe/gentgo/tetsuki/ObserveFragment$3;->this$0:Lbe/gentgo/tetsuki/ObserveFragment;

    iget-object v11, v11, Lbe/gentgo/tetsuki/ObserveFragment;->request:Lbe/gentgo/tetsuki/GameListRequest;

    invoke-virtual {v11, v15}, Lbe/gentgo/tetsuki/GameListRequest;->getWhiteTitle(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lbe/gentgo/tetsuki/ObserveFragment$3;->this$0:Lbe/gentgo/tetsuki/ObserveFragment;

    iget-object v12, v12, Lbe/gentgo/tetsuki/ObserveFragment;->request:Lbe/gentgo/tetsuki/GameListRequest;

    invoke-virtual {v12, v15}, Lbe/gentgo/tetsuki/GameListRequest;->getBlackTitle(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v1 .. v12}, Lbe/gentgo/tetsuki/ObserveFragment$SimpleGameInfo;-><init>(Lbe/gentgo/tetsuki/ObserveFragment;Ljava/lang/String;Ljava/lang/String;FFIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1
.end method
