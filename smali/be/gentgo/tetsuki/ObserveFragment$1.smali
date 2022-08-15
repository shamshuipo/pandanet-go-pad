.class Lbe/gentgo/tetsuki/ObserveFragment$1;
.super Lbe/gentgo/tetsuki/Listener;
.source "ObserveFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbe/gentgo/tetsuki/ObserveFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbe/gentgo/tetsuki/ObserveFragment;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/ObserveFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/ObserveFragment$1;->this$0:Lbe/gentgo/tetsuki/ObserveFragment;

    .line 66
    invoke-direct {p0}, Lbe/gentgo/tetsuki/Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public Do()Z
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lbe/gentgo/tetsuki/ObserveFragment$1;->this$0:Lbe/gentgo/tetsuki/ObserveFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lbe/gentgo/tetsuki/ObserveFragment;->sortedGames:Ljava/util/List;

    .line 69
    iget-object v0, p0, Lbe/gentgo/tetsuki/ObserveFragment$1;->this$0:Lbe/gentgo/tetsuki/ObserveFragment;

    invoke-static {v0}, Lbe/gentgo/tetsuki/ObserveFragment;->access$0(Lbe/gentgo/tetsuki/ObserveFragment;)V

    .line 70
    iget-object v0, p0, Lbe/gentgo/tetsuki/ObserveFragment$1;->this$0:Lbe/gentgo/tetsuki/ObserveFragment;

    iget-object v0, v0, Lbe/gentgo/tetsuki/ObserveFragment;->gameListAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 71
    const/4 v0, 0x1

    return v0
.end method
