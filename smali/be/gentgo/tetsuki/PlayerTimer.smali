.class public Lbe/gentgo/tetsuki/PlayerTimer;
.super Lbe/gentgo/tetsuki/NativeObject;
.source "PlayerTimer.java"


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "pointer"    # J

    .prologue
    .line 4
    invoke-direct {p0, p1, p2}, Lbe/gentgo/tetsuki/NativeObject;-><init>(J)V

    return-void
.end method

.method public static native getCurrentTime()J
.end method


# virtual methods
.method public native getNrOfByoYomiStones()I
.end method

.method public native getNrOfPeriods()I
.end method

.method public native getNrOfStones()I
.end method

.method public native getTime()I
.end method

.method public native isInExtraTime()Z
.end method

.method public native isNearlyOutOfTime()Z
.end method

.method public native set(JIIIZ)V
.end method

.method public native update(JZ)V
.end method
