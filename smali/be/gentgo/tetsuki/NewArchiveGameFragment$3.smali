.class Lbe/gentgo/tetsuki/NewArchiveGameFragment$3;
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
    iput-object p1, p0, Lbe/gentgo/tetsuki/NewArchiveGameFragment$3;->this$0:Lbe/gentgo/tetsuki/NewArchiveGameFragment;

    .line 58
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
    .line 60
    if-nez p3, :cond_0

    iget-object v0, p0, Lbe/gentgo/tetsuki/NewArchiveGameFragment$3;->this$0:Lbe/gentgo/tetsuki/NewArchiveGameFragment;

    iget-object v0, v0, Lbe/gentgo/tetsuki/NewArchiveGameFragment;->gameSettings:Lbe/gentgo/tetsuki/GameSettings;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/GameSettings;->setSize(I)V

    .line 61
    :cond_0
    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    iget-object v0, p0, Lbe/gentgo/tetsuki/NewArchiveGameFragment$3;->this$0:Lbe/gentgo/tetsuki/NewArchiveGameFragment;

    iget-object v0, v0, Lbe/gentgo/tetsuki/NewArchiveGameFragment;->gameSettings:Lbe/gentgo/tetsuki/GameSettings;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/GameSettings;->setSize(I)V

    .line 62
    :cond_1
    const/4 v0, 0x2

    if-ne p3, v0, :cond_2

    iget-object v0, p0, Lbe/gentgo/tetsuki/NewArchiveGameFragment$3;->this$0:Lbe/gentgo/tetsuki/NewArchiveGameFragment;

    iget-object v0, v0, Lbe/gentgo/tetsuki/NewArchiveGameFragment;->gameSettings:Lbe/gentgo/tetsuki/GameSettings;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/GameSettings;->setSize(I)V

    .line 63
    :cond_2
    iget-object v0, p0, Lbe/gentgo/tetsuki/NewArchiveGameFragment$3;->this$0:Lbe/gentgo/tetsuki/NewArchiveGameFragment;

    iget-object v0, v0, Lbe/gentgo/tetsuki/NewArchiveGameFragment;->listObserver:Landroid/database/DataSetObserver;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lbe/gentgo/tetsuki/NewArchiveGameFragment$3;->this$0:Lbe/gentgo/tetsuki/NewArchiveGameFragment;

    iget-object v0, v0, Lbe/gentgo/tetsuki/NewArchiveGameFragment;->listObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 64
    :cond_3
    return-void
.end method
