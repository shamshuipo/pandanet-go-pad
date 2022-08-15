.class Lbe/gentgo/tetsuki/ChangePasswordDialog$1;
.super Ljava/lang/Object;
.source "ChangePasswordDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbe/gentgo/tetsuki/ChangePasswordDialog;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbe/gentgo/tetsuki/ChangePasswordDialog;

.field private final synthetic val$password1:Landroid/widget/EditText;

.field private final synthetic val$password2:Landroid/widget/EditText;

.field private final synthetic val$save:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/ChangePasswordDialog;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/ChangePasswordDialog$1;->this$0:Lbe/gentgo/tetsuki/ChangePasswordDialog;

    iput-object p2, p0, Lbe/gentgo/tetsuki/ChangePasswordDialog$1;->val$password1:Landroid/widget/EditText;

    iput-object p3, p0, Lbe/gentgo/tetsuki/ChangePasswordDialog$1;->val$password2:Landroid/widget/EditText;

    iput-object p4, p0, Lbe/gentgo/tetsuki/ChangePasswordDialog$1;->val$save:Landroid/widget/Button;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 34
    const/4 v0, 0x0

    .line 35
    .local v0, "ok":Z
    iget-object v1, p0, Lbe/gentgo/tetsuki/ChangePasswordDialog$1;->val$password1:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lbe/gentgo/tetsuki/ChangePasswordDialog$1;->val$password2:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v1

    iget-object v2, p0, Lbe/gentgo/tetsuki/ChangePasswordDialog$1;->val$password1:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbe/gentgo/tetsuki/Server;->isPasswordValid(Ljava/lang/String;)Z

    move-result v0

    .line 38
    :cond_0
    iget-object v2, p0, Lbe/gentgo/tetsuki/ChangePasswordDialog$1;->val$save:Landroid/widget/Button;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 39
    return-void

    .line 38
    :cond_1
    const/4 v1, 0x4

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 44
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 48
    return-void
.end method
