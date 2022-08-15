.class Lbe/gentgo/tetsuki/HomeFragment$3;
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
    iput-object p1, p0, Lbe/gentgo/tetsuki/HomeFragment$3;->this$0:Lbe/gentgo/tetsuki/HomeFragment;

    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 379
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v1

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/Server;->getErrorState()I

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v1

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/Server;->isGuestLogin()Z

    move-result v1

    if-nez v1, :cond_0

    .line 380
    new-instance v0, Lbe/gentgo/tetsuki/AccountSettingsFragment;

    invoke-direct {v0}, Lbe/gentgo/tetsuki/AccountSettingsFragment;-><init>()V

    .line 381
    .local v0, "fragment":Landroid/app/Fragment;
    iget-object v1, p0, Lbe/gentgo/tetsuki/HomeFragment$3;->this$0:Lbe/gentgo/tetsuki/HomeFragment;

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lbe/gentgo/tetsuki/DialogFragmentActivity;->startActivityWithFragment(Landroid/app/Fragment;Landroid/content/Context;)V

    .line 383
    .end local v0    # "fragment":Landroid/app/Fragment;
    :cond_0
    return-void
.end method
