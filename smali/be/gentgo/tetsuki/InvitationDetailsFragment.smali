.class public Lbe/gentgo/tetsuki/InvitationDetailsFragment;
.super Landroid/app/Fragment;
.source "InvitationDetailsFragment.java"


# instance fields
.field private invitation:Lbe/gentgo/tetsuki/Invitation;


# direct methods
.method public constructor <init>(Lbe/gentgo/tetsuki/Invitation;)V
    .locals 0
    .param p1, "invitation"    # Lbe/gentgo/tetsuki/Invitation;

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 18
    iput-object p1, p0, Lbe/gentgo/tetsuki/InvitationDetailsFragment;->invitation:Lbe/gentgo/tetsuki/Invitation;

    .line 19
    return-void
.end method

.method static synthetic access$0(Lbe/gentgo/tetsuki/InvitationDetailsFragment;)Lbe/gentgo/tetsuki/Invitation;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lbe/gentgo/tetsuki/InvitationDetailsFragment;->invitation:Lbe/gentgo/tetsuki/Invitation;

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 22
    const v7, 0x7f030013

    invoke-virtual {p1, v7, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 24
    .local v5, "result":Landroid/view/View;
    iget-object v7, p0, Lbe/gentgo/tetsuki/InvitationDetailsFragment;->invitation:Lbe/gentgo/tetsuki/Invitation;

    invoke-virtual {v7}, Lbe/gentgo/tetsuki/Invitation;->isOpen()Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lbe/gentgo/tetsuki/InvitationDetailsFragment;->invitation:Lbe/gentgo/tetsuki/Invitation;

    invoke-virtual {v7}, Lbe/gentgo/tetsuki/Invitation;->isUsingNMatch()Z

    move-result v7

    if-nez v7, :cond_1

    .line 26
    .local v6, "showHandicap":Z
    :goto_0
    const v7, 0x7f0b002b

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    .line 27
    .local v4, "list":Landroid/widget/ListView;
    new-instance v7, Lbe/gentgo/tetsuki/InvitationAdapter;

    iget-object v8, p0, Lbe/gentgo/tetsuki/InvitationDetailsFragment;->invitation:Lbe/gentgo/tetsuki/Invitation;

    invoke-virtual {v8}, Lbe/gentgo/tetsuki/Invitation;->getGameSettings()Lbe/gentgo/tetsuki/GameSettings;

    move-result-object v8

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/InvitationDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v7, v8, v6, v9}, Lbe/gentgo/tetsuki/InvitationAdapter;-><init>(Lbe/gentgo/tetsuki/GameSettings;ZLandroid/app/Activity;)V

    invoke-virtual {v4, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 28
    new-instance v7, Lbe/gentgo/tetsuki/InvitationDetailsFragment$1;

    invoke-direct {v7, p0}, Lbe/gentgo/tetsuki/InvitationDetailsFragment$1;-><init>(Lbe/gentgo/tetsuki/InvitationDetailsFragment;)V

    invoke-virtual {v4, v7}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 43
    const v7, 0x7f0b003d

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 44
    .local v3, "info":Landroid/widget/TextView;
    const v7, 0x7f0b006c

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 46
    .local v2, "footer":Landroid/widget/TextView;
    if-nez v6, :cond_2

    .line 47
    const v7, 0x7f080104

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(I)V

    .line 51
    :goto_1
    iget-object v7, p0, Lbe/gentgo/tetsuki/InvitationDetailsFragment;->invitation:Lbe/gentgo/tetsuki/Invitation;

    invoke-virtual {v7}, Lbe/gentgo/tetsuki/Invitation;->isOpen()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 52
    const v7, 0x7f0800a1

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(I)V

    .line 58
    :goto_2
    const v7, 0x7f0b006e

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 59
    .local v0, "accept":Landroid/widget/Button;
    const v7, 0x7f0b006d

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 60
    .local v1, "decline":Landroid/widget/Button;
    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    const v8, -0xcc44cd

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 61
    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    const v8, -0x44cccd

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 63
    iget-object v7, p0, Lbe/gentgo/tetsuki/InvitationDetailsFragment;->invitation:Lbe/gentgo/tetsuki/Invitation;

    invoke-virtual {v7}, Lbe/gentgo/tetsuki/Invitation;->isSentByMe()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lbe/gentgo/tetsuki/InvitationDetailsFragment;->invitation:Lbe/gentgo/tetsuki/Invitation;

    invoke-virtual {v7}, Lbe/gentgo/tetsuki/Invitation;->isOpen()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 65
    :cond_0
    const v7, 0x7f080031

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setText(I)V

    .line 66
    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 73
    :goto_3
    new-instance v7, Lbe/gentgo/tetsuki/InvitationDetailsFragment$2;

    invoke-direct {v7, p0}, Lbe/gentgo/tetsuki/InvitationDetailsFragment$2;-><init>(Lbe/gentgo/tetsuki/InvitationDetailsFragment;)V

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    new-instance v7, Lbe/gentgo/tetsuki/InvitationDetailsFragment$3;

    invoke-direct {v7, p0}, Lbe/gentgo/tetsuki/InvitationDetailsFragment$3;-><init>(Lbe/gentgo/tetsuki/InvitationDetailsFragment;)V

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    return-object v5

    .line 24
    .end local v0    # "accept":Landroid/widget/Button;
    .end local v1    # "decline":Landroid/widget/Button;
    .end local v2    # "footer":Landroid/widget/TextView;
    .end local v3    # "info":Landroid/widget/TextView;
    .end local v4    # "list":Landroid/widget/ListView;
    .end local v6    # "showHandicap":Z
    :cond_1
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 49
    .restart local v2    # "footer":Landroid/widget/TextView;
    .restart local v3    # "info":Landroid/widget/TextView;
    .restart local v4    # "list":Landroid/widget/ListView;
    .restart local v6    # "showHandicap":Z
    :cond_2
    const-string v7, ""

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 53
    :cond_3
    iget-object v7, p0, Lbe/gentgo/tetsuki/InvitationDetailsFragment;->invitation:Lbe/gentgo/tetsuki/Invitation;

    invoke-virtual {v7}, Lbe/gentgo/tetsuki/Invitation;->isSentByMe()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 54
    const v7, 0x7f08005e

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 56
    :cond_4
    const v7, 0x7f08005f

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 70
    .restart local v0    # "accept":Landroid/widget/Button;
    .restart local v1    # "decline":Landroid/widget/Button;
    :cond_5
    const v7, 0x7f080061

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setText(I)V

    goto :goto_3
.end method
