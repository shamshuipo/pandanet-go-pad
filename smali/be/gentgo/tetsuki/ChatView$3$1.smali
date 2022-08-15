.class Lbe/gentgo/tetsuki/ChatView$3$1;
.super Ljava/lang/Object;
.source "ChatView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbe/gentgo/tetsuki/ChatView$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lbe/gentgo/tetsuki/ChatView$3;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/ChatView$3;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/ChatView$3$1;->this$1:Lbe/gentgo/tetsuki/ChatView$3;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lbe/gentgo/tetsuki/ChatView$3$1;->this$1:Lbe/gentgo/tetsuki/ChatView$3;

    invoke-static {v0}, Lbe/gentgo/tetsuki/ChatView$3;->access$0(Lbe/gentgo/tetsuki/ChatView$3;)Lbe/gentgo/tetsuki/ChatView;

    move-result-object v0

    invoke-static {v0}, Lbe/gentgo/tetsuki/ChatView;->access$1(Lbe/gentgo/tetsuki/ChatView;)Lbe/gentgo/tetsuki/GameBaseActivity;

    move-result-object v0

    iget-object v1, p0, Lbe/gentgo/tetsuki/ChatView$3$1;->this$1:Lbe/gentgo/tetsuki/ChatView$3;

    invoke-static {v1}, Lbe/gentgo/tetsuki/ChatView$3;->access$0(Lbe/gentgo/tetsuki/ChatView$3;)Lbe/gentgo/tetsuki/ChatView;

    move-result-object v1

    invoke-static {v1}, Lbe/gentgo/tetsuki/ChatView;->access$5(Lbe/gentgo/tetsuki/ChatView;)[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/GameBaseActivity;->speak(Ljava/lang/String;)V

    .line 65
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 66
    return-void
.end method
