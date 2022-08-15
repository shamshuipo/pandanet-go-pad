.class Lbe/gentgo/tetsuki/Main$7;
.super Ljava/lang/Object;
.source "Main.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbe/gentgo/tetsuki/Main;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbe/gentgo/tetsuki/Main;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/Main;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/Main$7;->this$0:Lbe/gentgo/tetsuki/Main;

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 241
    iget-object v0, p0, Lbe/gentgo/tetsuki/Main$7;->this$0:Lbe/gentgo/tetsuki/Main;

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/Main;->goToHome()V

    .line 242
    return-void
.end method
