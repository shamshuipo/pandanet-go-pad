.class public Lbe/gentgo/tetsuki/TimeSettingsFragment;
.super Landroid/app/Fragment;
.source "TimeSettingsFragment.java"


# instance fields
.field private allowEditing:Z

.field countWheel:Lkankan/wheel/widget/WheelView;

.field hoursWheel:Lkankan/wheel/widget/WheelView;

.field list:Landroid/widget/ListView;

.field private listAdapter:Landroid/widget/ListAdapter;

.field listObserver:Landroid/database/DataSetObserver;

.field minutesWheel:Lkankan/wheel/widget/WheelView;

.field movesWheel:Lkankan/wheel/widget/WheelView;

.field secondsWheel:Lkankan/wheel/widget/WheelView;

.field private selectedRow:I

.field private settings:Lbe/gentgo/tetsuki/GameTimeSettings;

.field typeWheel:Lkankan/wheel/widget/WheelView;

.field updatingWheels:Z

.field private wheelListener:Lkankan/wheel/widget/OnWheelChangedListener;


# direct methods
.method public constructor <init>(Lbe/gentgo/tetsuki/GameTimeSettings;Z)V
    .locals 1
    .param p1, "settings"    # Lbe/gentgo/tetsuki/GameTimeSettings;
    .param p2, "allowEditing"    # Z

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment;->updatingWheels:Z

    .line 173
    new-instance v0, Lbe/gentgo/tetsuki/TimeSettingsFragment$1;

    invoke-direct {v0, p0}, Lbe/gentgo/tetsuki/TimeSettingsFragment$1;-><init>(Lbe/gentgo/tetsuki/TimeSettingsFragment;)V

    iput-object v0, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment;->wheelListener:Lkankan/wheel/widget/OnWheelChangedListener;

    .line 241
    const/4 v0, -0x1

    iput v0, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment;->selectedRow:I

    .line 242
    new-instance v0, Lbe/gentgo/tetsuki/TimeSettingsFragment$2;

    invoke-direct {v0, p0}, Lbe/gentgo/tetsuki/TimeSettingsFragment$2;-><init>(Lbe/gentgo/tetsuki/TimeSettingsFragment;)V

    iput-object v0, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment;->listAdapter:Landroid/widget/ListAdapter;

    .line 24
    iput-object p1, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment;->settings:Lbe/gentgo/tetsuki/GameTimeSettings;

    .line 25
    iput-boolean p2, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment;->allowEditing:Z

    .line 26
    return-void
.end method

.method static synthetic access$0(Lbe/gentgo/tetsuki/TimeSettingsFragment;)Lbe/gentgo/tetsuki/GameTimeSettings;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment;->settings:Lbe/gentgo/tetsuki/GameTimeSettings;

    return-object v0
.end method

.method static synthetic access$1(Lbe/gentgo/tetsuki/TimeSettingsFragment;)I
    .locals 1

    .prologue
    .line 241
    iget v0, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment;->selectedRow:I

    return v0
.end method

.method static synthetic access$2(Lbe/gentgo/tetsuki/TimeSettingsFragment;)V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0}, Lbe/gentgo/tetsuki/TimeSettingsFragment;->update()V

    return-void
.end method

.method static synthetic access$3(Lbe/gentgo/tetsuki/TimeSettingsFragment;I)V
    .locals 0

    .prologue
    .line 241
    iput p1, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment;->selectedRow:I

    return-void
.end method

.method private update()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 122
    iput-boolean v4, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment;->updatingWheels:Z

    .line 123
    iget-object v3, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment;->listObserver:Landroid/database/DataSetObserver;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment;->listObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v3}, Landroid/database/DataSetObserver;->onChanged()V

    .line 124
    :cond_0
    iget v3, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment;->selectedRow:I

    if-nez v3, :cond_1

    .line 126
    iget-object v3, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment;->settings:Lbe/gentgo/tetsuki/GameTimeSettings;

    invoke-virtual {v3}, Lbe/gentgo/tetsuki/GameTimeSettings;->hasExtraTime()Z

    move-result v3

    if-nez v3, :cond_5

    .line 127
    iget-object v3, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment;->typeWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v3, v5}, Lkankan/wheel/widget/WheelView;->setCurrentItem(I)V

    .line 135
    :cond_1
    :goto_0
    iget v3, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment;->selectedRow:I

    if-ne v3, v4, :cond_2

    .line 137
    iget-object v3, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment;->settings:Lbe/gentgo/tetsuki/GameTimeSettings;

    invoke-virtual {v3}, Lbe/gentgo/tetsuki/GameTimeSettings;->getInitialTime()I

    move-result v2

    .line 138
    .local v2, "time":I
    iget-object v3, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment;->hoursWheel:Lkankan/wheel/widget/WheelView;

    div-int/lit16 v4, v2, 0xe10

    invoke-virtual {v3, v4}, Lkankan/wheel/widget/WheelView;->setCurrentItem(I)V

    .line 139
    iget-object v3, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment;->minutesWheel:Lkankan/wheel/widget/WheelView;

    div-int/lit8 v4, v2, 0x3c

    rem-int/lit8 v4, v4, 0x3c

    invoke-virtual {v3, v4}, Lkankan/wheel/widget/WheelView;->setCurrentItem(I)V

    .line 141
    .end local v2    # "time":I
    :cond_2
    iget v3, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment;->selectedRow:I

    if-ne v3, v6, :cond_3

    .line 143
    iget-object v3, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment;->settings:Lbe/gentgo/tetsuki/GameTimeSettings;

    invoke-virtual {v3}, Lbe/gentgo/tetsuki/GameTimeSettings;->isCanadianExtraTime()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 145
    iget-object v3, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment;->settings:Lbe/gentgo/tetsuki/GameTimeSettings;

    invoke-virtual {v3}, Lbe/gentgo/tetsuki/GameTimeSettings;->getPeriod()I

    move-result v1

    .line 146
    .local v1, "period":I
    iget-object v3, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment;->minutesWheel:Lkankan/wheel/widget/WheelView;

    div-int/lit8 v4, v1, 0x3c

    invoke-virtual {v3, v4}, Lkankan/wheel/widget/WheelView;->setCurrentItem(I)V

    .line 147
    iget-object v3, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment;->secondsWheel:Lkankan/wheel/widget/WheelView;

    rem-int/lit8 v4, v1, 0x3c

    invoke-virtual {v3, v4}, Lkankan/wheel/widget/WheelView;->setCurrentItem(I)V

    .line 148
    iget-object v3, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment;->movesWheel:Lkankan/wheel/widget/WheelView;

    iget-object v4, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment;->settings:Lbe/gentgo/tetsuki/GameTimeSettings;

    invoke-virtual {v4}, Lbe/gentgo/tetsuki/GameTimeSettings;->getNrOfStones()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Lkankan/wheel/widget/WheelView;->setCurrentItem(I)V

    .line 163
    .end local v1    # "period":I
    :cond_3
    :goto_1
    iget v3, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment;->selectedRow:I

    if-ne v3, v7, :cond_4

    .line 165
    iget-object v3, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment;->settings:Lbe/gentgo/tetsuki/GameTimeSettings;

    invoke-virtual {v3}, Lbe/gentgo/tetsuki/GameTimeSettings;->getPeriod()I

    move-result v1

    .line 166
    .restart local v1    # "period":I
    iget-object v3, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment;->countWheel:Lkankan/wheel/widget/WheelView;

    iget-object v4, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment;->settings:Lbe/gentgo/tetsuki/GameTimeSettings;

    invoke-virtual {v4}, Lbe/gentgo/tetsuki/GameTimeSettings;->getNrOfPeriods()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Lkankan/wheel/widget/WheelView;->setCurrentItem(I)V

    .line 167
    iget-object v3, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment;->minutesWheel:Lkankan/wheel/widget/WheelView;

    div-int/lit8 v4, v1, 0x3c

    invoke-virtual {v3, v4}, Lkankan/wheel/widget/WheelView;->setCurrentItem(I)V

    .line 168
    iget-object v3, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment;->secondsWheel:Lkankan/wheel/widget/WheelView;

    rem-int/lit8 v4, v1, 0x3c

    invoke-virtual {v3, v4}, Lkankan/wheel/widget/WheelView;->setCurrentItem(I)V

    .line 170
    .end local v1    # "period":I
    :cond_4
    iput-boolean v5, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment;->updatingWheels:Z

    .line 171
    return-void

    .line 129
    :cond_5
    iget-object v3, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment;->settings:Lbe/gentgo/tetsuki/GameTimeSettings;

    invoke-virtual {v3}, Lbe/gentgo/tetsuki/GameTimeSettings;->isCanadianExtraTime()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 130
    iget-object v3, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment;->typeWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v3, v4}, Lkankan/wheel/widget/WheelView;->setCurrentItem(I)V

    goto :goto_0

    .line 131
    :cond_6
    iget-object v3, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment;->settings:Lbe/gentgo/tetsuki/GameTimeSettings;

    invoke-virtual {v3}, Lbe/gentgo/tetsuki/GameTimeSettings;->isJapaneseExtraTime()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 132
    iget-object v3, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment;->typeWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v3, v6}, Lkankan/wheel/widget/WheelView;->setCurrentItem(I)V

    goto/16 :goto_0

    .line 133
    :cond_7
    iget-object v3, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment;->typeWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v3, v7}, Lkankan/wheel/widget/WheelView;->setCurrentItem(I)V

    goto/16 :goto_0

    .line 150
    :cond_8
    iget-object v3, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment;->settings:Lbe/gentgo/tetsuki/GameTimeSettings;

    invoke-virtual {v3}, Lbe/gentgo/tetsuki/GameTimeSettings;->isJapaneseExtraTime()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 152
    iget-object v3, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment;->settings:Lbe/gentgo/tetsuki/GameTimeSettings;

    invoke-virtual {v3}, Lbe/gentgo/tetsuki/GameTimeSettings;->getPeriod()I

    move-result v1

    .line 153
    .restart local v1    # "period":I
    iget-object v3, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment;->countWheel:Lkankan/wheel/widget/WheelView;

    iget-object v4, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment;->settings:Lbe/gentgo/tetsuki/GameTimeSettings;

    invoke-virtual {v4}, Lbe/gentgo/tetsuki/GameTimeSettings;->getNrOfPeriods()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Lkankan/wheel/widget/WheelView;->setCurrentItem(I)V

    .line 154
    iget-object v3, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment;->minutesWheel:Lkankan/wheel/widget/WheelView;

    div-int/lit8 v4, v1, 0x3c

    invoke-virtual {v3, v4}, Lkankan/wheel/widget/WheelView;->setCurrentItem(I)V

    .line 155
    iget-object v3, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment;->secondsWheel:Lkankan/wheel/widget/WheelView;

    rem-int/lit8 v4, v1, 0x3c

    invoke-virtual {v3, v4}, Lkankan/wheel/widget/WheelView;->setCurrentItem(I)V

    goto :goto_1

    .line 158
    .end local v1    # "period":I
    :cond_9
    iget-object v3, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment;->settings:Lbe/gentgo/tetsuki/GameTimeSettings;

    invoke-virtual {v3}, Lbe/gentgo/tetsuki/GameTimeSettings;->getTimePerMove()I

    move-result v0

    .line 159
    .local v0, "perMove":I
    iget-object v3, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment;->minutesWheel:Lkankan/wheel/widget/WheelView;

    div-int/lit8 v4, v0, 0x3c

    invoke-virtual {v3, v4}, Lkankan/wheel/widget/WheelView;->setCurrentItem(I)V

    .line 160
    iget-object v3, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment;->secondsWheel:Lkankan/wheel/widget/WheelView;

    rem-int/lit8 v4, v0, 0x3c

    invoke-virtual {v3, v4}, Lkankan/wheel/widget/WheelView;->setCurrentItem(I)V

    goto/16 :goto_1
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 13
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    const v9, 0x7f03002b

    const/4 v10, 0x0

    invoke-virtual {p1, v9, p2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 32
    .local v8, "view":Landroid/view/View;
    const v9, 0x7f0b00d7

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 33
    const v9, 0x7f0b002b

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ListView;

    iput-object v9, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment;->list:Landroid/widget/ListView;

    .line 35
    const v9, 0x7f0b00d8

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lkankan/wheel/widget/WheelView;

    iput-object v9, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment;->typeWheel:Lkankan/wheel/widget/WheelView;

    .line 36
    const v9, 0x7f0b00d9

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lkankan/wheel/widget/WheelView;

    iput-object v9, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment;->countWheel:Lkankan/wheel/widget/WheelView;

    .line 37
    const v9, 0x7f0b00da

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lkankan/wheel/widget/WheelView;

    iput-object v9, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment;->hoursWheel:Lkankan/wheel/widget/WheelView;

    .line 38
    const v9, 0x7f0b00db

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lkankan/wheel/widget/WheelView;

    iput-object v9, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment;->minutesWheel:Lkankan/wheel/widget/WheelView;

    .line 39
    const v9, 0x7f0b00dc

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lkankan/wheel/widget/WheelView;

    iput-object v9, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment;->secondsWheel:Lkankan/wheel/widget/WheelView;

    .line 40
    const v9, 0x7f0b00dd

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lkankan/wheel/widget/WheelView;

    iput-object v9, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment;->movesWheel:Lkankan/wheel/widget/WheelView;

    .line 42
    iget-object v9, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment;->typeWheel:Lkankan/wheel/widget/WheelView;

    iget-object v10, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment;->wheelListener:Lkankan/wheel/widget/OnWheelChangedListener;

    invoke-virtual {v9, v10}, Lkankan/wheel/widget/WheelView;->addChangingListener(Lkankan/wheel/widget/OnWheelChangedListener;)V

    .line 43
    iget-object v9, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment;->countWheel:Lkankan/wheel/widget/WheelView;

    iget-object v10, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment;->wheelListener:Lkankan/wheel/widget/OnWheelChangedListener;

    invoke-virtual {v9, v10}, Lkankan/wheel/widget/WheelView;->addChangingListener(Lkankan/wheel/widget/OnWheelChangedListener;)V

    .line 44
    iget-object v9, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment;->hoursWheel:Lkankan/wheel/widget/WheelView;

    iget-object v10, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment;->wheelListener:Lkankan/wheel/widget/OnWheelChangedListener;

    invoke-virtual {v9, v10}, Lkankan/wheel/widget/WheelView;->addChangingListener(Lkankan/wheel/widget/OnWheelChangedListener;)V

    .line 45
    iget-object v9, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment;->minutesWheel:Lkankan/wheel/widget/WheelView;

    iget-object v10, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment;->wheelListener:Lkankan/wheel/widget/OnWheelChangedListener;

    invoke-virtual {v9, v10}, Lkankan/wheel/widget/WheelView;->addChangingListener(Lkankan/wheel/widget/OnWheelChangedListener;)V

    .line 46
    iget-object v9, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment;->secondsWheel:Lkankan/wheel/widget/WheelView;

    iget-object v10, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment;->wheelListener:Lkankan/wheel/widget/OnWheelChangedListener;

    invoke-virtual {v9, v10}, Lkankan/wheel/widget/WheelView;->addChangingListener(Lkankan/wheel/widget/OnWheelChangedListener;)V

    .line 47
    iget-object v9, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment;->movesWheel:Lkankan/wheel/widget/WheelView;

    iget-object v10, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment;->wheelListener:Lkankan/wheel/widget/OnWheelChangedListener;

    invoke-virtual {v9, v10}, Lkankan/wheel/widget/WheelView;->addChangingListener(Lkankan/wheel/widget/OnWheelChangedListener;)V

    .line 49
    iget-object v9, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment;->list:Landroid/widget/ListView;

    iget-object v10, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment;->listAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 51
    const v9, 0x7f0b00d6

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 52
    .local v4, "okButton":Landroid/widget/Button;
    new-instance v9, Lbe/gentgo/tetsuki/TimeSettingsFragment$3;

    invoke-direct {v9, p0}, Lbe/gentgo/tetsuki/TimeSettingsFragment$3;-><init>(Lbe/gentgo/tetsuki/TimeSettingsFragment;)V

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-boolean v9, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment;->allowEditing:Z

    if-eqz v9, :cond_0

    iget-object v9, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment;->list:Landroid/widget/ListView;

    new-instance v10, Lbe/gentgo/tetsuki/TimeSettingsFragment$4;

    invoke-direct {v10, p0}, Lbe/gentgo/tetsuki/TimeSettingsFragment$4;-><init>(Lbe/gentgo/tetsuki/TimeSettingsFragment;)V

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 87
    :cond_0
    const/4 v9, 0x4

    new-array v7, v9, [Ljava/lang/String;

    .line 88
    .local v7, "types":[Ljava/lang/String;
    const/4 v9, 0x0

    const v10, 0x7f0800a8

    invoke-virtual {p0, v10}, Lbe/gentgo/tetsuki/TimeSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    .line 89
    const/4 v9, 0x1

    const v10, 0x7f0800a9

    invoke-virtual {p0, v10}, Lbe/gentgo/tetsuki/TimeSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    .line 90
    const/4 v9, 0x2

    const v10, 0x7f0800aa

    invoke-virtual {p0, v10}, Lbe/gentgo/tetsuki/TimeSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    .line 91
    const/4 v9, 0x3

    const v10, 0x7f0800ab

    invoke-virtual {p0, v10}, Lbe/gentgo/tetsuki/TimeSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    .line 92
    iget-object v9, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment;->typeWheel:Lkankan/wheel/widget/WheelView;

    new-instance v10, Lkankan/wheel/widget/adapters/ArrayWheelAdapter;

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/TimeSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v10, v11, v7}, Lkankan/wheel/widget/adapters/ArrayWheelAdapter;-><init>(Landroid/content/Context;[Ljava/lang/Object;)V

    invoke-virtual {v9, v10}, Lkankan/wheel/widget/WheelView;->setViewAdapter(Lkankan/wheel/widget/adapters/WheelViewAdapter;)V

    .line 94
    const/16 v9, 0x14

    new-array v5, v9, [Ljava/lang/String;

    .line 95
    .local v5, "periods":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v9, 0x14

    if-lt v1, v9, :cond_1

    .line 96
    iget-object v9, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment;->countWheel:Lkankan/wheel/widget/WheelView;

    new-instance v10, Lkankan/wheel/widget/adapters/ArrayWheelAdapter;

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/TimeSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v10, v11, v5}, Lkankan/wheel/widget/adapters/ArrayWheelAdapter;-><init>(Landroid/content/Context;[Ljava/lang/Object;)V

    invoke-virtual {v9, v10}, Lkankan/wheel/widget/WheelView;->setViewAdapter(Lkankan/wheel/widget/adapters/WheelViewAdapter;)V

    .line 98
    const/16 v9, 0xd

    new-array v0, v9, [Ljava/lang/String;

    .line 99
    .local v0, "hours":[Ljava/lang/String;
    const/4 v1, 0x0

    :goto_1
    const/16 v9, 0xd

    if-lt v1, v9, :cond_2

    .line 100
    iget-object v9, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment;->hoursWheel:Lkankan/wheel/widget/WheelView;

    new-instance v10, Lkankan/wheel/widget/adapters/ArrayWheelAdapter;

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/TimeSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v10, v11, v0}, Lkankan/wheel/widget/adapters/ArrayWheelAdapter;-><init>(Landroid/content/Context;[Ljava/lang/Object;)V

    invoke-virtual {v9, v10}, Lkankan/wheel/widget/WheelView;->setViewAdapter(Lkankan/wheel/widget/adapters/WheelViewAdapter;)V

    .line 102
    const/16 v9, 0x3c

    new-array v2, v9, [Ljava/lang/String;

    .line 103
    .local v2, "minutes":[Ljava/lang/String;
    const/4 v1, 0x0

    :goto_2
    const/16 v9, 0x3c

    if-lt v1, v9, :cond_3

    .line 104
    iget-object v9, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment;->minutesWheel:Lkankan/wheel/widget/WheelView;

    new-instance v10, Lkankan/wheel/widget/adapters/ArrayWheelAdapter;

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/TimeSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v10, v11, v2}, Lkankan/wheel/widget/adapters/ArrayWheelAdapter;-><init>(Landroid/content/Context;[Ljava/lang/Object;)V

    invoke-virtual {v9, v10}, Lkankan/wheel/widget/WheelView;->setViewAdapter(Lkankan/wheel/widget/adapters/WheelViewAdapter;)V

    .line 105
    iget-object v9, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment;->minutesWheel:Lkankan/wheel/widget/WheelView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lkankan/wheel/widget/WheelView;->setCyclic(Z)V

    .line 107
    const/16 v9, 0x3c

    new-array v6, v9, [Ljava/lang/String;

    .line 108
    .local v6, "seconds":[Ljava/lang/String;
    const/4 v1, 0x0

    :goto_3
    const/16 v9, 0x3c

    if-lt v1, v9, :cond_4

    .line 109
    iget-object v9, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment;->secondsWheel:Lkankan/wheel/widget/WheelView;

    new-instance v10, Lkankan/wheel/widget/adapters/ArrayWheelAdapter;

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/TimeSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v10, v11, v6}, Lkankan/wheel/widget/adapters/ArrayWheelAdapter;-><init>(Landroid/content/Context;[Ljava/lang/Object;)V

    invoke-virtual {v9, v10}, Lkankan/wheel/widget/WheelView;->setViewAdapter(Lkankan/wheel/widget/adapters/WheelViewAdapter;)V

    .line 110
    iget-object v9, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment;->secondsWheel:Lkankan/wheel/widget/WheelView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lkankan/wheel/widget/WheelView;->setCyclic(Z)V

    .line 112
    const/16 v9, 0x32

    new-array v3, v9, [Ljava/lang/String;

    .line 113
    .local v3, "moves":[Ljava/lang/String;
    const/4 v1, 0x0

    :goto_4
    const/16 v9, 0x32

    if-lt v1, v9, :cond_5

    .line 114
    iget-object v9, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment;->movesWheel:Lkankan/wheel/widget/WheelView;

    new-instance v10, Lkankan/wheel/widget/adapters/ArrayWheelAdapter;

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/TimeSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v10, v11, v3}, Lkankan/wheel/widget/adapters/ArrayWheelAdapter;-><init>(Landroid/content/Context;[Ljava/lang/Object;)V

    invoke-virtual {v9, v10}, Lkankan/wheel/widget/WheelView;->setViewAdapter(Lkankan/wheel/widget/adapters/WheelViewAdapter;)V

    .line 116
    return-object v8

    .line 95
    .end local v0    # "hours":[Ljava/lang/String;
    .end local v2    # "minutes":[Ljava/lang/String;
    .end local v3    # "moves":[Ljava/lang/String;
    .end local v6    # "seconds":[Ljava/lang/String;
    :cond_1
    const-string v9, "%d \u00d7"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    add-int/lit8 v12, v1, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 99
    .restart local v0    # "hours":[Ljava/lang/String;
    :cond_2
    const v9, 0x7f0800af

    invoke-virtual {p0, v9}, Lbe/gentgo/tetsuki/TimeSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 103
    .restart local v2    # "minutes":[Ljava/lang/String;
    :cond_3
    const v9, 0x7f08000e

    invoke-virtual {p0, v9}, Lbe/gentgo/tetsuki/TimeSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 108
    .restart local v6    # "seconds":[Ljava/lang/String;
    :cond_4
    const-string v9, "%d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    .line 113
    .restart local v3    # "moves":[Ljava/lang/String;
    :cond_5
    const v9, 0x7f0800b0

    invoke-virtual {p0, v9}, Lbe/gentgo/tetsuki/TimeSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    add-int/lit8 v12, v1, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4
.end method
