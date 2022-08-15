.class Lbe/gentgo/tetsuki/ChatView$2;
.super Ljava/lang/Object;
.source "ChatView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbe/gentgo/tetsuki/ChatView;-><init>(Lbe/gentgo/tetsuki/GameBaseActivity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbe/gentgo/tetsuki/ChatView;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/ChatView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/ChatView$2;->this$0:Lbe/gentgo/tetsuki/ChatView;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    .line 41
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    .line 42
    const/16 v3, 0x42

    if-ne p2, v3, :cond_0

    move-object v0, p1

    .line 44
    check-cast v0, Landroid/widget/EditText;

    .line 45
    .local v0, "edit":Landroid/widget/EditText;
    iget-object v3, p0, Lbe/gentgo/tetsuki/ChatView$2;->this$0:Lbe/gentgo/tetsuki/ChatView;

    invoke-static {v3}, Lbe/gentgo/tetsuki/ChatView;->access$1(Lbe/gentgo/tetsuki/ChatView;)Lbe/gentgo/tetsuki/GameBaseActivity;

    move-result-object v3

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lbe/gentgo/tetsuki/GameBaseActivity;->speak(Ljava/lang/String;)V

    .line 47
    iget-object v3, p0, Lbe/gentgo/tetsuki/ChatView$2;->this$0:Lbe/gentgo/tetsuki/ChatView;

    invoke-static {v3}, Lbe/gentgo/tetsuki/ChatView;->access$1(Lbe/gentgo/tetsuki/ChatView;)Lbe/gentgo/tetsuki/GameBaseActivity;

    move-result-object v3

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Lbe/gentgo/tetsuki/GameBaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 48
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 49
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->clear()V

    .line 50
    const/4 v2, 0x1

    .line 52
    .end local v0    # "edit":Landroid/widget/EditText;
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return v2
.end method
