.class Lbe/gentgo/tetsuki/GameBaseActivity$Winder;
.super Ljava/lang/Object;
.source "GameBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbe/gentgo/tetsuki/GameBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Winder"
.end annotation


# instance fields
.field counter:I

.field handler:Landroid/os/Handler;

.field final synthetic this$0:Lbe/gentgo/tetsuki/GameBaseActivity;

.field unitStep:I

.field private wind:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/GameBaseActivity;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 816
    iput-object p1, p0, Lbe/gentgo/tetsuki/GameBaseActivity$Winder;->this$0:Lbe/gentgo/tetsuki/GameBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 829
    new-instance v0, Lbe/gentgo/tetsuki/GameBaseActivity$Winder$1;

    invoke-direct {v0, p0}, Lbe/gentgo/tetsuki/GameBaseActivity$Winder$1;-><init>(Lbe/gentgo/tetsuki/GameBaseActivity$Winder;)V

    iput-object v0, p0, Lbe/gentgo/tetsuki/GameBaseActivity$Winder;->wind:Ljava/lang/Runnable;

    .line 852
    iput v1, p0, Lbe/gentgo/tetsuki/GameBaseActivity$Winder;->unitStep:I

    .line 853
    iput v1, p0, Lbe/gentgo/tetsuki/GameBaseActivity$Winder;->counter:I

    .line 854
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lbe/gentgo/tetsuki/GameBaseActivity$Winder;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$0(Lbe/gentgo/tetsuki/GameBaseActivity$Winder;)Lbe/gentgo/tetsuki/GameBaseActivity;
    .locals 1

    .prologue
    .line 816
    iget-object v0, p0, Lbe/gentgo/tetsuki/GameBaseActivity$Winder;->this$0:Lbe/gentgo/tetsuki/GameBaseActivity;

    return-object v0
.end method


# virtual methods
.method public start(Z)V
    .locals 1
    .param p1, "forward"    # Z

    .prologue
    .line 818
    iget v0, p0, Lbe/gentgo/tetsuki/GameBaseActivity$Winder;->unitStep:I

    if-eqz v0, :cond_0

    .line 822
    :goto_0
    return-void

    .line 819
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput v0, p0, Lbe/gentgo/tetsuki/GameBaseActivity$Winder;->unitStep:I

    .line 820
    const/4 v0, 0x0

    iput v0, p0, Lbe/gentgo/tetsuki/GameBaseActivity$Winder;->counter:I

    .line 821
    iget-object v0, p0, Lbe/gentgo/tetsuki/GameBaseActivity$Winder;->wind:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 819
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 825
    iget-object v0, p0, Lbe/gentgo/tetsuki/GameBaseActivity$Winder;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lbe/gentgo/tetsuki/GameBaseActivity$Winder;->wind:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 826
    const/4 v0, 0x0

    iput v0, p0, Lbe/gentgo/tetsuki/GameBaseActivity$Winder;->unitStep:I

    .line 827
    return-void
.end method
