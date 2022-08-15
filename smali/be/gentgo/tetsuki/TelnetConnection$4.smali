.class Lbe/gentgo/tetsuki/TelnetConnection$4;
.super Ljava/lang/Object;
.source "TelnetConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbe/gentgo/tetsuki/TelnetConnection;->setConnectionState(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbe/gentgo/tetsuki/TelnetConnection;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/TelnetConnection;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/TelnetConnection$4;->this$0:Lbe/gentgo/tetsuki/TelnetConnection;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 134
    iget-object v0, p0, Lbe/gentgo/tetsuki/TelnetConnection$4;->this$0:Lbe/gentgo/tetsuki/TelnetConnection;

    iget-object v1, p0, Lbe/gentgo/tetsuki/TelnetConnection$4;->this$0:Lbe/gentgo/tetsuki/TelnetConnection;

    invoke-static {v1}, Lbe/gentgo/tetsuki/TelnetConnection;->access$11(Lbe/gentgo/tetsuki/TelnetConnection;)I

    move-result v1

    iget-object v2, p0, Lbe/gentgo/tetsuki/TelnetConnection$4;->this$0:Lbe/gentgo/tetsuki/TelnetConnection;

    invoke-static {v2}, Lbe/gentgo/tetsuki/TelnetConnection;->access$2(Lbe/gentgo/tetsuki/TelnetConnection;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lbe/gentgo/tetsuki/TelnetConnection;->connectionStateChanged(IJ)V

    .line 135
    return-void
.end method
