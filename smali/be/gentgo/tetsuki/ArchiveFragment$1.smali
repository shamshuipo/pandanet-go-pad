.class Lbe/gentgo/tetsuki/ArchiveFragment$1;
.super Landroid/widget/BaseAdapter;
.source "ArchiveFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbe/gentgo/tetsuki/ArchiveFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbe/gentgo/tetsuki/ArchiveFragment;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/ArchiveFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/ArchiveFragment$1;->this$0:Lbe/gentgo/tetsuki/ArchiveFragment;

    .line 310
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 387
    const/4 v0, 0x1

    return v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 314
    invoke-static {}, Lbe/gentgo/tetsuki/Document;->getDirectorySize()I

    move-result v0

    .line 315
    .local v0, "count":I
    iget-object v1, p0, Lbe/gentgo/tetsuki/ArchiveFragment$1;->this$0:Lbe/gentgo/tetsuki/ArchiveFragment;

    invoke-static {v1}, Lbe/gentgo/tetsuki/ArchiveFragment;->access$0(Lbe/gentgo/tetsuki/ArchiveFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 316
    :cond_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 321
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 326
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 331
    if-nez p1, :cond_0

    iget-object v0, p0, Lbe/gentgo/tetsuki/ArchiveFragment$1;->this$0:Lbe/gentgo/tetsuki/ArchiveFragment;

    invoke-static {v0}, Lbe/gentgo/tetsuki/ArchiveFragment;->access$0(Lbe/gentgo/tetsuki/ArchiveFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 332
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 337
    move-object v5, p2

    .line 338
    .local v5, "result":Landroid/view/View;
    iget-object v10, p0, Lbe/gentgo/tetsuki/ArchiveFragment$1;->this$0:Lbe/gentgo/tetsuki/ArchiveFragment;

    invoke-virtual {v10}, Lbe/gentgo/tetsuki/ArchiveFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 340
    .local v4, "inflater":Landroid/view/LayoutInflater;
    if-nez p1, :cond_1

    iget-object v10, p0, Lbe/gentgo/tetsuki/ArchiveFragment$1;->this$0:Lbe/gentgo/tetsuki/ArchiveFragment;

    invoke-static {v10}, Lbe/gentgo/tetsuki/ArchiveFragment;->access$0(Lbe/gentgo/tetsuki/ArchiveFragment;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 341
    if-nez v5, :cond_0

    const v10, 0x7f030005

    const/4 v11, 0x0

    invoke-virtual {v4, v10, p3, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    :cond_0
    move-object v6, v5

    .line 367
    .end local v5    # "result":Landroid/view/View;
    .local v6, "result":Landroid/view/View;
    :goto_0
    return-object v6

    .line 345
    .end local v6    # "result":Landroid/view/View;
    .restart local v5    # "result":Landroid/view/View;
    :cond_1
    if-nez v5, :cond_2

    .line 346
    const v10, 0x7f030003

    const/4 v11, 0x0

    invoke-virtual {v4, v10, p3, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 348
    :cond_2
    const v10, 0x7f0b0027

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 349
    .local v7, "select":Landroid/widget/ImageView;
    const v10, 0x7f0b0029

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 350
    .local v9, "title":Landroid/widget/TextView;
    const v10, 0x7f0b002a

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 351
    .local v8, "subtitle":Landroid/widget/TextView;
    const v10, 0x7f0b0026

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lbe/gentgo/tetsuki/DocumentThumbnail;

    .line 352
    .local v1, "goban":Lbe/gentgo/tetsuki/DocumentThumbnail;
    move v3, p1

    .line 353
    .local v3, "index":I
    iget-object v10, p0, Lbe/gentgo/tetsuki/ArchiveFragment$1;->this$0:Lbe/gentgo/tetsuki/ArchiveFragment;

    invoke-static {v10}, Lbe/gentgo/tetsuki/ArchiveFragment;->access$0(Lbe/gentgo/tetsuki/ArchiveFragment;)Z

    move-result v10

    if-eqz v10, :cond_3

    add-int/lit8 v3, v3, -0x1

    .line 354
    :cond_3
    invoke-static {v3}, Lbe/gentgo/tetsuki/Document;->getIDAtIndex(I)I

    move-result v2

    .line 355
    .local v2, "id":I
    invoke-virtual {v1, v2}, Lbe/gentgo/tetsuki/DocumentThumbnail;->setId(I)V

    .line 356
    invoke-static {v2}, Lbe/gentgo/tetsuki/Document;->getDocument(I)Lbe/gentgo/tetsuki/Document;

    move-result-object v0

    .line 357
    .local v0, "document":Lbe/gentgo/tetsuki/Document;
    invoke-virtual {v0}, Lbe/gentgo/tetsuki/Document;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    iget-object v10, p0, Lbe/gentgo/tetsuki/ArchiveFragment$1;->this$0:Lbe/gentgo/tetsuki/ArchiveFragment;

    invoke-static {v10}, Lbe/gentgo/tetsuki/ArchiveFragment;->access$1(Lbe/gentgo/tetsuki/ArchiveFragment;)Ljava/text/DateFormat;

    move-result-object v10

    if-nez v10, :cond_4

    .line 359
    iget-object v10, p0, Lbe/gentgo/tetsuki/ArchiveFragment$1;->this$0:Lbe/gentgo/tetsuki/ArchiveFragment;

    iget-object v11, p0, Lbe/gentgo/tetsuki/ArchiveFragment$1;->this$0:Lbe/gentgo/tetsuki/ArchiveFragment;

    invoke-virtual {v11}, Lbe/gentgo/tetsuki/ArchiveFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v11}, Landroid/text/format/DateFormat;->getLongDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v11

    invoke-static {v10, v11}, Lbe/gentgo/tetsuki/ArchiveFragment;->access$2(Lbe/gentgo/tetsuki/ArchiveFragment;Ljava/text/DateFormat;)V

    .line 361
    :cond_4
    iget-object v10, p0, Lbe/gentgo/tetsuki/ArchiveFragment$1;->this$0:Lbe/gentgo/tetsuki/ArchiveFragment;

    invoke-static {v10}, Lbe/gentgo/tetsuki/ArchiveFragment;->access$1(Lbe/gentgo/tetsuki/ArchiveFragment;)Ljava/text/DateFormat;

    move-result-object v10

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/Document;->getDate()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    iget-object v10, p0, Lbe/gentgo/tetsuki/ArchiveFragment$1;->this$0:Lbe/gentgo/tetsuki/ArchiveFragment;

    invoke-static {v10}, Lbe/gentgo/tetsuki/ArchiveFragment;->access$3(Lbe/gentgo/tetsuki/ArchiveFragment;)I

    move-result v10

    if-eqz v10, :cond_6

    .line 363
    iget-object v10, p0, Lbe/gentgo/tetsuki/ArchiveFragment$1;->this$0:Lbe/gentgo/tetsuki/ArchiveFragment;

    invoke-static {v10, v2}, Lbe/gentgo/tetsuki/ArchiveFragment;->access$4(Lbe/gentgo/tetsuki/ArchiveFragment;I)Z

    move-result v10

    if-eqz v10, :cond_5

    const/4 v10, 0x0

    :goto_1
    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    move-object v6, v5

    .line 367
    .end local v5    # "result":Landroid/view/View;
    .restart local v6    # "result":Landroid/view/View;
    goto/16 :goto_0

    .line 363
    .end local v6    # "result":Landroid/view/View;
    .restart local v5    # "result":Landroid/view/View;
    :cond_5
    const/4 v10, 0x4

    goto :goto_1

    .line 365
    :cond_6
    const/16 v10, 0x8

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 372
    const/4 v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 377
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 382
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 392
    const/4 v0, 0x1

    return v0
.end method
