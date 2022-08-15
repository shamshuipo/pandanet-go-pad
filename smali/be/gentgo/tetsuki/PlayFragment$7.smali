.class Lbe/gentgo/tetsuki/PlayFragment$7;
.super Ljava/lang/Object;
.source "PlayFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbe/gentgo/tetsuki/PlayFragment;->updateCard(Landroid/view/View;Lbe/gentgo/tetsuki/Invitation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbe/gentgo/tetsuki/PlayFragment;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/PlayFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/PlayFragment$7;->this$0:Lbe/gentgo/tetsuki/PlayFragment;

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 215
    iget-object v0, p0, Lbe/gentgo/tetsuki/PlayFragment$7;->this$0:Lbe/gentgo/tetsuki/PlayFragment;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-static {v0, v1}, Lbe/gentgo/tetsuki/PlayFragment;->access$3(Lbe/gentgo/tetsuki/PlayFragment;Landroid/view/ViewParent;)V

    .line 216
    return-void
.end method
