.class Lbe/gentgo/tetsuki/PlayersListFragment$2;
.super Ljava/lang/Object;
.source "PlayersListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbe/gentgo/tetsuki/PlayersListFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbe/gentgo/tetsuki/PlayersListFragment;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/PlayersListFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/PlayersListFragment$2;->this$0:Lbe/gentgo/tetsuki/PlayersListFragment;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 90
    iget-object v0, p0, Lbe/gentgo/tetsuki/PlayersListFragment$2;->this$0:Lbe/gentgo/tetsuki/PlayersListFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lbe/gentgo/tetsuki/PlayersListFragment;->access$1(Lbe/gentgo/tetsuki/PlayersListFragment;Z)V

    .line 91
    return-void
.end method
