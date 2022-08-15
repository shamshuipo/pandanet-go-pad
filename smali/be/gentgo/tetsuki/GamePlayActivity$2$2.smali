.class Lbe/gentgo/tetsuki/GamePlayActivity$2$2;
.super Ljava/lang/Object;
.source "GamePlayActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbe/gentgo/tetsuki/GamePlayActivity$2;->Do()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lbe/gentgo/tetsuki/GamePlayActivity$2;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/GamePlayActivity$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/GamePlayActivity$2$2;->this$1:Lbe/gentgo/tetsuki/GamePlayActivity$2;

    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 369
    const/4 v0, 0x0

    invoke-static {v0}, Lbe/gentgo/tetsuki/GamePlayActivity;->access$11(Landroid/app/Dialog;)V

    .line 370
    return-void
.end method
