.class Lbe/gentgo/tetsuki/PreferencesFragment$3;
.super Ljava/lang/Object;
.source "PreferencesFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbe/gentgo/tetsuki/PreferencesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbe/gentgo/tetsuki/PreferencesFragment;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/PreferencesFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/PreferencesFragment$3;->this$0:Lbe/gentgo/tetsuki/PreferencesFragment;

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 257
    invoke-static {p2}, Lbe/gentgo/tetsuki/Preferences;->setZoom(Z)V

    .line 258
    iget-object v0, p0, Lbe/gentgo/tetsuki/PreferencesFragment$3;->this$0:Lbe/gentgo/tetsuki/PreferencesFragment;

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/PreferencesFragment;->updateIndices()V

    .line 259
    iget-object v0, p0, Lbe/gentgo/tetsuki/PreferencesFragment$3;->this$0:Lbe/gentgo/tetsuki/PreferencesFragment;

    iget-object v0, v0, Lbe/gentgo/tetsuki/PreferencesFragment;->dataObserver:Landroid/database/DataSetObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbe/gentgo/tetsuki/PreferencesFragment$3;->this$0:Lbe/gentgo/tetsuki/PreferencesFragment;

    iget-object v0, v0, Lbe/gentgo/tetsuki/PreferencesFragment;->dataObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 260
    :cond_0
    return-void
.end method
