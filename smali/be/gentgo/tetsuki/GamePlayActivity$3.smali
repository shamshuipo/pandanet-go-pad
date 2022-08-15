.class Lbe/gentgo/tetsuki/GamePlayActivity$3;
.super Lbe/gentgo/tetsuki/Listener;
.source "GamePlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbe/gentgo/tetsuki/GamePlayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 413
    invoke-direct {p0}, Lbe/gentgo/tetsuki/Listener;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public Do()Z
    .locals 4

    .prologue
    .line 419
    invoke-static {}, Lbe/gentgo/tetsuki/TetsukiActivity;->getForegroundActivity()Lbe/gentgo/tetsuki/TetsukiActivity;

    move-result-object v1

    .line 420
    .local v1, "context":Landroid/content/Context;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 421
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f080097

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 422
    const v2, 0x7f080098

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 424
    const v2, 0x7f080021

    new-instance v3, Lbe/gentgo/tetsuki/GamePlayActivity$3$1;

    invoke-direct {v3, p0}, Lbe/gentgo/tetsuki/GamePlayActivity$3$1;-><init>(Lbe/gentgo/tetsuki/GamePlayActivity$3;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 430
    const v2, 0x7f080020

    new-instance v3, Lbe/gentgo/tetsuki/GamePlayActivity$3$2;

    invoke-direct {v3, p0}, Lbe/gentgo/tetsuki/GamePlayActivity$3$2;-><init>(Lbe/gentgo/tetsuki/GamePlayActivity$3;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 436
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 437
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 438
    const/4 v2, 0x1

    return v2
.end method
