.class Lbe/gentgo/tetsuki/TelnetConnection$1;
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
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbe/gentgo/tetsuki/TelnetConnection;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/TelnetConnection;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/TelnetConnection$1;->this$0:Lbe/gentgo/tetsuki/TelnetConnection;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lbe/gentgo/tetsuki/TelnetConnection$1;->this$0:Lbe/gentgo/tetsuki/TelnetConnection;

    invoke-static {v0}, Lbe/gentgo/tetsuki/TelnetConnection;->access$0(Lbe/gentgo/tetsuki/TelnetConnection;)V

    return-void
.end method
