.class Lbe/gentgo/tetsuki/GamePlayActivity$6;
.super Ljava/lang/Object;
.source "GamePlayActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbe/gentgo/tetsuki/GamePlayActivity;->onReportTapped()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbe/gentgo/tetsuki/GamePlayActivity;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/GamePlayActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/GamePlayActivity$6;->this$0:Lbe/gentgo/tetsuki/GamePlayActivity;

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 221
    iget-object v1, p0, Lbe/gentgo/tetsuki/GamePlayActivity$6;->this$0:Lbe/gentgo/tetsuki/GamePlayActivity;

    iget-object v1, v1, Lbe/gentgo/tetsuki/GamePlayActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/Game;->isScoring()Z

    move-result v0

    .line 222
    .local v0, "scoring":Z
    if-eqz v0, :cond_3

    .line 223
    if-nez p2, :cond_0

    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v1

    const/16 v2, 0x69

    invoke-virtual {v1, v2}, Lbe/gentgo/tetsuki/Server;->report(I)V

    .line 224
    :cond_0
    if-ne p2, v3, :cond_1

    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v1

    const/16 v2, 0x67

    invoke-virtual {v1, v2}, Lbe/gentgo/tetsuki/Server;->report(I)V

    .line 225
    :cond_1
    if-ne p2, v4, :cond_2

    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v1

    const/16 v2, 0x68

    invoke-virtual {v1, v2}, Lbe/gentgo/tetsuki/Server;->report(I)V

    .line 231
    :cond_2
    :goto_0
    return-void

    .line 227
    :cond_3
    if-nez p2, :cond_4

    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v1

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Lbe/gentgo/tetsuki/Server;->report(I)V

    .line 228
    :cond_4
    if-ne p2, v3, :cond_5

    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lbe/gentgo/tetsuki/Server;->report(I)V

    .line 229
    :cond_5
    if-ne p2, v4, :cond_2

    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v1

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Lbe/gentgo/tetsuki/Server;->report(I)V

    goto :goto_0
.end method
