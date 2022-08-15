.class Lbe/gentgo/tetsuki/SelectOpponentFragment$3;
.super Ljava/lang/Object;
.source "SelectOpponentFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbe/gentgo/tetsuki/SelectOpponentFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbe/gentgo/tetsuki/SelectOpponentFragment;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/SelectOpponentFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/SelectOpponentFragment$3;->this$0:Lbe/gentgo/tetsuki/SelectOpponentFragment;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 50
    iget-object v0, p0, Lbe/gentgo/tetsuki/SelectOpponentFragment$3;->this$0:Lbe/gentgo/tetsuki/SelectOpponentFragment;

    invoke-static {v0}, Lbe/gentgo/tetsuki/SelectOpponentFragment;->access$0(Lbe/gentgo/tetsuki/SelectOpponentFragment;)V

    .line 51
    return-void
.end method
