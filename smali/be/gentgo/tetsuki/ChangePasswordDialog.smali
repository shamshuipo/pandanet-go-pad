.class public Lbe/gentgo/tetsuki/ChangePasswordDialog;
.super Landroid/app/Dialog;
.source "ChangePasswordDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 21
    const v5, 0x7f030007

    invoke-virtual {p0, v5}, Lbe/gentgo/tetsuki/ChangePasswordDialog;->setContentView(I)V

    .line 22
    const v5, 0x7f080135

    invoke-virtual {p0, v5}, Lbe/gentgo/tetsuki/ChangePasswordDialog;->setTitle(I)V

    .line 24
    const v5, 0x7f0b0032

    invoke-virtual {p0, v5}, Lbe/gentgo/tetsuki/ChangePasswordDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 25
    .local v1, "password1":Landroid/widget/EditText;
    const v5, 0x7f0b0034

    invoke-virtual {p0, v5}, Lbe/gentgo/tetsuki/ChangePasswordDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 27
    .local v2, "password2":Landroid/widget/EditText;
    const v5, 0x7f0b0037

    invoke-virtual {p0, v5}, Lbe/gentgo/tetsuki/ChangePasswordDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 28
    .local v3, "save":Landroid/widget/Button;
    const v5, 0x7f0b0036

    invoke-virtual {p0, v5}, Lbe/gentgo/tetsuki/ChangePasswordDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 30
    .local v0, "cancel":Landroid/widget/Button;
    new-instance v4, Lbe/gentgo/tetsuki/ChangePasswordDialog$1;

    invoke-direct {v4, p0, v1, v2, v3}, Lbe/gentgo/tetsuki/ChangePasswordDialog$1;-><init>(Lbe/gentgo/tetsuki/ChangePasswordDialog;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/Button;)V

    .line 51
    .local v4, "watcher":Landroid/text/TextWatcher;
    invoke-virtual {v1, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 52
    invoke-virtual {v2, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 53
    new-instance v5, Lbe/gentgo/tetsuki/ChangePasswordDialog$2;

    invoke-direct {v5, p0}, Lbe/gentgo/tetsuki/ChangePasswordDialog$2;-><init>(Lbe/gentgo/tetsuki/ChangePasswordDialog;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    new-instance v5, Lbe/gentgo/tetsuki/ChangePasswordDialog$3;

    invoke-direct {v5, p0, v1}, Lbe/gentgo/tetsuki/ChangePasswordDialog$3;-><init>(Lbe/gentgo/tetsuki/ChangePasswordDialog;Landroid/widget/EditText;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    return-void
.end method

.method public static canChangePassword()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v1

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/Server;->getErrorState()I

    move-result v1

    if-eqz v1, :cond_1

    .line 16
    :cond_0
    :goto_0
    return v0

    .line 15
    :cond_1
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v1

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/Server;->isGuestLogin()Z

    move-result v1

    if-nez v1, :cond_0

    .line 16
    const/4 v0, 0x1

    goto :goto_0
.end method
