.class Lbe/gentgo/tetsuki/GameBaseActivity$2;
.super Ljava/lang/Object;
.source "GameBaseActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    iput-object p1, p0, Lbe/gentgo/tetsuki/GameBaseActivity$2;->this$0:Lbe/gentgo/tetsuki/GameBaseActivity;

    .line 904
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 906
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 908
    iget-object v0, p0, Lbe/gentgo/tetsuki/GameBaseActivity$2;->this$0:Lbe/gentgo/tetsuki/GameBaseActivity;

    const v1, 0x7f0b0049

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/GameBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lbe/gentgo/tetsuki/GameBaseActivity$2;->this$0:Lbe/gentgo/tetsuki/GameBaseActivity;

    invoke-static {v0}, Lbe/gentgo/tetsuki/GameBaseActivity;->access$1(Lbe/gentgo/tetsuki/GameBaseActivity;)Lbe/gentgo/tetsuki/GameBaseActivity$Winder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/GameBaseActivity$Winder;->start(Z)V

    .line 909
    :cond_0
    iget-object v0, p0, Lbe/gentgo/tetsuki/GameBaseActivity$2;->this$0:Lbe/gentgo/tetsuki/GameBaseActivity;

    const v1, 0x7f0b0054

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/GameBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lbe/gentgo/tetsuki/GameBaseActivity$2;->this$0:Lbe/gentgo/tetsuki/GameBaseActivity;

    invoke-static {v0}, Lbe/gentgo/tetsuki/GameBaseActivity;->access$1(Lbe/gentgo/tetsuki/GameBaseActivity;)Lbe/gentgo/tetsuki/GameBaseActivity$Winder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lbe/gentgo/tetsuki/GameBaseActivity$Winder;->start(Z)V

    .line 917
    :cond_1
    :goto_0
    return v2

    .line 912
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 914
    :cond_3
    iget-object v0, p0, Lbe/gentgo/tetsuki/GameBaseActivity$2;->this$0:Lbe/gentgo/tetsuki/GameBaseActivity;

    invoke-static {v0}, Lbe/gentgo/tetsuki/GameBaseActivity;->access$1(Lbe/gentgo/tetsuki/GameBaseActivity;)Lbe/gentgo/tetsuki/GameBaseActivity$Winder;

    move-result-object v0

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/GameBaseActivity$Winder;->stop()V

    goto :goto_0
.end method
