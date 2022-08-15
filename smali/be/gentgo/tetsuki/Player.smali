.class public Lbe/gentgo/tetsuki/Player;
.super Lbe/gentgo/tetsuki/NativeObject;
.source "Player.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbe/gentgo/tetsuki/NativeObject;",
        "Ljava/lang/Comparable",
        "<",
        "Lbe/gentgo/tetsuki/Player;",
        ">;"
    }
.end annotation


# instance fields
.field private ownedByJava:Z


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "pointer"    # J

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1, p2}, Lbe/gentgo/tetsuki/NativeObject;-><init>(J)V

    .line 60
    iput-boolean v0, p0, Lbe/gentgo/tetsuki/Player;->ownedByJava:Z

    .line 17
    iput-boolean v0, p0, Lbe/gentgo/tetsuki/Player;->ownedByJava:Z

    return-void
.end method

.method public constructor <init>(Lbe/gentgo/tetsuki/Player;)V
    .locals 2
    .param p1, "that"    # Lbe/gentgo/tetsuki/Player;

    .prologue
    .line 18
    iget-wide v0, p1, Lbe/gentgo/tetsuki/Player;->nativePointer:J

    invoke-static {v0, v1}, Lbe/gentgo/tetsuki/Player;->newPlayer(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lbe/gentgo/tetsuki/NativeObject;-><init>(J)V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbe/gentgo/tetsuki/Player;->ownedByJava:Z

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbe/gentgo/tetsuki/Player;->ownedByJava:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-static {p1}, Lbe/gentgo/tetsuki/Player;->newPlayerWithID(Ljava/lang/String;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lbe/gentgo/tetsuki/NativeObject;-><init>(J)V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbe/gentgo/tetsuki/Player;->ownedByJava:Z

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbe/gentgo/tetsuki/Player;->ownedByJava:Z

    return-void
.end method

.method public static native deletePlayer(J)V
.end method

.method public static native getNameForRank(F)Ljava/lang/String;
.end method

.method public static native getNameForRankSection(IZ)Ljava/lang/String;
.end method

.method public static native newPlayer(J)J
.end method

.method public static native newPlayerWithID(Ljava/lang/String;)J
.end method

.method static native setLocalizedDanRank(ILjava/lang/String;)V
.end method

.method static native setLocalizedRanks(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native setShodanRank(I)V
.end method


# virtual methods
.method public native compareTo(Lbe/gentgo/tetsuki/Player;)I
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lbe/gentgo/tetsuki/Player;

    invoke-virtual {p0, p1}, Lbe/gentgo/tetsuki/Player;->compareTo(Lbe/gentgo/tetsuki/Player;)I

    move-result v0

    return v0
.end method

.method public native equalsPlayer(Lbe/gentgo/tetsuki/Player;)Z
.end method

.method public finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 59
    iget-boolean v0, p0, Lbe/gentgo/tetsuki/Player;->ownedByJava:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lbe/gentgo/tetsuki/Player;->nativePointer:J

    invoke-static {v0, v1}, Lbe/gentgo/tetsuki/Player;->deletePlayer(J)V

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public native gamePlaying()I
.end method

.method public native gameWatching()I
.end method

.method public native getCountry()Ljava/lang/String;
.end method

.method public native getFullRank()Ljava/lang/String;
.end method

.method public native getID()Ljava/lang/String;
.end method

.method public native getInfoText()[B
.end method

.method public native getLosses()I
.end method

.method public native getRank()F
.end method

.method public native getRankDifference(Lbe/gentgo/tetsuki/Player;)F
.end method

.method public native getRankSection()I
.end method

.method public native getShortNameForRank()Ljava/lang/String;
.end method

.method public native getTitle()Ljava/lang/String;
.end method

.method public native getWins()I
.end method

.method public native hasTitle()Z
.end method

.method public native isAvailable()Z
.end method

.method public native isOffline()Z
.end method

.method public native isRankProven()Z
.end method

.method public native isRefusingGames()Z
.end method

.method public native isSeekingGame()Z
.end method

.method public native setInfoText([B)V
.end method

.method public native setStatus(I)V
.end method

.method public native setSupportsNMatch(Z)V
.end method

.method public native supportsNMatch()Z
.end method
