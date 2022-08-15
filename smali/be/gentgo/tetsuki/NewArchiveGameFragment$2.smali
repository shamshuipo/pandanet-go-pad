.class Lbe/gentgo/tetsuki/NewArchiveGameFragment$2;
.super Ljava/lang/Object;
.source "NewArchiveGameFragment.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbe/gentgo/tetsuki/NewArchiveGameFragment;
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
    iput-object p1, p0, Lbe/gentgo/tetsuki/NewArchiveGameFragment$2;->this$0:Lbe/gentgo/tetsuki/NewArchiveGameFragment;

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 361
    const/4 v0, 0x1

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 284
    const/4 v0, 0x4

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 288
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 292
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 296
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v10, -0x1

    const/4 v7, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 300
    move-object v4, p2

    .line 301
    .local v4, "result":Landroid/view/View;
    if-nez v4, :cond_0

    .line 302
    iget-object v5, p0, Lbe/gentgo/tetsuki/NewArchiveGameFragment$2;->this$0:Lbe/gentgo/tetsuki/NewArchiveGameFragment;

    invoke-virtual {v5}, Lbe/gentgo/tetsuki/NewArchiveGameFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 303
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f03001a

    invoke-virtual {v1, v5, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 306
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    const v5, 0x7f0b0080

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 307
    .local v0, "caption":Landroid/widget/TextView;
    const v5, 0x7f0b003c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 308
    .local v3, "label":Landroid/widget/TextView;
    if-nez p1, :cond_1

    .line 309
    const v5, 0x7f08007f

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 310
    iget-object v5, p0, Lbe/gentgo/tetsuki/NewArchiveGameFragment$2;->this$0:Lbe/gentgo/tetsuki/NewArchiveGameFragment;

    iget-object v5, v5, Lbe/gentgo/tetsuki/NewArchiveGameFragment;->gameSettings:Lbe/gentgo/tetsuki/GameSettings;

    invoke-virtual {v5}, Lbe/gentgo/tetsuki/GameSettings;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    :goto_0
    iget-object v5, p0, Lbe/gentgo/tetsuki/NewArchiveGameFragment$2;->this$0:Lbe/gentgo/tetsuki/NewArchiveGameFragment;

    iget v5, v5, Lbe/gentgo/tetsuki/NewArchiveGameFragment;->highlightedRow:I

    if-ne p1, v5, :cond_5

    .line 328
    const v5, -0x777778

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 329
    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 330
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 337
    :goto_1
    return-object v4

    .line 312
    :cond_1
    if-ne p1, v9, :cond_2

    .line 313
    const v5, 0x7f080080

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 314
    iget-object v5, p0, Lbe/gentgo/tetsuki/NewArchiveGameFragment$2;->this$0:Lbe/gentgo/tetsuki/NewArchiveGameFragment;

    iget-object v5, v5, Lbe/gentgo/tetsuki/NewArchiveGameFragment;->dateFormat:Ljava/text/DateFormat;

    iget-object v6, p0, Lbe/gentgo/tetsuki/NewArchiveGameFragment$2;->this$0:Lbe/gentgo/tetsuki/NewArchiveGameFragment;

    iget-object v6, v6, Lbe/gentgo/tetsuki/NewArchiveGameFragment;->gameSettings:Lbe/gentgo/tetsuki/GameSettings;

    invoke-virtual {v6}, Lbe/gentgo/tetsuki/GameSettings;->getDate()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 316
    :cond_2
    if-ne p1, v7, :cond_3

    .line 317
    const v5, 0x7f080081

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 318
    iget-object v5, p0, Lbe/gentgo/tetsuki/NewArchiveGameFragment$2;->this$0:Lbe/gentgo/tetsuki/NewArchiveGameFragment;

    const v6, 0x7f080012

    invoke-virtual {v5, v6}, Lbe/gentgo/tetsuki/NewArchiveGameFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    iget-object v7, p0, Lbe/gentgo/tetsuki/NewArchiveGameFragment$2;->this$0:Lbe/gentgo/tetsuki/NewArchiveGameFragment;

    iget-object v7, v7, Lbe/gentgo/tetsuki/NewArchiveGameFragment;->gameSettings:Lbe/gentgo/tetsuki/GameSettings;

    invoke-virtual {v7}, Lbe/gentgo/tetsuki/GameSettings;->getColumns()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    iget-object v7, p0, Lbe/gentgo/tetsuki/NewArchiveGameFragment$2;->this$0:Lbe/gentgo/tetsuki/NewArchiveGameFragment;

    iget-object v7, v7, Lbe/gentgo/tetsuki/NewArchiveGameFragment;->gameSettings:Lbe/gentgo/tetsuki/GameSettings;

    invoke-virtual {v7}, Lbe/gentgo/tetsuki/GameSettings;->getRows()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 320
    :cond_3
    const v5, 0x7f080083

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 321
    iget-object v5, p0, Lbe/gentgo/tetsuki/NewArchiveGameFragment$2;->this$0:Lbe/gentgo/tetsuki/NewArchiveGameFragment;

    iget-object v5, v5, Lbe/gentgo/tetsuki/NewArchiveGameFragment;->gameSettings:Lbe/gentgo/tetsuki/GameSettings;

    invoke-virtual {v5}, Lbe/gentgo/tetsuki/GameSettings;->getKomi()F

    move-result v5

    invoke-static {v5}, Lbe/gentgo/tetsuki/GameSettings;->getNameForKomi(F)Ljava/lang/String;

    move-result-object v2

    .line 322
    .local v2, "komiString":Ljava/lang/String;
    iget-object v5, p0, Lbe/gentgo/tetsuki/NewArchiveGameFragment$2;->this$0:Lbe/gentgo/tetsuki/NewArchiveGameFragment;

    iget-object v5, v5, Lbe/gentgo/tetsuki/NewArchiveGameFragment;->gameSettings:Lbe/gentgo/tetsuki/GameSettings;

    invoke-virtual {v5}, Lbe/gentgo/tetsuki/GameSettings;->getNrOfHandicapStones()I

    move-result v5

    if-nez v5, :cond_4

    .line 323
    iget-object v5, p0, Lbe/gentgo/tetsuki/NewArchiveGameFragment$2;->this$0:Lbe/gentgo/tetsuki/NewArchiveGameFragment;

    const v6, 0x7f080017

    invoke-virtual {v5, v6}, Lbe/gentgo/tetsuki/NewArchiveGameFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v2, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 325
    :cond_4
    iget-object v5, p0, Lbe/gentgo/tetsuki/NewArchiveGameFragment$2;->this$0:Lbe/gentgo/tetsuki/NewArchiveGameFragment;

    const v6, 0x7f080016

    invoke-virtual {v5, v6}, Lbe/gentgo/tetsuki/NewArchiveGameFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    iget-object v7, p0, Lbe/gentgo/tetsuki/NewArchiveGameFragment$2;->this$0:Lbe/gentgo/tetsuki/NewArchiveGameFragment;

    iget-object v7, v7, Lbe/gentgo/tetsuki/NewArchiveGameFragment;->gameSettings:Lbe/gentgo/tetsuki/GameSettings;

    invoke-virtual {v7}, Lbe/gentgo/tetsuki/GameSettings;->getNrOfHandicapStones()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    aput-object v2, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 333
    .end local v2    # "komiString":Ljava/lang/String;
    :cond_5
    invoke-virtual {v4, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 334
    const v5, -0xbbbbbc

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 335
    const/high16 v5, -0x1000000

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 341
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 345
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 349
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 365
    const/4 v0, 0x1

    return v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 353
    iget-object v0, p0, Lbe/gentgo/tetsuki/NewArchiveGameFragment$2;->this$0:Lbe/gentgo/tetsuki/NewArchiveGameFragment;

    iput-object p1, v0, Lbe/gentgo/tetsuki/NewArchiveGameFragment;->listObserver:Landroid/database/DataSetObserver;

    .line 354
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 2
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 357
    iget-object v0, p0, Lbe/gentgo/tetsuki/NewArchiveGameFragment$2;->this$0:Lbe/gentgo/tetsuki/NewArchiveGameFragment;

    iget-object v0, v0, Lbe/gentgo/tetsuki/NewArchiveGameFragment;->listObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbe/gentgo/tetsuki/NewArchiveGameFragment$2;->this$0:Lbe/gentgo/tetsuki/NewArchiveGameFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lbe/gentgo/tetsuki/NewArchiveGameFragment;->listObserver:Landroid/database/DataSetObserver;

    .line 358
    :cond_0
    return-void
.end method
