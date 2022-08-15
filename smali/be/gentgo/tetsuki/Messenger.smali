.class public Lbe/gentgo/tetsuki/Messenger;
.super Lbe/gentgo/tetsuki/NativeObject;
.source "Messenger.java"


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "nat"    # J

    .prologue
    .line 6
    invoke-direct {p0, p1, p2}, Lbe/gentgo/tetsuki/NativeObject;-><init>(J)V

    .line 7
    return-void
.end method


# virtual methods
.method public native addListener(Lbe/gentgo/tetsuki/Listener;)V
.end method

.method public native notifyListeners()V
.end method

.method public native removeListener(Lbe/gentgo/tetsuki/Listener;)V
.end method
