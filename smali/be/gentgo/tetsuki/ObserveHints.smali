.class public Lbe/gentgo/tetsuki/ObserveHints;
.super Lbe/gentgo/tetsuki/NativeObject;
.source "ObserveHints.java"


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "nativePointer"    # J

    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Lbe/gentgo/tetsuki/NativeObject;-><init>(J)V

    return-void
.end method

.method public static native deleteObserveHints(J)V
.end method


# virtual methods
.method public native getPlayerID()Ljava/lang/String;
.end method

.method public native hasHost()Z
.end method

.method public native test()Z
.end method
