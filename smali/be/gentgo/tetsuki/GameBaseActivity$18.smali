.class Lbe/gentgo/tetsuki/GameBaseActivity$18;
.super Ljava/lang/Object;
.source "GameBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbe/gentgo/tetsuki/GameBaseActivity;->showResultToolTipIfNeeded()V
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
    iput-object p1, p0, Lbe/gentgo/tetsuki/GameBaseActivity$18;->this$0:Lbe/gentgo/tetsuki/GameBaseActivity;

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 154
    iget-object v1, p0, Lbe/gentgo/tetsuki/GameBaseActivity$18;->this$0:Lbe/gentgo/tetsuki/GameBaseActivity;

    const v2, 0x7f0b0050

    invoke-virtual {v1, v2}, Lbe/gentgo/tetsuki/GameBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 155
    .local v0, "scoreButton":Landroid/widget/ImageView;
    iget-object v1, p0, Lbe/gentgo/tetsuki/GameBaseActivity$18;->this$0:Lbe/gentgo/tetsuki/GameBaseActivity;

    iget-object v2, p0, Lbe/gentgo/tetsuki/GameBaseActivity$18;->this$0:Lbe/gentgo/tetsuki/GameBaseActivity;

    iget-object v2, v2, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    iget-object v3, p0, Lbe/gentgo/tetsuki/GameBaseActivity$18;->this$0:Lbe/gentgo/tetsuki/GameBaseActivity;

    iget-object v3, v3, Lbe/gentgo/tetsuki/GameBaseActivity;->score:Lbe/gentgo/tetsuki/ScoreCount;

    invoke-static {v1, v2, v3}, Lbe/gentgo/tetsuki/ScoreFragment;->localizedTextForGameResult(Landroid/content/Context;Lbe/gentgo/tetsuki/Game;Lbe/gentgo/tetsuki/ScoreCount;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lbe/gentgo/tetsuki/GameBaseActivity$18;->this$0:Lbe/gentgo/tetsuki/GameBaseActivity;

    invoke-static {v1, v2, v0}, Lbe/gentgo/tetsuki/ToolTip;->show(Ljava/lang/String;Landroid/app/Activity;Landroid/view/View;)V

    .line 156
    return-void
.end method
