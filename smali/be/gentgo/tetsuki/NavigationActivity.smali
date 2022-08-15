.class public Lbe/gentgo/tetsuki/NavigationActivity;
.super Lbe/gentgo/tetsuki/TetsukiActivity;
.source "NavigationActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lbe/gentgo/tetsuki/TetsukiActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getNavigationDepth()I
    .locals 2

    .prologue
    .line 32
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/NavigationActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 33
    .local v0, "mgr":Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    return v1
.end method

.method public pushFragment(Landroid/app/Fragment;IZ)V
    .locals 3
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "hostViewID"    # I
    .param p3, "poppable"    # Z

    .prologue
    .line 15
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/NavigationActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 16
    .local v0, "fragmentMgr":Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 17
    .local v1, "trans":Landroid/app/FragmentTransaction;
    invoke-virtual {v1, p2, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 18
    if-eqz p3, :cond_0

    .line 19
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 21
    :cond_0
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 22
    return-void
.end method

.method public unwind()V
    .locals 2

    .prologue
    .line 26
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/NavigationActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 27
    .local v0, "mgr":Landroid/app/FragmentManager;
    :cond_0
    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    move-result v1

    if-nez v1, :cond_0

    .line 28
    return-void
.end method
