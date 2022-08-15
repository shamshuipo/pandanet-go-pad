.class Lbe/gentgo/tetsuki/ScoreFragment$7;
.super Ljava/lang/Object;
.source "ScoreFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbe/gentgo/tetsuki/ScoreFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbe/gentgo/tetsuki/ScoreFragment;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/ScoreFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/ScoreFragment$7;->this$0:Lbe/gentgo/tetsuki/ScoreFragment;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 102
    iget-object v1, p0, Lbe/gentgo/tetsuki/ScoreFragment$7;->this$0:Lbe/gentgo/tetsuki/ScoreFragment;

    iget-object v1, v1, Lbe/gentgo/tetsuki/ScoreFragment;->gameActivity:Lbe/gentgo/tetsuki/GameBaseActivity;

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/GameBaseActivity;->getDocument()Lbe/gentgo/tetsuki/Document;

    move-result-object v0

    .line 103
    .local v0, "doc":Lbe/gentgo/tetsuki/Document;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/Document;->setReadOnly(Z)V

    .line 104
    :cond_0
    iget-object v1, p0, Lbe/gentgo/tetsuki/ScoreFragment$7;->this$0:Lbe/gentgo/tetsuki/ScoreFragment;

    invoke-static {v1}, Lbe/gentgo/tetsuki/ScoreFragment;->access$0(Lbe/gentgo/tetsuki/ScoreFragment;)V

    .line 105
    return-void
.end method
