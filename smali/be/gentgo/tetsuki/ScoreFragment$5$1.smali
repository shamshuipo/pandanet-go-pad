.class Lbe/gentgo/tetsuki/ScoreFragment$5$1;
.super Ljava/lang/Object;
.source "ScoreFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbe/gentgo/tetsuki/ScoreFragment$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lbe/gentgo/tetsuki/ScoreFragment$5;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/ScoreFragment$5;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/ScoreFragment$5$1;->this$1:Lbe/gentgo/tetsuki/ScoreFragment$5;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    .line 78
    const/4 v0, 0x0

    .line 79
    .local v0, "handicap":I
    if-lez p2, :cond_0

    add-int/lit8 v0, p2, 0x1

    .line 80
    :cond_0
    iget-object v1, p0, Lbe/gentgo/tetsuki/ScoreFragment$5$1;->this$1:Lbe/gentgo/tetsuki/ScoreFragment$5;

    invoke-static {v1}, Lbe/gentgo/tetsuki/ScoreFragment$5;->access$0(Lbe/gentgo/tetsuki/ScoreFragment$5;)Lbe/gentgo/tetsuki/ScoreFragment;

    move-result-object v1

    iget-object v1, v1, Lbe/gentgo/tetsuki/ScoreFragment;->gameActivity:Lbe/gentgo/tetsuki/GameBaseActivity;

    invoke-virtual {v1, v0}, Lbe/gentgo/tetsuki/GameBaseActivity;->chooseHandicap(I)V

    .line 81
    return-void
.end method
