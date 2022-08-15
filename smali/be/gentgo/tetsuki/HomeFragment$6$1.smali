.class Lbe/gentgo/tetsuki/HomeFragment$6$1;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbe/gentgo/tetsuki/HomeFragment$6;->Do()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lbe/gentgo/tetsuki/HomeFragment$6;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/HomeFragment$6;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/HomeFragment$6$1;->this$1:Lbe/gentgo/tetsuki/HomeFragment$6;

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 231
    iget-object v0, p0, Lbe/gentgo/tetsuki/HomeFragment$6$1;->this$1:Lbe/gentgo/tetsuki/HomeFragment$6;

    const/4 v1, 0x0

    iput-object v1, v0, Lbe/gentgo/tetsuki/HomeFragment$6;->connectionAlert:Landroid/app/Dialog;

    .line 232
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/Server;->disconnect(Z)V

    .line 233
    iget-object v0, p0, Lbe/gentgo/tetsuki/HomeFragment$6$1;->this$1:Lbe/gentgo/tetsuki/HomeFragment$6;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lbe/gentgo/tetsuki/HomeFragment$6;->hasBeenDisconnected:Z

    .line 234
    return-void
.end method
