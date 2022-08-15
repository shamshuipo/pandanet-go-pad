.class Lbe/gentgo/tetsuki/AccountSettingsFragment$2$1;
.super Ljava/lang/Object;
.source "AccountSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbe/gentgo/tetsuki/AccountSettingsFragment$2;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lbe/gentgo/tetsuki/AccountSettingsFragment$2;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/AccountSettingsFragment$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/AccountSettingsFragment$2$1;->this$1:Lbe/gentgo/tetsuki/AccountSettingsFragment$2;

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    .line 227
    invoke-static {p2}, Lbe/gentgo/tetsuki/Preferences;->setEncoding(I)V

    .line 228
    invoke-static {}, Lbe/gentgo/tetsuki/Preferences;->save()V

    .line 229
    iget-object v0, p0, Lbe/gentgo/tetsuki/AccountSettingsFragment$2$1;->this$1:Lbe/gentgo/tetsuki/AccountSettingsFragment$2;

    invoke-static {v0}, Lbe/gentgo/tetsuki/AccountSettingsFragment$2;->access$0(Lbe/gentgo/tetsuki/AccountSettingsFragment$2;)Lbe/gentgo/tetsuki/AccountSettingsFragment;

    move-result-object v0

    iget-object v0, v0, Lbe/gentgo/tetsuki/AccountSettingsFragment;->dataObserver:Landroid/database/DataSetObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbe/gentgo/tetsuki/AccountSettingsFragment$2$1;->this$1:Lbe/gentgo/tetsuki/AccountSettingsFragment$2;

    invoke-static {v0}, Lbe/gentgo/tetsuki/AccountSettingsFragment$2;->access$0(Lbe/gentgo/tetsuki/AccountSettingsFragment$2;)Lbe/gentgo/tetsuki/AccountSettingsFragment;

    move-result-object v0

    iget-object v0, v0, Lbe/gentgo/tetsuki/AccountSettingsFragment;->dataObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 230
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 231
    return-void
.end method
