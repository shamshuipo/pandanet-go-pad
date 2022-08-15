.class Lbe/gentgo/tetsuki/PlayersListAdapter$4;
.super Lbe/gentgo/tetsuki/Listener;
.source "PlayersListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbe/gentgo/tetsuki/PlayersListAdapter;-><init>()V
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
    iput-object p1, p0, Lbe/gentgo/tetsuki/PlayersListAdapter$4;->this$0:Lbe/gentgo/tetsuki/PlayersListAdapter;

    .line 33
    invoke-direct {p0}, Lbe/gentgo/tetsuki/Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public Do()Z
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lbe/gentgo/tetsuki/PlayersListAdapter$4;->this$0:Lbe/gentgo/tetsuki/PlayersListAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lbe/gentgo/tetsuki/PlayersListAdapter;->access$0(Lbe/gentgo/tetsuki/PlayersListAdapter;Z)V

    .line 35
    const/4 v0, 0x1

    return v0
.end method
