.class Lbe/gentgo/tetsuki/ScoreFragment$5;
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
    iput-object p1, p0, Lbe/gentgo/tetsuki/ScoreFragment$5;->this$0:Lbe/gentgo/tetsuki/ScoreFragment;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lbe/gentgo/tetsuki/ScoreFragment$5;)Lbe/gentgo/tetsuki/ScoreFragment;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lbe/gentgo/tetsuki/ScoreFragment$5;->this$0:Lbe/gentgo/tetsuki/ScoreFragment;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v9, 0x9

    const/4 v8, 0x0

    .line 67
    iget-object v4, p0, Lbe/gentgo/tetsuki/ScoreFragment$5;->this$0:Lbe/gentgo/tetsuki/ScoreFragment;

    iget-object v4, v4, Lbe/gentgo/tetsuki/ScoreFragment;->gameActivity:Lbe/gentgo/tetsuki/GameBaseActivity;

    iget-object v1, v4, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    .line 68
    .local v1, "game":Lbe/gentgo/tetsuki/Game;
    if-nez v1, :cond_1

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    invoke-virtual {v1, v8}, Lbe/gentgo/tetsuki/Game;->getLastMoveNr(Z)I

    move-result v4

    if-nez v4, :cond_0

    .line 70
    invoke-virtual {v1}, Lbe/gentgo/tetsuki/Game;->getGameSettings()Lbe/gentgo/tetsuki/GameSettings;

    move-result-object v4

    invoke-virtual {v4}, Lbe/gentgo/tetsuki/GameSettings;->blackCanChooseHandicap()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 71
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lbe/gentgo/tetsuki/ScoreFragment$5;->this$0:Lbe/gentgo/tetsuki/ScoreFragment;

    invoke-virtual {v4}, Lbe/gentgo/tetsuki/ScoreFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 72
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v4, p0, Lbe/gentgo/tetsuki/ScoreFragment$5;->this$0:Lbe/gentgo/tetsuki/ScoreFragment;

    const v5, 0x7f08006d

    invoke-virtual {v4, v5}, Lbe/gentgo/tetsuki/ScoreFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 73
    new-array v3, v9, [Ljava/lang/CharSequence;

    .line 74
    .local v3, "options":[Ljava/lang/CharSequence;
    iget-object v4, p0, Lbe/gentgo/tetsuki/ScoreFragment$5;->this$0:Lbe/gentgo/tetsuki/ScoreFragment;

    const v5, 0x7f080074

    invoke-virtual {v4, v5}, Lbe/gentgo/tetsuki/ScoreFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    .line 75
    const/4 v2, 0x2

    .local v2, "h":I
    :goto_1
    if-le v2, v9, :cond_2

    .line 76
    new-instance v4, Lbe/gentgo/tetsuki/ScoreFragment$5$1;

    invoke-direct {v4, p0}, Lbe/gentgo/tetsuki/ScoreFragment$5$1;-><init>(Lbe/gentgo/tetsuki/ScoreFragment$5;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 83
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 75
    :cond_2
    add-int/lit8 v4, v2, -0x1

    iget-object v5, p0, Lbe/gentgo/tetsuki/ScoreFragment$5;->this$0:Lbe/gentgo/tetsuki/ScoreFragment;

    const v6, 0x7f080075

    invoke-virtual {v5, v6}, Lbe/gentgo/tetsuki/ScoreFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
