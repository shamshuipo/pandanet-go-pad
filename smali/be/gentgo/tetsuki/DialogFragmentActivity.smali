.class public Lbe/gentgo/tetsuki/DialogFragmentActivity;
.super Lbe/gentgo/tetsuki/NavigationActivity;
.source "DialogFragmentActivity.java"


# static fields
.field private static firstFragmentToStart:Landroid/app/Fragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lbe/gentgo/tetsuki/NavigationActivity;-><init>()V

    return-void
.end method

.method public static startActivityWithFragment(Landroid/app/Fragment;Landroid/content/Context;)V
    .locals 2
    .param p0, "fragment"    # Landroid/app/Fragment;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    sput-object p0, Lbe/gentgo/tetsuki/DialogFragmentActivity;->firstFragmentToStart:Landroid/app/Fragment;

    .line 26
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lbe/gentgo/tetsuki/DialogFragmentActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 27
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 28
    return-void
.end method

.method private updateWindowSize()V
    .locals 8

    .prologue
    .line 59
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/DialogFragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    .line 60
    .local v1, "w":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 61
    .local v0, "d":Landroid/view/Display;
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 62
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 65
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/DialogFragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    int-to-double v4, v3

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v6

    double-to-int v3, v4

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/view/Window;->setLayout(II)V

    .line 77
    :goto_0
    return-void

    .line 70
    :cond_0
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/DialogFragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    int-to-double v4, v3

    const-wide/high16 v6, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v4, v6

    double-to-int v3, v4

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v4

    int-to-double v4, v4

    const-wide v6, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/view/Window;->setLayout(II)V

    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/DialogFragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/view/Window;->setLayout(II)V

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 53
    invoke-super {p0, p1}, Lbe/gentgo/tetsuki/NavigationActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 54
    invoke-direct {p0}, Lbe/gentgo/tetsuki/DialogFragmentActivity;->updateWindowSize()V

    .line 55
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 31
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    const v0, 0x1030009

    invoke-virtual {p0, v0}, Lbe/gentgo/tetsuki/DialogFragmentActivity;->setTheme(I)V

    .line 39
    :cond_0
    invoke-super {p0, p1}, Lbe/gentgo/tetsuki/NavigationActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lbe/gentgo/tetsuki/DialogFragmentActivity;->requestWindowFeature(I)Z

    .line 42
    const v0, 0x7f03001d

    invoke-virtual {p0, v0}, Lbe/gentgo/tetsuki/DialogFragmentActivity;->setContentView(I)V

    .line 44
    invoke-direct {p0}, Lbe/gentgo/tetsuki/DialogFragmentActivity;->updateWindowSize()V

    .line 45
    sget-object v0, Lbe/gentgo/tetsuki/DialogFragmentActivity;->firstFragmentToStart:Landroid/app/Fragment;

    if-eqz v0, :cond_1

    .line 47
    sget-object v0, Lbe/gentgo/tetsuki/DialogFragmentActivity;->firstFragmentToStart:Landroid/app/Fragment;

    const v1, 0x7f0b00a0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lbe/gentgo/tetsuki/DialogFragmentActivity;->pushFragment(Landroid/app/Fragment;IZ)V

    .line 48
    const/4 v0, 0x0

    sput-object v0, Lbe/gentgo/tetsuki/DialogFragmentActivity;->firstFragmentToStart:Landroid/app/Fragment;

    .line 50
    :cond_1
    return-void
.end method
