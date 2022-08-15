.class Lbe/gentgo/tetsuki/GameBaseActivity$23;
.super Ljava/lang/Object;
.source "GameBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbe/gentgo/tetsuki/GameBaseActivity;->goForward(IZZ)V
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
    iput-object p1, p0, Lbe/gentgo/tetsuki/GameBaseActivity$23;->this$0:Lbe/gentgo/tetsuki/GameBaseActivity;

    .line 880
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 882
    iget-object v0, p0, Lbe/gentgo/tetsuki/GameBaseActivity$23;->this$0:Lbe/gentgo/tetsuki/GameBaseActivity;

    invoke-virtual {v0, v1, v1, v1}, Lbe/gentgo/tetsuki/GameBaseActivity;->goForward(IZZ)V

    .line 883
    return-void
.end method
