.class Lbe/gentgo/tetsuki/ChatView$3;
.super Ljava/lang/Object;
.source "ChatView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lbe/gentgo/tetsuki/ChatView$3;->this$0:Lbe/gentgo/tetsuki/ChatView;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lbe/gentgo/tetsuki/ChatView$3;)Lbe/gentgo/tetsuki/ChatView;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lbe/gentgo/tetsuki/ChatView$3;->this$0:Lbe/gentgo/tetsuki/ChatView;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 60
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lbe/gentgo/tetsuki/ChatView$3;->this$0:Lbe/gentgo/tetsuki/ChatView;

    invoke-static {v2}, Lbe/gentgo/tetsuki/ChatView;->access$1(Lbe/gentgo/tetsuki/ChatView;)Lbe/gentgo/tetsuki/GameBaseActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 61
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f080118

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 62
    iget-object v2, p0, Lbe/gentgo/tetsuki/ChatView$3;->this$0:Lbe/gentgo/tetsuki/ChatView;

    invoke-static {v2}, Lbe/gentgo/tetsuki/ChatView;->access$5(Lbe/gentgo/tetsuki/ChatView;)[Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lbe/gentgo/tetsuki/ChatView$3$1;

    invoke-direct {v3, p0}, Lbe/gentgo/tetsuki/ChatView$3$1;-><init>(Lbe/gentgo/tetsuki/ChatView$3;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 68
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 69
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 72
    return-void
.end method
