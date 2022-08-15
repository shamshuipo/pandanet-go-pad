.class public Lbe/gentgo/tetsuki/Preferences;
.super Ljava/lang/Object;
.source "Preferences.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode([B)Ljava/lang/String;
    .locals 4
    .param p0, "toDecode"    # [B

    .prologue
    .line 50
    invoke-static {}, Lbe/gentgo/tetsuki/Preferences;->getEncoding()I

    move-result v1

    .line 52
    .local v1, "encoding":I
    if-nez v1, :cond_0

    .line 53
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string v3, "SJIS"

    invoke-direct {v2, p0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 61
    :goto_0
    return-object v2

    .line 54
    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 55
    new-instance v2, Ljava/lang/String;

    const-string v3, "ISO8859_1"

    invoke-direct {v2, p0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, ""

    goto :goto_0

    .line 56
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 57
    :try_start_1
    new-instance v2, Ljava/lang/String;

    const-string v3, "ISO8859_2"

    invoke-direct {v2, p0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_2
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF8"

    invoke-direct {v2, p0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static decodeShiftJIS([B)Ljava/lang/String;
    .locals 3
    .param p0, "toDecode"    # [B

    .prologue
    .line 42
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "SJIS"

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_0
    return-object v1

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, ""

    goto :goto_0
.end method

.method public static encode(Ljava/lang/String;)[B
    .locals 3
    .param p0, "toDecode"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-static {}, Lbe/gentgo/tetsuki/Preferences;->getEncoding()I

    move-result v1

    .line 68
    .local v1, "encoding":I
    if-nez v1, :cond_0

    .line 69
    :try_start_0
    const-string v2, "SJIS"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 77
    :goto_0
    return-object v2

    .line 70
    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 71
    const-string v2, "ISO8859_1"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    goto :goto_0

    .line 72
    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 73
    const-string v2, "ISO8859_2"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    goto :goto_0

    .line 75
    :cond_2
    const-string v2, "UTF8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static native getAutoZoom()Z
.end method

.method public static native getBackgroundStyle()I
.end method

.method public static native getCopyright()Ljava/lang/String;
.end method

.method public static native getDefaultGameSettings(JZ)V
.end method

.method public static native getDefaultSeekSettings(J)V
.end method

.method public static native getEncoding()I
.end method

.method public static native getInfoText()Ljava/lang/String;
.end method

.method public static native getLoginID()Ljava/lang/String;
.end method

.method public static native getLoginPassword()Ljava/lang/String;
.end method

.method public static native getNameForEncoding(I)Ljava/lang/String;
.end method

.method public static native getNrOfEncodings()I
.end method

.method public static native getPort()I
.end method

.method public static native getReplayInterval()F
.end method

.method public static native getServerAddress()Ljava/lang/String;
.end method

.method public static native getShowCoordinates()Z
.end method

.method public static native getShowOnlyAvailable()Z
.end method

.method public static native getSoundVolume()F
.end method

.method public static native getStatus()I
.end method

.method public static native getStonesStyle()I
.end method

.method public static native getWoodStyle()I
.end method

.method public static native getZoom()Z
.end method

.method public static native init(ZLjava/lang/String;Ljava/lang/String;)V
.end method

.method public static native isGuestLogin()Z
.end method

.method public static native isJapaneseUser()Z
.end method

.method public static native isMessageShown(I)Z
.end method

.method public static native japaneseRanking()Z
.end method

.method public static native moveConfirmation()Z
.end method

.method public static native save()V
.end method

.method public static native setAutoZoom(Z)V
.end method

.method public static native setBackgroundStyle(I)V
.end method

.method public static native setDefaultGameSettings(JZ)V
.end method

.method public static native setDefaultSeekSettings(J)V
.end method

.method public static native setEncoding(I)V
.end method

.method public static native setInfoText(Ljava/lang/String;)V
.end method

.method public static native setJapaneseRanking(Z)V
.end method

.method public static native setLoginID(Ljava/lang/String;)V
.end method

.method public static native setMessageShown(I)V
.end method

.method public static native setMoveConfirmation(Z)V
.end method

.method public static native setPassword(Ljava/lang/String;)V
.end method

.method public static native setPort(I)V
.end method

.method public static native setReplayInterval(F)V
.end method

.method public static native setServerAddress(Ljava/lang/String;)V
.end method

.method public static native setShowCoordinates(Z)V
.end method

.method public static native setShowOnlyAvailable(Z)V
.end method

.method public static native setSoundVolume(F)V
.end method

.method public static native setStatus(I)V
.end method

.method public static native setStonesStyle(I)V
.end method

.method public static native setWoodStyle(I)V
.end method

.method public static native setZoom(Z)V
.end method
