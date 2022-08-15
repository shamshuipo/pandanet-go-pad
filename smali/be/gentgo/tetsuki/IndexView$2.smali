.class Lbe/gentgo/tetsuki/IndexView$2;
.super Ljava/lang/Object;
.source "IndexView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbe/gentgo/tetsuki/IndexView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbe/gentgo/tetsuki/IndexView;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/IndexView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/IndexView$2;->this$0:Lbe/gentgo/tetsuki/IndexView;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Z

    .prologue
    .line 57
    iget-object v0, p0, Lbe/gentgo/tetsuki/IndexView$2;->this$0:Lbe/gentgo/tetsuki/IndexView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lbe/gentgo/tetsuki/IndexView;->access$5(Lbe/gentgo/tetsuki/IndexView;Z)V

    .line 58
    return-void
.end method
