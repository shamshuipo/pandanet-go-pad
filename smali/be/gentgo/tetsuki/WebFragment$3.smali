.class Lbe/gentgo/tetsuki/WebFragment$3;
.super Ljava/lang/Object;
.source "WebFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbe/gentgo/tetsuki/WebFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbe/gentgo/tetsuki/WebFragment;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/WebFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/WebFragment$3;->this$0:Lbe/gentgo/tetsuki/WebFragment;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 111
    iget-object v0, p0, Lbe/gentgo/tetsuki/WebFragment$3;->this$0:Lbe/gentgo/tetsuki/WebFragment;

    invoke-static {v0}, Lbe/gentgo/tetsuki/WebFragment;->access$0(Lbe/gentgo/tetsuki/WebFragment;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 112
    return-void
.end method
