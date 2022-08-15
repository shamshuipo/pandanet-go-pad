.class Lbe/gentgo/tetsuki/PreferencesFragment$1;
.super Ljava/lang/Object;
.source "PreferencesFragment.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbe/gentgo/tetsuki/PreferencesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbe/gentgo/tetsuki/PreferencesFragment;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/PreferencesFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/PreferencesFragment$1;->this$0:Lbe/gentgo/tetsuki/PreferencesFragment;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x1

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lbe/gentgo/tetsuki/PreferencesFragment$1;->this$0:Lbe/gentgo/tetsuki/PreferencesFragment;

    invoke-static {v0}, Lbe/gentgo/tetsuki/PreferencesFragment;->access$0(Lbe/gentgo/tetsuki/PreferencesFragment;)I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 105
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 109
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 113
    iget-object v0, p0, Lbe/gentgo/tetsuki/PreferencesFragment$1;->this$0:Lbe/gentgo/tetsuki/PreferencesFragment;

    invoke-static {v0}, Lbe/gentgo/tetsuki/PreferencesFragment;->access$1(Lbe/gentgo/tetsuki/PreferencesFragment;)I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 114
    iget-object v0, p0, Lbe/gentgo/tetsuki/PreferencesFragment$1;->this$0:Lbe/gentgo/tetsuki/PreferencesFragment;

    invoke-static {v0}, Lbe/gentgo/tetsuki/PreferencesFragment;->access$2(Lbe/gentgo/tetsuki/PreferencesFragment;)I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 115
    iget-object v0, p0, Lbe/gentgo/tetsuki/PreferencesFragment$1;->this$0:Lbe/gentgo/tetsuki/PreferencesFragment;

    invoke-static {v0}, Lbe/gentgo/tetsuki/PreferencesFragment;->access$3(Lbe/gentgo/tetsuki/PreferencesFragment;)I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 116
    iget-object v0, p0, Lbe/gentgo/tetsuki/PreferencesFragment$1;->this$0:Lbe/gentgo/tetsuki/PreferencesFragment;

    invoke-static {v0}, Lbe/gentgo/tetsuki/PreferencesFragment;->access$4(Lbe/gentgo/tetsuki/PreferencesFragment;)I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 117
    :cond_0
    const/4 v0, 0x0

    .line 129
    :goto_0
    return v0

    .line 119
    :cond_1
    iget-object v0, p0, Lbe/gentgo/tetsuki/PreferencesFragment$1;->this$0:Lbe/gentgo/tetsuki/PreferencesFragment;

    invoke-static {v0}, Lbe/gentgo/tetsuki/PreferencesFragment;->access$5(Lbe/gentgo/tetsuki/PreferencesFragment;)I

    move-result v0

    if-eq p1, v0, :cond_2

    .line 120
    iget-object v0, p0, Lbe/gentgo/tetsuki/PreferencesFragment$1;->this$0:Lbe/gentgo/tetsuki/PreferencesFragment;

    invoke-static {v0}, Lbe/gentgo/tetsuki/PreferencesFragment;->access$6(Lbe/gentgo/tetsuki/PreferencesFragment;)I

    move-result v0

    if-eq p1, v0, :cond_2

    .line 121
    iget-object v0, p0, Lbe/gentgo/tetsuki/PreferencesFragment$1;->this$0:Lbe/gentgo/tetsuki/PreferencesFragment;

    invoke-static {v0}, Lbe/gentgo/tetsuki/PreferencesFragment;->access$7(Lbe/gentgo/tetsuki/PreferencesFragment;)I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 122
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 124
    :cond_3
    iget-object v0, p0, Lbe/gentgo/tetsuki/PreferencesFragment$1;->this$0:Lbe/gentgo/tetsuki/PreferencesFragment;

    invoke-static {v0}, Lbe/gentgo/tetsuki/PreferencesFragment;->access$8(Lbe/gentgo/tetsuki/PreferencesFragment;)I

    move-result v0

    if-eq p1, v0, :cond_4

    .line 125
    iget-object v0, p0, Lbe/gentgo/tetsuki/PreferencesFragment$1;->this$0:Lbe/gentgo/tetsuki/PreferencesFragment;

    invoke-static {v0}, Lbe/gentgo/tetsuki/PreferencesFragment;->access$9(Lbe/gentgo/tetsuki/PreferencesFragment;)I

    move-result v0

    if-eq p1, v0, :cond_4

    .line 126
    iget-object v0, p0, Lbe/gentgo/tetsuki/PreferencesFragment$1;->this$0:Lbe/gentgo/tetsuki/PreferencesFragment;

    invoke-static {v0}, Lbe/gentgo/tetsuki/PreferencesFragment;->access$10(Lbe/gentgo/tetsuki/PreferencesFragment;)I

    move-result v0

    if-eq p1, v0, :cond_4

    .line 127
    iget-object v0, p0, Lbe/gentgo/tetsuki/PreferencesFragment$1;->this$0:Lbe/gentgo/tetsuki/PreferencesFragment;

    invoke-static {v0}, Lbe/gentgo/tetsuki/PreferencesFragment;->access$11(Lbe/gentgo/tetsuki/PreferencesFragment;)I

    move-result v0

    if-ne p1, v0, :cond_5

    .line 128
    :cond_4
    const/4 v0, 0x2

    goto :goto_0

    .line 129
    :cond_5
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 20
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 133
    move-object/from16 v9, p2

    .line 134
    .local v9, "view":Landroid/view/View;
    invoke-virtual/range {p0 .. p1}, Lbe/gentgo/tetsuki/PreferencesFragment$1;->getItemViewType(I)I

    move-result v8

    .line 135
    .local v8, "type":I
    move-object/from16 v0, p0

    iget-object v10, v0, Lbe/gentgo/tetsuki/PreferencesFragment$1;->this$0:Lbe/gentgo/tetsuki/PreferencesFragment;

    invoke-virtual {v10}, Lbe/gentgo/tetsuki/PreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 136
    .local v3, "infl":Landroid/view/LayoutInflater;
    packed-switch v8, :pswitch_data_0

    .line 207
    const/4 v10, 0x0

    :goto_0
    return-object v10

    .line 139
    :pswitch_0
    if-nez v9, :cond_0

    const v10, 0x7f03000f

    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v3, v10, v0, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 140
    :cond_0
    const v10, 0x7f0b005c

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 141
    .local v2, "header":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v10, v0, Lbe/gentgo/tetsuki/PreferencesFragment$1;->this$0:Lbe/gentgo/tetsuki/PreferencesFragment;

    invoke-static {v10}, Lbe/gentgo/tetsuki/PreferencesFragment;->access$1(Lbe/gentgo/tetsuki/PreferencesFragment;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_2

    .line 142
    const v10, 0x7f080086

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    :goto_1
    move-object v10, v9

    .line 149
    goto :goto_0

    .line 143
    :cond_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lbe/gentgo/tetsuki/PreferencesFragment$1;->this$0:Lbe/gentgo/tetsuki/PreferencesFragment;

    invoke-static {v10}, Lbe/gentgo/tetsuki/PreferencesFragment;->access$2(Lbe/gentgo/tetsuki/PreferencesFragment;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_3

    .line 144
    const v10, 0x7f080088

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 145
    :cond_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lbe/gentgo/tetsuki/PreferencesFragment$1;->this$0:Lbe/gentgo/tetsuki/PreferencesFragment;

    invoke-static {v10}, Lbe/gentgo/tetsuki/PreferencesFragment;->access$3(Lbe/gentgo/tetsuki/PreferencesFragment;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_4

    .line 146
    const v10, 0x7f080087

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 147
    :cond_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lbe/gentgo/tetsuki/PreferencesFragment$1;->this$0:Lbe/gentgo/tetsuki/PreferencesFragment;

    invoke-static {v10}, Lbe/gentgo/tetsuki/PreferencesFragment;->access$4(Lbe/gentgo/tetsuki/PreferencesFragment;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_1

    .line 148
    const v10, 0x7f080142

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 151
    .end local v2    # "header":Landroid/widget/TextView;
    :pswitch_1
    if-nez v9, :cond_5

    const v10, 0x7f030022

    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v3, v10, v0, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 152
    :cond_5
    const v10, 0x7f0b003c

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 153
    .local v5, "label":Landroid/widget/TextView;
    const v10, 0x7f0b00b3

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 155
    .local v6, "sublabel":Landroid/widget/TextView;
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 158
    move-object/from16 v0, p0

    iget-object v10, v0, Lbe/gentgo/tetsuki/PreferencesFragment$1;->this$0:Lbe/gentgo/tetsuki/PreferencesFragment;

    invoke-static {v10}, Lbe/gentgo/tetsuki/PreferencesFragment;->access$5(Lbe/gentgo/tetsuki/PreferencesFragment;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_7

    .line 160
    const v10, 0x7f080128

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(I)V

    .line 161
    const/16 v10, 0x8

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_6
    :goto_2
    move-object v10, v9

    .line 178
    goto/16 :goto_0

    .line 163
    :cond_7
    move-object/from16 v0, p0

    iget-object v10, v0, Lbe/gentgo/tetsuki/PreferencesFragment$1;->this$0:Lbe/gentgo/tetsuki/PreferencesFragment;

    invoke-static {v10}, Lbe/gentgo/tetsuki/PreferencesFragment;->access$6(Lbe/gentgo/tetsuki/PreferencesFragment;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_8

    .line 165
    const v10, 0x7f080142

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(I)V

    .line 166
    const-string v10, "%d%%"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    invoke-static {}, Lbe/gentgo/tetsuki/Preferences;->getSoundVolume()F

    move-result v13

    float-to-double v0, v13

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    add-double v14, v14, v16

    double-to-int v13, v14

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 168
    :cond_8
    move-object/from16 v0, p0

    iget-object v10, v0, Lbe/gentgo/tetsuki/PreferencesFragment$1;->this$0:Lbe/gentgo/tetsuki/PreferencesFragment;

    invoke-static {v10}, Lbe/gentgo/tetsuki/PreferencesFragment;->access$7(Lbe/gentgo/tetsuki/PreferencesFragment;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_6

    .line 170
    const v10, 0x7f080146

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(I)V

    .line 171
    invoke-static {}, Lbe/gentgo/tetsuki/Preferences;->getReplayInterval()F

    move-result v4

    .line 172
    .local v4, "interval":F
    const/high16 v10, 0x3f000000    # 0.5f

    cmpl-float v10, v4, v10

    if-nez v10, :cond_9

    const v10, 0x7f080147

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(I)V

    .line 173
    :cond_9
    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v10, v4, v10

    if-nez v10, :cond_a

    const v10, 0x7f080148

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(I)V

    .line 174
    :cond_a
    const/high16 v10, 0x40400000    # 3.0f

    cmpl-float v10, v4, v10

    if-nez v10, :cond_b

    const v10, 0x7f080149

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(I)V

    .line 175
    :cond_b
    const/high16 v10, 0x40c00000    # 6.0f

    cmpl-float v10, v4, v10

    if-nez v10, :cond_c

    const v10, 0x7f08014a

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(I)V

    .line 176
    :cond_c
    const/high16 v10, 0x41200000    # 10.0f

    cmpl-float v10, v4, v10

    if-nez v10, :cond_6

    const v10, 0x7f08014b

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    .line 180
    .end local v4    # "interval":F
    .end local v5    # "label":Landroid/widget/TextView;
    .end local v6    # "sublabel":Landroid/widget/TextView;
    :pswitch_2
    if-nez v9, :cond_d

    const v10, 0x7f030023

    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v3, v10, v0, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 181
    :cond_d
    const v10, 0x7f0b003c

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 182
    .restart local v5    # "label":Landroid/widget/TextView;
    const v10, 0x7f0b00b3

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 183
    .restart local v6    # "sublabel":Landroid/widget/TextView;
    const v10, 0x7f0b00b5

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    .line 184
    .local v7, "toggle":Landroid/widget/CheckBox;
    const/16 v10, 0x8

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 185
    move-object/from16 v0, p0

    iget-object v10, v0, Lbe/gentgo/tetsuki/PreferencesFragment$1;->this$0:Lbe/gentgo/tetsuki/PreferencesFragment;

    invoke-static {v10}, Lbe/gentgo/tetsuki/PreferencesFragment;->access$8(Lbe/gentgo/tetsuki/PreferencesFragment;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_e

    .line 186
    const v10, 0x7f08008a

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(I)V

    .line 187
    move-object/from16 v0, p0

    iget-object v10, v0, Lbe/gentgo/tetsuki/PreferencesFragment$1;->this$0:Lbe/gentgo/tetsuki/PreferencesFragment;

    iget-object v10, v10, Lbe/gentgo/tetsuki/PreferencesFragment;->autoZoomToggleListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v7, v10}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 188
    invoke-static {}, Lbe/gentgo/tetsuki/Preferences;->getAutoZoom()Z

    move-result v10

    invoke-virtual {v7, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 190
    :cond_e
    move-object/from16 v0, p0

    iget-object v10, v0, Lbe/gentgo/tetsuki/PreferencesFragment$1;->this$0:Lbe/gentgo/tetsuki/PreferencesFragment;

    invoke-static {v10}, Lbe/gentgo/tetsuki/PreferencesFragment;->access$9(Lbe/gentgo/tetsuki/PreferencesFragment;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_f

    .line 191
    const v10, 0x7f080089

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(I)V

    .line 192
    move-object/from16 v0, p0

    iget-object v10, v0, Lbe/gentgo/tetsuki/PreferencesFragment$1;->this$0:Lbe/gentgo/tetsuki/PreferencesFragment;

    iget-object v10, v10, Lbe/gentgo/tetsuki/PreferencesFragment;->zoomToggleListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v7, v10}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 193
    invoke-static {}, Lbe/gentgo/tetsuki/Preferences;->getZoom()Z

    move-result v10

    invoke-virtual {v7, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 195
    :cond_f
    move-object/from16 v0, p0

    iget-object v10, v0, Lbe/gentgo/tetsuki/PreferencesFragment$1;->this$0:Lbe/gentgo/tetsuki/PreferencesFragment;

    invoke-static {v10}, Lbe/gentgo/tetsuki/PreferencesFragment;->access$10(Lbe/gentgo/tetsuki/PreferencesFragment;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_10

    .line 196
    const v10, 0x7f08009a

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(I)V

    .line 197
    move-object/from16 v0, p0

    iget-object v10, v0, Lbe/gentgo/tetsuki/PreferencesFragment$1;->this$0:Lbe/gentgo/tetsuki/PreferencesFragment;

    iget-object v10, v10, Lbe/gentgo/tetsuki/PreferencesFragment;->coordinatesToggleListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v7, v10}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 198
    invoke-static {}, Lbe/gentgo/tetsuki/Preferences;->getShowCoordinates()Z

    move-result v10

    invoke-virtual {v7, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 200
    :cond_10
    move-object/from16 v0, p0

    iget-object v10, v0, Lbe/gentgo/tetsuki/PreferencesFragment$1;->this$0:Lbe/gentgo/tetsuki/PreferencesFragment;

    invoke-static {v10}, Lbe/gentgo/tetsuki/PreferencesFragment;->access$11(Lbe/gentgo/tetsuki/PreferencesFragment;)I

    move-result v10

    move/from16 v0, p1

    if-ne v0, v10, :cond_11

    .line 201
    const v10, 0x7f0800f4

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(I)V

    .line 202
    move-object/from16 v0, p0

    iget-object v10, v0, Lbe/gentgo/tetsuki/PreferencesFragment$1;->this$0:Lbe/gentgo/tetsuki/PreferencesFragment;

    iget-object v10, v10, Lbe/gentgo/tetsuki/PreferencesFragment;->confirmToggleListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v7, v10}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 203
    invoke-static {}, Lbe/gentgo/tetsuki/Preferences;->moveConfirmation()Z

    move-result v10

    invoke-virtual {v7, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_11
    move-object v10, v9

    .line 205
    goto/16 :goto_0

    .line 136
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x3

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x0

    .line 235
    iget-object v1, p0, Lbe/gentgo/tetsuki/PreferencesFragment$1;->this$0:Lbe/gentgo/tetsuki/PreferencesFragment;

    invoke-static {v1}, Lbe/gentgo/tetsuki/PreferencesFragment;->access$1(Lbe/gentgo/tetsuki/PreferencesFragment;)I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 239
    :cond_0
    :goto_0
    return v0

    .line 236
    :cond_1
    iget-object v1, p0, Lbe/gentgo/tetsuki/PreferencesFragment$1;->this$0:Lbe/gentgo/tetsuki/PreferencesFragment;

    invoke-static {v1}, Lbe/gentgo/tetsuki/PreferencesFragment;->access$3(Lbe/gentgo/tetsuki/PreferencesFragment;)I

    move-result v1

    if-eq p1, v1, :cond_0

    .line 237
    iget-object v1, p0, Lbe/gentgo/tetsuki/PreferencesFragment$1;->this$0:Lbe/gentgo/tetsuki/PreferencesFragment;

    invoke-static {v1}, Lbe/gentgo/tetsuki/PreferencesFragment;->access$2(Lbe/gentgo/tetsuki/PreferencesFragment;)I

    move-result v1

    if-eq p1, v1, :cond_0

    .line 238
    iget-object v1, p0, Lbe/gentgo/tetsuki/PreferencesFragment$1;->this$0:Lbe/gentgo/tetsuki/PreferencesFragment;

    invoke-static {v1}, Lbe/gentgo/tetsuki/PreferencesFragment;->access$4(Lbe/gentgo/tetsuki/PreferencesFragment;)I

    move-result v1

    if-eq p1, v1, :cond_0

    .line 239
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 223
    iget-object v0, p0, Lbe/gentgo/tetsuki/PreferencesFragment$1;->this$0:Lbe/gentgo/tetsuki/PreferencesFragment;

    iput-object p1, v0, Lbe/gentgo/tetsuki/PreferencesFragment;->dataObserver:Landroid/database/DataSetObserver;

    .line 224
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 2
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 227
    iget-object v0, p0, Lbe/gentgo/tetsuki/PreferencesFragment$1;->this$0:Lbe/gentgo/tetsuki/PreferencesFragment;

    iget-object v0, v0, Lbe/gentgo/tetsuki/PreferencesFragment;->dataObserver:Landroid/database/DataSetObserver;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lbe/gentgo/tetsuki/PreferencesFragment$1;->this$0:Lbe/gentgo/tetsuki/PreferencesFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lbe/gentgo/tetsuki/PreferencesFragment;->dataObserver:Landroid/database/DataSetObserver;

    .line 228
    :cond_0
    return-void
.end method
