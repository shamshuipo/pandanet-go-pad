.class Lbe/gentgo/tetsuki/PlayerDetailsFragment$7;
.super Lbe/gentgo/tetsuki/Listener;
.source "PlayerDetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbe/gentgo/tetsuki/PlayerDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/PlayerDetailsFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$7;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    .line 488
    invoke-direct {p0}, Lbe/gentgo/tetsuki/Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public Do()Z
    .locals 2

    .prologue
    .line 489
    iget-object v0, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$7;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$7;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    iget-object v1, p0, Lbe/gentgo/tetsuki/PlayerDetailsFragment$7;->this$0:Lbe/gentgo/tetsuki/PlayerDetailsFragment;

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lbe/gentgo/tetsuki/PlayerDetailsFragment;->access$14(Lbe/gentgo/tetsuki/PlayerDetailsFragment;Landroid/view/View;)V

    .line 491
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
