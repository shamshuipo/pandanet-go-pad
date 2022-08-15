.class public Lbe/gentgo/tetsuki/TetsukiActivity;
.super Landroid/app/Activity;
.source "TetsukiActivity.java"


# static fields
.field private static backgroundListenerDelay:I

.field static delayHandler:Landroid/os/Handler;

.field static foreGround:Lbe/gentgo/tetsuki/TetsukiActivity;

.field private static onBackgroundListener:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    sput-object v1, Lbe/gentgo/tetsuki/TetsukiActivity;->foreGround:Lbe/gentgo/tetsuki/TetsukiActivity;

    .line 39
    sput-object v1, Lbe/gentgo/tetsuki/TetsukiActivity;->onBackgroundListener:Ljava/lang/Runnable;

    .line 40
    const/4 v0, 0x0

    sput v0, Lbe/gentgo/tetsuki/TetsukiActivity;->backgroundListenerDelay:I

    .line 41
    sput-object v1, Lbe/gentgo/tetsuki/TetsukiActivity;->delayHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static getForegroundActivity()Lbe/gentgo/tetsuki/TetsukiActivity;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lbe/gentgo/tetsuki/TetsukiActivity;->foreGround:Lbe/gentgo/tetsuki/TetsukiActivity;

    return-object v0
.end method

.method static setOnBackgroundListener(Ljava/lang/Runnable;I)V
    .locals 1
    .param p0, "list"    # Ljava/lang/Runnable;
    .param p1, "delay"    # I

    .prologue
    .line 16
    invoke-static {}, Lbe/gentgo/tetsuki/TetsukiActivity;->stopTimer()V

    .line 17
    sput-object p0, Lbe/gentgo/tetsuki/TetsukiActivity;->onBackgroundListener:Ljava/lang/Runnable;

    .line 18
    sput p1, Lbe/gentgo/tetsuki/TetsukiActivity;->backgroundListenerDelay:I

    .line 19
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lbe/gentgo/tetsuki/TetsukiActivity;->delayHandler:Landroid/os/Handler;

    .line 20
    return-void
.end method

.method static startTimer()V
    .locals 4

    .prologue
    .line 32
    sget-object v0, Lbe/gentgo/tetsuki/TetsukiActivity;->delayHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 35
    :goto_0
    return-void

    .line 33
    :cond_0
    invoke-static {}, Lbe/gentgo/tetsuki/TetsukiActivity;->stopTimer()V

    .line 34
    sget-object v0, Lbe/gentgo/tetsuki/TetsukiActivity;->delayHandler:Landroid/os/Handler;

    sget-object v1, Lbe/gentgo/tetsuki/TetsukiActivity;->onBackgroundListener:Ljava/lang/Runnable;

    sget v2, Lbe/gentgo/tetsuki/TetsukiActivity;->backgroundListenerDelay:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method static stopTimer()V
    .locals 2

    .prologue
    .line 27
    sget-object v0, Lbe/gentgo/tetsuki/TetsukiActivity;->delayHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 29
    :goto_0
    return-void

    .line 28
    :cond_0
    sget-object v0, Lbe/gentgo/tetsuki/TetsukiActivity;->delayHandler:Landroid/os/Handler;

    sget-object v1, Lbe/gentgo/tetsuki/TetsukiActivity;->onBackgroundListener:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method protected onDestroy()V
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lbe/gentgo/tetsuki/TetsukiActivity;->foreGround:Lbe/gentgo/tetsuki/TetsukiActivity;

    if-eqz v0, :cond_0

    sget-object v0, Lbe/gentgo/tetsuki/TetsukiActivity;->foreGround:Lbe/gentgo/tetsuki/TetsukiActivity;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lbe/gentgo/tetsuki/TetsukiActivity;->foreGround:Lbe/gentgo/tetsuki/TetsukiActivity;

    .line 59
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 60
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 52
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 53
    invoke-static {}, Lbe/gentgo/tetsuki/TetsukiActivity;->startTimer()V

    .line 54
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 45
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 46
    sput-object p0, Lbe/gentgo/tetsuki/TetsukiActivity;->foreGround:Lbe/gentgo/tetsuki/TetsukiActivity;

    .line 47
    invoke-static {}, Lbe/gentgo/tetsuki/TetsukiActivity;->stopTimer()V

    .line 48
    return-void
.end method
