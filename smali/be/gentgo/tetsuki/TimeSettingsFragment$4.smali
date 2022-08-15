.class Lbe/gentgo/tetsuki/TimeSettingsFragment$4;
.super Ljava/lang/Object;
.source "TimeSettingsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbe/gentgo/tetsuki/TimeSettingsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lbe/gentgo/tetsuki/TimeSettingsFragment;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/TimeSettingsFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment$4;->this$0:Lbe/gentgo/tetsuki/TimeSettingsFragment;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/16 v4, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 66
    iget-object v3, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment$4;->this$0:Lbe/gentgo/tetsuki/TimeSettingsFragment;

    invoke-virtual {v3}, Lbe/gentgo/tetsuki/TimeSettingsFragment;->getView()Landroid/view/View;

    move-result-object v3

    const v5, 0x7f0b00d7

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 67
    if-nez p3, :cond_1

    move v0, v1

    .line 68
    .local v0, "v":Z
    :goto_0
    iget-object v3, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment$4;->this$0:Lbe/gentgo/tetsuki/TimeSettingsFragment;

    iget-object v5, v3, Lbe/gentgo/tetsuki/TimeSettingsFragment;->typeWheel:Lkankan/wheel/widget/WheelView;

    if-eqz v0, :cond_2

    move v3, v2

    :goto_1
    invoke-virtual {v5, v3}, Lkankan/wheel/widget/WheelView;->setVisibility(I)V

    .line 69
    if-eq p3, v7, :cond_3

    .line 70
    if-ne p3, v6, :cond_0

    iget-object v3, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment$4;->this$0:Lbe/gentgo/tetsuki/TimeSettingsFragment;

    invoke-static {v3}, Lbe/gentgo/tetsuki/TimeSettingsFragment;->access$0(Lbe/gentgo/tetsuki/TimeSettingsFragment;)Lbe/gentgo/tetsuki/GameTimeSettings;

    move-result-object v3

    invoke-virtual {v3}, Lbe/gentgo/tetsuki/GameTimeSettings;->isJapaneseExtraTime()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_0
    move v0, v2

    .line 71
    :goto_2
    iget-object v3, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment$4;->this$0:Lbe/gentgo/tetsuki/TimeSettingsFragment;

    iget-object v5, v3, Lbe/gentgo/tetsuki/TimeSettingsFragment;->countWheel:Lkankan/wheel/widget/WheelView;

    if-eqz v0, :cond_4

    move v3, v2

    :goto_3
    invoke-virtual {v5, v3}, Lkankan/wheel/widget/WheelView;->setVisibility(I)V

    .line 72
    if-ne p3, v1, :cond_5

    move v0, v1

    .line 73
    :goto_4
    iget-object v3, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment$4;->this$0:Lbe/gentgo/tetsuki/TimeSettingsFragment;

    iget-object v5, v3, Lbe/gentgo/tetsuki/TimeSettingsFragment;->hoursWheel:Lkankan/wheel/widget/WheelView;

    if-eqz v0, :cond_6

    move v3, v2

    :goto_5
    invoke-virtual {v5, v3}, Lkankan/wheel/widget/WheelView;->setVisibility(I)V

    .line 74
    if-eq p3, v7, :cond_7

    .line 75
    if-eq p3, v6, :cond_7

    .line 76
    if-eq p3, v1, :cond_7

    move v0, v2

    .line 77
    :goto_6
    iget-object v3, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment$4;->this$0:Lbe/gentgo/tetsuki/TimeSettingsFragment;

    iget-object v5, v3, Lbe/gentgo/tetsuki/TimeSettingsFragment;->minutesWheel:Lkankan/wheel/widget/WheelView;

    if-eqz v0, :cond_8

    move v3, v2

    :goto_7
    invoke-virtual {v5, v3}, Lkankan/wheel/widget/WheelView;->setVisibility(I)V

    .line 78
    if-le p3, v1, :cond_9

    move v0, v1

    .line 79
    :goto_8
    iget-object v3, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment$4;->this$0:Lbe/gentgo/tetsuki/TimeSettingsFragment;

    iget-object v5, v3, Lbe/gentgo/tetsuki/TimeSettingsFragment;->secondsWheel:Lkankan/wheel/widget/WheelView;

    if-eqz v0, :cond_a

    move v3, v2

    :goto_9
    invoke-virtual {v5, v3}, Lkankan/wheel/widget/WheelView;->setVisibility(I)V

    .line 80
    if-ne p3, v6, :cond_b

    iget-object v3, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment$4;->this$0:Lbe/gentgo/tetsuki/TimeSettingsFragment;

    invoke-static {v3}, Lbe/gentgo/tetsuki/TimeSettingsFragment;->access$0(Lbe/gentgo/tetsuki/TimeSettingsFragment;)Lbe/gentgo/tetsuki/GameTimeSettings;

    move-result-object v3

    invoke-virtual {v3}, Lbe/gentgo/tetsuki/GameTimeSettings;->isCanadianExtraTime()Z

    move-result v3

    if-eqz v3, :cond_b

    move v0, v1

    .line 81
    :goto_a
    iget-object v1, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment$4;->this$0:Lbe/gentgo/tetsuki/TimeSettingsFragment;

    iget-object v1, v1, Lbe/gentgo/tetsuki/TimeSettingsFragment;->movesWheel:Lkankan/wheel/widget/WheelView;

    if-eqz v0, :cond_c

    :goto_b
    invoke-virtual {v1, v2}, Lkankan/wheel/widget/WheelView;->setVisibility(I)V

    .line 82
    iget-object v1, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment$4;->this$0:Lbe/gentgo/tetsuki/TimeSettingsFragment;

    invoke-static {v1, p3}, Lbe/gentgo/tetsuki/TimeSettingsFragment;->access$3(Lbe/gentgo/tetsuki/TimeSettingsFragment;I)V

    .line 83
    iget-object v1, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment$4;->this$0:Lbe/gentgo/tetsuki/TimeSettingsFragment;

    invoke-static {v1}, Lbe/gentgo/tetsuki/TimeSettingsFragment;->access$2(Lbe/gentgo/tetsuki/TimeSettingsFragment;)V

    .line 84
    return-void

    .end local v0    # "v":Z
    :cond_1
    move v0, v2

    .line 67
    goto :goto_0

    .restart local v0    # "v":Z
    :cond_2
    move v3, v4

    .line 68
    goto :goto_1

    :cond_3
    move v0, v1

    .line 69
    goto :goto_2

    :cond_4
    move v3, v4

    .line 71
    goto :goto_3

    :cond_5
    move v0, v2

    .line 72
    goto :goto_4

    :cond_6
    move v3, v4

    .line 73
    goto :goto_5

    :cond_7
    move v0, v1

    .line 74
    goto :goto_6

    :cond_8
    move v3, v4

    .line 77
    goto :goto_7

    :cond_9
    move v0, v2

    .line 78
    goto :goto_8

    :cond_a
    move v3, v4

    .line 79
    goto :goto_9

    :cond_b
    move v0, v2

    .line 80
    goto :goto_a

    :cond_c
    move v2, v4

    .line 81
    goto :goto_b
.end method
