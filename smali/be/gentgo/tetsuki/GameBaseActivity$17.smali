.class Lbe/gentgo/tetsuki/GameBaseActivity$17;
.super Ljava/lang/Object;
.source "GameBaseActivity.java"

# interfaces
.implements Lbe/gentgo/tetsuki/GameSliderView$IndexListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbe/gentgo/tetsuki/GameBaseActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbe/gentgo/tetsuki/GameBaseActivity;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/GameBaseActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/GameBaseActivity$17;->this$0:Lbe/gentgo/tetsuki/GameBaseActivity;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public indexChanged(IZ)V
    .locals 5
    .param p1, "newIndex"    # I
    .param p2, "usingButton"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 128
    iget-object v4, p0, Lbe/gentgo/tetsuki/GameBaseActivity$17;->this$0:Lbe/gentgo/tetsuki/GameBaseActivity;

    iget-object v4, v4, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    if-nez v4, :cond_0

    .line 135
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v4, p0, Lbe/gentgo/tetsuki/GameBaseActivity$17;->this$0:Lbe/gentgo/tetsuki/GameBaseActivity;

    iget-object v4, v4, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v4, v2}, Lbe/gentgo/tetsuki/Game;->getMoveNr(Z)I

    move-result v0

    .line 130
    .local v0, "oldIndex":I
    sub-int v1, p1, v0

    .line 131
    .local v1, "step":I
    if-eqz v1, :cond_1

    .line 132
    iget-object v4, p0, Lbe/gentgo/tetsuki/GameBaseActivity$17;->this$0:Lbe/gentgo/tetsuki/GameBaseActivity;

    if-eqz p2, :cond_2

    if-ne v1, v2, :cond_2

    :goto_1
    invoke-virtual {v4, v1, v3, v2}, Lbe/gentgo/tetsuki/GameBaseActivity;->goForward(IZZ)V

    .line 134
    :cond_1
    iget-object v2, p0, Lbe/gentgo/tetsuki/GameBaseActivity$17;->this$0:Lbe/gentgo/tetsuki/GameBaseActivity;

    iget-object v3, p0, Lbe/gentgo/tetsuki/GameBaseActivity$17;->this$0:Lbe/gentgo/tetsuki/GameBaseActivity;

    iget-object v3, v3, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v2, v3}, Lbe/gentgo/tetsuki/GameBaseActivity;->updateGame(Lbe/gentgo/tetsuki/Game;)V

    goto :goto_0

    :cond_2
    move v2, v3

    .line 132
    goto :goto_1
.end method
