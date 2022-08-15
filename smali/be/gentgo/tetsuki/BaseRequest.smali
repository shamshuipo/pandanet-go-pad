.class public Lbe/gentgo/tetsuki/BaseRequest;
.super Lbe/gentgo/tetsuki/Messenger;
.source "BaseRequest.java"


# instance fields
.field private released:Z


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "pointer"    # J

    .prologue
    .line 4
    invoke-direct {p0, p1, p2}, Lbe/gentgo/tetsuki/Messenger;-><init>(J)V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbe/gentgo/tetsuki/BaseRequest;->released:Z

    .line 4
    return-void
.end method

.method private native Release()V
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 11
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/BaseRequest;->release()V

    .line 12
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 13
    return-void
.end method

.method public native isAvailable()Z
.end method

.method public native isDone()Z
.end method

.method public native isSent()Z
.end method

.method public release()V
    .locals 1

    .prologue
    .line 6
    iget-boolean v0, p0, Lbe/gentgo/tetsuki/BaseRequest;->released:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lbe/gentgo/tetsuki/BaseRequest;->Release()V

    .line 7
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbe/gentgo/tetsuki/BaseRequest;->released:Z

    .line 8
    return-void
.end method
