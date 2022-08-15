.class Lbe/gentgo/tetsuki/GamePlayActivity$5;
.super Ljava/lang/Object;
.source "GamePlayActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbe/gentgo/tetsuki/GamePlayActivity;->onAddTimeTapped()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbe/gentgo/tetsuki/GamePlayActivity;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/GamePlayActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/GamePlayActivity$5;->this$0:Lbe/gentgo/tetsuki/GamePlayActivity;

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 198
    const/4 v0, 0x0

    .line 199
    .local v0, "seconds":I
    if-nez p2, :cond_0

    const/16 v0, 0x78

    .line 200
    :cond_0
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    const/16 v0, 0x12c

    .line 201
    :cond_1
    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    const/16 v0, 0x258

    .line 202
    :cond_2
    const/4 v1, 0x3

    if-ne p2, v1, :cond_3

    const/16 v0, 0xe10

    .line 203
    :cond_3
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbe/gentgo/tetsuki/Server;->donateTime(I)V

    .line 204
    return-void
.end method
