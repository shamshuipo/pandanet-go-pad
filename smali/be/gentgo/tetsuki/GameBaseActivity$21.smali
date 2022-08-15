.class Lbe/gentgo/tetsuki/GameBaseActivity$21;
.super Ljava/lang/Object;
.source "GameBaseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbe/gentgo/tetsuki/GameBaseActivity;->onGobanTapped(Lbe/gentgo/tetsuki/Position;Z)V
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
    iput-object p1, p0, Lbe/gentgo/tetsuki/GameBaseActivity$21;->this$0:Lbe/gentgo/tetsuki/GameBaseActivity;

    .line 719
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x0

    .line 722
    iget-object v0, p0, Lbe/gentgo/tetsuki/GameBaseActivity$21;->this$0:Lbe/gentgo/tetsuki/GameBaseActivity;

    iget-object v0, v0, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    iget-object v1, p0, Lbe/gentgo/tetsuki/GameBaseActivity$21;->this$0:Lbe/gentgo/tetsuki/GameBaseActivity;

    iget v1, v1, Lbe/gentgo/tetsuki/GameBaseActivity;->lastTappedMoveNr:I

    iget-object v2, p0, Lbe/gentgo/tetsuki/GameBaseActivity$21;->this$0:Lbe/gentgo/tetsuki/GameBaseActivity;

    iget-object v2, v2, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v2, v3}, Lbe/gentgo/tetsuki/Game;->getMoveNr(Z)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1, v3}, Lbe/gentgo/tetsuki/Game;->Wind(IZ)V

    .line 723
    iget-object v0, p0, Lbe/gentgo/tetsuki/GameBaseActivity$21;->this$0:Lbe/gentgo/tetsuki/GameBaseActivity;

    iget-object v1, p0, Lbe/gentgo/tetsuki/GameBaseActivity$21;->this$0:Lbe/gentgo/tetsuki/GameBaseActivity;

    iget-object v1, v1, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/GameBaseActivity;->updateGame(Lbe/gentgo/tetsuki/Game;)V

    .line 724
    return-void
.end method
