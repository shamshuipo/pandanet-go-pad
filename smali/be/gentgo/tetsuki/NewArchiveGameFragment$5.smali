.class Lbe/gentgo/tetsuki/NewArchiveGameFragment$5;
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
    iput-object p1, p0, Lbe/gentgo/tetsuki/NewArchiveGameFragment$5;->this$0:Lbe/gentgo/tetsuki/NewArchiveGameFragment;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lkankan/wheel/widget/WheelView;II)V
    .locals 3
    .param p1, "wheel"    # Lkankan/wheel/widget/WheelView;
    .param p2, "oldValue"    # I
    .param p3, "newValue"    # I

    .prologue
    .line 92
    add-int/lit8 v1, p3, -0xf

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v0, v1, v2

    .line 93
    .local v0, "komi":F
    iget-object v1, p0, Lbe/gentgo/tetsuki/NewArchiveGameFragment$5;->this$0:Lbe/gentgo/tetsuki/NewArchiveGameFragment;

    iget-object v1, v1, Lbe/gentgo/tetsuki/NewArchiveGameFragment;->gameSettings:Lbe/gentgo/tetsuki/GameSettings;

    invoke-virtual {v1, v0}, Lbe/gentgo/tetsuki/GameSettings;->setKomi(F)V

    .line 94
    iget-object v1, p0, Lbe/gentgo/tetsuki/NewArchiveGameFragment$5;->this$0:Lbe/gentgo/tetsuki/NewArchiveGameFragment;

    iget-object v1, v1, Lbe/gentgo/tetsuki/NewArchiveGameFragment;->listObserver:Landroid/database/DataSetObserver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbe/gentgo/tetsuki/NewArchiveGameFragment$5;->this$0:Lbe/gentgo/tetsuki/NewArchiveGameFragment;

    iget-object v1, v1, Lbe/gentgo/tetsuki/NewArchiveGameFragment;->listObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v1}, Landroid/database/DataSetObserver;->onChanged()V

    .line 95
    :cond_0
    return-void
.end method
