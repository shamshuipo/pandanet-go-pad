.class Lbe/gentgo/tetsuki/TelnetConnection$ProcessLineRunnable;
.super Ljava/lang/Object;
.source "TelnetConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbe/gentgo/tetsuki/TelnetConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProcessLineRunnable"
.end annotation


# instance fields
.field from:I

.field length:I

.field final synthetic this$0:Lbe/gentgo/tetsuki/TelnetConnection;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/TelnetConnection;II)V
    .locals 0
    .param p2, "f"    # I
    .param p3, "l"    # I

    .prologue
    .line 230
    iput-object p1, p0, Lbe/gentgo/tetsuki/TelnetConnection$ProcessLineRunnable;->this$0:Lbe/gentgo/tetsuki/TelnetConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    iput p2, p0, Lbe/gentgo/tetsuki/TelnetConnection$ProcessLineRunnable;->from:I

    .line 232
    iput p3, p0, Lbe/gentgo/tetsuki/TelnetConnection$ProcessLineRunnable;->length:I

    .line 233
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 240
    iget-object v0, p0, Lbe/gentgo/tetsuki/TelnetConnection$ProcessLineRunnable;->this$0:Lbe/gentgo/tetsuki/TelnetConnection;

    iget-object v1, p0, Lbe/gentgo/tetsuki/TelnetConnection$ProcessLineRunnable;->this$0:Lbe/gentgo/tetsuki/TelnetConnection;

    invoke-static {v1}, Lbe/gentgo/tetsuki/TelnetConnection;->access$1(Lbe/gentgo/tetsuki/TelnetConnection;)[B

    move-result-object v1

    iget v2, p0, Lbe/gentgo/tetsuki/TelnetConnection$ProcessLineRunnable;->from:I

    iget v3, p0, Lbe/gentgo/tetsuki/TelnetConnection$ProcessLineRunnable;->length:I

    iget-object v4, p0, Lbe/gentgo/tetsuki/TelnetConnection$ProcessLineRunnable;->this$0:Lbe/gentgo/tetsuki/TelnetConnection;

    invoke-static {v4}, Lbe/gentgo/tetsuki/TelnetConnection;->access$2(Lbe/gentgo/tetsuki/TelnetConnection;)J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lbe/gentgo/tetsuki/TelnetConnection;->processLine([BIIJ)V

    .line 241
    return-void
.end method
