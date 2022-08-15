.class public Lbe/gentgo/tetsuki/InvitationsRequest;
.super Lbe/gentgo/tetsuki/BaseRequest;
.source "InvitationsRequest.java"


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "p"    # J

    .prologue
    .line 4
    invoke-direct {p0, p1, p2}, Lbe/gentgo/tetsuki/BaseRequest;-><init>(J)V

    return-void
.end method

.method private native getLongInvitation(I)J
.end method


# virtual methods
.method public getInvitation(I)Lbe/gentgo/tetsuki/Invitation;
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 7
    new-instance v0, Lbe/gentgo/tetsuki/Invitation;

    invoke-direct {p0, p1}, Lbe/gentgo/tetsuki/InvitationsRequest;->getLongInvitation(I)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lbe/gentgo/tetsuki/Invitation;-><init>(J)V

    return-object v0
.end method

.method public native getNrOfInvitations()I
.end method
