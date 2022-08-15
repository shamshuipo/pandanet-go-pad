.class Lbe/gentgo/tetsuki/InfoDialog$1;
.super Ljava/lang/Object;
.source "InfoDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbe/gentgo/tetsuki/InfoDialog;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbe/gentgo/tetsuki/InfoDialog;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/InfoDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/InfoDialog$1;->this$0:Lbe/gentgo/tetsuki/InfoDialog;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 21
    iget-object v0, p0, Lbe/gentgo/tetsuki/InfoDialog$1;->this$0:Lbe/gentgo/tetsuki/InfoDialog;

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/InfoDialog;->dismiss()V

    .line 22
    return-void
.end method
