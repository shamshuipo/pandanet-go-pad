.class Lbe/gentgo/tetsuki/ChangePasswordDialog$3;
.super Ljava/lang/Object;
.source "ChangePasswordDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/ChangePasswordDialog;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/ChangePasswordDialog$3;->this$0:Lbe/gentgo/tetsuki/ChangePasswordDialog;

    iput-object p2, p0, Lbe/gentgo/tetsuki/ChangePasswordDialog$3;->val$password1:Landroid/widget/EditText;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 62
    iget-object v1, p0, Lbe/gentgo/tetsuki/ChangePasswordDialog$3;->val$password1:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "pwd":Ljava/lang/String;
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbe/gentgo/tetsuki/Server;->changePassword(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    invoke-static {v0}, Lbe/gentgo/tetsuki/Preferences;->setPassword(Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lbe/gentgo/tetsuki/Preferences;->save()V

    .line 67
    :cond_0
    iget-object v1, p0, Lbe/gentgo/tetsuki/ChangePasswordDialog$3;->this$0:Lbe/gentgo/tetsuki/ChangePasswordDialog;

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/ChangePasswordDialog;->dismiss()V

    .line 68
    return-void
.end method
