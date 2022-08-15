.class Lbe/gentgo/tetsuki/GameBaseActivity$Winder$1;
.super Ljava/lang/Object;
.source "GameBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbe/gentgo/tetsuki/GameBaseActivity$Winder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lbe/gentgo/tetsuki/GameBaseActivity$Winder;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/GameBaseActivity$Winder;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/GameBaseActivity$Winder$1;->this$1:Lbe/gentgo/tetsuki/GameBaseActivity$Winder;

    .line 829
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 831
    iget-object v3, p0, Lbe/gentgo/tetsuki/GameBaseActivity$Winder$1;->this$1:Lbe/gentgo/tetsuki/GameBaseActivity$Winder;

    iget v4, v3, Lbe/gentgo/tetsuki/GameBaseActivity$Winder;->counter:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lbe/gentgo/tetsuki/GameBaseActivity$Winder;->counter:I

    .line 832
    iget-object v3, p0, Lbe/gentgo/tetsuki/GameBaseActivity$Winder$1;->this$1:Lbe/gentgo/tetsuki/GameBaseActivity$Winder;

    iget v0, v3, Lbe/gentgo/tetsuki/GameBaseActivity$Winder;->unitStep:I

    .line 833
    .local v0, "step":I
    iget-object v3, p0, Lbe/gentgo/tetsuki/GameBaseActivity$Winder$1;->this$1:Lbe/gentgo/tetsuki/GameBaseActivity$Winder;

    iget v3, v3, Lbe/gentgo/tetsuki/GameBaseActivity$Winder;->counter:I

    const/4 v4, 0x7

    if-le v3, v4, :cond_0

    mul-int/lit8 v0, v0, 0x2

    .line 834
    :cond_0
    iget-object v3, p0, Lbe/gentgo/tetsuki/GameBaseActivity$Winder$1;->this$1:Lbe/gentgo/tetsuki/GameBaseActivity$Winder;

    iget v3, v3, Lbe/gentgo/tetsuki/GameBaseActivity$Winder;->counter:I

    const/16 v4, 0xa

    if-le v3, v4, :cond_1

    mul-int/lit8 v0, v0, 0x2

    .line 835
    :cond_1
    iget-object v3, p0, Lbe/gentgo/tetsuki/GameBaseActivity$Winder$1;->this$1:Lbe/gentgo/tetsuki/GameBaseActivity$Winder;

    iget v3, v3, Lbe/gentgo/tetsuki/GameBaseActivity$Winder;->counter:I

    const/16 v4, 0xd

    if-le v3, v4, :cond_2

    mul-int/lit8 v0, v0, 0x2

    .line 836
    :cond_2
    iget-object v3, p0, Lbe/gentgo/tetsuki/GameBaseActivity$Winder$1;->this$1:Lbe/gentgo/tetsuki/GameBaseActivity$Winder;

    iget v3, v3, Lbe/gentgo/tetsuki/GameBaseActivity$Winder;->counter:I

    const/16 v4, 0x10

    if-le v3, v4, :cond_3

    mul-int/lit8 v0, v0, 0x2

    .line 837
    :cond_3
    iget-object v3, p0, Lbe/gentgo/tetsuki/GameBaseActivity$Winder$1;->this$1:Lbe/gentgo/tetsuki/GameBaseActivity$Winder;

    iget v3, v3, Lbe/gentgo/tetsuki/GameBaseActivity$Winder;->counter:I

    const/16 v4, 0x13

    if-le v3, v4, :cond_4

    mul-int/lit8 v0, v0, 0x2

    .line 838
    :cond_4
    iget-object v3, p0, Lbe/gentgo/tetsuki/GameBaseActivity$Winder$1;->this$1:Lbe/gentgo/tetsuki/GameBaseActivity$Winder;

    iget v3, v3, Lbe/gentgo/tetsuki/GameBaseActivity$Winder;->counter:I

    if-le v3, v1, :cond_5

    iget-object v3, p0, Lbe/gentgo/tetsuki/GameBaseActivity$Winder$1;->this$1:Lbe/gentgo/tetsuki/GameBaseActivity$Winder;

    iget v3, v3, Lbe/gentgo/tetsuki/GameBaseActivity$Winder;->counter:I

    const/4 v4, 0x4

    if-ge v3, v4, :cond_5

    const/4 v0, 0x0

    .line 839
    :cond_5
    iget-object v3, p0, Lbe/gentgo/tetsuki/GameBaseActivity$Winder$1;->this$1:Lbe/gentgo/tetsuki/GameBaseActivity$Winder;

    invoke-static {v3}, Lbe/gentgo/tetsuki/GameBaseActivity$Winder;->access$0(Lbe/gentgo/tetsuki/GameBaseActivity$Winder;)Lbe/gentgo/tetsuki/GameBaseActivity;

    move-result-object v3

    iget-object v3, v3, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    if-eqz v3, :cond_6

    if-eqz v0, :cond_6

    .line 840
    iget-object v3, p0, Lbe/gentgo/tetsuki/GameBaseActivity$Winder$1;->this$1:Lbe/gentgo/tetsuki/GameBaseActivity$Winder;

    invoke-static {v3}, Lbe/gentgo/tetsuki/GameBaseActivity$Winder;->access$0(Lbe/gentgo/tetsuki/GameBaseActivity$Winder;)Lbe/gentgo/tetsuki/GameBaseActivity;

    move-result-object v3

    if-ne v0, v1, :cond_8

    iget-object v4, p0, Lbe/gentgo/tetsuki/GameBaseActivity$Winder$1;->this$1:Lbe/gentgo/tetsuki/GameBaseActivity$Winder;

    iget v4, v4, Lbe/gentgo/tetsuki/GameBaseActivity$Winder;->counter:I

    if-ne v4, v1, :cond_8

    :goto_0
    invoke-virtual {v3, v0, v2, v1}, Lbe/gentgo/tetsuki/GameBaseActivity;->goForward(IZZ)V

    .line 842
    :cond_6
    iget-object v1, p0, Lbe/gentgo/tetsuki/GameBaseActivity$Winder$1;->this$1:Lbe/gentgo/tetsuki/GameBaseActivity$Winder;

    iget-object v1, v1, Lbe/gentgo/tetsuki/GameBaseActivity$Winder;->handler:Landroid/os/Handler;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 846
    iget-object v1, p0, Lbe/gentgo/tetsuki/GameBaseActivity$Winder$1;->this$1:Lbe/gentgo/tetsuki/GameBaseActivity$Winder;

    invoke-static {v1}, Lbe/gentgo/tetsuki/GameBaseActivity$Winder;->access$0(Lbe/gentgo/tetsuki/GameBaseActivity$Winder;)Lbe/gentgo/tetsuki/GameBaseActivity;

    move-result-object v1

    iget-object v1, v1, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lbe/gentgo/tetsuki/GameBaseActivity$Winder$1;->this$1:Lbe/gentgo/tetsuki/GameBaseActivity$Winder;

    invoke-static {v1}, Lbe/gentgo/tetsuki/GameBaseActivity$Winder;->access$0(Lbe/gentgo/tetsuki/GameBaseActivity$Winder;)Lbe/gentgo/tetsuki/GameBaseActivity;

    move-result-object v1

    iget-object v1, v1, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/Game;->isBeforeFirstMove()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lbe/gentgo/tetsuki/GameBaseActivity$Winder$1;->this$1:Lbe/gentgo/tetsuki/GameBaseActivity$Winder;

    invoke-static {v1}, Lbe/gentgo/tetsuki/GameBaseActivity$Winder;->access$0(Lbe/gentgo/tetsuki/GameBaseActivity$Winder;)Lbe/gentgo/tetsuki/GameBaseActivity;

    move-result-object v1

    iget-object v1, v1, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/Game;->isAfterLastMove()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 847
    :cond_7
    iget-object v1, p0, Lbe/gentgo/tetsuki/GameBaseActivity$Winder$1;->this$1:Lbe/gentgo/tetsuki/GameBaseActivity$Winder;

    iput v2, v1, Lbe/gentgo/tetsuki/GameBaseActivity$Winder;->unitStep:I

    .line 850
    :goto_1
    return-void

    :cond_8
    move v1, v2

    .line 840
    goto :goto_0

    .line 849
    :cond_9
    iget-object v1, p0, Lbe/gentgo/tetsuki/GameBaseActivity$Winder$1;->this$1:Lbe/gentgo/tetsuki/GameBaseActivity$Winder;

    iget-object v1, v1, Lbe/gentgo/tetsuki/GameBaseActivity$Winder;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x96

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method
