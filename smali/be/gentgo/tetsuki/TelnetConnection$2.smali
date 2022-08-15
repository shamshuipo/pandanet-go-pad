.class Lbe/gentgo/tetsuki/TelnetConnection$2;
.super Ljava/lang/Object;
.source "TelnetConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbe/gentgo/tetsuki/TelnetConnection;->connect()V
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
    iput-object p1, p0, Lbe/gentgo/tetsuki/TelnetConnection$2;->this$0:Lbe/gentgo/tetsuki/TelnetConnection;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 75
    :try_start_0
    iget-object v1, p0, Lbe/gentgo/tetsuki/TelnetConnection$2;->this$0:Lbe/gentgo/tetsuki/TelnetConnection;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lbe/gentgo/tetsuki/TelnetConnection;->setConnectionState(I)V

    .line 76
    iget-object v1, p0, Lbe/gentgo/tetsuki/TelnetConnection$2;->this$0:Lbe/gentgo/tetsuki/TelnetConnection;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lbe/gentgo/tetsuki/TelnetConnection;->access$3(Lbe/gentgo/tetsuki/TelnetConnection;I)V

    .line 77
    iget-object v1, p0, Lbe/gentgo/tetsuki/TelnetConnection$2;->this$0:Lbe/gentgo/tetsuki/TelnetConnection;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lbe/gentgo/tetsuki/TelnetConnection;->access$4(Lbe/gentgo/tetsuki/TelnetConnection;I)V

    .line 78
    iget-object v1, p0, Lbe/gentgo/tetsuki/TelnetConnection$2;->this$0:Lbe/gentgo/tetsuki/TelnetConnection;

    new-instance v2, Ljava/net/Socket;

    iget-object v3, p0, Lbe/gentgo/tetsuki/TelnetConnection$2;->this$0:Lbe/gentgo/tetsuki/TelnetConnection;

    invoke-static {v3}, Lbe/gentgo/tetsuki/TelnetConnection;->access$5(Lbe/gentgo/tetsuki/TelnetConnection;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lbe/gentgo/tetsuki/TelnetConnection$2;->this$0:Lbe/gentgo/tetsuki/TelnetConnection;

    invoke-static {v4}, Lbe/gentgo/tetsuki/TelnetConnection;->access$6(Lbe/gentgo/tetsuki/TelnetConnection;)I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    invoke-static {v1, v2}, Lbe/gentgo/tetsuki/TelnetConnection;->access$7(Lbe/gentgo/tetsuki/TelnetConnection;Ljava/net/Socket;)V

    .line 79
    iget-object v1, p0, Lbe/gentgo/tetsuki/TelnetConnection$2;->this$0:Lbe/gentgo/tetsuki/TelnetConnection;

    invoke-static {v1}, Lbe/gentgo/tetsuki/TelnetConnection;->access$8(Lbe/gentgo/tetsuki/TelnetConnection;)Ljava/net/Socket;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 81
    iget-object v1, p0, Lbe/gentgo/tetsuki/TelnetConnection$2;->this$0:Lbe/gentgo/tetsuki/TelnetConnection;

    invoke-static {v1}, Lbe/gentgo/tetsuki/TelnetConnection;->access$9(Lbe/gentgo/tetsuki/TelnetConnection;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lbe/gentgo/tetsuki/TelnetConnection$2;->this$0:Lbe/gentgo/tetsuki/TelnetConnection;

    invoke-static {v2}, Lbe/gentgo/tetsuki/TelnetConnection;->access$10(Lbe/gentgo/tetsuki/TelnetConnection;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 82
    iget-object v1, p0, Lbe/gentgo/tetsuki/TelnetConnection$2;->this$0:Lbe/gentgo/tetsuki/TelnetConnection;

    invoke-static {v1}, Lbe/gentgo/tetsuki/TelnetConnection;->access$9(Lbe/gentgo/tetsuki/TelnetConnection;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lbe/gentgo/tetsuki/TelnetConnection$2;->this$0:Lbe/gentgo/tetsuki/TelnetConnection;

    invoke-static {v2}, Lbe/gentgo/tetsuki/TelnetConnection;->access$10(Lbe/gentgo/tetsuki/TelnetConnection;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v4, 0xfa

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 96
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/net/UnknownHostException;
    iget-object v1, p0, Lbe/gentgo/tetsuki/TelnetConnection$2;->this$0:Lbe/gentgo/tetsuki/TelnetConnection;

    invoke-static {v1}, Lbe/gentgo/tetsuki/TelnetConnection;->access$9(Lbe/gentgo/tetsuki/TelnetConnection;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lbe/gentgo/tetsuki/TelnetConnection$2;->this$0:Lbe/gentgo/tetsuki/TelnetConnection;

    invoke-static {v2}, Lbe/gentgo/tetsuki/TelnetConnection;->access$10(Lbe/gentgo/tetsuki/TelnetConnection;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 87
    iget-object v1, p0, Lbe/gentgo/tetsuki/TelnetConnection$2;->this$0:Lbe/gentgo/tetsuki/TelnetConnection;

    invoke-virtual {v1, v6}, Lbe/gentgo/tetsuki/TelnetConnection;->setConnectionState(I)V

    goto :goto_0

    .line 89
    .end local v0    # "e":Ljava/net/UnknownHostException;
    :catch_1
    move-exception v0

    .line 90
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lbe/gentgo/tetsuki/TelnetConnection$2;->this$0:Lbe/gentgo/tetsuki/TelnetConnection;

    invoke-static {v1}, Lbe/gentgo/tetsuki/TelnetConnection;->access$9(Lbe/gentgo/tetsuki/TelnetConnection;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lbe/gentgo/tetsuki/TelnetConnection$2;->this$0:Lbe/gentgo/tetsuki/TelnetConnection;

    invoke-static {v2}, Lbe/gentgo/tetsuki/TelnetConnection;->access$10(Lbe/gentgo/tetsuki/TelnetConnection;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 92
    iget-object v1, p0, Lbe/gentgo/tetsuki/TelnetConnection$2;->this$0:Lbe/gentgo/tetsuki/TelnetConnection;

    invoke-virtual {v1, v6}, Lbe/gentgo/tetsuki/TelnetConnection;->setConnectionState(I)V

    goto :goto_0
.end method
