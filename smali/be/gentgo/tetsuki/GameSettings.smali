.class public Lbe/gentgo/tetsuki/GameSettings;
.super Lbe/gentgo/tetsuki/NativeObject;
.source "GameSettings.java"


# static fields
.field static dateFormat:Ljava/text/DateFormat;


# instance fields
.field private ownedByJava:Z

.field private timeSettings:Lbe/gentgo/tetsuki/GameTimeSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 89
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy/MM/dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lbe/gentgo/tetsuki/GameSettings;->dateFormat:Ljava/text/DateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    invoke-static {}, Lbe/gentgo/tetsuki/GameSettings;->newGameSettings()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lbe/gentgo/tetsuki/NativeObject;-><init>(J)V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lbe/gentgo/tetsuki/GameSettings;->timeSettings:Lbe/gentgo/tetsuki/GameTimeSettings;

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbe/gentgo/tetsuki/GameSettings;->ownedByJava:Z

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "pointer"    # J

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lbe/gentgo/tetsuki/NativeObject;-><init>(J)V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lbe/gentgo/tetsuki/GameSettings;->timeSettings:Lbe/gentgo/tetsuki/GameTimeSettings;

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbe/gentgo/tetsuki/GameSettings;->ownedByJava:Z

    return-void
.end method

.method private static native deleteGameSettings(J)V
.end method

.method private native getLongBlackPlayer()J
.end method

.method private native getLongTimeSettings()J
.end method

.method private native getLongWhitePlayer()J
.end method

.method public static native getNameForKomi(F)Ljava/lang/String;
.end method

.method private native getStringDate()Ljava/lang/String;
.end method

.method private static native newGameSettings()J
.end method

.method public static native setLocalizedKomiStrings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native setLongBlackPlayer(J)V
.end method

.method private native setLongWhitePlayer(J)V
.end method

.method private native setStringDate(Ljava/lang/String;)V
.end method


# virtual methods
.method public native blackCanChooseHandicap()Z
.end method

.method public finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 22
    iget-boolean v0, p0, Lbe/gentgo/tetsuki/GameSettings;->ownedByJava:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lbe/gentgo/tetsuki/GameSettings;->nativePointer:J

    invoke-static {v0, v1}, Lbe/gentgo/tetsuki/GameSettings;->deleteGameSettings(J)V

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getBlackPlayer()Lbe/gentgo/tetsuki/Player;
    .locals 4

    .prologue
    .line 23
    new-instance v0, Lbe/gentgo/tetsuki/Player;

    invoke-direct {p0}, Lbe/gentgo/tetsuki/GameSettings;->getLongBlackPlayer()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lbe/gentgo/tetsuki/Player;-><init>(J)V

    return-object v0
.end method

.method public native getColumns()I
.end method

.method public native getComment()Ljava/lang/String;
.end method

.method public native getCommentator()Ljava/lang/String;
.end method

.method public getDate()Ljava/util/Date;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 59
    invoke-direct {p0}, Lbe/gentgo/tetsuki/GameSettings;->getStringDate()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "date":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 66
    :goto_0
    return-object v2

    .line 62
    :cond_0
    :try_start_0
    sget-object v3, Lbe/gentgo/tetsuki/GameSettings;->dateFormat:Ljava/text/DateFormat;

    invoke-virtual {v3, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 64
    :catch_0
    move-exception v1

    .line 66
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public native getKomi()F
.end method

.method public native getMaximumHandicap()I
.end method

.method public native getNrOfHandicapStones()I
.end method

.method public native getRows()I
.end method

.method public getTimeSettings()Lbe/gentgo/tetsuki/GameTimeSettings;
    .locals 4

    .prologue
    .line 43
    iget-object v0, p0, Lbe/gentgo/tetsuki/GameSettings;->timeSettings:Lbe/gentgo/tetsuki/GameTimeSettings;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lbe/gentgo/tetsuki/GameTimeSettings;

    invoke-direct {p0}, Lbe/gentgo/tetsuki/GameSettings;->getLongTimeSettings()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lbe/gentgo/tetsuki/GameTimeSettings;-><init>(J)V

    iput-object v0, p0, Lbe/gentgo/tetsuki/GameSettings;->timeSettings:Lbe/gentgo/tetsuki/GameTimeSettings;

    .line 45
    :cond_0
    iget-object v0, p0, Lbe/gentgo/tetsuki/GameSettings;->timeSettings:Lbe/gentgo/tetsuki/GameTimeSettings;

    return-object v0
.end method

.method public native getTitle()Ljava/lang/String;
.end method

.method public getWhitePlayer()Lbe/gentgo/tetsuki/Player;
    .locals 4

    .prologue
    .line 24
    new-instance v0, Lbe/gentgo/tetsuki/Player;

    invoke-direct {p0}, Lbe/gentgo/tetsuki/GameSettings;->getLongWhitePlayer()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lbe/gentgo/tetsuki/Player;-><init>(J)V

    return-object v0
.end method

.method public hasTitle()Z
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameSettings;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameSettings;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public native isIncomplete()Z
.end method

.method public native isNigiri()Z
.end method

.method public native makeFair(Z)V
.end method

.method public setBlackPlayer(Lbe/gentgo/tetsuki/Player;)V
    .locals 2
    .param p1, "b"    # Lbe/gentgo/tetsuki/Player;

    .prologue
    .line 25
    iget-wide v0, p1, Lbe/gentgo/tetsuki/Player;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lbe/gentgo/tetsuki/GameSettings;->setLongBlackPlayer(J)V

    return-void
.end method

.method public setDate(Ljava/util/Date;)V
    .locals 1
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 55
    if-nez p1, :cond_0

    const-string v0, ""

    invoke-direct {p0, v0}, Lbe/gentgo/tetsuki/GameSettings;->setStringDate(Ljava/lang/String;)V

    .line 57
    :goto_0
    return-void

    .line 56
    :cond_0
    sget-object v0, Lbe/gentgo/tetsuki/GameSettings;->dateFormat:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lbe/gentgo/tetsuki/GameSettings;->setStringDate(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setGameTimeSettings(Lbe/gentgo/tetsuki/GameTimeSettings;)V
    .locals 2
    .param p1, "gts"    # Lbe/gentgo/tetsuki/GameTimeSettings;

    .prologue
    .line 75
    iget-wide v0, p1, Lbe/gentgo/tetsuki/GameTimeSettings;->nativePointer:J

    invoke-virtual {p0, v0, v1}, Lbe/gentgo/tetsuki/GameSettings;->setLongGameTimeSettings(J)V

    return-void
.end method

.method public native setKomi(F)V
.end method

.method public native setLongGameTimeSettings(J)V
.end method

.method public native setNigiri(Z)V
.end method

.method public native setNrOfHandicapStones(I)V
.end method

.method public native setSize(I)V
.end method

.method public native setTitle(Ljava/lang/String;)V
.end method

.method public setWhitePlayer(Lbe/gentgo/tetsuki/Player;)V
    .locals 2
    .param p1, "b"    # Lbe/gentgo/tetsuki/Player;

    .prologue
    .line 26
    iget-wide v0, p1, Lbe/gentgo/tetsuki/Player;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lbe/gentgo/tetsuki/GameSettings;->setLongWhitePlayer(J)V

    return-void
.end method

.method public native swapPlayers()V
.end method
