.class Lbe/gentgo/tetsuki/AccountSettingsFragment$1;
.super Ljava/lang/Object;
.source "AccountSettingsFragment.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbe/gentgo/tetsuki/AccountSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbe/gentgo/tetsuki/AccountSettingsFragment;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/AccountSettingsFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/AccountSettingsFragment$1;->this$0:Lbe/gentgo/tetsuki/AccountSettingsFragment;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x1

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lbe/gentgo/tetsuki/AccountSettingsFragment$1;->this$0:Lbe/gentgo/tetsuki/AccountSettingsFragment;

    iget v0, v0, Lbe/gentgo/tetsuki/AccountSettingsFragment;->nrOfRows:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 62
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 67
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 72
    iget-object v0, p0, Lbe/gentgo/tetsuki/AccountSettingsFragment$1;->this$0:Lbe/gentgo/tetsuki/AccountSettingsFragment;

    iget v0, v0, Lbe/gentgo/tetsuki/AccountSettingsFragment;->profileHeader:I

    if-eq p1, v0, :cond_0

    .line 73
    iget-object v0, p0, Lbe/gentgo/tetsuki/AccountSettingsFragment$1;->this$0:Lbe/gentgo/tetsuki/AccountSettingsFragment;

    iget v0, v0, Lbe/gentgo/tetsuki/AccountSettingsFragment;->serverHeader:I

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 82
    :goto_0
    return v0

    .line 74
    :cond_1
    iget-object v0, p0, Lbe/gentgo/tetsuki/AccountSettingsFragment$1;->this$0:Lbe/gentgo/tetsuki/AccountSettingsFragment;

    iget v0, v0, Lbe/gentgo/tetsuki/AccountSettingsFragment;->infoRow:I

    if-eq p1, v0, :cond_2

    .line 75
    iget-object v0, p0, Lbe/gentgo/tetsuki/AccountSettingsFragment$1;->this$0:Lbe/gentgo/tetsuki/AccountSettingsFragment;

    iget v0, v0, Lbe/gentgo/tetsuki/AccountSettingsFragment;->passwordRow:I

    if-eq p1, v0, :cond_2

    .line 76
    iget-object v0, p0, Lbe/gentgo/tetsuki/AccountSettingsFragment$1;->this$0:Lbe/gentgo/tetsuki/AccountSettingsFragment;

    iget v0, v0, Lbe/gentgo/tetsuki/AccountSettingsFragment;->logoutRow:I

    if-eq p1, v0, :cond_2

    .line 77
    iget-object v0, p0, Lbe/gentgo/tetsuki/AccountSettingsFragment$1;->this$0:Lbe/gentgo/tetsuki/AccountSettingsFragment;

    iget v0, v0, Lbe/gentgo/tetsuki/AccountSettingsFragment;->encodingRow:I

    if-eq p1, v0, :cond_2

    .line 78
    iget-object v0, p0, Lbe/gentgo/tetsuki/AccountSettingsFragment$1;->this$0:Lbe/gentgo/tetsuki/AccountSettingsFragment;

    iget v0, v0, Lbe/gentgo/tetsuki/AccountSettingsFragment;->disconnectRow:I

    if-ne p1, v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 79
    :cond_3
    iget-object v0, p0, Lbe/gentgo/tetsuki/AccountSettingsFragment$1;->this$0:Lbe/gentgo/tetsuki/AccountSettingsFragment;

    iget v0, v0, Lbe/gentgo/tetsuki/AccountSettingsFragment;->japaneseRankingRow:I

    if-ne p1, v0, :cond_4

    const/4 v0, 0x2

    goto :goto_0

    .line 81
    :cond_4
    sget-boolean v0, Lbe/gentgo/tetsuki/AccountSettingsFragment;->$assertionsDisabled:Z

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 82
    :cond_5
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Lbe/gentgo/tetsuki/AccountSettingsFragment$1;->getItemViewType(I)I

    move-result v6

    .line 88
    .local v6, "type":I
    iget-object v8, p0, Lbe/gentgo/tetsuki/AccountSettingsFragment$1;->this$0:Lbe/gentgo/tetsuki/AccountSettingsFragment;

    invoke-virtual {v8}, Lbe/gentgo/tetsuki/AccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 89
    .local v1, "infl":Landroid/view/LayoutInflater;
    move-object v7, p2

    .line 90
    .local v7, "view":Landroid/view/View;
    packed-switch v6, :pswitch_data_0

    .line 147
    const/4 v8, 0x0

    :goto_0
    return-object v8

    .line 92
    :pswitch_0
    if-nez v7, :cond_0

    const v8, 0x7f03000f

    const/4 v9, 0x0

    invoke-virtual {v1, v8, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 93
    :cond_0
    const v8, 0x7f0b005c

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 94
    .local v4, "title":Landroid/widget/TextView;
    iget-object v8, p0, Lbe/gentgo/tetsuki/AccountSettingsFragment$1;->this$0:Lbe/gentgo/tetsuki/AccountSettingsFragment;

    iget v8, v8, Lbe/gentgo/tetsuki/AccountSettingsFragment;->profileHeader:I

    if-ne p1, v8, :cond_1

    const v8, 0x7f08016d

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(I)V

    .line 95
    :cond_1
    iget-object v8, p0, Lbe/gentgo/tetsuki/AccountSettingsFragment$1;->this$0:Lbe/gentgo/tetsuki/AccountSettingsFragment;

    iget v8, v8, Lbe/gentgo/tetsuki/AccountSettingsFragment;->serverHeader:I

    if-ne p1, v8, :cond_2

    const v8, 0x7f08008f

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    move-object v8, v7

    .line 96
    goto :goto_0

    .line 98
    .end local v4    # "title":Landroid/widget/TextView;
    :pswitch_1
    if-nez v7, :cond_3

    const v8, 0x7f030023

    const/4 v9, 0x0

    invoke-virtual {v1, v8, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 99
    :cond_3
    const v8, 0x7f0b003c

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 100
    .local v2, "label":Landroid/widget/TextView;
    const v8, 0x7f0b00b3

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 101
    .local v3, "sublabel":Landroid/widget/TextView;
    const v8, 0x7f0b00b5

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    .line 102
    .local v5, "toggle":Landroid/widget/CheckBox;
    iget-object v8, p0, Lbe/gentgo/tetsuki/AccountSettingsFragment$1;->this$0:Lbe/gentgo/tetsuki/AccountSettingsFragment;

    iget v8, v8, Lbe/gentgo/tetsuki/AccountSettingsFragment;->japaneseRankingRow:I

    if-ne p1, v8, :cond_4

    .line 103
    const v8, 0x7f0800f5

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(I)V

    .line 104
    const/16 v8, 0x8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    iget-object v8, p0, Lbe/gentgo/tetsuki/AccountSettingsFragment$1;->this$0:Lbe/gentgo/tetsuki/AccountSettingsFragment;

    iget-object v8, v8, Lbe/gentgo/tetsuki/AccountSettingsFragment;->japaneseRankingToggleListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v5, v8}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 106
    invoke-static {}, Lbe/gentgo/tetsuki/Preferences;->japaneseRanking()Z

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_4
    move-object v8, v7

    .line 108
    goto :goto_0

    .line 110
    .end local v2    # "label":Landroid/widget/TextView;
    .end local v3    # "sublabel":Landroid/widget/TextView;
    .end local v5    # "toggle":Landroid/widget/CheckBox;
    :pswitch_2
    if-nez v7, :cond_5

    const v8, 0x7f030022

    const/4 v9, 0x0

    invoke-virtual {v1, v8, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 111
    :cond_5
    const v8, 0x7f0b003c

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 112
    .restart local v2    # "label":Landroid/widget/TextView;
    const v8, 0x7f0b00b3

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 113
    .restart local v3    # "sublabel":Landroid/widget/TextView;
    const v8, 0x7f0b00b4

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 114
    .local v0, "image":Landroid/widget/ImageView;
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 117
    iget-object v8, p0, Lbe/gentgo/tetsuki/AccountSettingsFragment$1;->this$0:Lbe/gentgo/tetsuki/AccountSettingsFragment;

    iget v8, v8, Lbe/gentgo/tetsuki/AccountSettingsFragment;->encodingRow:I

    if-ne p1, v8, :cond_7

    .line 118
    const v8, 0x7f0800c5

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(I)V

    .line 119
    invoke-static {}, Lbe/gentgo/tetsuki/Preferences;->getEncoding()I

    move-result v8

    invoke-static {v8}, Lbe/gentgo/tetsuki/Preferences;->getNameForEncoding(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_1
    move-object v8, v7

    .line 145
    goto/16 :goto_0

    .line 122
    :cond_7
    iget-object v8, p0, Lbe/gentgo/tetsuki/AccountSettingsFragment$1;->this$0:Lbe/gentgo/tetsuki/AccountSettingsFragment;

    iget v8, v8, Lbe/gentgo/tetsuki/AccountSettingsFragment;->infoRow:I

    if-ne p1, v8, :cond_8

    .line 123
    const v8, 0x7f080108

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(I)V

    .line 124
    invoke-static {}, Lbe/gentgo/tetsuki/Preferences;->getInfoText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 127
    :cond_8
    iget-object v8, p0, Lbe/gentgo/tetsuki/AccountSettingsFragment$1;->this$0:Lbe/gentgo/tetsuki/AccountSettingsFragment;

    iget v8, v8, Lbe/gentgo/tetsuki/AccountSettingsFragment;->passwordRow:I

    if-ne p1, v8, :cond_9

    .line 128
    const v8, 0x7f080135

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(I)V

    .line 129
    const/16 v8, 0x8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 132
    :cond_9
    iget-object v8, p0, Lbe/gentgo/tetsuki/AccountSettingsFragment$1;->this$0:Lbe/gentgo/tetsuki/AccountSettingsFragment;

    iget v8, v8, Lbe/gentgo/tetsuki/AccountSettingsFragment;->disconnectRow:I

    if-ne p1, v8, :cond_a

    .line 133
    const v8, 0x7f080169

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(I)V

    .line 134
    const/16 v8, 0x8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 135
    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 138
    :cond_a
    iget-object v8, p0, Lbe/gentgo/tetsuki/AccountSettingsFragment$1;->this$0:Lbe/gentgo/tetsuki/AccountSettingsFragment;

    iget v8, v8, Lbe/gentgo/tetsuki/AccountSettingsFragment;->logoutRow:I

    if-ne p1, v8, :cond_b

    .line 139
    const v8, 0x7f08016a

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(I)V

    .line 140
    const/16 v8, 0x8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 141
    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 143
    :cond_b
    sget-boolean v8, Lbe/gentgo/tetsuki/AccountSettingsFragment;->$assertionsDisabled:Z

    if-nez v8, :cond_6

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 90
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x3

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x0

    .line 182
    iget-object v1, p0, Lbe/gentgo/tetsuki/AccountSettingsFragment$1;->this$0:Lbe/gentgo/tetsuki/AccountSettingsFragment;

    iget v1, v1, Lbe/gentgo/tetsuki/AccountSettingsFragment;->profileHeader:I

    if-ne p1, v1, :cond_1

    .line 184
    :cond_0
    :goto_0
    return v0

    .line 183
    :cond_1
    iget-object v1, p0, Lbe/gentgo/tetsuki/AccountSettingsFragment$1;->this$0:Lbe/gentgo/tetsuki/AccountSettingsFragment;

    iget v1, v1, Lbe/gentgo/tetsuki/AccountSettingsFragment;->serverHeader:I

    if-eq p1, v1, :cond_0

    .line 184
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 167
    iget-object v0, p0, Lbe/gentgo/tetsuki/AccountSettingsFragment$1;->this$0:Lbe/gentgo/tetsuki/AccountSettingsFragment;

    iput-object p1, v0, Lbe/gentgo/tetsuki/AccountSettingsFragment;->dataObserver:Landroid/database/DataSetObserver;

    .line 168
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 2
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 172
    iget-object v0, p0, Lbe/gentgo/tetsuki/AccountSettingsFragment$1;->this$0:Lbe/gentgo/tetsuki/AccountSettingsFragment;

    iget-object v0, v0, Lbe/gentgo/tetsuki/AccountSettingsFragment;->dataObserver:Landroid/database/DataSetObserver;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lbe/gentgo/tetsuki/AccountSettingsFragment$1;->this$0:Lbe/gentgo/tetsuki/AccountSettingsFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lbe/gentgo/tetsuki/AccountSettingsFragment;->dataObserver:Landroid/database/DataSetObserver;

    .line 173
    :cond_0
    return-void
.end method
