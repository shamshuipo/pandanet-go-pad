.class public Lbe/gentgo/tetsuki/InfoDialog;
.super Landroid/app/Dialog;
.source "InfoDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 12
    const v3, 0x7f030019

    invoke-virtual {p0, v3}, Lbe/gentgo/tetsuki/InfoDialog;->setContentView(I)V

    .line 14
    const v3, 0x7f080108

    invoke-virtual {p0, v3}, Lbe/gentgo/tetsuki/InfoDialog;->setTitle(I)V

    .line 15
    const v3, 0x7f0b0088

    invoke-virtual {p0, v3}, Lbe/gentgo/tetsuki/InfoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 16
    .local v2, "textField":Landroid/widget/EditText;
    invoke-static {}, Lbe/gentgo/tetsuki/Preferences;->getInfoText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 17
    const v3, 0x7f0b0036

    invoke-virtual {p0, v3}, Lbe/gentgo/tetsuki/InfoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 18
    .local v0, "cancel":Landroid/widget/Button;
    new-instance v3, Lbe/gentgo/tetsuki/InfoDialog$1;

    invoke-direct {v3, p0}, Lbe/gentgo/tetsuki/InfoDialog$1;-><init>(Lbe/gentgo/tetsuki/InfoDialog;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    const v3, 0x7f0b0037

    invoke-virtual {p0, v3}, Lbe/gentgo/tetsuki/InfoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 25
    .local v1, "save":Landroid/widget/Button;
    new-instance v3, Lbe/gentgo/tetsuki/InfoDialog$2;

    invoke-direct {v3, p0}, Lbe/gentgo/tetsuki/InfoDialog$2;-><init>(Lbe/gentgo/tetsuki/InfoDialog;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    return-void
.end method
