.class Lbe/gentgo/tetsuki/TelnetConnection$3;
.super Ljava/lang/Object;
.source "TelnetConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbe/gentgo/tetsuki/TelnetConnection;->disconnect(Z)V
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
    iput-object p1, p0, Lbe/gentgo/tetsuki/TelnetConnection$3;->this$0:Lbe/gentgo/tetsuki/TelnetConnection;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lbe/gentgo/tetsuki/TelnetConnection$3;->this$0:Lbe/gentgo/tetsuki/TelnetConnection;

    invoke-static {v0}, Lbe/gentgo/tetsuki/TelnetConnection;->access$11(Lbe/gentgo/tetsuki/TelnetConnection;)I

    move-result v0

    if-nez v0, :cond_0

    .line 109
    :try_start_0
    iget-object v0, p0, Lbe/gentgo/tetsuki/TelnetConnection$3;->this$0:Lbe/gentgo/tetsuki/TelnetConnection;

    invoke-static {v0}, Lbe/gentgo/tetsuki/TelnetConnection;->access$8(Lbe/gentgo/tetsuki/TelnetConnection;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 111
    :goto_0
    :try_start_1
    iget-object v0, p0, Lbe/gentgo/tetsuki/TelnetConnection$3;->this$0:Lbe/gentgo/tetsuki/TelnetConnection;

    invoke-static {v0}, Lbe/gentgo/tetsuki/TelnetConnection;->access$8(Lbe/gentgo/tetsuki/TelnetConnection;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 113
    :goto_1
    :try_start_2
    iget-object v0, p0, Lbe/gentgo/tetsuki/TelnetConnection$3;->this$0:Lbe/gentgo/tetsuki/TelnetConnection;

    invoke-static {v0}, Lbe/gentgo/tetsuki/TelnetConnection;->access$8(Lbe/gentgo/tetsuki/TelnetConnection;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 117
    :cond_0
    :goto_2
    return-void

    .line 114
    :catch_0
    move-exception v0

    goto :goto_2

    .line 112
    :catch_1
    move-exception v0

    goto :goto_1

    .line 110
    :catch_2
    move-exception v0

    goto :goto_0
.end method
