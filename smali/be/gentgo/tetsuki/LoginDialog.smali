.class public Lbe/gentgo/tetsuki/LoginDialog;
.super Landroid/app/Dialog;
.source "LoginDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 15
    const v3, 0x7f030027

    invoke-virtual {p0, v3}, Lbe/gentgo/tetsuki/LoginDialog;->setContentView(I)V

    .line 17
    invoke-direct {p0, p1}, Lbe/gentgo/tetsuki/LoginDialog;->updateWindowSize(Landroid/content/Context;)V

    .line 19
    const v3, 0x7f080085

    invoke-virtual {p0, v3}, Lbe/gentgo/tetsuki/LoginDialog;->setTitle(I)V

    .line 21
    const v3, 0x7f0b00ce

    invoke-virtual {p0, v3}, Lbe/gentgo/tetsuki/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 22
    .local v2, "userid":Landroid/widget/EditText;
    const v3, 0x7f0b00cf

    invoke-virtual {p0, v3}, Lbe/gentgo/tetsuki/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 23
    .local v1, "password":Landroid/widget/EditText;
    invoke-static {}, Lbe/gentgo/tetsuki/Preferences;->getLoginID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 24
    invoke-static {}, Lbe/gentgo/tetsuki/Preferences;->getLoginPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 26
    const v3, 0x7f0b00d0

    invoke-virtual {p0, v3}, Lbe/gentgo/tetsuki/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 27
    .local v0, "loginButton":Landroid/widget/Button;
    new-instance v3, Lbe/gentgo/tetsuki/LoginDialog$1;

    invoke-direct {v3, p0, v2, v1}, Lbe/gentgo/tetsuki/LoginDialog$1;-><init>(Lbe/gentgo/tetsuki/LoginDialog;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    return-void
.end method

.method public static present()V
    .locals 2

    .prologue
    .line 57
    invoke-static {}, Lbe/gentgo/tetsuki/TetsukiActivity;->getForegroundActivity()Lbe/gentgo/tetsuki/TetsukiActivity;

    move-result-object v1

    .line 58
    .local v1, "onTop":Landroid/content/Context;
    new-instance v0, Lbe/gentgo/tetsuki/LoginDialog;

    invoke-direct {v0, v1}, Lbe/gentgo/tetsuki/LoginDialog;-><init>(Landroid/content/Context;)V

    .line 59
    .local v0, "d":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 60
    return-void
.end method

.method private updateWindowSize(Landroid/content/Context;)V
    .locals 8
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 41
    const-string v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 42
    .local v1, "w":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 43
    .local v0, "d":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 46
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/LoginDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    int-to-double v4, v3

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v6

    double-to-int v3, v4

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/view/Window;->setLayout(II)V

    .line 54
    .end local v0    # "d":Landroid/view/Display;
    .end local v1    # "w":Landroid/view/WindowManager;
    :cond_0
    :goto_0
    return-void

    .line 51
    .restart local v0    # "d":Landroid/view/Display;
    .restart local v1    # "w":Landroid/view/WindowManager;
    :cond_1
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/LoginDialog;->getWindow()Landroid/view/Window;

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
.end method
