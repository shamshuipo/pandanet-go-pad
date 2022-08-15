.class Lbe/gentgo/tetsuki/OnlineGameDetailsFragment$4;
.super Ljava/lang/Object;
.source "OnlineGameDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbe/gentgo/tetsuki/OnlineGameDetailsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbe/gentgo/tetsuki/OnlineGameDetailsFragment;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/OnlineGameDetailsFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/OnlineGameDetailsFragment$4;->this$0:Lbe/gentgo/tetsuki/OnlineGameDetailsFragment;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 36
    iget-object v0, p0, Lbe/gentgo/tetsuki/OnlineGameDetailsFragment$4;->this$0:Lbe/gentgo/tetsuki/OnlineGameDetailsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lbe/gentgo/tetsuki/OnlineGameDetailsFragment;->access$3(Lbe/gentgo/tetsuki/OnlineGameDetailsFragment;Z)V

    .line 37
    return-void
.end method
