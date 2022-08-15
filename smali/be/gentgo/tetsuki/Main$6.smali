.class Lbe/gentgo/tetsuki/Main$6;
.super Ljava/lang/Object;
.source "Main.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbe/gentgo/tetsuki/Main;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbe/gentgo/tetsuki/Main;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/Main;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/Main$6;->this$0:Lbe/gentgo/tetsuki/Main;

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 226
    const v2, 0x7f060009

    invoke-static {v2, v5}, Lbe/gentgo/tetsuki/SoundManager;->playSound(IZ)V

    .line 227
    iget-object v2, p0, Lbe/gentgo/tetsuki/Main$6;->this$0:Lbe/gentgo/tetsuki/Main;

    invoke-static {v2}, Lbe/gentgo/tetsuki/Main;->access$5(Lbe/gentgo/tetsuki/Main;)Lbe/gentgo/tetsuki/HomeFragment;

    move-result-object v2

    invoke-virtual {v2}, Lbe/gentgo/tetsuki/HomeFragment;->getSelection()I

    move-result v2

    if-eq v2, v4, :cond_0

    .line 228
    iget-object v2, p0, Lbe/gentgo/tetsuki/Main$6;->this$0:Lbe/gentgo/tetsuki/Main;

    const v3, 0x7f08013a

    invoke-virtual {v2, v3}, Lbe/gentgo/tetsuki/Main;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {}, Lbe/gentgo/tetsuki/Main;->access$6()Lbe/gentgo/tetsuki/InvitationManager;

    move-result-object v4

    invoke-virtual {v4}, Lbe/gentgo/tetsuki/InvitationManager;->getNrOfUnreadInvitations()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 229
    .local v1, "msg":Ljava/lang/String;
    iget-object v2, p0, Lbe/gentgo/tetsuki/Main$6;->this$0:Lbe/gentgo/tetsuki/Main;

    invoke-static {v2, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 230
    .local v0, "message":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 232
    .end local v0    # "message":Landroid/widget/Toast;
    .end local v1    # "msg":Ljava/lang/String;
    :cond_0
    return-void
.end method
