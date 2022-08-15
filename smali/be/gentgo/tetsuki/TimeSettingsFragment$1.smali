.class Lbe/gentgo/tetsuki/TimeSettingsFragment$1;
.super Ljava/lang/Object;
.source "TimeSettingsFragment.java"

# interfaces
.implements Lkankan/wheel/widget/OnWheelChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbe/gentgo/tetsuki/TimeSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbe/gentgo/tetsuki/TimeSettingsFragment;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/TimeSettingsFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment$1;->this$0:Lbe/gentgo/tetsuki/TimeSettingsFragment;

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lkankan/wheel/widget/WheelView;II)V
    .locals 12
    .param p1, "wheel"    # Lkankan/wheel/widget/WheelView;
    .param p2, "oldValue"    # I
    .param p3, "newvalue"    # I

    .prologue
    .line 176
    iget-object v8, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment$1;->this$0:Lbe/gentgo/tetsuki/TimeSettingsFragment;

    iget-boolean v8, v8, Lbe/gentgo/tetsuki/TimeSettingsFragment;->updatingWheels:Z

    if-eqz v8, :cond_1

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    iget-object v8, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment$1;->this$0:Lbe/gentgo/tetsuki/TimeSettingsFragment;

    iget-object v8, v8, Lbe/gentgo/tetsuki/TimeSettingsFragment;->typeWheel:Lkankan/wheel/widget/WheelView;

    if-ne p1, v8, :cond_6

    .line 178
    iget-object v8, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment$1;->this$0:Lbe/gentgo/tetsuki/TimeSettingsFragment;

    invoke-static {v8}, Lbe/gentgo/tetsuki/TimeSettingsFragment;->access$0(Lbe/gentgo/tetsuki/TimeSettingsFragment;)Lbe/gentgo/tetsuki/GameTimeSettings;

    move-result-object v8

    invoke-virtual {v8}, Lbe/gentgo/tetsuki/GameTimeSettings;->getInitialTime()I

    move-result v2

    .line 179
    .local v2, "fixed":I
    if-nez p3, :cond_3

    .line 181
    iget-object v8, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment$1;->this$0:Lbe/gentgo/tetsuki/TimeSettingsFragment;

    invoke-static {v8}, Lbe/gentgo/tetsuki/TimeSettingsFragment;->access$0(Lbe/gentgo/tetsuki/TimeSettingsFragment;)Lbe/gentgo/tetsuki/GameTimeSettings;

    move-result-object v8

    invoke-virtual {v8}, Lbe/gentgo/tetsuki/GameTimeSettings;->hasExtraTime()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 182
    const/16 v8, 0x12c

    if-ge v2, v8, :cond_2

    const/16 v2, 0x12c

    .line 183
    :cond_2
    iget-object v8, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment$1;->this$0:Lbe/gentgo/tetsuki/TimeSettingsFragment;

    invoke-static {v8}, Lbe/gentgo/tetsuki/TimeSettingsFragment;->access$0(Lbe/gentgo/tetsuki/TimeSettingsFragment;)Lbe/gentgo/tetsuki/GameTimeSettings;

    move-result-object v8

    invoke-virtual {v8, v2}, Lbe/gentgo/tetsuki/GameTimeSettings;->setAsSuddenDeath(I)V

    .line 185
    :cond_3
    const/4 v8, 0x1

    if-ne p3, v8, :cond_4

    .line 186
    iget-object v8, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment$1;->this$0:Lbe/gentgo/tetsuki/TimeSettingsFragment;

    invoke-static {v8}, Lbe/gentgo/tetsuki/TimeSettingsFragment;->access$0(Lbe/gentgo/tetsuki/TimeSettingsFragment;)Lbe/gentgo/tetsuki/GameTimeSettings;

    move-result-object v8

    invoke-virtual {v8}, Lbe/gentgo/tetsuki/GameTimeSettings;->isCanadianExtraTime()Z

    move-result v8

    if-nez v8, :cond_0

    .line 187
    iget-object v8, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment$1;->this$0:Lbe/gentgo/tetsuki/TimeSettingsFragment;

    invoke-static {v8}, Lbe/gentgo/tetsuki/TimeSettingsFragment;->access$0(Lbe/gentgo/tetsuki/TimeSettingsFragment;)Lbe/gentgo/tetsuki/GameTimeSettings;

    move-result-object v8

    const/16 v9, 0x258

    const/16 v10, 0x19

    invoke-virtual {v8, v2, v9, v10}, Lbe/gentgo/tetsuki/GameTimeSettings;->setAsCanadianExtraTime(III)V

    .line 189
    :cond_4
    const/4 v8, 0x2

    if-ne p3, v8, :cond_5

    .line 190
    iget-object v8, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment$1;->this$0:Lbe/gentgo/tetsuki/TimeSettingsFragment;

    invoke-static {v8}, Lbe/gentgo/tetsuki/TimeSettingsFragment;->access$0(Lbe/gentgo/tetsuki/TimeSettingsFragment;)Lbe/gentgo/tetsuki/GameTimeSettings;

    move-result-object v8

    invoke-virtual {v8}, Lbe/gentgo/tetsuki/GameTimeSettings;->isJapaneseExtraTime()Z

    move-result v8

    if-nez v8, :cond_0

    .line 191
    iget-object v8, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment$1;->this$0:Lbe/gentgo/tetsuki/TimeSettingsFragment;

    invoke-static {v8}, Lbe/gentgo/tetsuki/TimeSettingsFragment;->access$0(Lbe/gentgo/tetsuki/TimeSettingsFragment;)Lbe/gentgo/tetsuki/GameTimeSettings;

    move-result-object v8

    const/16 v9, 0x3c

    const/4 v10, 0x5

    invoke-virtual {v8, v2, v9, v10}, Lbe/gentgo/tetsuki/GameTimeSettings;->setAsJapaneseExtraTime(III)V

    .line 193
    :cond_5
    const/4 v8, 0x3

    if-ne p3, v8, :cond_6

    .line 194
    iget-object v8, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment$1;->this$0:Lbe/gentgo/tetsuki/TimeSettingsFragment;

    invoke-static {v8}, Lbe/gentgo/tetsuki/TimeSettingsFragment;->access$0(Lbe/gentgo/tetsuki/TimeSettingsFragment;)Lbe/gentgo/tetsuki/GameTimeSettings;

    move-result-object v8

    invoke-virtual {v8}, Lbe/gentgo/tetsuki/GameTimeSettings;->isKouryoExtraTime()Z

    move-result v8

    if-nez v8, :cond_0

    .line 195
    iget-object v8, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment$1;->this$0:Lbe/gentgo/tetsuki/TimeSettingsFragment;

    invoke-static {v8}, Lbe/gentgo/tetsuki/TimeSettingsFragment;->access$0(Lbe/gentgo/tetsuki/TimeSettingsFragment;)Lbe/gentgo/tetsuki/GameTimeSettings;

    move-result-object v8

    const/16 v9, 0x1e

    const/16 v10, 0x3c

    const/4 v11, 0x5

    invoke-virtual {v8, v2, v9, v10, v11}, Lbe/gentgo/tetsuki/GameTimeSettings;->setAsKouryoExtraTime(IIII)V

    .line 198
    .end local v2    # "fixed":I
    :cond_6
    iget-object v8, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment$1;->this$0:Lbe/gentgo/tetsuki/TimeSettingsFragment;

    invoke-static {v8}, Lbe/gentgo/tetsuki/TimeSettingsFragment;->access$1(Lbe/gentgo/tetsuki/TimeSettingsFragment;)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_7

    .line 200
    iget-object v8, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment$1;->this$0:Lbe/gentgo/tetsuki/TimeSettingsFragment;

    iget-object v8, v8, Lbe/gentgo/tetsuki/TimeSettingsFragment;->hoursWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v8}, Lkankan/wheel/widget/WheelView;->getCurrentItem()I

    move-result v8

    mul-int/lit16 v8, v8, 0xe10

    .line 201
    iget-object v9, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment$1;->this$0:Lbe/gentgo/tetsuki/TimeSettingsFragment;

    iget-object v9, v9, Lbe/gentgo/tetsuki/TimeSettingsFragment;->minutesWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v9}, Lkankan/wheel/widget/WheelView;->getCurrentItem()I

    move-result v9

    mul-int/lit8 v9, v9, 0x3c

    .line 200
    add-int v3, v8, v9

    .line 202
    .local v3, "fixedTime":I
    iget-object v8, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment$1;->this$0:Lbe/gentgo/tetsuki/TimeSettingsFragment;

    invoke-static {v8}, Lbe/gentgo/tetsuki/TimeSettingsFragment;->access$0(Lbe/gentgo/tetsuki/TimeSettingsFragment;)Lbe/gentgo/tetsuki/GameTimeSettings;

    move-result-object v8

    invoke-virtual {v8, v3}, Lbe/gentgo/tetsuki/GameTimeSettings;->setInitialTime(I)V

    .line 204
    .end local v3    # "fixedTime":I
    :cond_7
    iget-object v8, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment$1;->this$0:Lbe/gentgo/tetsuki/TimeSettingsFragment;

    invoke-static {v8}, Lbe/gentgo/tetsuki/TimeSettingsFragment;->access$1(Lbe/gentgo/tetsuki/TimeSettingsFragment;)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_b

    .line 206
    iget-object v8, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment$1;->this$0:Lbe/gentgo/tetsuki/TimeSettingsFragment;

    invoke-static {v8}, Lbe/gentgo/tetsuki/TimeSettingsFragment;->access$0(Lbe/gentgo/tetsuki/TimeSettingsFragment;)Lbe/gentgo/tetsuki/GameTimeSettings;

    move-result-object v8

    invoke-virtual {v8}, Lbe/gentgo/tetsuki/GameTimeSettings;->getInitialTime()I

    move-result v3

    .line 207
    .restart local v3    # "fixedTime":I
    iget-object v8, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment$1;->this$0:Lbe/gentgo/tetsuki/TimeSettingsFragment;

    invoke-static {v8}, Lbe/gentgo/tetsuki/TimeSettingsFragment;->access$0(Lbe/gentgo/tetsuki/TimeSettingsFragment;)Lbe/gentgo/tetsuki/GameTimeSettings;

    move-result-object v8

    invoke-virtual {v8}, Lbe/gentgo/tetsuki/GameTimeSettings;->isCanadianExtraTime()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 209
    iget-object v8, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment$1;->this$0:Lbe/gentgo/tetsuki/TimeSettingsFragment;

    iget-object v8, v8, Lbe/gentgo/tetsuki/TimeSettingsFragment;->minutesWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v8}, Lkankan/wheel/widget/WheelView;->getCurrentItem()I

    move-result v8

    mul-int/lit8 v8, v8, 0x3c

    iget-object v9, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment$1;->this$0:Lbe/gentgo/tetsuki/TimeSettingsFragment;

    iget-object v9, v9, Lbe/gentgo/tetsuki/TimeSettingsFragment;->secondsWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v9}, Lkankan/wheel/widget/WheelView;->getCurrentItem()I

    move-result v9

    add-int v1, v8, v9

    .line 210
    .local v1, "extraTime":I
    iget-object v8, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment$1;->this$0:Lbe/gentgo/tetsuki/TimeSettingsFragment;

    iget-object v8, v8, Lbe/gentgo/tetsuki/TimeSettingsFragment;->movesWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v8}, Lkankan/wheel/widget/WheelView;->getCurrentItem()I

    move-result v8

    add-int/lit8 v7, v8, 0x1

    .line 211
    .local v7, "stones":I
    iget-object v8, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment$1;->this$0:Lbe/gentgo/tetsuki/TimeSettingsFragment;

    invoke-static {v8}, Lbe/gentgo/tetsuki/TimeSettingsFragment;->access$0(Lbe/gentgo/tetsuki/TimeSettingsFragment;)Lbe/gentgo/tetsuki/GameTimeSettings;

    move-result-object v8

    invoke-virtual {v8, v3, v1, v7}, Lbe/gentgo/tetsuki/GameTimeSettings;->setAsCanadianExtraTime(III)V

    .line 213
    .end local v1    # "extraTime":I
    .end local v7    # "stones":I
    :cond_8
    iget-object v8, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment$1;->this$0:Lbe/gentgo/tetsuki/TimeSettingsFragment;

    invoke-static {v8}, Lbe/gentgo/tetsuki/TimeSettingsFragment;->access$0(Lbe/gentgo/tetsuki/TimeSettingsFragment;)Lbe/gentgo/tetsuki/GameTimeSettings;

    move-result-object v8

    invoke-virtual {v8}, Lbe/gentgo/tetsuki/GameTimeSettings;->isJapaneseExtraTime()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 215
    iget-object v8, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment$1;->this$0:Lbe/gentgo/tetsuki/TimeSettingsFragment;

    iget-object v8, v8, Lbe/gentgo/tetsuki/TimeSettingsFragment;->minutesWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v8}, Lkankan/wheel/widget/WheelView;->getCurrentItem()I

    move-result v8

    mul-int/lit8 v8, v8, 0x3c

    iget-object v9, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment$1;->this$0:Lbe/gentgo/tetsuki/TimeSettingsFragment;

    iget-object v9, v9, Lbe/gentgo/tetsuki/TimeSettingsFragment;->secondsWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v9}, Lkankan/wheel/widget/WheelView;->getCurrentItem()I

    move-result v9

    add-int v1, v8, v9

    .line 216
    .restart local v1    # "extraTime":I
    iget-object v8, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment$1;->this$0:Lbe/gentgo/tetsuki/TimeSettingsFragment;

    iget-object v8, v8, Lbe/gentgo/tetsuki/TimeSettingsFragment;->countWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v8}, Lkankan/wheel/widget/WheelView;->getCurrentItem()I

    move-result v8

    add-int/lit8 v6, v8, 0x1

    .line 217
    .local v6, "periods":I
    iget-object v8, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment$1;->this$0:Lbe/gentgo/tetsuki/TimeSettingsFragment;

    invoke-static {v8}, Lbe/gentgo/tetsuki/TimeSettingsFragment;->access$0(Lbe/gentgo/tetsuki/TimeSettingsFragment;)Lbe/gentgo/tetsuki/GameTimeSettings;

    move-result-object v8

    invoke-virtual {v8, v3, v1, v6}, Lbe/gentgo/tetsuki/GameTimeSettings;->setAsJapaneseExtraTime(III)V

    .line 219
    .end local v1    # "extraTime":I
    .end local v6    # "periods":I
    :cond_9
    iget-object v8, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment$1;->this$0:Lbe/gentgo/tetsuki/TimeSettingsFragment;

    invoke-static {v8}, Lbe/gentgo/tetsuki/TimeSettingsFragment;->access$0(Lbe/gentgo/tetsuki/TimeSettingsFragment;)Lbe/gentgo/tetsuki/GameTimeSettings;

    move-result-object v8

    invoke-virtual {v8}, Lbe/gentgo/tetsuki/GameTimeSettings;->isKouryoExtraTime()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 221
    iget-object v8, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment$1;->this$0:Lbe/gentgo/tetsuki/TimeSettingsFragment;

    iget-object v8, v8, Lbe/gentgo/tetsuki/TimeSettingsFragment;->minutesWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v8}, Lkankan/wheel/widget/WheelView;->getCurrentItem()I

    move-result v8

    mul-int/lit8 v8, v8, 0x3c

    iget-object v9, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment$1;->this$0:Lbe/gentgo/tetsuki/TimeSettingsFragment;

    iget-object v9, v9, Lbe/gentgo/tetsuki/TimeSettingsFragment;->secondsWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v9}, Lkankan/wheel/widget/WheelView;->getCurrentItem()I

    move-result v9

    add-int v1, v8, v9

    .line 222
    .restart local v1    # "extraTime":I
    if-nez v1, :cond_a

    const/4 v1, 0x1

    .line 223
    :cond_a
    iget-object v8, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment$1;->this$0:Lbe/gentgo/tetsuki/TimeSettingsFragment;

    invoke-static {v8}, Lbe/gentgo/tetsuki/TimeSettingsFragment;->access$0(Lbe/gentgo/tetsuki/TimeSettingsFragment;)Lbe/gentgo/tetsuki/GameTimeSettings;

    move-result-object v8

    invoke-virtual {v8}, Lbe/gentgo/tetsuki/GameTimeSettings;->getPeriod()I

    move-result v5

    .line 224
    .local v5, "period":I
    iget-object v8, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment$1;->this$0:Lbe/gentgo/tetsuki/TimeSettingsFragment;

    invoke-static {v8}, Lbe/gentgo/tetsuki/TimeSettingsFragment;->access$0(Lbe/gentgo/tetsuki/TimeSettingsFragment;)Lbe/gentgo/tetsuki/GameTimeSettings;

    move-result-object v8

    invoke-virtual {v8}, Lbe/gentgo/tetsuki/GameTimeSettings;->getNrOfPeriods()I

    move-result v0

    .line 225
    .local v0, "count":I
    iget-object v8, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment$1;->this$0:Lbe/gentgo/tetsuki/TimeSettingsFragment;

    invoke-static {v8}, Lbe/gentgo/tetsuki/TimeSettingsFragment;->access$0(Lbe/gentgo/tetsuki/TimeSettingsFragment;)Lbe/gentgo/tetsuki/GameTimeSettings;

    move-result-object v8

    invoke-virtual {v8, v3, v1, v5, v0}, Lbe/gentgo/tetsuki/GameTimeSettings;->setAsKouryoExtraTime(IIII)V

    .line 228
    .end local v0    # "count":I
    .end local v1    # "extraTime":I
    .end local v3    # "fixedTime":I
    .end local v5    # "period":I
    :cond_b
    iget-object v8, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment$1;->this$0:Lbe/gentgo/tetsuki/TimeSettingsFragment;

    invoke-static {v8}, Lbe/gentgo/tetsuki/TimeSettingsFragment;->access$1(Lbe/gentgo/tetsuki/TimeSettingsFragment;)I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_c

    .line 230
    iget-object v8, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment$1;->this$0:Lbe/gentgo/tetsuki/TimeSettingsFragment;

    invoke-static {v8}, Lbe/gentgo/tetsuki/TimeSettingsFragment;->access$0(Lbe/gentgo/tetsuki/TimeSettingsFragment;)Lbe/gentgo/tetsuki/GameTimeSettings;

    move-result-object v8

    invoke-virtual {v8}, Lbe/gentgo/tetsuki/GameTimeSettings;->getInitialTime()I

    move-result v3

    .line 231
    .restart local v3    # "fixedTime":I
    iget-object v8, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment$1;->this$0:Lbe/gentgo/tetsuki/TimeSettingsFragment;

    iget-object v8, v8, Lbe/gentgo/tetsuki/TimeSettingsFragment;->minutesWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v8}, Lkankan/wheel/widget/WheelView;->getCurrentItem()I

    move-result v8

    mul-int/lit8 v8, v8, 0x3c

    iget-object v9, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment$1;->this$0:Lbe/gentgo/tetsuki/TimeSettingsFragment;

    iget-object v9, v9, Lbe/gentgo/tetsuki/TimeSettingsFragment;->secondsWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v9}, Lkankan/wheel/widget/WheelView;->getCurrentItem()I

    move-result v9

    add-int v5, v8, v9

    .line 232
    .restart local v5    # "period":I
    iget-object v8, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment$1;->this$0:Lbe/gentgo/tetsuki/TimeSettingsFragment;

    iget-object v8, v8, Lbe/gentgo/tetsuki/TimeSettingsFragment;->countWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v8}, Lkankan/wheel/widget/WheelView;->getCurrentItem()I

    move-result v8

    add-int/lit8 v0, v8, 0x1

    .line 233
    .restart local v0    # "count":I
    iget-object v8, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment$1;->this$0:Lbe/gentgo/tetsuki/TimeSettingsFragment;

    invoke-static {v8}, Lbe/gentgo/tetsuki/TimeSettingsFragment;->access$0(Lbe/gentgo/tetsuki/TimeSettingsFragment;)Lbe/gentgo/tetsuki/GameTimeSettings;

    move-result-object v8

    invoke-virtual {v8}, Lbe/gentgo/tetsuki/GameTimeSettings;->getTimePerMove()I

    move-result v4

    .line 234
    .local v4, "perMove":I
    iget-object v8, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment$1;->this$0:Lbe/gentgo/tetsuki/TimeSettingsFragment;

    invoke-static {v8}, Lbe/gentgo/tetsuki/TimeSettingsFragment;->access$0(Lbe/gentgo/tetsuki/TimeSettingsFragment;)Lbe/gentgo/tetsuki/GameTimeSettings;

    move-result-object v8

    invoke-virtual {v8, v3, v4, v5, v0}, Lbe/gentgo/tetsuki/GameTimeSettings;->setAsKouryoExtraTime(IIII)V

    .line 236
    .end local v0    # "count":I
    .end local v3    # "fixedTime":I
    .end local v4    # "perMove":I
    .end local v5    # "period":I
    :cond_c
    iget-object v8, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment$1;->this$0:Lbe/gentgo/tetsuki/TimeSettingsFragment;

    invoke-static {v8}, Lbe/gentgo/tetsuki/TimeSettingsFragment;->access$2(Lbe/gentgo/tetsuki/TimeSettingsFragment;)V

    goto/16 :goto_0
.end method
