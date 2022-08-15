.class Lbe/gentgo/tetsuki/TimeSettingsFragment$3;
.super Ljava/lang/Object;
.source "TimeSettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbe/gentgo/tetsuki/TimeSettingsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbe/gentgo/tetsuki/TimeSettingsFragment;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/TimeSettingsFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment$3;->this$0:Lbe/gentgo/tetsuki/TimeSettingsFragment;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 56
    iget-object v1, p0, Lbe/gentgo/tetsuki/TimeSettingsFragment$3;->this$0:Lbe/gentgo/tetsuki/TimeSettingsFragment;

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/TimeSettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 57
    .local v0, "mgr":Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 58
    return-void
.end method
