.class Lbe/gentgo/tetsuki/TimeSettingsFragment$2;
.super Ljava/lang/Object;
.source "TimeSettingsFragment.java"

# interfaces
.implements Landroid/widget/ListAdapter;


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
    iput-object p1, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment$2;->this$0:Lbe/gentgo/tetsuki/TimeSettingsFragment;

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 358
    const/4 v0, 0x1

    return v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    const/4 v0, 0x3

    .line 245
    iget-object v1, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment$2;->this$0:Lbe/gentgo/tetsuki/TimeSettingsFragment;

    invoke-static {v1}, Lbe/gentgo/tetsuki/TimeSettingsFragment;->access$0(Lbe/gentgo/tetsuki/TimeSettingsFragment;)Lbe/gentgo/tetsuki/GameTimeSettings;

    move-result-object v1

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/GameTimeSettings;->isKouryoExtraTime()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x4

    .line 248
    :cond_0
    :goto_0
    return v0

    .line 246
    :cond_1
    iget-object v1, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment$2;->this$0:Lbe/gentgo/tetsuki/TimeSettingsFragment;

    invoke-static {v1}, Lbe/gentgo/tetsuki/TimeSettingsFragment;->access$0(Lbe/gentgo/tetsuki/TimeSettingsFragment;)Lbe/gentgo/tetsuki/GameTimeSettings;

    move-result-object v1

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/GameTimeSettings;->isCanadianExtraTime()Z

    move-result v1

    if-nez v1, :cond_0

    .line 247
    iget-object v1, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment$2;->this$0:Lbe/gentgo/tetsuki/TimeSettingsFragment;

    invoke-static {v1}, Lbe/gentgo/tetsuki/TimeSettingsFragment;->access$0(Lbe/gentgo/tetsuki/TimeSettingsFragment;)Lbe/gentgo/tetsuki/GameTimeSettings;

    move-result-object v1

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/GameTimeSettings;->isJapaneseExtraTime()Z

    move-result v1

    if-nez v1, :cond_0

    .line 248
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 253
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 258
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 263
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 268
    move-object v5, p2

    .line 269
    .local v5, "result":Landroid/view/View;
    if-nez v5, :cond_0

    .line 270
    iget-object v8, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment$2;->this$0:Lbe/gentgo/tetsuki/TimeSettingsFragment;

    invoke-virtual {v8}, Lbe/gentgo/tetsuki/TimeSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 271
    .local v1, "infl":Landroid/view/LayoutInflater;
    const v8, 0x7f03002e

    const/4 v9, 0x0

    invoke-virtual {v1, v8, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 273
    .end local v1    # "infl":Landroid/view/LayoutInflater;
    :cond_0
    iget-object v8, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment$2;->this$0:Lbe/gentgo/tetsuki/TimeSettingsFragment;

    invoke-static {v8}, Lbe/gentgo/tetsuki/TimeSettingsFragment;->access$1(Lbe/gentgo/tetsuki/TimeSettingsFragment;)I

    move-result v8

    if-ne p1, v8, :cond_1

    .line 274
    const v8, -0x777778

    invoke-virtual {v5, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 277
    :goto_0
    iget-object v8, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment$2;->this$0:Lbe/gentgo/tetsuki/TimeSettingsFragment;

    invoke-static {v8}, Lbe/gentgo/tetsuki/TimeSettingsFragment;->access$1(Lbe/gentgo/tetsuki/TimeSettingsFragment;)I

    move-result v8

    if-ne p1, v8, :cond_2

    const/4 v7, -0x1

    .line 279
    .local v7, "textColor":I
    :goto_1
    const v8, 0x7f0b0082

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 280
    const v8, 0x7f0b0080

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 281
    .local v0, "caption":Landroid/widget/TextView;
    const v8, 0x7f0b0081

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 282
    .local v6, "text":Landroid/widget/TextView;
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 283
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 284
    if-nez p1, :cond_6

    .line 286
    const v8, 0x7f0800ae

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(I)V

    .line 287
    iget-object v8, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment$2;->this$0:Lbe/gentgo/tetsuki/TimeSettingsFragment;

    invoke-static {v8}, Lbe/gentgo/tetsuki/TimeSettingsFragment;->access$0(Lbe/gentgo/tetsuki/TimeSettingsFragment;)Lbe/gentgo/tetsuki/GameTimeSettings;

    move-result-object v8

    invoke-virtual {v8}, Lbe/gentgo/tetsuki/GameTimeSettings;->hasExtraTime()Z

    move-result v8

    if-nez v8, :cond_3

    .line 288
    const v8, 0x7f0800a8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(I)V

    .line 328
    :goto_2
    return-object v5

    .line 276
    .end local v0    # "caption":Landroid/widget/TextView;
    .end local v6    # "text":Landroid/widget/TextView;
    .end local v7    # "textColor":I
    :cond_1
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 277
    :cond_2
    const/high16 v7, -0x1000000

    goto :goto_1

    .line 289
    .restart local v0    # "caption":Landroid/widget/TextView;
    .restart local v6    # "text":Landroid/widget/TextView;
    .restart local v7    # "textColor":I
    :cond_3
    iget-object v8, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment$2;->this$0:Lbe/gentgo/tetsuki/TimeSettingsFragment;

    invoke-static {v8}, Lbe/gentgo/tetsuki/TimeSettingsFragment;->access$0(Lbe/gentgo/tetsuki/TimeSettingsFragment;)Lbe/gentgo/tetsuki/GameTimeSettings;

    move-result-object v8

    invoke-virtual {v8}, Lbe/gentgo/tetsuki/GameTimeSettings;->isCanadianExtraTime()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 290
    const v8, 0x7f0800a9

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 291
    :cond_4
    iget-object v8, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment$2;->this$0:Lbe/gentgo/tetsuki/TimeSettingsFragment;

    invoke-static {v8}, Lbe/gentgo/tetsuki/TimeSettingsFragment;->access$0(Lbe/gentgo/tetsuki/TimeSettingsFragment;)Lbe/gentgo/tetsuki/GameTimeSettings;

    move-result-object v8

    invoke-virtual {v8}, Lbe/gentgo/tetsuki/GameTimeSettings;->isJapaneseExtraTime()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 292
    const v8, 0x7f0800aa

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 294
    :cond_5
    const v8, 0x7f0800ab

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 296
    :cond_6
    const/4 v8, 0x1

    if-ne p1, v8, :cond_7

    .line 298
    const v8, 0x7f0800ac

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(I)V

    .line 299
    iget-object v8, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment$2;->this$0:Lbe/gentgo/tetsuki/TimeSettingsFragment;

    invoke-static {v8}, Lbe/gentgo/tetsuki/TimeSettingsFragment;->access$0(Lbe/gentgo/tetsuki/TimeSettingsFragment;)Lbe/gentgo/tetsuki/GameTimeSettings;

    move-result-object v8

    invoke-virtual {v8}, Lbe/gentgo/tetsuki/GameTimeSettings;->getInitialTime()I

    move-result v8

    div-int/lit8 v2, v8, 0x3c

    .line 300
    .local v2, "minutes":I
    iget-object v8, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment$2;->this$0:Lbe/gentgo/tetsuki/TimeSettingsFragment;

    const v9, 0x7f0800b6

    invoke-virtual {v8, v9}, Lbe/gentgo/tetsuki/TimeSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 302
    .end local v2    # "minutes":I
    :cond_7
    const/4 v8, 0x2

    if-ne p1, v8, :cond_b

    .line 304
    iget-object v8, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment$2;->this$0:Lbe/gentgo/tetsuki/TimeSettingsFragment;

    invoke-static {v8}, Lbe/gentgo/tetsuki/TimeSettingsFragment;->access$0(Lbe/gentgo/tetsuki/TimeSettingsFragment;)Lbe/gentgo/tetsuki/GameTimeSettings;

    move-result-object v8

    invoke-virtual {v8}, Lbe/gentgo/tetsuki/GameTimeSettings;->isCanadianExtraTime()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 306
    const v8, 0x7f0800ad

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(I)V

    .line 307
    iget-object v8, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment$2;->this$0:Lbe/gentgo/tetsuki/TimeSettingsFragment;

    invoke-static {v8}, Lbe/gentgo/tetsuki/TimeSettingsFragment;->access$0(Lbe/gentgo/tetsuki/TimeSettingsFragment;)Lbe/gentgo/tetsuki/GameTimeSettings;

    move-result-object v8

    invoke-virtual {v8}, Lbe/gentgo/tetsuki/GameTimeSettings;->getPeriod()I

    move-result v4

    .line 308
    .local v4, "period":I
    iget-object v8, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment$2;->this$0:Lbe/gentgo/tetsuki/TimeSettingsFragment;

    invoke-static {v8}, Lbe/gentgo/tetsuki/TimeSettingsFragment;->access$0(Lbe/gentgo/tetsuki/TimeSettingsFragment;)Lbe/gentgo/tetsuki/GameTimeSettings;

    move-result-object v8

    invoke-virtual {v8}, Lbe/gentgo/tetsuki/GameTimeSettings;->getNrOfStones()I

    move-result v3

    .line 309
    .local v3, "moves":I
    rem-int/lit8 v8, v4, 0x3c

    if-nez v8, :cond_8

    .line 310
    iget-object v8, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment$2;->this$0:Lbe/gentgo/tetsuki/TimeSettingsFragment;

    const v9, 0x7f080014

    invoke-virtual {v8, v9}, Lbe/gentgo/tetsuki/TimeSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    div-int/lit8 v11, v4, 0x3c

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 312
    :cond_8
    iget-object v8, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment$2;->this$0:Lbe/gentgo/tetsuki/TimeSettingsFragment;

    const v9, 0x7f0800b4

    invoke-virtual {v8, v9}, Lbe/gentgo/tetsuki/TimeSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 314
    .end local v3    # "moves":I
    .end local v4    # "period":I
    :cond_9
    iget-object v8, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment$2;->this$0:Lbe/gentgo/tetsuki/TimeSettingsFragment;

    invoke-static {v8}, Lbe/gentgo/tetsuki/TimeSettingsFragment;->access$0(Lbe/gentgo/tetsuki/TimeSettingsFragment;)Lbe/gentgo/tetsuki/GameTimeSettings;

    move-result-object v8

    invoke-virtual {v8}, Lbe/gentgo/tetsuki/GameTimeSettings;->isJapaneseExtraTime()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 316
    const v8, 0x7f0800ad

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(I)V

    .line 317
    iget-object v8, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment$2;->this$0:Lbe/gentgo/tetsuki/TimeSettingsFragment;

    const v9, 0x7f0800b3

    invoke-virtual {v8, v9}, Lbe/gentgo/tetsuki/TimeSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment$2;->this$0:Lbe/gentgo/tetsuki/TimeSettingsFragment;

    invoke-static {v11}, Lbe/gentgo/tetsuki/TimeSettingsFragment;->access$0(Lbe/gentgo/tetsuki/TimeSettingsFragment;)Lbe/gentgo/tetsuki/GameTimeSettings;

    move-result-object v11

    invoke-virtual {v11}, Lbe/gentgo/tetsuki/GameTimeSettings;->getNrOfPeriods()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment$2;->this$0:Lbe/gentgo/tetsuki/TimeSettingsFragment;

    invoke-static {v11}, Lbe/gentgo/tetsuki/TimeSettingsFragment;->access$0(Lbe/gentgo/tetsuki/TimeSettingsFragment;)Lbe/gentgo/tetsuki/GameTimeSettings;

    move-result-object v11

    invoke-virtual {v11}, Lbe/gentgo/tetsuki/GameTimeSettings;->getPeriod()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 320
    :cond_a
    const v8, 0x7f0800b1

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(I)V

    .line 321
    iget-object v8, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment$2;->this$0:Lbe/gentgo/tetsuki/TimeSettingsFragment;

    const v9, 0x7f0800b2

    invoke-virtual {v8, v9}, Lbe/gentgo/tetsuki/TimeSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment$2;->this$0:Lbe/gentgo/tetsuki/TimeSettingsFragment;

    invoke-static {v11}, Lbe/gentgo/tetsuki/TimeSettingsFragment;->access$0(Lbe/gentgo/tetsuki/TimeSettingsFragment;)Lbe/gentgo/tetsuki/GameTimeSettings;

    move-result-object v11

    invoke-virtual {v11}, Lbe/gentgo/tetsuki/GameTimeSettings;->getTimePerMove()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 325
    :cond_b
    const v8, 0x7f0800ad

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(I)V

    .line 326
    iget-object v8, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment$2;->this$0:Lbe/gentgo/tetsuki/TimeSettingsFragment;

    const v9, 0x7f0800b3

    invoke-virtual {v8, v9}, Lbe/gentgo/tetsuki/TimeSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment$2;->this$0:Lbe/gentgo/tetsuki/TimeSettingsFragment;

    invoke-static {v11}, Lbe/gentgo/tetsuki/TimeSettingsFragment;->access$0(Lbe/gentgo/tetsuki/TimeSettingsFragment;)Lbe/gentgo/tetsuki/GameTimeSettings;

    move-result-object v11

    invoke-virtual {v11}, Lbe/gentgo/tetsuki/GameTimeSettings;->getNrOfPeriods()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment$2;->this$0:Lbe/gentgo/tetsuki/TimeSettingsFragment;

    invoke-static {v11}, Lbe/gentgo/tetsuki/TimeSettingsFragment;->access$0(Lbe/gentgo/tetsuki/TimeSettingsFragment;)Lbe/gentgo/tetsuki/GameTimeSettings;

    move-result-object v11

    invoke-virtual {v11}, Lbe/gentgo/tetsuki/GameTimeSettings;->getPeriod()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 333
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 338
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 343
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 363
    const/4 v0, 0x1

    return v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 348
    iget-object v0, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment$2;->this$0:Lbe/gentgo/tetsuki/TimeSettingsFragment;

    iput-object p1, v0, Lbe/gentgo/tetsuki/TimeSettingsFragment;->listObserver:Landroid/database/DataSetObserver;

    .line 349
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 2
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 353
    iget-object v0, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment$2;->this$0:Lbe/gentgo/tetsuki/TimeSettingsFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lbe/gentgo/tetsuki/TimeSettingsFragment;->listObserver:Landroid/database/DataSetObserver;

    .line 354
    return-void
.end method
