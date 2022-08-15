.class Lbe/gentgo/tetsuki/HomeFragment$1;
.super Lbe/gentgo/tetsuki/Listener;
.source "HomeFragment.java"


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
    iput-object p1, p0, Lbe/gentgo/tetsuki/HomeFragment$1;->this$0:Lbe/gentgo/tetsuki/HomeFragment;

    .line 143
    invoke-direct {p0}, Lbe/gentgo/tetsuki/Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public Do()Z
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 145
    iget-object v4, p0, Lbe/gentgo/tetsuki/HomeFragment$1;->this$0:Lbe/gentgo/tetsuki/HomeFragment;

    invoke-static {v4}, Lbe/gentgo/tetsuki/HomeFragment;->access$0(Lbe/gentgo/tetsuki/HomeFragment;)Lbe/gentgo/tetsuki/PlayerDetailsRequest;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lbe/gentgo/tetsuki/HomeFragment$1;->this$0:Lbe/gentgo/tetsuki/HomeFragment;

    invoke-static {v4}, Lbe/gentgo/tetsuki/HomeFragment;->access$0(Lbe/gentgo/tetsuki/HomeFragment;)Lbe/gentgo/tetsuki/PlayerDetailsRequest;

    move-result-object v4

    invoke-virtual {v4}, Lbe/gentgo/tetsuki/PlayerDetailsRequest;->isDone()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 147
    iget-object v4, p0, Lbe/gentgo/tetsuki/HomeFragment$1;->this$0:Lbe/gentgo/tetsuki/HomeFragment;

    invoke-static {v4}, Lbe/gentgo/tetsuki/HomeFragment;->access$0(Lbe/gentgo/tetsuki/HomeFragment;)Lbe/gentgo/tetsuki/PlayerDetailsRequest;

    move-result-object v4

    invoke-virtual {v4}, Lbe/gentgo/tetsuki/PlayerDetailsRequest;->getResult()Lbe/gentgo/tetsuki/Player;

    move-result-object v1

    .line 148
    .local v1, "me":Lbe/gentgo/tetsuki/Player;
    invoke-static {}, Lbe/gentgo/tetsuki/TetsukiActivity;->getForegroundActivity()Lbe/gentgo/tetsuki/TetsukiActivity;

    move-result-object v0

    .line 149
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_1

    .line 155
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "me":Lbe/gentgo/tetsuki/Player;
    :cond_0
    :goto_0
    return v2

    .line 150
    .restart local v0    # "context":Landroid/content/Context;
    .restart local v1    # "me":Lbe/gentgo/tetsuki/Player;
    :cond_1
    iget-object v4, p0, Lbe/gentgo/tetsuki/HomeFragment$1;->this$0:Lbe/gentgo/tetsuki/HomeFragment;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/Player;->getFullRank()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f08004e

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/Player;->getWins()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/Player;->getLosses()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lbe/gentgo/tetsuki/HomeFragment;->access$1(Lbe/gentgo/tetsuki/HomeFragment;Ljava/lang/String;)V

    .line 151
    iget-object v2, p0, Lbe/gentgo/tetsuki/HomeFragment$1;->this$0:Lbe/gentgo/tetsuki/HomeFragment;

    invoke-virtual {v2, v3}, Lbe/gentgo/tetsuki/HomeFragment;->update(Z)V

    .line 152
    iget-object v2, p0, Lbe/gentgo/tetsuki/HomeFragment$1;->this$0:Lbe/gentgo/tetsuki/HomeFragment;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lbe/gentgo/tetsuki/HomeFragment;->access$2(Lbe/gentgo/tetsuki/HomeFragment;Lbe/gentgo/tetsuki/PlayerDetailsRequest;)V

    move v2, v3

    .line 153
    goto :goto_0
.end method
