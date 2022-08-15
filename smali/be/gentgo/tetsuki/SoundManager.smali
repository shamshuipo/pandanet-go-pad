.class public Lbe/gentgo/tetsuki/SoundManager;
.super Ljava/lang/Object;
.source "SoundManager.java"


# static fields
.field static loopingMediaPlayer:Landroid/media/MediaPlayer;

.field static loopingStreamID:I

.field private static mAudioManager:Landroid/media/AudioManager;

.field private static mContext:Landroid/content/Context;

.field private static mSoundPool:Landroid/media/SoundPool;

.field private static mSoundPoolMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static mediaPlayers:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/media/MediaPlayer;",
            ">;"
        }
    .end annotation
.end field

.field static previousTime:J

.field static final stub:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 19
    sput-object v2, Lbe/gentgo/tetsuki/SoundManager;->mContext:Landroid/content/Context;

    .line 138
    const-wide/16 v0, 0x0

    sput-wide v0, Lbe/gentgo/tetsuki/SoundManager;->previousTime:J

    .line 139
    const/4 v0, 0x0

    sput v0, Lbe/gentgo/tetsuki/SoundManager;->loopingStreamID:I

    .line 140
    sput-object v2, Lbe/gentgo/tetsuki/SoundManager;->loopingMediaPlayer:Landroid/media/MediaPlayer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addSound(I)V
    .locals 5
    .param p0, "SoundID"    # I

    .prologue
    .line 41
    sget-object v0, Lbe/gentgo/tetsuki/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    .line 44
    :goto_0
    return-void

    .line 43
    :cond_0
    sget-object v0, Lbe/gentgo/tetsuki/SoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lbe/gentgo/tetsuki/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    sget-object v3, Lbe/gentgo/tetsuki/SoundManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, p0, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static initSounds(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "theContext"    # Landroid/content/Context;
    .param p1, "useSoundManager"    # Z

    .prologue
    .line 25
    sput-object p0, Lbe/gentgo/tetsuki/SoundManager;->mContext:Landroid/content/Context;

    .line 27
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lbe/gentgo/tetsuki/SoundManager;->mediaPlayers:Ljava/util/Vector;

    .line 28
    if-eqz p1, :cond_0

    .line 36
    :goto_0
    return-void

    .line 31
    :cond_0
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    sput-object v0, Lbe/gentgo/tetsuki/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lbe/gentgo/tetsuki/SoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    .line 34
    sget-object v0, Lbe/gentgo/tetsuki/SoundManager;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sput-object v0, Lbe/gentgo/tetsuki/SoundManager;->mAudioManager:Landroid/media/AudioManager;

    goto :goto_0
.end method

.method public static playLoopedSound(I)V
    .locals 9
    .param p0, "soundID"    # I

    .prologue
    const/4 v4, 0x1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    .line 114
    invoke-static {}, Lbe/gentgo/tetsuki/Preferences;->getSoundVolume()F

    move-result v8

    .line 115
    .local v8, "volume":F
    const/4 v0, 0x0

    cmpl-float v0, v8, v0

    if-nez v0, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    float-to-double v0, v8

    mul-double/2addr v0, v2

    double-to-float v8, v0

    .line 118
    sget-object v0, Lbe/gentgo/tetsuki/SoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    if-nez v0, :cond_2

    .line 119
    sget-object v0, Lbe/gentgo/tetsuki/SoundManager;->loopingMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 120
    sget-object v0, Lbe/gentgo/tetsuki/SoundManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    sput-object v0, Lbe/gentgo/tetsuki/SoundManager;->loopingMediaPlayer:Landroid/media/MediaPlayer;

    .line 121
    sget-object v0, Lbe/gentgo/tetsuki/SoundManager;->loopingMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 122
    sget-object v0, Lbe/gentgo/tetsuki/SoundManager;->loopingMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v4}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 123
    sget-object v0, Lbe/gentgo/tetsuki/SoundManager;->loopingMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v8, v8}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 124
    sget-object v0, Lbe/gentgo/tetsuki/SoundManager;->loopingMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 125
    sget-object v0, Lbe/gentgo/tetsuki/SoundManager;->loopingMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lbe/gentgo/tetsuki/SoundManager$2;

    invoke-direct {v1}, Lbe/gentgo/tetsuki/SoundManager$2;-><init>()V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    goto :goto_0

    .line 130
    :cond_2
    sget v0, Lbe/gentgo/tetsuki/SoundManager;->loopingStreamID:I

    if-nez v0, :cond_0

    .line 131
    sget-object v0, Lbe/gentgo/tetsuki/SoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 132
    invoke-static {p0}, Lbe/gentgo/tetsuki/SoundManager;->addSound(I)V

    .line 133
    :cond_3
    sget-object v0, Lbe/gentgo/tetsuki/SoundManager;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v7

    .line 134
    .local v7, "streamVolume":I
    int-to-float v0, v7

    mul-float/2addr v0, v8

    float-to-double v0, v0

    add-double/2addr v0, v2

    double-to-int v7, v0

    .line 135
    sget-object v0, Lbe/gentgo/tetsuki/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    sget-object v1, Lbe/gentgo/tetsuki/SoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v2, v7

    int-to-float v3, v7

    const/4 v5, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    sput v0, Lbe/gentgo/tetsuki/SoundManager;->loopingStreamID:I

    goto :goto_0
.end method

.method public static playSound(IZ)V
    .locals 12
    .param p0, "soundID"    # I
    .param p1, "checkFastRepetition"    # Z

    .prologue
    .line 51
    if-eqz p1, :cond_1

    .line 52
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    .line 53
    .local v10, "time":J
    sget-wide v0, Lbe/gentgo/tetsuki/SoundManager;->previousTime:J

    sub-long v8, v10, v0

    .line 54
    .local v8, "interval":J
    sput-wide v10, Lbe/gentgo/tetsuki/SoundManager;->previousTime:J

    .line 55
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v4, 0x12c

    cmp-long v0, v0, v4

    if-gez v0, :cond_1

    .line 88
    .end local v8    # "interval":J
    .end local v10    # "time":J
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    invoke-static {}, Lbe/gentgo/tetsuki/Preferences;->getSoundVolume()F

    move-result v2

    .line 59
    .local v2, "volume":F
    const/4 v0, 0x0

    cmpl-float v0, v2, v0

    if-eqz v0, :cond_0

    .line 60
    const/high16 v0, 0x7f060000

    if-ne p0, v0, :cond_2

    const v0, 0x3e99999a    # 0.3f

    mul-float/2addr v2, v0

    .line 62
    :cond_2
    sget-object v0, Lbe/gentgo/tetsuki/SoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    if-nez v0, :cond_3

    .line 63
    sget-object v0, Lbe/gentgo/tetsuki/SoundManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v7

    .line 64
    .local v7, "mediaPlayer":Landroid/media/MediaPlayer;
    if-eqz v7, :cond_0

    .line 65
    invoke-virtual {v7, v2, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 66
    sget-object v0, Lbe/gentgo/tetsuki/SoundManager;->mediaPlayers:Ljava/util/Vector;

    invoke-virtual {v0, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 67
    invoke-virtual {v7}, Landroid/media/MediaPlayer;->start()V

    .line 68
    new-instance v0, Lbe/gentgo/tetsuki/SoundManager$1;

    invoke-direct {v0}, Lbe/gentgo/tetsuki/SoundManager$1;-><init>()V

    invoke-virtual {v7, v0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    goto :goto_0

    .line 83
    .end local v7    # "mediaPlayer":Landroid/media/MediaPlayer;
    :cond_3
    sget-object v0, Lbe/gentgo/tetsuki/SoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 84
    invoke-static {p0}, Lbe/gentgo/tetsuki/SoundManager;->addSound(I)V

    .line 85
    :cond_4
    sget-object v0, Lbe/gentgo/tetsuki/SoundManager;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v2, v0

    .line 87
    sget-object v0, Lbe/gentgo/tetsuki/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    sget-object v1, Lbe/gentgo/tetsuki/SoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_0
.end method

.method public static stopLoopedSound()V
    .locals 2

    .prologue
    .line 92
    sget-object v0, Lbe/gentgo/tetsuki/SoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 93
    sget-object v0, Lbe/gentgo/tetsuki/SoundManager;->loopingMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 95
    :try_start_0
    sget-object v0, Lbe/gentgo/tetsuki/SoundManager;->loopingMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :cond_0
    :goto_0
    const/4 v0, 0x0

    sput-object v0, Lbe/gentgo/tetsuki/SoundManager;->loopingMediaPlayer:Landroid/media/MediaPlayer;

    .line 110
    :goto_1
    return-void

    .line 107
    :cond_1
    sget v0, Lbe/gentgo/tetsuki/SoundManager;->loopingStreamID:I

    if-eqz v0, :cond_2

    .line 108
    sget-object v0, Lbe/gentgo/tetsuki/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    sget v1, Lbe/gentgo/tetsuki/SoundManager;->loopingStreamID:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    .line 109
    :cond_2
    const/4 v0, 0x0

    sput v0, Lbe/gentgo/tetsuki/SoundManager;->loopingStreamID:I

    goto :goto_1

    .line 97
    :catch_0
    move-exception v0

    goto :goto_0
.end method
