.class Lbe/gentgo/tetsuki/PlayersListAdapter$1;
.super Ljava/lang/Object;
.source "PlayersListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbe/gentgo/tetsuki/PlayersListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbe/gentgo/tetsuki/PlayersListAdapter;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/PlayersListAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/PlayersListAdapter$1;->this$0:Lbe/gentgo/tetsuki/PlayersListAdapter;

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lbe/gentgo/tetsuki/PlayersListAdapter$1;->this$0:Lbe/gentgo/tetsuki/PlayersListAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lbe/gentgo/tetsuki/PlayersListAdapter;->access$0(Lbe/gentgo/tetsuki/PlayersListAdapter;Z)V

    .line 238
    return-void
.end method
