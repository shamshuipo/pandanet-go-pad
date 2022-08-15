.class Lbe/gentgo/tetsuki/TelnetConnection$5;
.super Ljava/lang/Object;
.source "TelnetConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbe/gentgo/tetsuki/TelnetConnection;->writeLine([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbe/gentgo/tetsuki/TelnetConnection;

.field private final synthetic val$line:[B


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/TelnetConnection;[B)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/TelnetConnection$5;->this$0:Lbe/gentgo/tetsuki/TelnetConnection;

    iput-object p2, p0, Lbe/gentgo/tetsuki/TelnetConnection$5;->val$line:[B

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 146
    :try_start_0
    iget-object v2, p0, Lbe/gentgo/tetsuki/TelnetConnection$5;->this$0:Lbe/gentgo/tetsuki/TelnetConnection;

    invoke-static {v2}, Lbe/gentgo/tetsuki/TelnetConnection;->access$11(Lbe/gentgo/tetsuki/TelnetConnection;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 158
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-object v2, p0, Lbe/gentgo/tetsuki/TelnetConnection$5;->this$0:Lbe/gentgo/tetsuki/TelnetConnection;

    invoke-static {v2}, Lbe/gentgo/tetsuki/TelnetConnection;->access$8(Lbe/gentgo/tetsuki/TelnetConnection;)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 148
    .local v1, "os":Ljava/io/OutputStream;
    iget-object v2, p0, Lbe/gentgo/tetsuki/TelnetConnection$5;->val$line:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 149
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 150
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 151
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 153
    .end local v1    # "os":Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Ljava/io/IOException;
    iget-object v2, p0, Lbe/gentgo/tetsuki/TelnetConnection$5;->this$0:Lbe/gentgo/tetsuki/TelnetConnection;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lbe/gentgo/tetsuki/TelnetConnection;->disconnect(Z)V

    goto :goto_0
.end method
