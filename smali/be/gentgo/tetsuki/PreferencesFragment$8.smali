.class Lbe/gentgo/tetsuki/PreferencesFragment$8;
.super Ljava/lang/Object;
.source "PreferencesFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbe/gentgo/tetsuki/PreferencesFragment;->presentVolumeDialog()V
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
    iput-object p1, p0, Lbe/gentgo/tetsuki/PreferencesFragment$8;->this$0:Lbe/gentgo/tetsuki/PreferencesFragment;

    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 389
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 390
    iget-object v0, p0, Lbe/gentgo/tetsuki/PreferencesFragment$8;->this$0:Lbe/gentgo/tetsuki/PreferencesFragment;

    iget-object v0, v0, Lbe/gentgo/tetsuki/PreferencesFragment;->dataObserver:Landroid/database/DataSetObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbe/gentgo/tetsuki/PreferencesFragment$8;->this$0:Lbe/gentgo/tetsuki/PreferencesFragment;

    iget-object v0, v0, Lbe/gentgo/tetsuki/PreferencesFragment;->dataObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 391
    :cond_0
    return-void
.end method
