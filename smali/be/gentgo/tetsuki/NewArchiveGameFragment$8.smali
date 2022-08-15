.class Lbe/gentgo/tetsuki/NewArchiveGameFragment$8;
.super Ljava/lang/Object;
.source "NewArchiveGameFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbe/gentgo/tetsuki/NewArchiveGameFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbe/gentgo/tetsuki/NewArchiveGameFragment;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/NewArchiveGameFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/NewArchiveGameFragment$8;->this$0:Lbe/gentgo/tetsuki/NewArchiveGameFragment;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 117
    new-instance v0, Lbe/gentgo/tetsuki/Document;

    iget-object v1, p0, Lbe/gentgo/tetsuki/NewArchiveGameFragment$8;->this$0:Lbe/gentgo/tetsuki/NewArchiveGameFragment;

    iget-object v1, v1, Lbe/gentgo/tetsuki/NewArchiveGameFragment;->gameSettings:Lbe/gentgo/tetsuki/GameSettings;

    invoke-direct {v0, v1}, Lbe/gentgo/tetsuki/Document;-><init>(Lbe/gentgo/tetsuki/GameSettings;)V

    .line 118
    iget-object v0, p0, Lbe/gentgo/tetsuki/NewArchiveGameFragment$8;->this$0:Lbe/gentgo/tetsuki/NewArchiveGameFragment;

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/NewArchiveGameFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 119
    return-void
.end method
