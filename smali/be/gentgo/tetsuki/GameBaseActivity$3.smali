.class Lbe/gentgo/tetsuki/GameBaseActivity$3;
.super Ljava/lang/Object;
.source "GameBaseActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbe/gentgo/tetsuki/GameBaseActivity;
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
    iput-object p1, p0, Lbe/gentgo/tetsuki/GameBaseActivity$3;->this$0:Lbe/gentgo/tetsuki/GameBaseActivity;

    .line 921
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 925
    iget-object v3, p0, Lbe/gentgo/tetsuki/GameBaseActivity$3;->this$0:Lbe/gentgo/tetsuki/GameBaseActivity;

    const v4, 0x7f0b0054

    invoke-virtual {v3, v4}, Lbe/gentgo/tetsuki/GameBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-ne p1, v3, :cond_1

    move v0, v1

    .line 926
    .local v0, "forward":Z
    :goto_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x17

    if-eq v3, v4, :cond_2

    .line 936
    :cond_0
    :goto_1
    return v2

    .end local v0    # "forward":Z
    :cond_1
    move v0, v2

    .line 925
    goto :goto_0

    .line 927
    .restart local v0    # "forward":Z
    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_3

    .line 928
    iget-object v2, p0, Lbe/gentgo/tetsuki/GameBaseActivity$3;->this$0:Lbe/gentgo/tetsuki/GameBaseActivity;

    invoke-static {v2}, Lbe/gentgo/tetsuki/GameBaseActivity;->access$1(Lbe/gentgo/tetsuki/GameBaseActivity;)Lbe/gentgo/tetsuki/GameBaseActivity$Winder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lbe/gentgo/tetsuki/GameBaseActivity$Winder;->start(Z)V

    .line 929
    invoke-virtual {p3}, Landroid/view/KeyEvent;->startTracking()V

    move v2, v1

    .line 930
    goto :goto_1

    .line 932
    :cond_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v1, :cond_0

    .line 933
    iget-object v2, p0, Lbe/gentgo/tetsuki/GameBaseActivity$3;->this$0:Lbe/gentgo/tetsuki/GameBaseActivity;

    invoke-static {v2}, Lbe/gentgo/tetsuki/GameBaseActivity;->access$1(Lbe/gentgo/tetsuki/GameBaseActivity;)Lbe/gentgo/tetsuki/GameBaseActivity$Winder;

    move-result-object v2

    invoke-virtual {v2}, Lbe/gentgo/tetsuki/GameBaseActivity$Winder;->stop()V

    move v2, v1

    .line 934
    goto :goto_1
.end method
