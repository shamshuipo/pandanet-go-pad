.class Lbe/gentgo/tetsuki/Main$11;
.super Ljava/lang/Object;
.source "Main.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbe/gentgo/tetsuki/Main;->goToDocument(Lbe/gentgo/tetsuki/Document;)V
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
    iput-object p1, p0, Lbe/gentgo/tetsuki/Main$11;->this$0:Lbe/gentgo/tetsuki/Main;

    .line 494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 496
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lbe/gentgo/tetsuki/Main$11;->this$0:Lbe/gentgo/tetsuki/Main;

    const-class v3, Lbe/gentgo/tetsuki/GameRecordActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 497
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lbe/gentgo/tetsuki/Main$11;->this$0:Lbe/gentgo/tetsuki/Main;

    invoke-virtual {v1, v0}, Lbe/gentgo/tetsuki/Main;->startActivity(Landroid/content/Intent;)V

    .line 498
    return-void
.end method
