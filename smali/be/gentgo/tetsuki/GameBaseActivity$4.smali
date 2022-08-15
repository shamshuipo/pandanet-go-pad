.class Lbe/gentgo/tetsuki/GameBaseActivity$4;
.super Ljava/lang/Object;
.source "GameBaseActivity.java"

# interfaces
.implements Lbe/gentgo/tetsuki/TapListener;


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
    iput-object p1, p0, Lbe/gentgo/tetsuki/GameBaseActivity$4;->this$0:Lbe/gentgo/tetsuki/GameBaseActivity;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTap(Lbe/gentgo/tetsuki/Position;Z)V
    .locals 1
    .param p1, "pos"    # Lbe/gentgo/tetsuki/Position;
    .param p2, "accurate"    # Z

    .prologue
    .line 48
    iget-object v0, p0, Lbe/gentgo/tetsuki/GameBaseActivity$4;->this$0:Lbe/gentgo/tetsuki/GameBaseActivity;

    invoke-virtual {v0, p1, p2}, Lbe/gentgo/tetsuki/GameBaseActivity;->onGobanTapped(Lbe/gentgo/tetsuki/Position;Z)V

    return-void
.end method
