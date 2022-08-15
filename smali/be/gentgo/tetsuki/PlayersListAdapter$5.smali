.class Lbe/gentgo/tetsuki/PlayersListAdapter$5;
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
    iput-object p1, p0, Lbe/gentgo/tetsuki/PlayersListAdapter$5;->this$0:Lbe/gentgo/tetsuki/PlayersListAdapter;

    .line 37
    invoke-direct {p0}, Lbe/gentgo/tetsuki/Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public Do()Z
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lbe/gentgo/tetsuki/PlayersListAdapter$5;->this$0:Lbe/gentgo/tetsuki/PlayersListAdapter;

    invoke-static {v0}, Lbe/gentgo/tetsuki/PlayersListAdapter;->access$4(Lbe/gentgo/tetsuki/PlayersListAdapter;)V

    .line 39
    const/4 v0, 0x1

    return v0
.end method
