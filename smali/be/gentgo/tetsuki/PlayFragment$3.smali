.class Lbe/gentgo/tetsuki/PlayFragment$3;
.super Ljava/lang/Object;
.source "PlayFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbe/gentgo/tetsuki/PlayFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbe/gentgo/tetsuki/PlayFragment;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/PlayFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/PlayFragment$3;->this$0:Lbe/gentgo/tetsuki/PlayFragment;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 45
    new-instance v0, Lbe/gentgo/tetsuki/SelectOpponentFragment;

    invoke-direct {v0}, Lbe/gentgo/tetsuki/SelectOpponentFragment;-><init>()V

    iget-object v1, p0, Lbe/gentgo/tetsuki/PlayFragment$3;->this$0:Lbe/gentgo/tetsuki/PlayFragment;

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/PlayFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lbe/gentgo/tetsuki/DialogFragmentActivity;->startActivityWithFragment(Landroid/app/Fragment;Landroid/content/Context;)V

    .line 46
    return-void
.end method
