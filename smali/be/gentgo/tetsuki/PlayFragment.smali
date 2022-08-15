.class public Lbe/gentgo/tetsuki/PlayFragment;
.super Landroid/app/Fragment;
.source "PlayFragment.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final receivedCardIndices:[I

.field private static final sentCardIndices:[I


# instance fields
.field protected invitationManager:Lbe/gentgo/tetsuki/InvitationManager;

.field listener:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 13
    const-class v0, Lbe/gentgo/tetsuki/PlayFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lbe/gentgo/tetsuki/PlayFragment;->$assertionsDisabled:Z

    .line 76
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lbe/gentgo/tetsuki/PlayFragment;->sentCardIndices:[I

    .line 77
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lbe/gentgo/tetsuki/PlayFragment;->receivedCardIndices:[I

    return-void

    .line 13
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 76
    nop

    :array_0
    .array-data 4
        0x7f0b0071
        0x7f0b0073
        0x7f0b0075
        0x7f0b0077
        0x7f0b0079
        0x7f0b007b
    .end array-data

    .line 77
    :array_1
    .array-data 4
        0x7f0b0072
        0x7f0b0074
        0x7f0b0076
        0x7f0b0078
        0x7f0b007a
        0x7f0b007c
    .end array-data
.end method

.method public constructor <init>(Lbe/gentgo/tetsuki/InvitationManager;)V
    .locals 1
    .param p1, "mgr"    # Lbe/gentgo/tetsuki/InvitationManager;

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 262
    new-instance v0, Lbe/gentgo/tetsuki/PlayFragment$1;

    invoke-direct {v0, p0}, Lbe/gentgo/tetsuki/PlayFragment$1;-><init>(Lbe/gentgo/tetsuki/PlayFragment;)V

    iput-object v0, p0, Lbe/gentgo/tetsuki/PlayFragment;->listener:Ljava/lang/Runnable;

    .line 16
    iput-object p1, p0, Lbe/gentgo/tetsuki/PlayFragment;->invitationManager:Lbe/gentgo/tetsuki/InvitationManager;

    .line 17
    return-void
.end method

.method private acceptTapped(Landroid/view/ViewParent;)V
    .locals 6
    .param p1, "card"    # Landroid/view/ViewParent;

    .prologue
    .line 245
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x6

    if-lt v0, v2, :cond_0

    .line 253
    :goto_1
    return-void

    .line 247
    :cond_0
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/PlayFragment;->getView()Landroid/view/View;

    move-result-object v2

    sget-object v3, Lbe/gentgo/tetsuki/PlayFragment;->receivedCardIndices:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-ne p1, v2, :cond_1

    .line 248
    iget-object v2, p0, Lbe/gentgo/tetsuki/PlayFragment;->invitationManager:Lbe/gentgo/tetsuki/InvitationManager;

    invoke-virtual {v2}, Lbe/gentgo/tetsuki/InvitationManager;->getReceivedInvitations()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbe/gentgo/tetsuki/Invitation;

    .line 249
    .local v1, "invitation":Lbe/gentgo/tetsuki/Invitation;
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v2

    iget-wide v4, v1, Lbe/gentgo/tetsuki/Invitation;->nativePointer:J

    invoke-virtual {v2, v4, v5}, Lbe/gentgo/tetsuki/Server;->acceptInvitation(J)V

    goto :goto_1

    .line 245
    .end local v1    # "invitation":Lbe/gentgo/tetsuki/Invitation;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic access$0(Lbe/gentgo/tetsuki/PlayFragment;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lbe/gentgo/tetsuki/PlayFragment;->update()V

    return-void
.end method

.method static synthetic access$1(Lbe/gentgo/tetsuki/PlayFragment;Landroid/view/ViewParent;)V
    .locals 0

    .prologue
    .line 220
    invoke-direct {p0, p1}, Lbe/gentgo/tetsuki/PlayFragment;->deleteTapped(Landroid/view/ViewParent;)V

    return-void
.end method

.method static synthetic access$2(Lbe/gentgo/tetsuki/PlayFragment;Landroid/view/ViewParent;)V
    .locals 0

    .prologue
    .line 231
    invoke-direct {p0, p1}, Lbe/gentgo/tetsuki/PlayFragment;->declineTapped(Landroid/view/ViewParent;)V

    return-void
.end method

.method static synthetic access$3(Lbe/gentgo/tetsuki/PlayFragment;Landroid/view/ViewParent;)V
    .locals 0

    .prologue
    .line 243
    invoke-direct {p0, p1}, Lbe/gentgo/tetsuki/PlayFragment;->acceptTapped(Landroid/view/ViewParent;)V

    return-void
.end method

.method private declineTapped(Landroid/view/ViewParent;)V
    .locals 6
    .param p1, "card"    # Landroid/view/ViewParent;

    .prologue
    .line 233
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x6

    if-lt v0, v2, :cond_0

    .line 242
    :goto_1
    return-void

    .line 235
    :cond_0
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/PlayFragment;->getView()Landroid/view/View;

    move-result-object v2

    sget-object v3, Lbe/gentgo/tetsuki/PlayFragment;->receivedCardIndices:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-ne p1, v2, :cond_1

    .line 236
    iget-object v2, p0, Lbe/gentgo/tetsuki/PlayFragment;->invitationManager:Lbe/gentgo/tetsuki/InvitationManager;

    invoke-virtual {v2}, Lbe/gentgo/tetsuki/InvitationManager;->getReceivedInvitations()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbe/gentgo/tetsuki/Invitation;

    .line 237
    .local v1, "invitation":Lbe/gentgo/tetsuki/Invitation;
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v2

    iget-wide v4, v1, Lbe/gentgo/tetsuki/Invitation;->nativePointer:J

    invoke-virtual {v2, v4, v5}, Lbe/gentgo/tetsuki/Server;->declineInvitation(J)V

    goto :goto_1

    .line 233
    .end local v1    # "invitation":Lbe/gentgo/tetsuki/Invitation;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private deleteTapped(Landroid/view/ViewParent;)V
    .locals 6
    .param p1, "card"    # Landroid/view/ViewParent;

    .prologue
    .line 222
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x6

    if-lt v0, v2, :cond_0

    .line 230
    :goto_1
    return-void

    .line 224
    :cond_0
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/PlayFragment;->getView()Landroid/view/View;

    move-result-object v2

    sget-object v3, Lbe/gentgo/tetsuki/PlayFragment;->sentCardIndices:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-ne p1, v2, :cond_1

    .line 225
    iget-object v2, p0, Lbe/gentgo/tetsuki/PlayFragment;->invitationManager:Lbe/gentgo/tetsuki/InvitationManager;

    invoke-virtual {v2}, Lbe/gentgo/tetsuki/InvitationManager;->getSentInvitations()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbe/gentgo/tetsuki/Invitation;

    .line 226
    .local v1, "invitation":Lbe/gentgo/tetsuki/Invitation;
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v2

    iget-wide v4, v1, Lbe/gentgo/tetsuki/Invitation;->nativePointer:J

    invoke-virtual {v2, v4, v5}, Lbe/gentgo/tetsuki/Server;->declineInvitation(J)V

    goto :goto_1

    .line 222
    .end local v1    # "invitation":Lbe/gentgo/tetsuki/Invitation;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getButtonsParent()Landroid/view/View;
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainActionBar()Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/PlayFragment;->getView()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private update()V
    .locals 14

    .prologue
    .line 81
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getDispatcher()Lbe/gentgo/tetsuki/Dispatcher;

    move-result-object v12

    invoke-interface {v12}, Lbe/gentgo/tetsuki/Dispatcher;->canGoToMyGame()Z

    move-result v0

    .line 82
    .local v0, "amPlaying":Z
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/PlayFragment;->getView()Landroid/view/View;

    move-result-object v12

    const v13, 0x7f0b007e

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    if-eqz v0, :cond_0

    const/4 v12, 0x0

    :goto_0
    invoke-virtual {v13, v12}, Landroid/view/View;->setVisibility(I)V

    .line 84
    invoke-direct {p0}, Lbe/gentgo/tetsuki/PlayFragment;->getButtonsParent()Landroid/view/View;

    move-result-object v12

    const v13, 0x7f0b0024

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 87
    .local v8, "seekButton":Landroid/widget/Button;
    iget-object v12, p0, Lbe/gentgo/tetsuki/PlayFragment;->invitationManager:Lbe/gentgo/tetsuki/InvitationManager;

    invoke-virtual {v12}, Lbe/gentgo/tetsuki/InvitationManager;->getSeekInvitation()Lbe/gentgo/tetsuki/Invitation;

    move-result-object v12

    if-eqz v12, :cond_1

    const/4 v3, 0x1

    .line 88
    .local v3, "isSeeking":Z
    :goto_1
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->isTablet()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 89
    if-eqz v3, :cond_2

    .line 90
    const v12, 0x7f020024

    invoke-virtual {v8, v12}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 96
    :goto_2
    if-eqz v0, :cond_5

    const/16 v12, 0x8

    :goto_3
    invoke-virtual {v8, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 97
    invoke-direct {p0}, Lbe/gentgo/tetsuki/PlayFragment;->getButtonsParent()Landroid/view/View;

    move-result-object v12

    const v13, 0x7f0b0023

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    if-eqz v0, :cond_6

    const/16 v12, 0x8

    :goto_4
    invoke-virtual {v13, v12}, Landroid/view/View;->setVisibility(I)V

    .line 101
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/PlayFragment;->getView()Landroid/view/View;

    move-result-object v12

    const v13, 0x7f0b007d

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 102
    .local v2, "info":Landroid/widget/TextView;
    if-eqz v0, :cond_7

    const/16 v12, 0x8

    :goto_5
    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v11

    .line 104
    .local v11, "server":Lbe/gentgo/tetsuki/Server;
    invoke-virtual {v11}, Lbe/gentgo/tetsuki/Server;->getErrorState()I

    move-result v12

    if-eqz v12, :cond_8

    .line 105
    const v12, 0x7f080023

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setText(I)V

    .line 112
    :goto_6
    iget-object v12, p0, Lbe/gentgo/tetsuki/PlayFragment;->invitationManager:Lbe/gentgo/tetsuki/InvitationManager;

    invoke-virtual {v12}, Lbe/gentgo/tetsuki/InvitationManager;->getSentInvitations()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 113
    .local v5, "nrOfSent":I
    iget-object v12, p0, Lbe/gentgo/tetsuki/PlayFragment;->invitationManager:Lbe/gentgo/tetsuki/InvitationManager;

    invoke-virtual {v12}, Lbe/gentgo/tetsuki/InvitationManager;->getReceivedInvitations()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 115
    .local v4, "nrOfReceived":I
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/PlayFragment;->getView()Landroid/view/View;

    move-result-object v12

    const v13, 0x7f0b006f

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    if-lez v5, :cond_b

    const/4 v12, 0x0

    :goto_7
    invoke-virtual {v13, v12}, Landroid/view/View;->setVisibility(I)V

    .line 116
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/PlayFragment;->getView()Landroid/view/View;

    move-result-object v12

    const v13, 0x7f0b0070

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    if-lez v4, :cond_c

    const/4 v12, 0x0

    :goto_8
    invoke-virtual {v13, v12}, Landroid/view/View;->setVisibility(I)V

    .line 118
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    const/4 v12, 0x6

    if-lt v1, v12, :cond_d

    .line 144
    return-void

    .line 82
    .end local v1    # "i":I
    .end local v2    # "info":Landroid/widget/TextView;
    .end local v3    # "isSeeking":Z
    .end local v4    # "nrOfReceived":I
    .end local v5    # "nrOfSent":I
    .end local v8    # "seekButton":Landroid/widget/Button;
    .end local v11    # "server":Lbe/gentgo/tetsuki/Server;
    :cond_0
    const/16 v12, 0x8

    goto/16 :goto_0

    .line 87
    .restart local v8    # "seekButton":Landroid/widget/Button;
    :cond_1
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 92
    .restart local v3    # "isSeeking":Z
    :cond_2
    const v12, 0x7f02000b

    invoke-virtual {v8, v12}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_2

    .line 94
    :cond_3
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/PlayFragment;->getView()Landroid/view/View;

    move-result-object v12

    const v13, 0x7f0b007f

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    if-eqz v3, :cond_4

    const/4 v12, 0x0

    :goto_a
    invoke-virtual {v13, v12}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :cond_4
    const/4 v12, 0x4

    goto :goto_a

    .line 96
    :cond_5
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 97
    :cond_6
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 102
    .restart local v2    # "info":Landroid/widget/TextView;
    :cond_7
    const/4 v12, 0x0

    goto :goto_5

    .line 106
    .restart local v11    # "server":Lbe/gentgo/tetsuki/Server;
    :cond_8
    invoke-virtual {v11}, Lbe/gentgo/tetsuki/Server;->isGuestLogin()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 107
    const v12, 0x7f08001b

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setText(I)V

    goto :goto_6

    .line 108
    :cond_9
    invoke-static {}, Lbe/gentgo/tetsuki/Preferences;->getStatus()I

    move-result v12

    if-nez v12, :cond_a

    .line 109
    const v12, 0x7f080105

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setText(I)V

    goto :goto_6

    .line 110
    :cond_a
    const v12, 0x7f08016e

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_6

    .line 115
    .restart local v4    # "nrOfReceived":I
    .restart local v5    # "nrOfSent":I
    :cond_b
    const/4 v12, 0x4

    goto :goto_7

    .line 116
    :cond_c
    const/4 v12, 0x4

    goto :goto_8

    .line 120
    .restart local v1    # "i":I
    :cond_d
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/PlayFragment;->getView()Landroid/view/View;

    move-result-object v12

    sget-object v13, Lbe/gentgo/tetsuki/PlayFragment;->sentCardIndices:[I

    aget v13, v13, v1

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 121
    .local v10, "sentCard":Landroid/view/View;
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/PlayFragment;->getView()Landroid/view/View;

    move-result-object v12

    sget-object v13, Lbe/gentgo/tetsuki/PlayFragment;->receivedCardIndices:[I

    aget v13, v13, v1

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 122
    .local v7, "receivedCard":Landroid/view/View;
    if-ge v1, v5, :cond_e

    iget-object v12, p0, Lbe/gentgo/tetsuki/PlayFragment;->invitationManager:Lbe/gentgo/tetsuki/InvitationManager;

    invoke-virtual {v12}, Lbe/gentgo/tetsuki/InvitationManager;->getSentInvitations()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lbe/gentgo/tetsuki/Invitation;

    move-object v9, v12

    .line 123
    .local v9, "sent":Lbe/gentgo/tetsuki/Invitation;
    :goto_b
    if-ge v1, v4, :cond_f

    iget-object v12, p0, Lbe/gentgo/tetsuki/PlayFragment;->invitationManager:Lbe/gentgo/tetsuki/InvitationManager;

    invoke-virtual {v12}, Lbe/gentgo/tetsuki/InvitationManager;->getReceivedInvitations()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lbe/gentgo/tetsuki/Invitation;

    move-object v6, v12

    .line 124
    .local v6, "received":Lbe/gentgo/tetsuki/Invitation;
    :goto_c
    if-nez v9, :cond_10

    if-nez v6, :cond_10

    .line 126
    const/16 v12, 0x8

    invoke-virtual {v10, v12}, Landroid/view/View;->setVisibility(I)V

    .line 127
    const/16 v12, 0x8

    invoke-virtual {v7, v12}, Landroid/view/View;->setVisibility(I)V

    .line 118
    :goto_d
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_9

    .line 122
    .end local v6    # "received":Lbe/gentgo/tetsuki/Invitation;
    .end local v9    # "sent":Lbe/gentgo/tetsuki/Invitation;
    :cond_e
    const/4 v9, 0x0

    goto :goto_b

    .line 123
    .restart local v9    # "sent":Lbe/gentgo/tetsuki/Invitation;
    :cond_f
    const/4 v6, 0x0

    goto :goto_c

    .line 130
    .restart local v6    # "received":Lbe/gentgo/tetsuki/Invitation;
    :cond_10
    if-nez v9, :cond_12

    .line 131
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->isTablet()Z

    move-result v12

    if-eqz v12, :cond_11

    const/4 v12, 0x4

    :goto_e
    invoke-virtual {v10, v12}, Landroid/view/View;->setVisibility(I)V

    .line 136
    :goto_f
    if-nez v6, :cond_14

    .line 137
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->isTablet()Z

    move-result v12

    if-eqz v12, :cond_13

    const/4 v12, 0x4

    :goto_10
    invoke-virtual {v7, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_d

    .line 131
    :cond_11
    const/16 v12, 0x8

    goto :goto_e

    .line 133
    :cond_12
    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Landroid/view/View;->setVisibility(I)V

    .line 134
    invoke-direct {p0, v10, v9}, Lbe/gentgo/tetsuki/PlayFragment;->updateCard(Landroid/view/View;Lbe/gentgo/tetsuki/Invitation;)V

    goto :goto_f

    .line 137
    :cond_13
    const/16 v12, 0x8

    goto :goto_10

    .line 139
    :cond_14
    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Landroid/view/View;->setVisibility(I)V

    .line 140
    invoke-direct {p0, v7, v6}, Lbe/gentgo/tetsuki/PlayFragment;->updateCard(Landroid/view/View;Lbe/gentgo/tetsuki/Invitation;)V

    goto :goto_d
.end method

.method private updateCard(Landroid/view/View;Lbe/gentgo/tetsuki/Invitation;)V
    .locals 18
    .param p1, "card"    # Landroid/view/View;
    .param p2, "invitation"    # Lbe/gentgo/tetsuki/Invitation;

    .prologue
    .line 148
    const v14, 0x7f0b0066

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Lbe/gentgo/tetsuki/Invitation;->isMarkedAsRead()Z

    move-result v14

    if-eqz v14, :cond_1

    const/4 v14, 0x4

    :goto_0
    invoke-virtual {v15, v14}, Landroid/view/View;->setVisibility(I)V

    .line 149
    const v14, 0x7f0b0067

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 150
    .local v6, "name":Landroid/widget/TextView;
    invoke-virtual/range {p2 .. p2}, Lbe/gentgo/tetsuki/Invitation;->getOpponent()Lbe/gentgo/tetsuki/Player;

    move-result-object v7

    .line 151
    .local v7, "opponent":Lbe/gentgo/tetsuki/Player;
    invoke-virtual {v7}, Lbe/gentgo/tetsuki/Player;->getID()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    const v14, 0x7f0b0068

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 153
    .local v9, "rank":Landroid/widget/TextView;
    invoke-virtual {v7}, Lbe/gentgo/tetsuki/Player;->getRank()F

    move-result v14

    invoke-static {v14}, Lbe/gentgo/tetsuki/Player;->getNameForRank(F)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    const v14, 0x7f0b0069

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 158
    .local v2, "details":Landroid/widget/TextView;
    invoke-virtual/range {p2 .. p2}, Lbe/gentgo/tetsuki/Invitation;->getGameSettings()Lbe/gentgo/tetsuki/GameSettings;

    move-result-object v11

    .line 160
    .local v11, "settings":Lbe/gentgo/tetsuki/GameSettings;
    invoke-virtual {v11}, Lbe/gentgo/tetsuki/GameSettings;->isNigiri()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 161
    const v14, 0x7f0800cf

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lbe/gentgo/tetsuki/PlayFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 165
    .local v1, "color":Ljava/lang/String;
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lbe/gentgo/tetsuki/Invitation;->isUsingNMatch()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 167
    invoke-virtual {v11}, Lbe/gentgo/tetsuki/GameSettings;->getNrOfHandicapStones()I

    move-result v14

    if-nez v14, :cond_4

    .line 168
    const v14, 0x7f0800d0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lbe/gentgo/tetsuki/PlayFragment;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual {v11}, Lbe/gentgo/tetsuki/GameSettings;->getRows()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-virtual {v11}, Lbe/gentgo/tetsuki/GameSettings;->getColumns()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 174
    .local v3, "game":Ljava/lang/String;
    :goto_2
    invoke-virtual {v11}, Lbe/gentgo/tetsuki/GameSettings;->getTimeSettings()Lbe/gentgo/tetsuki/GameTimeSettings;

    move-result-object v13

    .line 175
    .local v13, "timeSettings":Lbe/gentgo/tetsuki/GameTimeSettings;
    invoke-virtual {v13}, Lbe/gentgo/tetsuki/GameTimeSettings;->getInitialTime()I

    move-result v5

    .line 176
    .local v5, "initialSeconds":I
    invoke-virtual {v13}, Lbe/gentgo/tetsuki/GameTimeSettings;->hasExtraTime()Z

    move-result v14

    if-eqz v14, :cond_a

    .line 177
    invoke-virtual {v13}, Lbe/gentgo/tetsuki/GameTimeSettings;->isJapaneseExtraTime()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 178
    invoke-virtual {v13}, Lbe/gentgo/tetsuki/GameTimeSettings;->getPeriod()I

    move-result v8

    .line 179
    .local v8, "periodSeconds":I
    const/16 v14, 0x78

    if-le v8, v14, :cond_6

    .line 180
    const v14, 0x7f0800b7

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lbe/gentgo/tetsuki/PlayFragment;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    div-int/lit8 v17, v5, 0x3c

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-virtual {v13}, Lbe/gentgo/tetsuki/GameTimeSettings;->getNrOfPeriods()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    div-int/lit8 v17, v8, 0x3c

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 192
    .end local v8    # "periodSeconds":I
    .local v12, "time":Ljava/lang/String;
    :cond_0
    :goto_3
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    const v14, 0x7f0b006a

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    .line 196
    .local v10, "redButton":Landroid/widget/Button;
    const v14, 0x7f0b006b

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 197
    .local v4, "greenButton":Landroid/widget/Button;
    invoke-virtual/range {p2 .. p2}, Lbe/gentgo/tetsuki/Invitation;->isSentByMe()Z

    move-result v14

    if-eqz v14, :cond_c

    .line 198
    const v14, 0x7f080031

    invoke-virtual {v10, v14}, Landroid/widget/Button;->setText(I)V

    .line 199
    const/16 v14, 0x8

    invoke-virtual {v4, v14}, Landroid/widget/Button;->setVisibility(I)V

    .line 200
    invoke-virtual/range {p2 .. p2}, Lbe/gentgo/tetsuki/Invitation;->isUsingNMatch()Z

    move-result v14

    if-eqz v14, :cond_b

    const/4 v14, 0x0

    :goto_4
    invoke-virtual {v10, v14}, Landroid/widget/Button;->setVisibility(I)V

    .line 201
    new-instance v14, Lbe/gentgo/tetsuki/PlayFragment$5;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lbe/gentgo/tetsuki/PlayFragment$5;-><init>(Lbe/gentgo/tetsuki/PlayFragment;)V

    invoke-virtual {v10, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    :goto_5
    return-void

    .line 148
    .end local v1    # "color":Ljava/lang/String;
    .end local v2    # "details":Landroid/widget/TextView;
    .end local v3    # "game":Ljava/lang/String;
    .end local v4    # "greenButton":Landroid/widget/Button;
    .end local v5    # "initialSeconds":I
    .end local v6    # "name":Landroid/widget/TextView;
    .end local v7    # "opponent":Lbe/gentgo/tetsuki/Player;
    .end local v9    # "rank":Landroid/widget/TextView;
    .end local v10    # "redButton":Landroid/widget/Button;
    .end local v11    # "settings":Lbe/gentgo/tetsuki/GameSettings;
    .end local v12    # "time":Ljava/lang/String;
    .end local v13    # "timeSettings":Lbe/gentgo/tetsuki/GameTimeSettings;
    :cond_1
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 163
    .restart local v2    # "details":Landroid/widget/TextView;
    .restart local v6    # "name":Landroid/widget/TextView;
    .restart local v7    # "opponent":Lbe/gentgo/tetsuki/Player;
    .restart local v9    # "rank":Landroid/widget/TextView;
    .restart local v11    # "settings":Lbe/gentgo/tetsuki/GameSettings;
    :cond_2
    invoke-virtual {v11}, Lbe/gentgo/tetsuki/GameSettings;->getBlackPlayer()Lbe/gentgo/tetsuki/Player;

    move-result-object v14

    invoke-virtual {v14, v7}, Lbe/gentgo/tetsuki/Player;->equalsPlayer(Lbe/gentgo/tetsuki/Player;)Z

    move-result v14

    if-eqz v14, :cond_3

    const v14, 0x7f0800cd

    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lbe/gentgo/tetsuki/PlayFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "color":Ljava/lang/String;
    goto/16 :goto_1

    .end local v1    # "color":Ljava/lang/String;
    :cond_3
    const v14, 0x7f0800ce

    goto :goto_6

    .line 170
    .restart local v1    # "color":Ljava/lang/String;
    :cond_4
    const v14, 0x7f0800d1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lbe/gentgo/tetsuki/PlayFragment;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual {v11}, Lbe/gentgo/tetsuki/GameSettings;->getRows()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-virtual {v11}, Lbe/gentgo/tetsuki/GameSettings;->getColumns()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    invoke-virtual {v11}, Lbe/gentgo/tetsuki/GameSettings;->getNrOfHandicapStones()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 171
    .restart local v3    # "game":Ljava/lang/String;
    goto/16 :goto_2

    .line 172
    .end local v3    # "game":Ljava/lang/String;
    :cond_5
    const v14, 0x7f0800d2

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lbe/gentgo/tetsuki/PlayFragment;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual {v11}, Lbe/gentgo/tetsuki/GameSettings;->getRows()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-virtual {v11}, Lbe/gentgo/tetsuki/GameSettings;->getColumns()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "game":Ljava/lang/String;
    goto/16 :goto_2

    .line 182
    .restart local v5    # "initialSeconds":I
    .restart local v8    # "periodSeconds":I
    .restart local v13    # "timeSettings":Lbe/gentgo/tetsuki/GameTimeSettings;
    :cond_6
    const v14, 0x7f0800b8

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lbe/gentgo/tetsuki/PlayFragment;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    div-int/lit8 v17, v5, 0x3c

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-virtual {v13}, Lbe/gentgo/tetsuki/GameTimeSettings;->getNrOfPeriods()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 183
    .restart local v12    # "time":Ljava/lang/String;
    goto/16 :goto_3

    .end local v8    # "periodSeconds":I
    .end local v12    # "time":Ljava/lang/String;
    :cond_7
    invoke-virtual {v13}, Lbe/gentgo/tetsuki/GameTimeSettings;->isCanadianExtraTime()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 184
    const v14, 0x7f0800b9

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lbe/gentgo/tetsuki/PlayFragment;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    div-int/lit8 v17, v5, 0x3c

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-virtual {v13}, Lbe/gentgo/tetsuki/GameTimeSettings;->getPeriod()I

    move-result v17

    div-int/lit8 v17, v17, 0x3c

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    invoke-virtual {v13}, Lbe/gentgo/tetsuki/GameTimeSettings;->getNrOfStones()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 185
    .restart local v12    # "time":Ljava/lang/String;
    goto/16 :goto_3

    .end local v12    # "time":Ljava/lang/String;
    :cond_8
    invoke-virtual {v13}, Lbe/gentgo/tetsuki/GameTimeSettings;->isKouryoExtraTime()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 186
    const v14, 0x7f0800ba

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lbe/gentgo/tetsuki/PlayFragment;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    div-int/lit8 v17, v5, 0x3c

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-virtual {v13}, Lbe/gentgo/tetsuki/GameTimeSettings;->getTimePerMove()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    invoke-virtual {v13}, Lbe/gentgo/tetsuki/GameTimeSettings;->getNrOfPeriods()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    invoke-virtual {v13}, Lbe/gentgo/tetsuki/GameTimeSettings;->getPeriod()I

    move-result v17

    div-int/lit8 v17, v17, 0x3c

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 187
    .restart local v12    # "time":Ljava/lang/String;
    goto/16 :goto_3

    .line 188
    .end local v12    # "time":Ljava/lang/String;
    :cond_9
    const-string v12, ""

    .restart local v12    # "time":Ljava/lang/String;
    sget-boolean v14, Lbe/gentgo/tetsuki/PlayFragment;->$assertionsDisabled:Z

    if-nez v14, :cond_0

    new-instance v14, Ljava/lang/AssertionError;

    invoke-direct {v14}, Ljava/lang/AssertionError;-><init>()V

    throw v14

    .line 190
    .end local v12    # "time":Ljava/lang/String;
    :cond_a
    const v14, 0x7f0800b6

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lbe/gentgo/tetsuki/PlayFragment;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    div-int/lit8 v17, v5, 0x3c

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "time":Ljava/lang/String;
    goto/16 :goto_3

    .line 200
    .restart local v4    # "greenButton":Landroid/widget/Button;
    .restart local v10    # "redButton":Landroid/widget/Button;
    :cond_b
    const/16 v14, 0x8

    goto/16 :goto_4

    .line 206
    :cond_c
    const v14, 0x7f080061

    invoke-virtual {v10, v14}, Landroid/widget/Button;->setText(I)V

    .line 207
    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Landroid/widget/Button;->setVisibility(I)V

    .line 208
    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Landroid/widget/Button;->setVisibility(I)V

    .line 209
    new-instance v14, Lbe/gentgo/tetsuki/PlayFragment$6;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lbe/gentgo/tetsuki/PlayFragment$6;-><init>(Lbe/gentgo/tetsuki/PlayFragment;)V

    invoke-virtual {v10, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    new-instance v14, Lbe/gentgo/tetsuki/PlayFragment$7;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lbe/gentgo/tetsuki/PlayFragment$7;-><init>(Lbe/gentgo/tetsuki/PlayFragment;)V

    invoke-virtual {v4, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_5
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 256
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f030014

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 258
    .local v0, "result":Landroid/view/View;
    return-object v0

    .line 256
    .end local v0    # "result":Landroid/view/View;
    :cond_0
    const v1, 0x7f030015

    goto :goto_0
.end method

.method public onPause()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 67
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 68
    invoke-direct {p0}, Lbe/gentgo/tetsuki/PlayFragment;->getButtonsParent()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0b0024

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 69
    .local v1, "seekButton":Landroid/widget/Button;
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 70
    invoke-direct {p0}, Lbe/gentgo/tetsuki/PlayFragment;->getButtonsParent()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0b0023

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 71
    .local v0, "inviteButton":Landroid/widget/Button;
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 72
    iget-object v2, p0, Lbe/gentgo/tetsuki/PlayFragment;->invitationManager:Lbe/gentgo/tetsuki/InvitationManager;

    iget-object v3, p0, Lbe/gentgo/tetsuki/PlayFragment;->listener:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lbe/gentgo/tetsuki/InvitationManager;->removeInvitationsChangedListener(Ljava/lang/Runnable;)V

    .line 73
    iget-object v2, p0, Lbe/gentgo/tetsuki/PlayFragment;->invitationManager:Lbe/gentgo/tetsuki/InvitationManager;

    invoke-virtual {v2}, Lbe/gentgo/tetsuki/InvitationManager;->markAllInvitationsAsRead()V

    .line 74
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    .line 28
    invoke-direct {p0}, Lbe/gentgo/tetsuki/PlayFragment;->getButtonsParent()Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0b0024

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 29
    .local v2, "seekButton":Landroid/widget/Button;
    new-instance v4, Lbe/gentgo/tetsuki/PlayFragment$2;

    invoke-direct {v4, p0}, Lbe/gentgo/tetsuki/PlayFragment$2;-><init>(Lbe/gentgo/tetsuki/PlayFragment;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    invoke-direct {p0}, Lbe/gentgo/tetsuki/PlayFragment;->getButtonsParent()Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0b0023

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 42
    .local v0, "inviteButton":Landroid/widget/Button;
    new-instance v4, Lbe/gentgo/tetsuki/PlayFragment$3;

    invoke-direct {v4, p0}, Lbe/gentgo/tetsuki/PlayFragment$3;-><init>(Lbe/gentgo/tetsuki/PlayFragment;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/PlayFragment;->getView()Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0b007e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 49
    .local v1, "myGameButton":Landroid/widget/Button;
    new-instance v4, Lbe/gentgo/tetsuki/PlayFragment$4;

    invoke-direct {v4, p0}, Lbe/gentgo/tetsuki/PlayFragment$4;-><init>(Lbe/gentgo/tetsuki/PlayFragment;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainActionBar()Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0b001a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 56
    .local v3, "titleView":Landroid/widget/TextView;
    const v4, 0x7f08015c

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 60
    iget-object v4, p0, Lbe/gentgo/tetsuki/PlayFragment;->invitationManager:Lbe/gentgo/tetsuki/InvitationManager;

    iget-object v5, p0, Lbe/gentgo/tetsuki/PlayFragment;->listener:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Lbe/gentgo/tetsuki/InvitationManager;->addInvitationsChangedListener(Ljava/lang/Runnable;)V

    .line 61
    invoke-direct {p0}, Lbe/gentgo/tetsuki/PlayFragment;->update()V

    .line 62
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 63
    return-void
.end method
