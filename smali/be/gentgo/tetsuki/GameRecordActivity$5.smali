.class Lbe/gentgo/tetsuki/GameRecordActivity$5;
.super Ljava/lang/Object;
.source "GameRecordActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbe/gentgo/tetsuki/GameRecordActivity;->onGobanTapped(Lbe/gentgo/tetsuki/Position;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbe/gentgo/tetsuki/GameRecordActivity;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/GameRecordActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/GameRecordActivity$5;->this$0:Lbe/gentgo/tetsuki/GameRecordActivity;

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 269
    iget-object v0, p0, Lbe/gentgo/tetsuki/GameRecordActivity$5;->this$0:Lbe/gentgo/tetsuki/GameRecordActivity;

    iget-object v0, v0, Lbe/gentgo/tetsuki/GameRecordActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/Game;->deleteCurrentMove()V

    .line 270
    iget-object v0, p0, Lbe/gentgo/tetsuki/GameRecordActivity$5;->this$0:Lbe/gentgo/tetsuki/GameRecordActivity;

    iget-object v1, p0, Lbe/gentgo/tetsuki/GameRecordActivity$5;->this$0:Lbe/gentgo/tetsuki/GameRecordActivity;

    iget-object v1, v1, Lbe/gentgo/tetsuki/GameRecordActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/GameRecordActivity;->updateGame(Lbe/gentgo/tetsuki/Game;)V

    .line 271
    return-void
.end method
