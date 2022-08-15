.class public Lbe/gentgo/tetsuki/NativeObject;
.super Ljava/lang/Object;
.source "NativeObject.java"


# instance fields
.field protected nativePointer:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "p"    # J

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lbe/gentgo/tetsuki/NativeObject;->nativePointer:J

    return-void
.end method


# virtual methods
.method public samePointer(Lbe/gentgo/tetsuki/NativeObject;)Z
    .locals 6
    .param p1, "that"    # Lbe/gentgo/tetsuki/NativeObject;

    .prologue
    const/4 v0, 0x0

    .line 7
    if-nez p1, :cond_1

    .line 8
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-wide v2, p0, Lbe/gentgo/tetsuki/NativeObject;->nativePointer:J

    iget-wide v4, p1, Lbe/gentgo/tetsuki/NativeObject;->nativePointer:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
