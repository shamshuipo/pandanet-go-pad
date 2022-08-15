.class Lbe/gentgo/tetsuki/LoginDialog$1;
.super Ljava/lang/Object;
.source "LoginDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbe/gentgo/tetsuki/LoginDialog;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbe/gentgo/tetsuki/LoginDialog;

.field private final synthetic val$password:Landroid/widget/EditText;

.field private final synthetic val$userid:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/LoginDialog;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/LoginDialog$1;->this$0:Lbe/gentgo/tetsuki/LoginDialog;

    iput-object p2, p0, Lbe/gentgo/tetsuki/LoginDialog$1;->val$userid:Landroid/widget/EditText;

    iput-object p3, p0, Lbe/gentgo/tetsuki/LoginDialog$1;->val$password:Landroid/widget/EditText;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 29
    iget-object v0, p0, Lbe/gentgo/tetsuki/LoginDialog$1;->val$userid:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbe/gentgo/tetsuki/Preferences;->setLoginID(Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lbe/gentgo/tetsuki/LoginDialog$1;->val$password:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbe/gentgo/tetsuki/Preferences;->setPassword(Ljava/lang/String;)V

    .line 31
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/Server;->connectFromPreferences(Z)V

    .line 32
    iget-object v0, p0, Lbe/gentgo/tetsuki/LoginDialog$1;->this$0:Lbe/gentgo/tetsuki/LoginDialog;

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/LoginDialog;->dismiss()V

    .line 33
    invoke-static {}, Lbe/gentgo/tetsuki/Preferences;->save()V

    .line 34
    return-void
.end method
