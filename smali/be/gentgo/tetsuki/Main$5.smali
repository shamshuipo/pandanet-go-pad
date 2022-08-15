.class Lbe/gentgo/tetsuki/Main$5;
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
    iput-object p1, p0, Lbe/gentgo/tetsuki/Main$5;->this$0:Lbe/gentgo/tetsuki/Main;

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 216
    iget-object v2, p0, Lbe/gentgo/tetsuki/Main$5;->this$0:Lbe/gentgo/tetsuki/Main;

    invoke-static {v2}, Lbe/gentgo/tetsuki/Main;->access$5(Lbe/gentgo/tetsuki/Main;)Lbe/gentgo/tetsuki/HomeFragment;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lbe/gentgo/tetsuki/HomeFragment;->update(Z)V

    .line 217
    iget-object v2, p0, Lbe/gentgo/tetsuki/Main$5;->this$0:Lbe/gentgo/tetsuki/Main;

    const v3, 0x7f0b0019

    invoke-virtual {v2, v3}, Lbe/gentgo/tetsuki/Main;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 218
    .local v0, "badge":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 219
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->access$6()Lbe/gentgo/tetsuki/InvitationManager;

    move-result-object v2

    invoke-virtual {v2}, Lbe/gentgo/tetsuki/InvitationManager;->getNrOfUnreadInvitations()I

    move-result v1

    .line 220
    .local v1, "unread":I
    if-nez v1, :cond_1

    const/4 v2, 0x4

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 221
    if-lez v1, :cond_0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    .end local v1    # "unread":I
    :cond_0
    return-void

    .line 220
    .restart local v1    # "unread":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
