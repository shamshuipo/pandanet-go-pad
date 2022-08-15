.class public Lbe/gentgo/tetsuki/TelnetConnection;
.super Ljava/lang/Object;
.source "TelnetConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbe/gentgo/tetsuki/TelnetConnection$ProcessLineRunnable;
    }
.end annotation


# static fields
.field public static final connected:I = 0x0

.field public static final connecting:I = 0x3

.field public static final couldNotConnect:I = 0x1

.field public static final disconnected:I = 0x2

.field public static final disconnectedVoluntarily:I = 0x4

.field private static networkThread:Landroid/os/HandlerThread;


# instance fields
.field private address:Ljava/lang/String;

.field private buffer:[B

.field private bufferBytes:I

.field private final bufferSize:I

.field private callBackHandler:Landroid/os/Handler;

.field private checkForInputRunnable:Ljava/lang/Runnable;

.field private nativeThis:J

.field private networkHandler:Landroid/os/Handler;

.field private port:I

.field private postedBytes:I

.field private socket:Ljava/net/Socket;

.field private state:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IJ)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "nthis"    # J

    .prologue
    const/high16 v2, 0x10000

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput v2, p0, Lbe/gentgo/tetsuki/TelnetConnection;->bufferSize:I

    .line 60
    new-instance v0, Lbe/gentgo/tetsuki/TelnetConnection$1;

    invoke-direct {v0, p0}, Lbe/gentgo/tetsuki/TelnetConnection$1;-><init>(Lbe/gentgo/tetsuki/TelnetConnection;)V

    iput-object v0, p0, Lbe/gentgo/tetsuki/TelnetConnection;->checkForInputRunnable:Ljava/lang/Runnable;

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Telnet constructor "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbe/gentgo/tetsuki/Debug;->log(Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Lbe/gentgo/tetsuki/TelnetConnection;->address:Ljava/lang/String;

    .line 35
    iput p2, p0, Lbe/gentgo/tetsuki/TelnetConnection;->port:I

    .line 36
    const/4 v0, 0x4

    iput v0, p0, Lbe/gentgo/tetsuki/TelnetConnection;->state:I

    .line 37
    new-array v0, v2, [B

    iput-object v0, p0, Lbe/gentgo/tetsuki/TelnetConnection;->buffer:[B

    .line 38
    iput-wide p3, p0, Lbe/gentgo/tetsuki/TelnetConnection;->nativeThis:J

    .line 41
    sget-object v0, Lbe/gentgo/tetsuki/TelnetConnection;->networkThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "TelnetThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lbe/gentgo/tetsuki/TelnetConnection;->networkThread:Landroid/os/HandlerThread;

    .line 43
    sget-object v0, Lbe/gentgo/tetsuki/TelnetConnection;->networkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 45
    :cond_0
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lbe/gentgo/tetsuki/TelnetConnection;->networkThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lbe/gentgo/tetsuki/TelnetConnection;->networkHandler:Landroid/os/Handler;

    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lbe/gentgo/tetsuki/TelnetConnection;->callBackHandler:Landroid/os/Handler;

    .line 49
    return-void
.end method

.method static synthetic access$0(Lbe/gentgo/tetsuki/TelnetConnection;)V
    .locals 0

    .prologue
    .line 161
    invoke-direct {p0}, Lbe/gentgo/tetsuki/TelnetConnection;->checkForInput()V

    return-void
.end method

.method static synthetic access$1(Lbe/gentgo/tetsuki/TelnetConnection;)[B
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lbe/gentgo/tetsuki/TelnetConnection;->buffer:[B

    return-object v0
.end method

.method static synthetic access$10(Lbe/gentgo/tetsuki/TelnetConnection;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lbe/gentgo/tetsuki/TelnetConnection;->checkForInputRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$11(Lbe/gentgo/tetsuki/TelnetConnection;)I
    .locals 1

    .prologue
    .line 254
    iget v0, p0, Lbe/gentgo/tetsuki/TelnetConnection;->state:I

    return v0
.end method

.method static synthetic access$2(Lbe/gentgo/tetsuki/TelnetConnection;)J
    .locals 2

    .prologue
    .line 29
    iget-wide v0, p0, Lbe/gentgo/tetsuki/TelnetConnection;->nativeThis:J

    return-wide v0
.end method

.method static synthetic access$3(Lbe/gentgo/tetsuki/TelnetConnection;I)V
    .locals 0

    .prologue
    .line 256
    iput p1, p0, Lbe/gentgo/tetsuki/TelnetConnection;->bufferBytes:I

    return-void
.end method

.method static synthetic access$4(Lbe/gentgo/tetsuki/TelnetConnection;I)V
    .locals 0

    .prologue
    .line 257
    iput p1, p0, Lbe/gentgo/tetsuki/TelnetConnection;->postedBytes:I

    return-void
.end method

.method static synthetic access$5(Lbe/gentgo/tetsuki/TelnetConnection;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lbe/gentgo/tetsuki/TelnetConnection;->address:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lbe/gentgo/tetsuki/TelnetConnection;)I
    .locals 1

    .prologue
    .line 251
    iget v0, p0, Lbe/gentgo/tetsuki/TelnetConnection;->port:I

    return v0
.end method

.method static synthetic access$7(Lbe/gentgo/tetsuki/TelnetConnection;Ljava/net/Socket;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lbe/gentgo/tetsuki/TelnetConnection;->socket:Ljava/net/Socket;

    return-void
.end method

.method static synthetic access$8(Lbe/gentgo/tetsuki/TelnetConnection;)Ljava/net/Socket;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lbe/gentgo/tetsuki/TelnetConnection;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method static synthetic access$9(Lbe/gentgo/tetsuki/TelnetConnection;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lbe/gentgo/tetsuki/TelnetConnection;->networkHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private checkForInput()V
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x0

    .line 163
    iget-object v7, p0, Lbe/gentgo/tetsuki/TelnetConnection;->networkHandler:Landroid/os/Handler;

    iget-object v8, p0, Lbe/gentgo/tetsuki/TelnetConnection;->checkForInputRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 165
    iget v7, p0, Lbe/gentgo/tetsuki/TelnetConnection;->state:I

    if-eqz v7, :cond_1

    iget v7, p0, Lbe/gentgo/tetsuki/TelnetConnection;->state:I

    if-eq v7, v13, :cond_1

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    iget-object v7, p0, Lbe/gentgo/tetsuki/TelnetConnection;->networkHandler:Landroid/os/Handler;

    iget-object v8, p0, Lbe/gentgo/tetsuki/TelnetConnection;->checkForInputRunnable:Ljava/lang/Runnable;

    const-wide/16 v10, 0xfa

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 172
    :try_start_0
    iget-object v7, p0, Lbe/gentgo/tetsuki/TelnetConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v7}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 173
    .local v4, "is":Ljava/io/InputStream;
    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 174
    .local v0, "available":I
    if-lez v0, :cond_3

    .line 176
    iget-object v7, p0, Lbe/gentgo/tetsuki/TelnetConnection;->buffer:[B

    iget v8, p0, Lbe/gentgo/tetsuki/TelnetConnection;->bufferBytes:I

    const/high16 v9, 0x10000

    iget v10, p0, Lbe/gentgo/tetsuki/TelnetConnection;->bufferBytes:I

    sub-int/2addr v9, v10

    invoke-virtual {v4, v7, v8, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 177
    .local v1, "bytesRead":I
    if-lez v1, :cond_3

    .line 179
    iget v7, p0, Lbe/gentgo/tetsuki/TelnetConnection;->state:I

    if-ne v7, v13, :cond_2

    .line 184
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lbe/gentgo/tetsuki/TelnetConnection;->setConnectionState(I)V

    .line 186
    :cond_2
    iget v7, p0, Lbe/gentgo/tetsuki/TelnetConnection;->bufferBytes:I

    add-int/2addr v7, v1

    iput v7, p0, Lbe/gentgo/tetsuki/TelnetConnection;->bufferBytes:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    .end local v1    # "bytesRead":I
    :cond_3
    iget v7, p0, Lbe/gentgo/tetsuki/TelnetConnection;->bufferBytes:I

    iget v8, p0, Lbe/gentgo/tetsuki/TelnetConnection;->postedBytes:I

    if-le v7, v8, :cond_4

    .line 200
    iget v6, p0, Lbe/gentgo/tetsuki/TelnetConnection;->postedBytes:I

    .line 201
    .local v6, "pos":I
    :goto_1
    iget v7, p0, Lbe/gentgo/tetsuki/TelnetConnection;->bufferBytes:I

    if-lt v6, v7, :cond_5

    .line 220
    .end local v6    # "pos":I
    :cond_4
    iget v7, p0, Lbe/gentgo/tetsuki/TelnetConnection;->postedBytes:I

    if-lez v7, :cond_0

    iget-object v7, p0, Lbe/gentgo/tetsuki/TelnetConnection;->callBackHandler:Landroid/os/Handler;

    invoke-virtual {v7, v12}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 223
    iget v7, p0, Lbe/gentgo/tetsuki/TelnetConnection;->bufferBytes:I

    iget v8, p0, Lbe/gentgo/tetsuki/TelnetConnection;->postedBytes:I

    sub-int/2addr v7, v8

    iput v7, p0, Lbe/gentgo/tetsuki/TelnetConnection;->bufferBytes:I

    .line 224
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    iget v7, p0, Lbe/gentgo/tetsuki/TelnetConnection;->bufferBytes:I

    if-lt v3, v7, :cond_9

    .line 225
    iput v12, p0, Lbe/gentgo/tetsuki/TelnetConnection;->postedBytes:I

    goto :goto_0

    .line 190
    .end local v0    # "available":I
    .end local v3    # "i":I
    .end local v4    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v2

    .line 192
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {p0, v12}, Lbe/gentgo/tetsuki/TelnetConnection;->disconnect(Z)V

    goto :goto_0

    .line 203
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "available":I
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v6    # "pos":I
    :cond_5
    iget-object v7, p0, Lbe/gentgo/tetsuki/TelnetConnection;->buffer:[B

    aget-byte v7, v7, v6

    const/16 v8, 0xa

    if-eq v7, v8, :cond_6

    iget-object v7, p0, Lbe/gentgo/tetsuki/TelnetConnection;->buffer:[B

    aget-byte v7, v7, v6

    const/16 v8, 0xd

    if-ne v7, v8, :cond_8

    .line 205
    :cond_6
    iget v7, p0, Lbe/gentgo/tetsuki/TelnetConnection;->postedBytes:I

    sub-int v5, v6, v7

    .line 207
    .local v5, "length":I
    if-lez v5, :cond_7

    .line 209
    iget-object v7, p0, Lbe/gentgo/tetsuki/TelnetConnection;->callBackHandler:Landroid/os/Handler;

    new-instance v8, Lbe/gentgo/tetsuki/TelnetConnection$ProcessLineRunnable;

    iget v9, p0, Lbe/gentgo/tetsuki/TelnetConnection;->postedBytes:I

    invoke-direct {v8, p0, v9, v5}, Lbe/gentgo/tetsuki/TelnetConnection$ProcessLineRunnable;-><init>(Lbe/gentgo/tetsuki/TelnetConnection;II)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 210
    iget-object v7, p0, Lbe/gentgo/tetsuki/TelnetConnection;->callBackHandler:Landroid/os/Handler;

    invoke-virtual {v7, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 212
    :cond_7
    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lbe/gentgo/tetsuki/TelnetConnection;->postedBytes:I

    .line 214
    .end local v5    # "length":I
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 224
    .end local v6    # "pos":I
    .restart local v3    # "i":I
    :cond_9
    iget-object v7, p0, Lbe/gentgo/tetsuki/TelnetConnection;->buffer:[B

    iget-object v8, p0, Lbe/gentgo/tetsuki/TelnetConnection;->buffer:[B

    iget v9, p0, Lbe/gentgo/tetsuki/TelnetConnection;->postedBytes:I

    add-int/2addr v9, v3

    aget-byte v8, v8, v9

    aput-byte v8, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method


# virtual methods
.method public connect()V
    .locals 2

    .prologue
    .line 66
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lbe/gentgo/tetsuki/TelnetConnection;->setConnectionState(I)V

    .line 68
    iget-object v0, p0, Lbe/gentgo/tetsuki/TelnetConnection;->networkHandler:Landroid/os/Handler;

    new-instance v1, Lbe/gentgo/tetsuki/TelnetConnection$2;

    invoke-direct {v1, p0}, Lbe/gentgo/tetsuki/TelnetConnection$2;-><init>(Lbe/gentgo/tetsuki/TelnetConnection;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 98
    return-void
.end method

.method public native connectionStateChanged(IJ)V
.end method

.method public disconnect(Z)V
    .locals 2
    .param p1, "voluntary"    # Z

    .prologue
    .line 103
    if-eqz p1, :cond_0

    const/4 v0, 0x4

    :goto_0
    invoke-virtual {p0, v0}, Lbe/gentgo/tetsuki/TelnetConnection;->setConnectionState(I)V

    .line 105
    iget-object v0, p0, Lbe/gentgo/tetsuki/TelnetConnection;->networkHandler:Landroid/os/Handler;

    iget-object v1, p0, Lbe/gentgo/tetsuki/TelnetConnection;->checkForInputRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 106
    iget-object v0, p0, Lbe/gentgo/tetsuki/TelnetConnection;->networkHandler:Landroid/os/Handler;

    new-instance v1, Lbe/gentgo/tetsuki/TelnetConnection$3;

    invoke-direct {v1, p0}, Lbe/gentgo/tetsuki/TelnetConnection$3;-><init>(Lbe/gentgo/tetsuki/TelnetConnection;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 118
    return-void

    .line 103
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 54
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 55
    return-void
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lbe/gentgo/tetsuki/TelnetConnection;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectionState()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lbe/gentgo/tetsuki/TelnetConnection;->state:I

    return v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lbe/gentgo/tetsuki/TelnetConnection;->port:I

    return v0
.end method

.method public native processLine([BIIJ)V
.end method

.method public setConnectionState(I)V
    .locals 4
    .param p1, "newState"    # I

    .prologue
    .line 127
    iget v0, p0, Lbe/gentgo/tetsuki/TelnetConnection;->state:I

    if-ne v0, p1, :cond_0

    .line 136
    :goto_0
    return-void

    .line 128
    :cond_0
    iput p1, p0, Lbe/gentgo/tetsuki/TelnetConnection;->state:I

    .line 130
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 131
    iget v0, p0, Lbe/gentgo/tetsuki/TelnetConnection;->state:I

    iget-wide v2, p0, Lbe/gentgo/tetsuki/TelnetConnection;->nativeThis:J

    invoke-virtual {p0, v0, v2, v3}, Lbe/gentgo/tetsuki/TelnetConnection;->connectionStateChanged(IJ)V

    goto :goto_0

    .line 133
    :cond_1
    iget-object v0, p0, Lbe/gentgo/tetsuki/TelnetConnection;->callBackHandler:Landroid/os/Handler;

    new-instance v1, Lbe/gentgo/tetsuki/TelnetConnection$4;

    invoke-direct {v1, p0}, Lbe/gentgo/tetsuki/TelnetConnection$4;-><init>(Lbe/gentgo/tetsuki/TelnetConnection;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public writeLine([B)V
    .locals 2
    .param p1, "line"    # [B

    .prologue
    .line 143
    iget-object v0, p0, Lbe/gentgo/tetsuki/TelnetConnection;->networkHandler:Landroid/os/Handler;

    new-instance v1, Lbe/gentgo/tetsuki/TelnetConnection$5;

    invoke-direct {v1, p0, p1}, Lbe/gentgo/tetsuki/TelnetConnection$5;-><init>(Lbe/gentgo/tetsuki/TelnetConnection;[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 159
    return-void
.end method
