.class Lbe/gentgo/tetsuki/GameBaseActivity$5;
.super Ljava/lang/Object;
.source "GameBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbe/gentgo/tetsuki/GameBaseActivity;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lbe/gentgo/tetsuki/GameBaseActivity$5;->this$0:Lbe/gentgo/tetsuki/GameBaseActivity;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lbe/gentgo/tetsuki/GameBaseActivity$5;->this$0:Lbe/gentgo/tetsuki/GameBaseActivity;

    invoke-static {v0}, Lbe/gentgo/tetsuki/GameBaseActivity;->access$2(Lbe/gentgo/tetsuki/GameBaseActivity;)V

    .line 51
    return-void
.end method
