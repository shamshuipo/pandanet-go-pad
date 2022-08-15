.class public Lbe/gentgo/tetsuki/Document;
.super Lbe/gentgo/tetsuki/NativeObject;
.source "Document.java"


# static fields
.field static dateFormat:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy/MM/dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lbe/gentgo/tetsuki/Document;->dateFormat:Ljava/text/DateFormat;

    return-void
.end method

.method private constructor <init>(J)V
    .locals 1
    .param p1, "pointer"    # J

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lbe/gentgo/tetsuki/NativeObject;-><init>(J)V

    return-void
.end method

.method public constructor <init>(Lbe/gentgo/tetsuki/Game;Z)V
    .locals 2
    .param p1, "game"    # Lbe/gentgo/tetsuki/Game;
    .param p2, "copy"    # Z

    .prologue
    .line 9
    iget-wide v0, p1, Lbe/gentgo/tetsuki/Game;->nativePointer:J

    invoke-static {v0, v1, p2}, Lbe/gentgo/tetsuki/Document;->newDocument(JZ)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lbe/gentgo/tetsuki/NativeObject;-><init>(J)V

    .line 10
    return-void
.end method

.method public constructor <init>(Lbe/gentgo/tetsuki/GameSettings;)V
    .locals 2
    .param p1, "settings"    # Lbe/gentgo/tetsuki/GameSettings;

    .prologue
    .line 12
    iget-wide v0, p1, Lbe/gentgo/tetsuki/GameSettings;->nativePointer:J

    invoke-static {v0, v1}, Lbe/gentgo/tetsuki/Document;->newEmptyDocument(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lbe/gentgo/tetsuki/NativeObject;-><init>(J)V

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "fileSpec"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-static {p1}, Lbe/gentgo/tetsuki/Document;->newDocumentFromFile(Ljava/lang/String;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lbe/gentgo/tetsuki/NativeObject;-><init>(J)V

    .line 16
    return-void
.end method

.method public static native deleteDocument(I)V
.end method

.method public static native getDirectorySize()I
.end method

.method public static getDocument(I)Lbe/gentgo/tetsuki/Document;
    .locals 4
    .param p0, "id"    # I

    .prologue
    .line 20
    new-instance v0, Lbe/gentgo/tetsuki/Document;

    invoke-static {p0}, Lbe/gentgo/tetsuki/Document;->getLongDocument(I)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lbe/gentgo/tetsuki/Document;-><init>(J)V

    return-object v0
.end method

.method public static native getIDAtIndex(I)I
.end method

.method private native getLongBoard()J
.end method

.method private static native getLongDocument(I)J
.end method

.method private native getLongGame()J
.end method

.method private native getStringDate()Ljava/lang/String;
.end method

.method private static native newDocument(JZ)J
.end method

.method private static native newDocumentFromFile(Ljava/lang/String;)J
.end method

.method private static native newEmptyDocument(J)J
.end method

.method public static native setGamesPath(Ljava/lang/String;)V
.end method


# virtual methods
.method public getBoard()Lbe/gentgo/tetsuki/Goban;
    .locals 4

    .prologue
    .line 38
    new-instance v0, Lbe/gentgo/tetsuki/Goban;

    invoke-direct {p0}, Lbe/gentgo/tetsuki/Document;->getLongBoard()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lbe/gentgo/tetsuki/Goban;-><init>(J)V

    return-object v0
.end method

.method public getDate()Ljava/util/Date;
    .locals 2

    .prologue
    .line 27
    :try_start_0
    sget-object v0, Lbe/gentgo/tetsuki/Document;->dateFormat:Ljava/text/DateFormat;

    invoke-direct {p0}, Lbe/gentgo/tetsuki/Document;->getStringDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 32
    :goto_0
    return-object v0

    .line 29
    :catch_0
    move-exception v0

    .line 32
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    goto :goto_0
.end method

.method public getGame()Lbe/gentgo/tetsuki/Game;
    .locals 4

    .prologue
    .line 23
    new-instance v0, Lbe/gentgo/tetsuki/Game;

    invoke-direct {p0}, Lbe/gentgo/tetsuki/Document;->getLongGame()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lbe/gentgo/tetsuki/Game;-><init>(J)V

    return-object v0
.end method

.method public native getID()I
.end method

.method public native getName()Ljava/lang/String;
.end method

.method public native getReadOnly()Z
.end method

.method public native save(Z)V
.end method

.method public native setReadOnly(Z)V
.end method

.method public native unload()V
.end method
