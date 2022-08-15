.class public Lbe/gentgo/tetsuki/InvitationManager;
.super Ljava/lang/Object;
.source "InvitationManager.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field invitationsChangedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field newInvitationListener:Ljava/lang/Runnable;

.field received:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lbe/gentgo/tetsuki/Invitation;",
            ">;"
        }
    .end annotation
.end field

.field request:Lbe/gentgo/tetsuki/InvitationsRequest;

.field seek:Lbe/gentgo/tetsuki/Invitation;

.field sent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lbe/gentgo/tetsuki/Invitation;",
            ">;"
        }
    .end annotation
.end field

.field unread:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lbe/gentgo/tetsuki/InvitationManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lbe/gentgo/tetsuki/InvitationManager;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbe/gentgo/tetsuki/InvitationManager;->invitationsChangedListeners:Ljava/util/ArrayList;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbe/gentgo/tetsuki/InvitationManager;->sent:Ljava/util/ArrayList;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbe/gentgo/tetsuki/InvitationManager;->received:Ljava/util/ArrayList;

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lbe/gentgo/tetsuki/InvitationManager;->seek:Lbe/gentgo/tetsuki/Invitation;

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lbe/gentgo/tetsuki/InvitationManager;->unread:I

    .line 19
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v0

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/Server;->observeInvitations()Lbe/gentgo/tetsuki/InvitationsRequest;

    move-result-object v0

    iput-object v0, p0, Lbe/gentgo/tetsuki/InvitationManager;->request:Lbe/gentgo/tetsuki/InvitationsRequest;

    .line 20
    iget-object v0, p0, Lbe/gentgo/tetsuki/InvitationManager;->request:Lbe/gentgo/tetsuki/InvitationsRequest;

    new-instance v1, Lbe/gentgo/tetsuki/InvitationManager$1;

    invoke-direct {v1, p0}, Lbe/gentgo/tetsuki/InvitationManager$1;-><init>(Lbe/gentgo/tetsuki/InvitationManager;)V

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/InvitationsRequest;->addListener(Lbe/gentgo/tetsuki/Listener;)V

    .line 25
    iget-object v0, p0, Lbe/gentgo/tetsuki/InvitationManager;->request:Lbe/gentgo/tetsuki/InvitationsRequest;

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/InvitationsRequest;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/InvitationManager;->updateListAndNotifyListeners()V

    .line 26
    :cond_0
    return-void
.end method


# virtual methods
.method public addInvitationsChangedListener(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "l"    # Ljava/lang/Runnable;

    .prologue
    .line 30
    iget-object v0, p0, Lbe/gentgo/tetsuki/InvitationManager;->invitationsChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbe/gentgo/tetsuki/InvitationManager;->invitationsChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    :cond_0
    return-void
.end method

.method public getNrOfUnreadInvitations()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lbe/gentgo/tetsuki/InvitationManager;->unread:I

    return v0
.end method

.method public getReceivedInvitations()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lbe/gentgo/tetsuki/Invitation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lbe/gentgo/tetsuki/InvitationManager;->received:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSeekInvitation()Lbe/gentgo/tetsuki/Invitation;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lbe/gentgo/tetsuki/InvitationManager;->seek:Lbe/gentgo/tetsuki/Invitation;

    return-object v0
.end method

.method public getSentInvitations()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lbe/gentgo/tetsuki/Invitation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lbe/gentgo/tetsuki/InvitationManager;->sent:Ljava/util/ArrayList;

    return-object v0
.end method

.method public markAllInvitationsAsRead()V
    .locals 6

    .prologue
    .line 48
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lbe/gentgo/tetsuki/InvitationManager;->sent:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 52
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lbe/gentgo/tetsuki/InvitationManager;->received:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_2

    .line 56
    return-void

    .line 49
    :cond_0
    iget-object v2, p0, Lbe/gentgo/tetsuki/InvitationManager;->sent:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbe/gentgo/tetsuki/Invitation;

    .line 50
    .local v1, "inv":Lbe/gentgo/tetsuki/Invitation;
    invoke-virtual {v1}, Lbe/gentgo/tetsuki/Invitation;->isMarkedAsRead()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v2

    iget-wide v4, v1, Lbe/gentgo/tetsuki/Invitation;->nativePointer:J

    invoke-virtual {v2, v4, v5}, Lbe/gentgo/tetsuki/Server;->markInvitationAsRead(J)V

    .line 48
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    .end local v1    # "inv":Lbe/gentgo/tetsuki/Invitation;
    :cond_2
    iget-object v2, p0, Lbe/gentgo/tetsuki/InvitationManager;->received:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbe/gentgo/tetsuki/Invitation;

    .line 54
    .restart local v1    # "inv":Lbe/gentgo/tetsuki/Invitation;
    invoke-virtual {v1}, Lbe/gentgo/tetsuki/Invitation;->isMarkedAsRead()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v2

    iget-wide v4, v1, Lbe/gentgo/tetsuki/Invitation;->nativePointer:J

    invoke-virtual {v2, v4, v5}, Lbe/gentgo/tetsuki/Server;->markInvitationAsRead(J)V

    .line 52
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public removeInvitationsChangedListener(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "l"    # Ljava/lang/Runnable;

    .prologue
    .line 33
    iget-object v0, p0, Lbe/gentgo/tetsuki/InvitationManager;->invitationsChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 34
    return-void
.end method

.method public setNewInvitationListener(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "l"    # Ljava/lang/Runnable;

    .prologue
    .line 38
    sget-boolean v0, Lbe/gentgo/tetsuki/InvitationManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lbe/gentgo/tetsuki/InvitationManager;->newInvitationListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 39
    :cond_0
    iput-object p1, p0, Lbe/gentgo/tetsuki/InvitationManager;->newInvitationListener:Ljava/lang/Runnable;

    .line 40
    return-void
.end method

.method protected updateListAndNotifyListeners()V
    .locals 5

    .prologue
    .line 59
    iget-object v3, p0, Lbe/gentgo/tetsuki/InvitationManager;->sent:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 60
    iget-object v3, p0, Lbe/gentgo/tetsuki/InvitationManager;->received:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 61
    const/4 v3, 0x0

    iput-object v3, p0, Lbe/gentgo/tetsuki/InvitationManager;->seek:Lbe/gentgo/tetsuki/Invitation;

    .line 62
    iget v2, p0, Lbe/gentgo/tetsuki/InvitationManager;->unread:I

    .line 63
    .local v2, "previousUnread":I
    const/4 v3, 0x0

    iput v3, p0, Lbe/gentgo/tetsuki/InvitationManager;->unread:I

    .line 64
    iget-object v3, p0, Lbe/gentgo/tetsuki/InvitationManager;->request:Lbe/gentgo/tetsuki/InvitationsRequest;

    invoke-virtual {v3}, Lbe/gentgo/tetsuki/InvitationsRequest;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 65
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lbe/gentgo/tetsuki/InvitationManager;->request:Lbe/gentgo/tetsuki/InvitationsRequest;

    invoke-virtual {v3}, Lbe/gentgo/tetsuki/InvitationsRequest;->getNrOfInvitations()I

    move-result v3

    if-lt v0, v3, :cond_2

    .line 77
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v3, p0, Lbe/gentgo/tetsuki/InvitationManager;->invitationsChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_6

    .line 78
    iget v3, p0, Lbe/gentgo/tetsuki/InvitationManager;->unread:I

    if-le v3, v2, :cond_1

    iget-object v3, p0, Lbe/gentgo/tetsuki/InvitationManager;->newInvitationListener:Ljava/lang/Runnable;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lbe/gentgo/tetsuki/InvitationManager;->newInvitationListener:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 79
    :cond_1
    return-void

    .line 67
    :cond_2
    iget-object v3, p0, Lbe/gentgo/tetsuki/InvitationManager;->request:Lbe/gentgo/tetsuki/InvitationsRequest;

    invoke-virtual {v3, v0}, Lbe/gentgo/tetsuki/InvitationsRequest;->getInvitation(I)Lbe/gentgo/tetsuki/Invitation;

    move-result-object v1

    .line 68
    .local v1, "invitation":Lbe/gentgo/tetsuki/Invitation;
    invoke-virtual {v1}, Lbe/gentgo/tetsuki/Invitation;->isMarkedAsRead()Z

    move-result v3

    if-nez v3, :cond_3

    iget v3, p0, Lbe/gentgo/tetsuki/InvitationManager;->unread:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lbe/gentgo/tetsuki/InvitationManager;->unread:I

    .line 69
    :cond_3
    invoke-virtual {v1}, Lbe/gentgo/tetsuki/Invitation;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 70
    new-instance v3, Lbe/gentgo/tetsuki/Invitation;

    invoke-direct {v3, v1}, Lbe/gentgo/tetsuki/Invitation;-><init>(Lbe/gentgo/tetsuki/Invitation;)V

    iput-object v3, p0, Lbe/gentgo/tetsuki/InvitationManager;->seek:Lbe/gentgo/tetsuki/Invitation;

    .line 65
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :cond_4
    invoke-virtual {v1}, Lbe/gentgo/tetsuki/Invitation;->isSentByMe()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 72
    iget-object v3, p0, Lbe/gentgo/tetsuki/InvitationManager;->sent:Ljava/util/ArrayList;

    new-instance v4, Lbe/gentgo/tetsuki/Invitation;

    invoke-direct {v4, v1}, Lbe/gentgo/tetsuki/Invitation;-><init>(Lbe/gentgo/tetsuki/Invitation;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 74
    :cond_5
    iget-object v3, p0, Lbe/gentgo/tetsuki/InvitationManager;->received:Ljava/util/ArrayList;

    new-instance v4, Lbe/gentgo/tetsuki/Invitation;

    invoke-direct {v4, v1}, Lbe/gentgo/tetsuki/Invitation;-><init>(Lbe/gentgo/tetsuki/Invitation;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 77
    .end local v1    # "invitation":Lbe/gentgo/tetsuki/Invitation;
    :cond_6
    iget-object v3, p0, Lbe/gentgo/tetsuki/InvitationManager;->invitationsChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
