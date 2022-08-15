.class Lbe/gentgo/tetsuki/PreferencesFragment$6$1;
.super Ljava/lang/Object;
.source "PreferencesFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbe/gentgo/tetsuki/PreferencesFragment$6;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lbe/gentgo/tetsuki/PreferencesFragment$6;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/PreferencesFragment$6;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/PreferencesFragment$6$1;->this$1:Lbe/gentgo/tetsuki/PreferencesFragment$6;

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    .line 330
    const/high16 v0, 0x40000000    # 2.0f

    .line 331
    .local v0, "interval":F
    if-nez p2, :cond_2

    const/high16 v0, 0x3f000000    # 0.5f

    .line 336
    :cond_0
    :goto_0
    invoke-static {v0}, Lbe/gentgo/tetsuki/Preferences;->setReplayInterval(F)V

    .line 337
    iget-object v1, p0, Lbe/gentgo/tetsuki/PreferencesFragment$6$1;->this$1:Lbe/gentgo/tetsuki/PreferencesFragment$6;

    invoke-static {v1}, Lbe/gentgo/tetsuki/PreferencesFragment$6;->access$0(Lbe/gentgo/tetsuki/PreferencesFragment$6;)Lbe/gentgo/tetsuki/PreferencesFragment;

    move-result-object v1

    iget-object v1, v1, Lbe/gentgo/tetsuki/PreferencesFragment;->dataObserver:Landroid/database/DataSetObserver;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lbe/gentgo/tetsuki/PreferencesFragment$6$1;->this$1:Lbe/gentgo/tetsuki/PreferencesFragment$6;

    invoke-static {v1}, Lbe/gentgo/tetsuki/PreferencesFragment$6;->access$0(Lbe/gentgo/tetsuki/PreferencesFragment$6;)Lbe/gentgo/tetsuki/PreferencesFragment;

    move-result-object v1

    iget-object v1, v1, Lbe/gentgo/tetsuki/PreferencesFragment;->dataObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v1}, Landroid/database/DataSetObserver;->onChanged()V

    .line 338
    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 339
    return-void

    .line 332
    :cond_2
    const/4 v1, 0x1

    if-ne p2, v1, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 333
    :cond_3
    const/4 v1, 0x2

    if-ne p2, v1, :cond_4

    const/high16 v0, 0x40400000    # 3.0f

    goto :goto_0

    .line 334
    :cond_4
    const/4 v1, 0x3

    if-ne p2, v1, :cond_5

    const/high16 v0, 0x40c00000    # 6.0f

    goto :goto_0

    .line 335
    :cond_5
    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    const/high16 v0, 0x41200000    # 10.0f

    goto :goto_0
.end method
