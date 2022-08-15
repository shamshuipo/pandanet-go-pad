.class Lbe/gentgo/tetsuki/NewArchiveGameFragment$9$1;
.super Ljava/lang/Object;
.source "NewArchiveGameFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbe/gentgo/tetsuki/NewArchiveGameFragment$9;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lbe/gentgo/tetsuki/NewArchiveGameFragment$9;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/NewArchiveGameFragment$9;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/NewArchiveGameFragment$9$1;->this$1:Lbe/gentgo/tetsuki/NewArchiveGameFragment$9;

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 227
    iget-object v0, p0, Lbe/gentgo/tetsuki/NewArchiveGameFragment$9$1;->this$1:Lbe/gentgo/tetsuki/NewArchiveGameFragment$9;

    invoke-static {v0}, Lbe/gentgo/tetsuki/NewArchiveGameFragment$9;->access$1(Lbe/gentgo/tetsuki/NewArchiveGameFragment$9;)Lbe/gentgo/tetsuki/NewArchiveGameFragment;

    move-result-object v0

    iget-object v0, v0, Lbe/gentgo/tetsuki/NewArchiveGameFragment;->gameSettings:Lbe/gentgo/tetsuki/GameSettings;

    iget-object v1, p0, Lbe/gentgo/tetsuki/NewArchiveGameFragment$9$1;->this$1:Lbe/gentgo/tetsuki/NewArchiveGameFragment$9;

    invoke-static {v1}, Lbe/gentgo/tetsuki/NewArchiveGameFragment$9;->access$0(Lbe/gentgo/tetsuki/NewArchiveGameFragment$9;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/GameSettings;->setTitle(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lbe/gentgo/tetsuki/NewArchiveGameFragment$9$1;->this$1:Lbe/gentgo/tetsuki/NewArchiveGameFragment$9;

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/NewArchiveGameFragment$9;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 229
    return-void
.end method
