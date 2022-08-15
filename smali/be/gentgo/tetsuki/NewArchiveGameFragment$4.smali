.class Lbe/gentgo/tetsuki/NewArchiveGameFragment$4;
.super Ljava/lang/Object;
.source "NewArchiveGameFragment.java"

# interfaces
.implements Lkankan/wheel/widget/OnWheelChangedListener;


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
    iput-object p1, p0, Lbe/gentgo/tetsuki/NewArchiveGameFragment$4;->this$0:Lbe/gentgo/tetsuki/NewArchiveGameFragment;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lkankan/wheel/widget/WheelView;II)V
    .locals 2
    .param p1, "wheel"    # Lkankan/wheel/widget/WheelView;
    .param p2, "oldValue"    # I
    .param p3, "newValue"    # I

    .prologue
    .line 73
    move v0, p3

    .line 74
    .local v0, "handicap":I
    if-lez v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 75
    :cond_0
    iget-object v1, p0, Lbe/gentgo/tetsuki/NewArchiveGameFragment$4;->this$0:Lbe/gentgo/tetsuki/NewArchiveGameFragment;

    iget-object v1, v1, Lbe/gentgo/tetsuki/NewArchiveGameFragment;->gameSettings:Lbe/gentgo/tetsuki/GameSettings;

    invoke-virtual {v1, v0}, Lbe/gentgo/tetsuki/GameSettings;->setNrOfHandicapStones(I)V

    .line 76
    iget-object v1, p0, Lbe/gentgo/tetsuki/NewArchiveGameFragment$4;->this$0:Lbe/gentgo/tetsuki/NewArchiveGameFragment;

    iget-object v1, v1, Lbe/gentgo/tetsuki/NewArchiveGameFragment;->listObserver:Landroid/database/DataSetObserver;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lbe/gentgo/tetsuki/NewArchiveGameFragment$4;->this$0:Lbe/gentgo/tetsuki/NewArchiveGameFragment;

    iget-object v1, v1, Lbe/gentgo/tetsuki/NewArchiveGameFragment;->listObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v1}, Landroid/database/DataSetObserver;->onChanged()V

    .line 77
    :cond_1
    return-void
.end method
