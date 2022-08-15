.class Lbe/gentgo/tetsuki/HomeFragment$2;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbe/gentgo/tetsuki/HomeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbe/gentgo/tetsuki/HomeFragment;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/HomeFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/HomeFragment$2;->this$0:Lbe/gentgo/tetsuki/HomeFragment;

    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const v5, 0x7f0b0013

    const/4 v4, 0x1

    .line 347
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v3

    invoke-virtual {v3}, Lbe/gentgo/tetsuki/Server;->getErrorState()I

    move-result v1

    .line 348
    .local v1, "state":I
    if-eq v1, v4, :cond_0

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    .line 350
    :cond_0
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v3

    invoke-virtual {v3, v4}, Lbe/gentgo/tetsuki/Server;->connectFromPreferences(Z)V

    .line 352
    :cond_1
    if-nez v1, :cond_2

    .line 353
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v3

    invoke-virtual {v3}, Lbe/gentgo/tetsuki/Server;->isGuestLogin()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 354
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    if-ne v3, v5, :cond_3

    .line 356
    iget-object v3, p0, Lbe/gentgo/tetsuki/HomeFragment$2;->this$0:Lbe/gentgo/tetsuki/HomeFragment;

    const/high16 v4, 0x7f080000

    invoke-virtual {v3, v4}, Lbe/gentgo/tetsuki/HomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 357
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 358
    .local v0, "i":Landroid/content/Intent;
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 359
    iget-object v3, p0, Lbe/gentgo/tetsuki/HomeFragment$2;->this$0:Lbe/gentgo/tetsuki/HomeFragment;

    invoke-virtual {v3, v0}, Lbe/gentgo/tetsuki/HomeFragment;->startActivity(Landroid/content/Intent;)V

    .line 374
    .end local v0    # "i":Landroid/content/Intent;
    .end local v2    # "url":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 363
    :cond_3
    invoke-static {}, Lbe/gentgo/tetsuki/LoginDialog;->present()V

    goto :goto_0

    .line 367
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    if-ne v3, v5, :cond_5

    .line 368
    iget-object v3, p0, Lbe/gentgo/tetsuki/HomeFragment$2;->this$0:Lbe/gentgo/tetsuki/HomeFragment;

    invoke-static {v3, p1}, Lbe/gentgo/tetsuki/HomeFragment;->access$3(Lbe/gentgo/tetsuki/HomeFragment;Landroid/view/View;)V

    goto :goto_0

    .line 370
    :cond_5
    iget-object v3, p0, Lbe/gentgo/tetsuki/HomeFragment$2;->this$0:Lbe/gentgo/tetsuki/HomeFragment;

    invoke-static {v3, p1}, Lbe/gentgo/tetsuki/HomeFragment;->access$4(Lbe/gentgo/tetsuki/HomeFragment;Landroid/view/View;)V

    goto :goto_0
.end method
