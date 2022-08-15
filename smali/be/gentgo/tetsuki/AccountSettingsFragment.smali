.class public Lbe/gentgo/tetsuki/AccountSettingsFragment;
.super Landroid/app/Fragment;
.source "AccountSettingsFragment.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field adapter:Landroid/widget/ListAdapter;

.field dataObserver:Landroid/database/DataSetObserver;

.field disconnectRow:I

.field encodingRow:I

.field infoRow:I

.field itemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field japaneseRankingRow:I

.field japaneseRankingToggleListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field logoutRow:I

.field nrOfRows:I

.field passwordRow:I

.field profileHeader:I

.field serverHeader:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lbe/gentgo/tetsuki/AccountSettingsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lbe/gentgo/tetsuki/AccountSettingsFragment;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 19
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 20
    iput v0, p0, Lbe/gentgo/tetsuki/AccountSettingsFragment;->profileHeader:I

    .line 21
    iput v0, p0, Lbe/gentgo/tetsuki/AccountSettingsFragment;->infoRow:I

    .line 22
    iput v0, p0, Lbe/gentgo/tetsuki/AccountSettingsFragment;->passwordRow:I

    .line 23
    iput v0, p0, Lbe/gentgo/tetsuki/AccountSettingsFragment;->logoutRow:I

    .line 24
    iput v0, p0, Lbe/gentgo/tetsuki/AccountSettingsFragment;->serverHeader:I

    .line 25
    iput v0, p0, Lbe/gentgo/tetsuki/AccountSettingsFragment;->encodingRow:I

    .line 26
    iput v0, p0, Lbe/gentgo/tetsuki/AccountSettingsFragment;->japaneseRankingRow:I

    .line 27
    iput v0, p0, Lbe/gentgo/tetsuki/AccountSettingsFragment;->disconnectRow:I

    .line 53
    new-instance v0, Lbe/gentgo/tetsuki/AccountSettingsFragment$1;

    invoke-direct {v0, p0}, Lbe/gentgo/tetsuki/AccountSettingsFragment$1;-><init>(Lbe/gentgo/tetsuki/AccountSettingsFragment;)V

    iput-object v0, p0, Lbe/gentgo/tetsuki/AccountSettingsFragment;->adapter:Landroid/widget/ListAdapter;

    .line 189
    new-instance v0, Lbe/gentgo/tetsuki/AccountSettingsFragment$2;

    invoke-direct {v0, p0}, Lbe/gentgo/tetsuki/AccountSettingsFragment$2;-><init>(Lbe/gentgo/tetsuki/AccountSettingsFragment;)V

    iput-object v0, p0, Lbe/gentgo/tetsuki/AccountSettingsFragment;->itemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 252
    new-instance v0, Lbe/gentgo/tetsuki/AccountSettingsFragment$3;

    invoke-direct {v0, p0}, Lbe/gentgo/tetsuki/AccountSettingsFragment$3;-><init>(Lbe/gentgo/tetsuki/AccountSettingsFragment;)V

    iput-object v0, p0, Lbe/gentgo/tetsuki/AccountSettingsFragment;->japaneseRankingToggleListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 265
    const/4 v0, 0x0

    iput-object v0, p0, Lbe/gentgo/tetsuki/AccountSettingsFragment;->dataObserver:Landroid/database/DataSetObserver;

    .line 19
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 31
    const v3, 0x7f030026

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 32
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f0b002b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 33
    .local v0, "list":Landroid/widget/ListView;
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/AccountSettingsFragment;->updateIndices()V

    .line 34
    iget-object v3, p0, Lbe/gentgo/tetsuki/AccountSettingsFragment;->adapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 35
    iget-object v3, p0, Lbe/gentgo/tetsuki/AccountSettingsFragment;->itemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 36
    const v3, 0x7f0b0029

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 37
    .local v1, "title":Landroid/widget/TextView;
    invoke-static {}, Lbe/gentgo/tetsuki/Preferences;->getLoginID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    return-object v2
.end method

.method updateIndices()V
    .locals 2

    .prologue
    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lbe/gentgo/tetsuki/AccountSettingsFragment;->nrOfRows:I

    .line 43
    iget v0, p0, Lbe/gentgo/tetsuki/AccountSettingsFragment;->nrOfRows:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lbe/gentgo/tetsuki/AccountSettingsFragment;->nrOfRows:I

    iput v0, p0, Lbe/gentgo/tetsuki/AccountSettingsFragment;->profileHeader:I

    .line 44
    iget v0, p0, Lbe/gentgo/tetsuki/AccountSettingsFragment;->nrOfRows:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lbe/gentgo/tetsuki/AccountSettingsFragment;->nrOfRows:I

    iput v0, p0, Lbe/gentgo/tetsuki/AccountSettingsFragment;->infoRow:I

    .line 45
    iget v0, p0, Lbe/gentgo/tetsuki/AccountSettingsFragment;->nrOfRows:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lbe/gentgo/tetsuki/AccountSettingsFragment;->nrOfRows:I

    iput v0, p0, Lbe/gentgo/tetsuki/AccountSettingsFragment;->passwordRow:I

    .line 46
    iget v0, p0, Lbe/gentgo/tetsuki/AccountSettingsFragment;->nrOfRows:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lbe/gentgo/tetsuki/AccountSettingsFragment;->nrOfRows:I

    iput v0, p0, Lbe/gentgo/tetsuki/AccountSettingsFragment;->logoutRow:I

    .line 47
    iget v0, p0, Lbe/gentgo/tetsuki/AccountSettingsFragment;->nrOfRows:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lbe/gentgo/tetsuki/AccountSettingsFragment;->nrOfRows:I

    iput v0, p0, Lbe/gentgo/tetsuki/AccountSettingsFragment;->serverHeader:I

    .line 48
    iget v0, p0, Lbe/gentgo/tetsuki/AccountSettingsFragment;->nrOfRows:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lbe/gentgo/tetsuki/AccountSettingsFragment;->nrOfRows:I

    iput v0, p0, Lbe/gentgo/tetsuki/AccountSettingsFragment;->encodingRow:I

    .line 49
    iget v0, p0, Lbe/gentgo/tetsuki/AccountSettingsFragment;->nrOfRows:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lbe/gentgo/tetsuki/AccountSettingsFragment;->nrOfRows:I

    iput v0, p0, Lbe/gentgo/tetsuki/AccountSettingsFragment;->japaneseRankingRow:I

    .line 50
    iget v0, p0, Lbe/gentgo/tetsuki/AccountSettingsFragment;->nrOfRows:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lbe/gentgo/tetsuki/AccountSettingsFragment;->nrOfRows:I

    iput v0, p0, Lbe/gentgo/tetsuki/AccountSettingsFragment;->disconnectRow:I

    .line 51
    return-void
.end method
