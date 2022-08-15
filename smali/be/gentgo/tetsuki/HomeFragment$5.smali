.class Lbe/gentgo/tetsuki/HomeFragment$5;
.super Lbe/gentgo/tetsuki/Listener;
.source "HomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbe/gentgo/tetsuki/HomeFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbe/gentgo/tetsuki/HomeFragment;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/HomeFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/HomeFragment$5;->this$0:Lbe/gentgo/tetsuki/HomeFragment;

    .line 180
    invoke-direct {p0}, Lbe/gentgo/tetsuki/Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public Do()Z
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lbe/gentgo/tetsuki/HomeFragment$5;->this$0:Lbe/gentgo/tetsuki/HomeFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/HomeFragment;->update(Z)V

    .line 183
    const/4 v0, 0x1

    return v0
.end method
