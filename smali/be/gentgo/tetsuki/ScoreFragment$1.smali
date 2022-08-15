.class Lbe/gentgo/tetsuki/ScoreFragment$1;
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
    iput-object p1, p0, Lbe/gentgo/tetsuki/ScoreFragment$1;->this$0:Lbe/gentgo/tetsuki/ScoreFragment;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 32
    iget-object v0, p0, Lbe/gentgo/tetsuki/ScoreFragment$1;->this$0:Lbe/gentgo/tetsuki/ScoreFragment;

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/ScoreFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 33
    return-void
.end method
