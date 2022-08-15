.class Lbe/gentgo/tetsuki/ObserveFragment$3$1;
.super Ljava/lang/Object;
.source "ObserveFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbe/gentgo/tetsuki/ObserveFragment$3;->Do()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lbe/gentgo/tetsuki/ObserveFragment$SimpleGameInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lbe/gentgo/tetsuki/ObserveFragment$3;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/ObserveFragment$3;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/ObserveFragment$3$1;->this$1:Lbe/gentgo/tetsuki/ObserveFragment$3;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lbe/gentgo/tetsuki/ObserveFragment$SimpleGameInfo;Lbe/gentgo/tetsuki/ObserveFragment$SimpleGameInfo;)I
    .locals 5
    .param p1, "g1"    # Lbe/gentgo/tetsuki/ObserveFragment$SimpleGameInfo;
    .param p2, "g2"    # Lbe/gentgo/tetsuki/ObserveFragment$SimpleGameInfo;

    .prologue
    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v1, 0x1

    .line 128
    iget-object v0, p1, Lbe/gentgo/tetsuki/ObserveFragment$SimpleGameInfo;->title:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    iget-object v4, p2, Lbe/gentgo/tetsuki/ObserveFragment$SimpleGameInfo;->title:Ljava/lang/String;

    if-nez v4, :cond_0

    move v2, v1

    :cond_0
    if-eq v0, v2, :cond_4

    iget-object v0, p1, Lbe/gentgo/tetsuki/ObserveFragment$SimpleGameInfo;->title:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 131
    :cond_1
    :goto_1
    return v1

    :cond_2
    move v0, v2

    .line 128
    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_1

    .line 129
    :cond_4
    iget v0, p1, Lbe/gentgo/tetsuki/ObserveFragment$SimpleGameInfo;->whiteRank:F

    iget v2, p2, Lbe/gentgo/tetsuki/ObserveFragment$SimpleGameInfo;->whiteRank:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_5

    iget v0, p1, Lbe/gentgo/tetsuki/ObserveFragment$SimpleGameInfo;->whiteRank:F

    iget v2, p2, Lbe/gentgo/tetsuki/ObserveFragment$SimpleGameInfo;->whiteRank:F

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_1

    move v1, v3

    goto :goto_1

    .line 130
    :cond_5
    iget v0, p1, Lbe/gentgo/tetsuki/ObserveFragment$SimpleGameInfo;->blackRank:F

    iget v2, p2, Lbe/gentgo/tetsuki/ObserveFragment$SimpleGameInfo;->blackRank:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_6

    iget v0, p1, Lbe/gentgo/tetsuki/ObserveFragment$SimpleGameInfo;->blackRank:F

    iget v2, p2, Lbe/gentgo/tetsuki/ObserveFragment$SimpleGameInfo;->blackRank:F

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_1

    move v1, v3

    goto :goto_1

    .line 131
    :cond_6
    iget v0, p1, Lbe/gentgo/tetsuki/ObserveFragment$SimpleGameInfo;->gameID:I

    iget v2, p2, Lbe/gentgo/tetsuki/ObserveFragment$SimpleGameInfo;->gameID:I

    if-lt v0, v2, :cond_1

    move v1, v3

    goto :goto_1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lbe/gentgo/tetsuki/ObserveFragment$SimpleGameInfo;

    check-cast p2, Lbe/gentgo/tetsuki/ObserveFragment$SimpleGameInfo;

    invoke-virtual {p0, p1, p2}, Lbe/gentgo/tetsuki/ObserveFragment$3$1;->compare(Lbe/gentgo/tetsuki/ObserveFragment$SimpleGameInfo;Lbe/gentgo/tetsuki/ObserveFragment$SimpleGameInfo;)I

    move-result v0

    return v0
.end method
