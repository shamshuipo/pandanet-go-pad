.class public Lbe/gentgo/tetsuki/ListDetailsFragment;
.super Landroid/app/Fragment;
.source "ListDetailsFragment.java"


# instance fields
.field private detailsFragmentToResume:Landroid/app/Fragment;

.field public listFragment:Lbe/gentgo/tetsuki/ListWithIndexFragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lbe/gentgo/tetsuki/ListDetailsFragment;->detailsFragmentToResume:Landroid/app/Fragment;

    .line 26
    new-instance v0, Lbe/gentgo/tetsuki/ListWithIndexFragment;

    invoke-direct {v0}, Lbe/gentgo/tetsuki/ListWithIndexFragment;-><init>()V

    iput-object v0, p0, Lbe/gentgo/tetsuki/ListDetailsFragment;->listFragment:Lbe/gentgo/tetsuki/ListWithIndexFragment;

    .line 27
    return-void
.end method


# virtual methods
.method public getDetailsFragment()Landroid/app/Fragment;
    .locals 2

    .prologue
    .line 95
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/ListDetailsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "DetailsFragment"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public getTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 30
    const-string v0, ""

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 56
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    const v1, 0x7f030028

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 61
    .local v0, "result":Landroid/view/View;
    :goto_0
    return-object v0

    .line 59
    .end local v0    # "result":Landroid/view/View;
    :cond_0
    const v1, 0x7f03001d

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "result":Landroid/view/View;
    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 91
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 92
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 67
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 68
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getDispatcher()Lbe/gentgo/tetsuki/Dispatcher;

    move-result-object v2

    invoke-interface {v2}, Lbe/gentgo/tetsuki/Dispatcher;->getTitleBar()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0b001a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 69
    .local v0, "title":Landroid/widget/TextView;
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/ListDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0, v2}, Lbe/gentgo/tetsuki/ListDetailsFragment;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/ListDetailsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 72
    .local v1, "transaction":Landroid/app/FragmentTransaction;
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f0b00d1

    :goto_0
    iget-object v3, p0, Lbe/gentgo/tetsuki/ListDetailsFragment;->listFragment:Lbe/gentgo/tetsuki/ListWithIndexFragment;

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 73
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 75
    iget-object v2, p0, Lbe/gentgo/tetsuki/ListDetailsFragment;->detailsFragmentToResume:Landroid/app/Fragment;

    invoke-virtual {p0, v2}, Lbe/gentgo/tetsuki/ListDetailsFragment;->setDetailsFragment(Landroid/app/Fragment;)V

    .line 76
    return-void

    .line 72
    :cond_0
    const v2, 0x7f0b00a0

    goto :goto_0
.end method

.method public setDetailsFragment(Landroid/app/Fragment;)V
    .locals 6
    .param p1, "r"    # Landroid/app/Fragment;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const v5, 0x7f040002

    const v4, 0x7f040001

    .line 34
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/ListDetailsFragment;->getDetailsFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 35
    .local v0, "details":Landroid/app/Fragment;
    if-ne v0, p1, :cond_1

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/ListDetailsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->popBackStack()V

    .line 37
    :cond_2
    if-eqz p1, :cond_0

    .line 38
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/ListDetailsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 39
    .local v1, "transaction":Landroid/app/FragmentTransaction;
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->isTablet()Z

    move-result v2

    if-nez v2, :cond_3

    .line 40
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xd

    if-lt v2, v3, :cond_4

    .line 41
    const/high16 v2, 0x7f040000

    const v3, 0x7f040003

    invoke-virtual {v1, v4, v5, v2, v3}, Landroid/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/app/FragmentTransaction;

    .line 45
    :cond_3
    :goto_1
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_5

    const v2, 0x7f0b00d3

    :goto_2
    const-string v3, "DetailsFragment"

    invoke-virtual {v1, v2, p1, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 46
    const-string v2, "Set Details"

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 47
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 43
    :cond_4
    invoke-virtual {v1, v4, v5}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    goto :goto_1

    .line 45
    :cond_5
    const v2, 0x7f0b00a0

    goto :goto_2
.end method

.method public willPause()V
    .locals 2

    .prologue
    .line 81
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/ListDetailsFragment;->getDetailsFragment()Landroid/app/Fragment;

    move-result-object v1

    iput-object v1, p0, Lbe/gentgo/tetsuki/ListDetailsFragment;->detailsFragmentToResume:Landroid/app/Fragment;

    .line 82
    iget-object v1, p0, Lbe/gentgo/tetsuki/ListDetailsFragment;->detailsFragmentToResume:Landroid/app/Fragment;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/ListDetailsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    .line 83
    :cond_0
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/ListDetailsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 84
    .local v0, "transaction":Landroid/app/FragmentTransaction;
    iget-object v1, p0, Lbe/gentgo/tetsuki/ListDetailsFragment;->listFragment:Lbe/gentgo/tetsuki/ListWithIndexFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 85
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 86
    return-void
.end method
