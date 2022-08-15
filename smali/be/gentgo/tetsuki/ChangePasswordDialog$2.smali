.class Lbe/gentgo/tetsuki/ChangePasswordDialog$2;
.super Ljava/lang/Object;
.source "ChangePasswordDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbe/gentgo/tetsuki/ChangePasswordDialog;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbe/gentgo/tetsuki/ChangePasswordDialog;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/ChangePasswordDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/ChangePasswordDialog$2;->this$0:Lbe/gentgo/tetsuki/ChangePasswordDialog;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 56
    iget-object v0, p0, Lbe/gentgo/tetsuki/ChangePasswordDialog$2;->this$0:Lbe/gentgo/tetsuki/ChangePasswordDialog;

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/ChangePasswordDialog;->dismiss()V

    .line 57
    return-void
.end method
