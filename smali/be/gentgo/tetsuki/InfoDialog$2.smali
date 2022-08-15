.class Lbe/gentgo/tetsuki/InfoDialog$2;
.super Ljava/lang/Object;
.source "InfoDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbe/gentgo/tetsuki/InfoDialog;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbe/gentgo/tetsuki/InfoDialog;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/InfoDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/InfoDialog$2;->this$0:Lbe/gentgo/tetsuki/InfoDialog;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 28
    iget-object v2, p0, Lbe/gentgo/tetsuki/InfoDialog$2;->this$0:Lbe/gentgo/tetsuki/InfoDialog;

    const v3, 0x7f0b0088

    invoke-virtual {v2, v3}, Lbe/gentgo/tetsuki/InfoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 29
    .local v1, "textField":Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, "info":Ljava/lang/String;
    invoke-static {v0}, Lbe/gentgo/tetsuki/Preferences;->setInfoText(Ljava/lang/String;)V

    .line 31
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v2

    invoke-static {v0}, Lbe/gentgo/tetsuki/Preferences;->encode(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lbe/gentgo/tetsuki/Server;->setMyInfoText([B)V

    .line 32
    invoke-static {}, Lbe/gentgo/tetsuki/Preferences;->save()V

    .line 33
    iget-object v2, p0, Lbe/gentgo/tetsuki/InfoDialog$2;->this$0:Lbe/gentgo/tetsuki/InfoDialog;

    invoke-virtual {v2}, Lbe/gentgo/tetsuki/InfoDialog;->dismiss()V

    .line 34
    return-void
.end method
