.class public Lbe/gentgo/tetsuki/GameTimeSettings;
.super Lbe/gentgo/tetsuki/NativeObject;
.source "GameTimeSettings.java"


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "p"    # J

    .prologue
    .line 4
    invoke-direct {p0, p1, p2}, Lbe/gentgo/tetsuki/NativeObject;-><init>(J)V

    return-void
.end method

.method private native equalsLong(J)Z
.end method


# virtual methods
.method public equals(Lbe/gentgo/tetsuki/GameTimeSettings;)Z
    .locals 2
    .param p1, "that"    # Lbe/gentgo/tetsuki/GameTimeSettings;

    .prologue
    .line 6
    iget-wide v0, p1, Lbe/gentgo/tetsuki/GameTimeSettings;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lbe/gentgo/tetsuki/GameTimeSettings;->equalsLong(J)Z

    move-result v0

    return v0
.end method

.method public native getInitialTime()I
.end method

.method public native getNrOfPeriods()I
.end method

.method public native getNrOfStones()I
.end method

.method public native getPeriod()I
.end method

.method public native getTimePerMove()I
.end method

.method public native hasExtraTime()Z
.end method

.method public native isCanadianExtraTime()Z
.end method

.method public native isJapaneseExtraTime()Z
.end method

.method public native isKouryoExtraTime()Z
.end method

.method public native isTimeless()Z
.end method

.method public native setAsCanadianExtraTime(III)V
.end method

.method public native setAsJapaneseExtraTime(III)V
.end method

.method public native setAsKouryoExtraTime(IIII)V
.end method

.method public native setAsSuddenDeath(I)V
.end method

.method public native setInitialTime(I)V
.end method
