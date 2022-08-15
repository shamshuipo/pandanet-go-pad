.class public Lbe/gentgo/tetsuki/ListWithIndexFragment;
.super Landroid/app/Fragment;
.source "ListWithIndexFragment.java"


# instance fields
.field public adapter:Landroid/widget/ListAdapter;

.field public indexVisible:Z

.field public onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 11
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 49
    iput-object v0, p0, Lbe/gentgo/tetsuki/ListWithIndexFragment;->adapter:Landroid/widget/ListAdapter;

    .line 50
    iput-object v0, p0, Lbe/gentgo/tetsuki/ListWithIndexFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbe/gentgo/tetsuki/ListWithIndexFragment;->indexVisible:Z

    .line 11
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 18
    const v3, 0x7f030018

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 19
    .local v2, "result":Landroid/view/View;
    const v3, 0x7f0b002b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 20
    .local v1, "list":Landroid/widget/ListView;
    iget-object v3, p0, Lbe/gentgo/tetsuki/ListWithIndexFragment;->adapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lbe/gentgo/tetsuki/ListWithIndexFragment;->adapter:Landroid/widget/ListAdapter;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 21
    :cond_0
    iget-object v3, p0, Lbe/gentgo/tetsuki/ListWithIndexFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lbe/gentgo/tetsuki/ListWithIndexFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 24
    :cond_1
    iget-boolean v3, p0, Lbe/gentgo/tetsuki/ListWithIndexFragment;->indexVisible:Z

    if-eqz v3, :cond_2

    .line 26
    const v3, 0x7f0b0087

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbe/gentgo/tetsuki/RankIndexView;

    .line 27
    .local v0, "index":Lbe/gentgo/tetsuki/RankIndexView;
    invoke-virtual {v0, v4}, Lbe/gentgo/tetsuki/RankIndexView;->setVisibility(I)V

    .line 28
    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/RankIndexView;->initForList(Landroid/widget/ListView;)V

    .line 31
    .end local v0    # "index":Lbe/gentgo/tetsuki/RankIndexView;
    :cond_2
    return-object v2
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 41
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 42
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 36
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 37
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 46
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 47
    return-void
.end method
