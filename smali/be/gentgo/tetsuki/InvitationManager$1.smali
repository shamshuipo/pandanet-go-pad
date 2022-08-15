.class Lbe/gentgo/tetsuki/InvitationManager$1;
.super Lbe/gentgo/tetsuki/Listener;
.source "InvitationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbe/gentgo/tetsuki/InvitationManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbe/gentgo/tetsuki/InvitationManager;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/InvitationManager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/InvitationManager$1;->this$0:Lbe/gentgo/tetsuki/InvitationManager;

    .line 20
    invoke-direct {p0}, Lbe/gentgo/tetsuki/Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public Do()Z
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lbe/gentgo/tetsuki/InvitationManager$1;->this$0:Lbe/gentgo/tetsuki/InvitationManager;

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/InvitationManager;->updateListAndNotifyListeners()V

    .line 22
    const/4 v0, 0x1

    return v0
.end method
