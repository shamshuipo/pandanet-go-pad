.class Lbe/gentgo/tetsuki/NewArchiveGameFragment$9;
.super Landroid/app/Fragment;
.source "NewArchiveGameFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbe/gentgo/tetsuki/NewArchiveGameFragment;->selectRow(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private edit:Landroid/widget/EditText;

.field final synthetic this$0:Lbe/gentgo/tetsuki/NewArchiveGameFragment;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/NewArchiveGameFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/NewArchiveGameFragment$9;->this$0:Lbe/gentgo/tetsuki/NewArchiveGameFragment;

    .line 217
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lbe/gentgo/tetsuki/NewArchiveGameFragment$9;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lbe/gentgo/tetsuki/NewArchiveGameFragment$9;->edit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1(Lbe/gentgo/tetsuki/NewArchiveGameFragment$9;)Lbe/gentgo/tetsuki/NewArchiveGameFragment;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lbe/gentgo/tetsuki/NewArchiveGameFragment$9;->this$0:Lbe/gentgo/tetsuki/NewArchiveGameFragment;

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 221
    const v1, 0x7f03000c

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 222
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0b0046

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lbe/gentgo/tetsuki/NewArchiveGameFragment$9;->edit:Landroid/widget/EditText;

    .line 223
    iget-object v1, p0, Lbe/gentgo/tetsuki/NewArchiveGameFragment$9;->edit:Landroid/widget/EditText;

    iget-object v2, p0, Lbe/gentgo/tetsuki/NewArchiveGameFragment$9;->this$0:Lbe/gentgo/tetsuki/NewArchiveGameFragment;

    iget-object v2, v2, Lbe/gentgo/tetsuki/NewArchiveGameFragment;->gameSettings:Lbe/gentgo/tetsuki/GameSettings;

    invoke-virtual {v2}, Lbe/gentgo/tetsuki/GameSettings;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 225
    const v1, 0x7f0b0047

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lbe/gentgo/tetsuki/NewArchiveGameFragment$9$1;

    invoke-direct {v2, p0}, Lbe/gentgo/tetsuki/NewArchiveGameFragment$9$1;-><init>(Lbe/gentgo/tetsuki/NewArchiveGameFragment$9;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    const v1, 0x7f0b0036

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lbe/gentgo/tetsuki/NewArchiveGameFragment$9$2;

    invoke-direct {v2, p0}, Lbe/gentgo/tetsuki/NewArchiveGameFragment$9$2;-><init>(Lbe/gentgo/tetsuki/NewArchiveGameFragment$9;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    return-object v0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 245
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 247
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/NewArchiveGameFragment$9;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 248
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lbe/gentgo/tetsuki/NewArchiveGameFragment$9;->edit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 249
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 239
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 240
    iget-object v1, p0, Lbe/gentgo/tetsuki/NewArchiveGameFragment$9;->edit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 241
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/NewArchiveGameFragment$9;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 242
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lbe/gentgo/tetsuki/NewArchiveGameFragment$9;->edit:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 243
    return-void
.end method
