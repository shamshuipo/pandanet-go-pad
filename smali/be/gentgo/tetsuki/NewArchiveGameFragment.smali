.class public Lbe/gentgo/tetsuki/NewArchiveGameFragment;
.super Landroid/app/Fragment;
.source "NewArchiveGameFragment.java"


# instance fields
.field dateFormat:Ljava/text/DateFormat;

.field dateListener:Landroid/app/DatePickerDialog$OnDateSetListener;

.field gameSettings:Lbe/gentgo/tetsuki/GameSettings;

.field highlightedRow:I

.field listAdapter:Landroid/widget/ListAdapter;

.field listObserver:Landroid/database/DataSetObserver;


# direct methods
.method public constructor <init>(Lbe/gentgo/tetsuki/GameSettings;)V
    .locals 1
    .param p1, "settings"    # Lbe/gentgo/tetsuki/GameSettings;

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 129
    new-instance v0, Lbe/gentgo/tetsuki/NewArchiveGameFragment$1;

    invoke-direct {v0, p0}, Lbe/gentgo/tetsuki/NewArchiveGameFragment$1;-><init>(Lbe/gentgo/tetsuki/NewArchiveGameFragment;)V

    iput-object v0, p0, Lbe/gentgo/tetsuki/NewArchiveGameFragment;->dateListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 281
    new-instance v0, Lbe/gentgo/tetsuki/NewArchiveGameFragment$2;

    invoke-direct {v0, p0}, Lbe/gentgo/tetsuki/NewArchiveGameFragment$2;-><init>(Lbe/gentgo/tetsuki/NewArchiveGameFragment;)V

    iput-object v0, p0, Lbe/gentgo/tetsuki/NewArchiveGameFragment;->listAdapter:Landroid/widget/ListAdapter;

    .line 38
    iput-object p1, p0, Lbe/gentgo/tetsuki/NewArchiveGameFragment;->gameSettings:Lbe/gentgo/tetsuki/GameSettings;

    .line 39
    return-void
.end method

.method static synthetic access$0(Lbe/gentgo/tetsuki/NewArchiveGameFragment;I)V
    .locals 0

    .prologue
    .line 181
    invoke-direct {p0, p1}, Lbe/gentgo/tetsuki/NewArchiveGameFragment;->selectRow(I)V

    return-void
.end method

.method private selectRow(I)V
    .locals 12
    .param p1, "row"    # I

    .prologue
    .line 183
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/NewArchiveGameFragment;->getView()Landroid/view/View;

    move-result-object v9

    const v10, 0x7f0b002b

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ListView;

    .line 185
    .local v7, "list":Landroid/widget/ListView;
    const/4 v9, 0x2

    if-lt p1, v9, :cond_8

    .line 186
    const/4 v9, 0x1

    invoke-virtual {v7, p1, v9}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 187
    iput p1, p0, Lbe/gentgo/tetsuki/NewArchiveGameFragment;->highlightedRow:I

    .line 192
    :goto_0
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/NewArchiveGameFragment;->getView()Landroid/view/View;

    move-result-object v9

    const v10, 0x7f0b008c

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lkankan/wheel/widget/WheelView;

    .line 193
    .local v4, "handicapWheel":Lkankan/wheel/widget/WheelView;
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/NewArchiveGameFragment;->getView()Landroid/view/View;

    move-result-object v9

    const v10, 0x7f0b008d

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lkankan/wheel/widget/WheelView;

    .line 194
    .local v6, "komiWheel":Lkankan/wheel/widget/WheelView;
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/NewArchiveGameFragment;->getView()Landroid/view/View;

    move-result-object v9

    const v10, 0x7f0b008b

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lkankan/wheel/widget/WheelView;

    .line 196
    .local v1, "boardWheel":Lkankan/wheel/widget/WheelView;
    const/4 v9, 0x3

    if-ne p1, v9, :cond_9

    const/4 v9, 0x0

    :goto_1
    invoke-virtual {v4, v9}, Lkankan/wheel/widget/WheelView;->setVisibility(I)V

    .line 197
    const/4 v9, 0x3

    if-ne p1, v9, :cond_a

    const/4 v9, 0x0

    :goto_2
    invoke-virtual {v6, v9}, Lkankan/wheel/widget/WheelView;->setVisibility(I)V

    .line 198
    const/4 v9, 0x2

    if-ne p1, v9, :cond_b

    const/4 v9, 0x0

    :goto_3
    invoke-virtual {v1, v9}, Lkankan/wheel/widget/WheelView;->setVisibility(I)V

    .line 200
    const/4 v9, 0x3

    if-ne p1, v9, :cond_1

    .line 202
    iget-object v9, p0, Lbe/gentgo/tetsuki/NewArchiveGameFragment;->gameSettings:Lbe/gentgo/tetsuki/GameSettings;

    invoke-virtual {v9}, Lbe/gentgo/tetsuki/GameSettings;->getNrOfHandicapStones()I

    move-result v3

    .line 203
    .local v3, "handicap":I
    if-lez v3, :cond_0

    add-int/lit8 v3, v3, -0x1

    .line 204
    :cond_0
    const/4 v9, 0x0

    invoke-virtual {v4, v3, v9}, Lkankan/wheel/widget/WheelView;->setCurrentItem(IZ)V

    .line 205
    const/high16 v9, 0x40000000    # 2.0f

    iget-object v10, p0, Lbe/gentgo/tetsuki/NewArchiveGameFragment;->gameSettings:Lbe/gentgo/tetsuki/GameSettings;

    invoke-virtual {v10}, Lbe/gentgo/tetsuki/GameSettings;->getKomi()F

    move-result v10

    mul-float/2addr v9, v10

    float-to-int v9, v9

    add-int/lit8 v5, v9, 0xf

    .line 206
    .local v5, "komiRow":I
    const/4 v9, 0x0

    invoke-virtual {v6, v5, v9}, Lkankan/wheel/widget/WheelView;->setCurrentItem(IZ)V

    .line 208
    .end local v3    # "handicap":I
    .end local v5    # "komiRow":I
    :cond_1
    const/4 v9, 0x2

    if-ne p1, v9, :cond_4

    .line 210
    const/4 v0, 0x2

    .line 211
    .local v0, "boardRow":I
    iget-object v9, p0, Lbe/gentgo/tetsuki/NewArchiveGameFragment;->gameSettings:Lbe/gentgo/tetsuki/GameSettings;

    invoke-virtual {v9}, Lbe/gentgo/tetsuki/GameSettings;->getRows()I

    move-result v9

    const/16 v10, 0xd

    if-ne v9, v10, :cond_2

    const/4 v0, 0x1

    .line 212
    :cond_2
    iget-object v9, p0, Lbe/gentgo/tetsuki/NewArchiveGameFragment;->gameSettings:Lbe/gentgo/tetsuki/GameSettings;

    invoke-virtual {v9}, Lbe/gentgo/tetsuki/GameSettings;->getRows()I

    move-result v9

    const/16 v10, 0x9

    if-ne v9, v10, :cond_3

    const/4 v0, 0x0

    .line 213
    :cond_3
    const/4 v9, 0x0

    invoke-virtual {v1, v0, v9}, Lkankan/wheel/widget/WheelView;->setCurrentItem(IZ)V

    .line 215
    .end local v0    # "boardRow":I
    :cond_4
    if-nez p1, :cond_5

    .line 217
    new-instance v8, Lbe/gentgo/tetsuki/NewArchiveGameFragment$9;

    invoke-direct {v8, p0}, Lbe/gentgo/tetsuki/NewArchiveGameFragment$9;-><init>(Lbe/gentgo/tetsuki/NewArchiveGameFragment;)V

    .line 251
    .local v8, "nameDialog":Landroid/app/Fragment;
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/NewArchiveGameFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    check-cast v9, Lbe/gentgo/tetsuki/DialogFragmentActivity;

    const v10, 0x7f0b00a0

    const/4 v11, 0x1

    invoke-virtual {v9, v8, v10, v11}, Lbe/gentgo/tetsuki/DialogFragmentActivity;->pushFragment(Landroid/app/Fragment;IZ)V

    .line 254
    .end local v8    # "nameDialog":Landroid/app/Fragment;
    :cond_5
    const/4 v9, 0x1

    if-ne p1, v9, :cond_6

    .line 256
    new-instance v2, Lbe/gentgo/tetsuki/NewArchiveGameFragment$10;

    invoke-direct {v2, p0}, Lbe/gentgo/tetsuki/NewArchiveGameFragment$10;-><init>(Lbe/gentgo/tetsuki/NewArchiveGameFragment;)V

    .line 268
    .local v2, "datePicker":Landroid/app/DialogFragment;
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/NewArchiveGameFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v9

    const-string v10, "datePicker"

    invoke-virtual {v2, v9, v10}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 271
    .end local v2    # "datePicker":Landroid/app/DialogFragment;
    :cond_6
    iget-object v9, p0, Lbe/gentgo/tetsuki/NewArchiveGameFragment;->listObserver:Landroid/database/DataSetObserver;

    if-eqz v9, :cond_7

    iget-object v9, p0, Lbe/gentgo/tetsuki/NewArchiveGameFragment;->listObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v9}, Landroid/database/DataSetObserver;->onChanged()V

    .line 272
    :cond_7
    return-void

    .line 190
    .end local v1    # "boardWheel":Lkankan/wheel/widget/WheelView;
    .end local v4    # "handicapWheel":Lkankan/wheel/widget/WheelView;
    .end local v6    # "komiWheel":Lkankan/wheel/widget/WheelView;
    :cond_8
    const/4 v9, -0x1

    iput v9, p0, Lbe/gentgo/tetsuki/NewArchiveGameFragment;->highlightedRow:I

    goto/16 :goto_0

    .line 196
    .restart local v1    # "boardWheel":Lkankan/wheel/widget/WheelView;
    .restart local v4    # "handicapWheel":Lkankan/wheel/widget/WheelView;
    .restart local v6    # "komiWheel":Lkankan/wheel/widget/WheelView;
    :cond_9
    const/16 v9, 0x8

    goto/16 :goto_1

    .line 197
    :cond_a
    const/16 v9, 0x8

    goto/16 :goto_2

    .line 198
    :cond_b
    const/16 v9, 0x8

    goto/16 :goto_3
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 18
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-virtual/range {p0 .. p0}, Lbe/gentgo/tetsuki/NewArchiveGameFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-static {v14}, Landroid/text/format/DateFormat;->getLongDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lbe/gentgo/tetsuki/NewArchiveGameFragment;->dateFormat:Ljava/text/DateFormat;

    .line 46
    const v14, 0x7f03001b

    const/4 v15, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v14, v1, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v13

    .line 48
    .local v13, "view":Landroid/view/View;
    const v14, 0x7f0b008b

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lkankan/wheel/widget/WheelView;

    .line 49
    .local v3, "boardWheel":Lkankan/wheel/widget/WheelView;
    const v14, 0x7f0b008c

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lkankan/wheel/widget/WheelView;

    .line 50
    .local v5, "handicapWheel":Lkankan/wheel/widget/WheelView;
    const v14, 0x7f0b008d

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lkankan/wheel/widget/WheelView;

    .line 52
    .local v9, "komiWheel":Lkankan/wheel/widget/WheelView;
    const/4 v14, 0x3

    new-array v2, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    .line 53
    const v15, 0x7f08000f

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lbe/gentgo/tetsuki/NewArchiveGameFragment;->getString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v2, v14

    const/4 v14, 0x1

    .line 54
    const v15, 0x7f080010

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lbe/gentgo/tetsuki/NewArchiveGameFragment;->getString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v2, v14

    const/4 v14, 0x2

    .line 55
    const v15, 0x7f080011

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lbe/gentgo/tetsuki/NewArchiveGameFragment;->getString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v2, v14

    .line 57
    .local v2, "boardSizes":[Ljava/lang/String;
    new-instance v14, Lkankan/wheel/widget/adapters/ArrayWheelAdapter;

    invoke-virtual/range {p0 .. p0}, Lbe/gentgo/tetsuki/NewArchiveGameFragment;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-direct {v14, v15, v2}, Lkankan/wheel/widget/adapters/ArrayWheelAdapter;-><init>(Landroid/content/Context;[Ljava/lang/Object;)V

    invoke-virtual {v3, v14}, Lkankan/wheel/widget/WheelView;->setViewAdapter(Lkankan/wheel/widget/adapters/WheelViewAdapter;)V

    .line 58
    new-instance v14, Lbe/gentgo/tetsuki/NewArchiveGameFragment$3;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lbe/gentgo/tetsuki/NewArchiveGameFragment$3;-><init>(Lbe/gentgo/tetsuki/NewArchiveGameFragment;)V

    invoke-virtual {v3, v14}, Lkankan/wheel/widget/WheelView;->addChangingListener(Lkankan/wheel/widget/OnWheelChangedListener;)V

    .line 67
    const/16 v14, 0x9

    new-array v6, v14, [Ljava/lang/String;

    .line 68
    .local v6, "handicaps":[Ljava/lang/String;
    const/4 v14, 0x0

    const v15, 0x7f080074

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lbe/gentgo/tetsuki/NewArchiveGameFragment;->getString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v6, v14

    .line 69
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_0
    const/16 v14, 0x9

    if-lt v7, v14, :cond_0

    .line 70
    new-instance v14, Lkankan/wheel/widget/adapters/ArrayWheelAdapter;

    invoke-virtual/range {p0 .. p0}, Lbe/gentgo/tetsuki/NewArchiveGameFragment;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-direct {v14, v15, v6}, Lkankan/wheel/widget/adapters/ArrayWheelAdapter;-><init>(Landroid/content/Context;[Ljava/lang/Object;)V

    invoke-virtual {v5, v14}, Lkankan/wheel/widget/WheelView;->setViewAdapter(Lkankan/wheel/widget/adapters/WheelViewAdapter;)V

    .line 71
    new-instance v14, Lbe/gentgo/tetsuki/NewArchiveGameFragment$4;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lbe/gentgo/tetsuki/NewArchiveGameFragment$4;-><init>(Lbe/gentgo/tetsuki/NewArchiveGameFragment;)V

    invoke-virtual {v5, v14}, Lkankan/wheel/widget/WheelView;->addChangingListener(Lkankan/wheel/widget/OnWheelChangedListener;)V

    .line 80
    const/16 v14, 0x1f

    new-array v10, v14, [Ljava/lang/String;

    .line 81
    .local v10, "komis":[Ljava/lang/String;
    const/4 v7, 0x0

    :goto_1
    const/16 v14, 0x1f

    if-lt v7, v14, :cond_1

    .line 89
    new-instance v14, Lkankan/wheel/widget/adapters/ArrayWheelAdapter;

    invoke-virtual/range {p0 .. p0}, Lbe/gentgo/tetsuki/NewArchiveGameFragment;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-direct {v14, v15, v10}, Lkankan/wheel/widget/adapters/ArrayWheelAdapter;-><init>(Landroid/content/Context;[Ljava/lang/Object;)V

    invoke-virtual {v9, v14}, Lkankan/wheel/widget/WheelView;->setViewAdapter(Lkankan/wheel/widget/adapters/WheelViewAdapter;)V

    .line 90
    new-instance v14, Lbe/gentgo/tetsuki/NewArchiveGameFragment$5;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lbe/gentgo/tetsuki/NewArchiveGameFragment$5;-><init>(Lbe/gentgo/tetsuki/NewArchiveGameFragment;)V

    invoke-virtual {v9, v14}, Lkankan/wheel/widget/WheelView;->addChangingListener(Lkankan/wheel/widget/OnWheelChangedListener;)V

    .line 98
    const v14, 0x7f0b002b

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ListView;

    .line 99
    .local v11, "list":Landroid/widget/ListView;
    const/4 v14, 0x1

    invoke-virtual {v11, v14}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 100
    move-object/from16 v0, p0

    iget-object v14, v0, Lbe/gentgo/tetsuki/NewArchiveGameFragment;->listAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v11, v14}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 101
    new-instance v14, Lbe/gentgo/tetsuki/NewArchiveGameFragment$6;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lbe/gentgo/tetsuki/NewArchiveGameFragment$6;-><init>(Lbe/gentgo/tetsuki/NewArchiveGameFragment;)V

    invoke-virtual {v11, v14}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 108
    const v14, 0x7f0b008e

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 109
    .local v4, "cancel":Landroid/widget/Button;
    const v14, 0x7f0b008f

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    .line 110
    .local v12, "save":Landroid/widget/Button;
    new-instance v14, Lbe/gentgo/tetsuki/NewArchiveGameFragment$7;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lbe/gentgo/tetsuki/NewArchiveGameFragment$7;-><init>(Lbe/gentgo/tetsuki/NewArchiveGameFragment;)V

    invoke-virtual {v4, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    new-instance v14, Lbe/gentgo/tetsuki/NewArchiveGameFragment$8;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lbe/gentgo/tetsuki/NewArchiveGameFragment$8;-><init>(Lbe/gentgo/tetsuki/NewArchiveGameFragment;)V

    invoke-virtual {v12, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    return-object v13

    .line 69
    .end local v4    # "cancel":Landroid/widget/Button;
    .end local v10    # "komis":[Ljava/lang/String;
    .end local v11    # "list":Landroid/widget/ListView;
    .end local v12    # "save":Landroid/widget/Button;
    :cond_0
    const v14, 0x7f080076

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lbe/gentgo/tetsuki/NewArchiveGameFragment;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    add-int/lit8 v17, v7, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 82
    .restart local v10    # "komis":[Ljava/lang/String;
    :cond_1
    add-int/lit8 v14, v7, -0xf

    int-to-float v14, v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float v8, v14, v15

    .line 83
    .local v8, "komi":F
    const/4 v14, 0x0

    cmpl-float v14, v8, v14

    if-nez v14, :cond_2

    const v14, 0x7f080070

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lbe/gentgo/tetsuki/NewArchiveGameFragment;->getString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v10, v7

    .line 81
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 84
    :cond_2
    float-to-double v14, v8

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    cmpl-double v14, v14, v16

    if-nez v14, :cond_3

    const-string v14, "\u00bd"

    aput-object v14, v10, v7

    goto :goto_2

    .line 85
    :cond_3
    float-to-double v14, v8

    const-wide/high16 v16, -0x4020000000000000L    # -0.5

    cmpl-double v14, v14, v16

    if-nez v14, :cond_4

    const-string v14, "-\u00bd"

    aput-object v14, v10, v7

    goto :goto_2

    .line 86
    :cond_4
    rem-int/lit8 v14, v7, 0x2

    const/4 v15, 0x1

    if-ne v14, v15, :cond_5

    const-string v14, "%d"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    float-to-int v0, v8

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v10, v7

    goto :goto_2

    .line 87
    :cond_5
    const-string v14, "%d\u00bd"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    float-to-int v0, v8

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v10, v7

    goto :goto_2
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 125
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 126
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lbe/gentgo/tetsuki/NewArchiveGameFragment;->selectRow(I)V

    .line 127
    return-void
.end method
