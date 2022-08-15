.class Lbe/gentgo/tetsuki/GameBaseActivity$19;
.super Ljava/lang/Object;
.source "GameBaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbe/gentgo/tetsuki/GameBaseActivity;->chatTapped()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbe/gentgo/tetsuki/GameBaseActivity;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/GameBaseActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/GameBaseActivity$19;->this$0:Lbe/gentgo/tetsuki/GameBaseActivity;

    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 365
    iget-object v0, p0, Lbe/gentgo/tetsuki/GameBaseActivity$19;->this$0:Lbe/gentgo/tetsuki/GameBaseActivity;

    invoke-static {v0}, Lbe/gentgo/tetsuki/GameBaseActivity;->access$3(Lbe/gentgo/tetsuki/GameBaseActivity;)V

    return-void
.end method
