.class Lbe/gentgo/tetsuki/Main$8;
.super Ljava/lang/Object;
.source "Main.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbe/gentgo/tetsuki/Main;->onBackPressed()V
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
    iput-object p1, p0, Lbe/gentgo/tetsuki/Main$8;->this$0:Lbe/gentgo/tetsuki/Main;

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 291
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 292
    return-void
.end method
