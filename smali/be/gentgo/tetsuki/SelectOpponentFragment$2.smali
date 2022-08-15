.class Lbe/gentgo/tetsuki/SelectOpponentFragment$2;
.super Ljava/lang/Object;
.source "SelectOpponentFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbe/gentgo/tetsuki/SelectOpponentFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lbe/gentgo/tetsuki/SelectOpponentFragment;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/SelectOpponentFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/SelectOpponentFragment$2;->this$0:Lbe/gentgo/tetsuki/SelectOpponentFragment;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/16 v3, 0x8

    .line 32
    iget-object v1, p0, Lbe/gentgo/tetsuki/SelectOpponentFragment$2;->this$0:Lbe/gentgo/tetsuki/SelectOpponentFragment;

    iget-object v1, v1, Lbe/gentgo/tetsuki/SelectOpponentFragment;->adapter:Lbe/gentgo/tetsuki/PlayersListAdapter;

    invoke-virtual {v1, p3}, Lbe/gentgo/tetsuki/PlayersListAdapter;->getPlayerAtPosition(I)Lbe/gentgo/tetsuki/Player;

    move-result-object v0

    .line 33
    .local v0, "player":Lbe/gentgo/tetsuki/Player;
    invoke-virtual {v0}, Lbe/gentgo/tetsuki/Player;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v2

    invoke-virtual {v2}, Lbe/gentgo/tetsuki/Server;->getMyID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    :goto_0
    return-void

    .line 36
    :cond_0
    iget-object v1, p0, Lbe/gentgo/tetsuki/SelectOpponentFragment$2;->this$0:Lbe/gentgo/tetsuki/SelectOpponentFragment;

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/SelectOpponentFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0b0086

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 37
    iget-object v1, p0, Lbe/gentgo/tetsuki/SelectOpponentFragment$2;->this$0:Lbe/gentgo/tetsuki/SelectOpponentFragment;

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/SelectOpponentFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0b00cb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 38
    iget-object v1, p0, Lbe/gentgo/tetsuki/SelectOpponentFragment$2;->this$0:Lbe/gentgo/tetsuki/SelectOpponentFragment;

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/SelectOpponentFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0b00cc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 39
    iget-object v1, p0, Lbe/gentgo/tetsuki/SelectOpponentFragment$2;->this$0:Lbe/gentgo/tetsuki/SelectOpponentFragment;

    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v2

    invoke-virtual {v2, v0}, Lbe/gentgo/tetsuki/Server;->requestPlayerDetails(Lbe/gentgo/tetsuki/Player;)Lbe/gentgo/tetsuki/PlayerDetailsRequest;

    move-result-object v2

    iput-object v2, v1, Lbe/gentgo/tetsuki/SelectOpponentFragment;->detailsRequest:Lbe/gentgo/tetsuki/PlayerDetailsRequest;

    .line 40
    iget-object v1, p0, Lbe/gentgo/tetsuki/SelectOpponentFragment$2;->this$0:Lbe/gentgo/tetsuki/SelectOpponentFragment;

    iget-object v1, v1, Lbe/gentgo/tetsuki/SelectOpponentFragment;->detailsRequest:Lbe/gentgo/tetsuki/PlayerDetailsRequest;

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/PlayerDetailsRequest;->isDone()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lbe/gentgo/tetsuki/SelectOpponentFragment$2;->this$0:Lbe/gentgo/tetsuki/SelectOpponentFragment;

    iget-object v1, v1, Lbe/gentgo/tetsuki/SelectOpponentFragment;->detailsListener:Lbe/gentgo/tetsuki/Listener;

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/Listener;->Do()Z

    goto :goto_0

    .line 41
    :cond_1
    iget-object v1, p0, Lbe/gentgo/tetsuki/SelectOpponentFragment$2;->this$0:Lbe/gentgo/tetsuki/SelectOpponentFragment;

    iget-object v1, v1, Lbe/gentgo/tetsuki/SelectOpponentFragment;->detailsRequest:Lbe/gentgo/tetsuki/PlayerDetailsRequest;

    iget-object v2, p0, Lbe/gentgo/tetsuki/SelectOpponentFragment$2;->this$0:Lbe/gentgo/tetsuki/SelectOpponentFragment;

    iget-object v2, v2, Lbe/gentgo/tetsuki/SelectOpponentFragment;->detailsListener:Lbe/gentgo/tetsuki/Listener;

    invoke-virtual {v1, v2}, Lbe/gentgo/tetsuki/PlayerDetailsRequest;->addListener(Lbe/gentgo/tetsuki/Listener;)V

    goto :goto_0
.end method
