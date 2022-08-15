.class public Lbe/gentgo/tetsuki/GameDetailsRequest;
.super Lbe/gentgo/tetsuki/BaseRequest;
.source "GameDetailsRequest.java"


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "pointer"    # J

    .prologue
    .line 4
    invoke-direct {p0, p1, p2}, Lbe/gentgo/tetsuki/BaseRequest;-><init>(J)V

    return-void
.end method

.method private native getLongResult()J
.end method


# virtual methods
.method getResult()Lbe/gentgo/tetsuki/GameSettings;
    .locals 4

    .prologue
    .line 5
    new-instance v0, Lbe/gentgo/tetsuki/GameSettings;

    invoke-direct {p0}, Lbe/gentgo/tetsuki/GameDetailsRequest;->getLongResult()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lbe/gentgo/tetsuki/GameSettings;-><init>(J)V

    return-object v0
.end method
