.class Lbe/gentgo/tetsuki/HomeFragment$7;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbe/gentgo/tetsuki/HomeFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
.field final synthetic this$0:Lbe/gentgo/tetsuki/HomeFragment;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/HomeFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/HomeFragment$7;->this$0:Lbe/gentgo/tetsuki/HomeFragment;

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
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
    .line 304
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    if-nez p3, :cond_0

    .line 305
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getDispatcher()Lbe/gentgo/tetsuki/Dispatcher;

    move-result-object v0

    invoke-interface {v0}, Lbe/gentgo/tetsuki/Dispatcher;->goToGameList()V

    .line 307
    :cond_0
    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    .line 308
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getDispatcher()Lbe/gentgo/tetsuki/Dispatcher;

    move-result-object v0

    invoke-interface {v0}, Lbe/gentgo/tetsuki/Dispatcher;->goToInvitations()V

    .line 310
    :cond_1
    const/4 v0, 0x2

    if-ne p3, v0, :cond_2

    .line 311
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getDispatcher()Lbe/gentgo/tetsuki/Dispatcher;

    move-result-object v0

    invoke-interface {v0}, Lbe/gentgo/tetsuki/Dispatcher;->goToPlayerList()V

    .line 313
    :cond_2
    const/4 v0, 0x7

    if-ne p3, v0, :cond_3

    .line 314
    invoke-static {}, Lbe/gentgo/tetsuki/Preferences;->isJapaneseUser()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 315
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getDispatcher()Lbe/gentgo/tetsuki/Dispatcher;

    move-result-object v0

    invoke-interface {v0}, Lbe/gentgo/tetsuki/Dispatcher;->goToMyProgress()V

    .line 319
    :cond_3
    :goto_0
    const/4 v0, 0x3

    if-ne p3, v0, :cond_4

    .line 320
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getDispatcher()Lbe/gentgo/tetsuki/Dispatcher;

    move-result-object v0

    invoke-interface {v0}, Lbe/gentgo/tetsuki/Dispatcher;->goToDailyProblem()V

    .line 322
    :cond_4
    const/4 v0, 0x6

    if-ne p3, v0, :cond_5

    .line 323
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getDispatcher()Lbe/gentgo/tetsuki/Dispatcher;

    move-result-object v0

    invoke-interface {v0}, Lbe/gentgo/tetsuki/Dispatcher;->goToNetSocial()V

    .line 325
    :cond_5
    const/4 v0, 0x4

    if-ne p3, v0, :cond_6

    .line 326
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getDispatcher()Lbe/gentgo/tetsuki/Dispatcher;

    move-result-object v0

    invoke-interface {v0}, Lbe/gentgo/tetsuki/Dispatcher;->goToNews()V

    .line 328
    :cond_6
    const/4 v0, 0x5

    if-ne p3, v0, :cond_7

    .line 329
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getDispatcher()Lbe/gentgo/tetsuki/Dispatcher;

    move-result-object v0

    invoke-interface {v0}, Lbe/gentgo/tetsuki/Dispatcher;->goToArchive()V

    .line 331
    :cond_7
    const/16 v0, 0x8

    if-ne p3, v0, :cond_8

    .line 332
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getDispatcher()Lbe/gentgo/tetsuki/Dispatcher;

    move-result-object v0

    invoke-interface {v0}, Lbe/gentgo/tetsuki/Dispatcher;->goToPandanetSite()V

    .line 334
    :cond_8
    const/16 v0, 0x9

    if-ne p3, v0, :cond_9

    .line 335
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getDispatcher()Lbe/gentgo/tetsuki/Dispatcher;

    move-result-object v0

    invoke-interface {v0}, Lbe/gentgo/tetsuki/Dispatcher;->goToHelp()V

    .line 337
    :cond_9
    return-void

    .line 317
    :cond_a
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getDispatcher()Lbe/gentgo/tetsuki/Dispatcher;

    move-result-object v0

    invoke-interface {v0}, Lbe/gentgo/tetsuki/Dispatcher;->goToProDiaries()V

    goto :goto_0
.end method
