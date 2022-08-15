.class Lbe/gentgo/tetsuki/RankIndexView$1;
.super Lbe/gentgo/tetsuki/IndexView$OnIndexClickedListener;
.source "RankIndexView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbe/gentgo/tetsuki/RankIndexView;->initForList(Landroid/widget/ListView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbe/gentgo/tetsuki/RankIndexView;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/RankIndexView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/RankIndexView$1;->this$0:Lbe/gentgo/tetsuki/RankIndexView;

    .line 54
    invoke-direct {p0}, Lbe/gentgo/tetsuki/IndexView$OnIndexClickedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onIndexClicked(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 56
    iget-object v3, p0, Lbe/gentgo/tetsuki/RankIndexView$1;->this$0:Lbe/gentgo/tetsuki/RankIndexView;

    invoke-static {v3}, Lbe/gentgo/tetsuki/RankIndexView;->access$0(Lbe/gentgo/tetsuki/RankIndexView;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lbe/gentgo/tetsuki/PlayersListAdapter;

    .line 57
    .local v0, "adap":Lbe/gentgo/tetsuki/PlayersListAdapter;
    if-nez p1, :cond_0

    iget-object v3, p0, Lbe/gentgo/tetsuki/RankIndexView$1;->this$0:Lbe/gentgo/tetsuki/RankIndexView;

    invoke-static {v3}, Lbe/gentgo/tetsuki/RankIndexView;->access$0(Lbe/gentgo/tetsuki/RankIndexView;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v0, v3}, Lbe/gentgo/tetsuki/PlayersListAdapter;->scrollToTop(Landroid/widget/ListView;)V

    .line 69
    :goto_0
    return-void

    .line 61
    :cond_0
    invoke-static {}, Lbe/gentgo/tetsuki/Preferences;->japaneseRanking()Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v1, 0xa

    .line 62
    .local v1, "index1d":I
    :goto_1
    const/4 v3, 0x1

    if-ne p1, v3, :cond_3

    const/16 v2, 0x6d

    .line 67
    .local v2, "rankSection":I
    :cond_1
    :goto_2
    iget-object v3, p0, Lbe/gentgo/tetsuki/RankIndexView$1;->this$0:Lbe/gentgo/tetsuki/RankIndexView;

    invoke-static {v3}, Lbe/gentgo/tetsuki/RankIndexView;->access$0(Lbe/gentgo/tetsuki/RankIndexView;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lbe/gentgo/tetsuki/PlayersListAdapter;->scrollToRankSection(Landroid/widget/ListView;I)V

    goto :goto_0

    .line 61
    .end local v1    # "index1d":I
    .end local v2    # "rankSection":I
    :cond_2
    const/16 v1, 0x9

    goto :goto_1

    .line 64
    .restart local v1    # "index1d":I
    :cond_3
    sub-int v3, v1, p1

    add-int/lit8 v2, v3, 0x1

    .line 65
    .restart local v2    # "rankSection":I
    invoke-static {}, Lbe/gentgo/tetsuki/Preferences;->japaneseRanking()Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, -0x2

    goto :goto_2
.end method
