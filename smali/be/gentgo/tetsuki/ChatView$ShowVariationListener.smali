.class public Lbe/gentgo/tetsuki/ChatView$ShowVariationListener;
.super Ljava/lang/Object;
.source "ChatView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbe/gentgo/tetsuki/ChatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShowVariationListener"
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field masterGame:Lbe/gentgo/tetsuki/Game;

.field moveNr:I

.field variationNr:I


# direct methods
.method public constructor <init>(Lbe/gentgo/tetsuki/Game;IILandroid/content/Context;)V
    .locals 0
    .param p1, "g"    # Lbe/gentgo/tetsuki/Game;
    .param p2, "move"    # I
    .param p3, "variation"    # I
    .param p4, "c"    # Landroid/content/Context;

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbe/gentgo/tetsuki/ChatView$ShowVariationListener;->masterGame:Lbe/gentgo/tetsuki/Game;

    iput p2, p0, Lbe/gentgo/tetsuki/ChatView$ShowVariationListener;->moveNr:I

    iput p3, p0, Lbe/gentgo/tetsuki/ChatView$ShowVariationListener;->variationNr:I

    iput-object p4, p0, Lbe/gentgo/tetsuki/ChatView$ShowVariationListener;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 193
    new-instance v0, Lbe/gentgo/tetsuki/VariationFragment;

    iget-object v1, p0, Lbe/gentgo/tetsuki/ChatView$ShowVariationListener;->masterGame:Lbe/gentgo/tetsuki/Game;

    iget v2, p0, Lbe/gentgo/tetsuki/ChatView$ShowVariationListener;->moveNr:I

    iget v3, p0, Lbe/gentgo/tetsuki/ChatView$ShowVariationListener;->variationNr:I

    invoke-direct {v0, v1, v2, v3}, Lbe/gentgo/tetsuki/VariationFragment;-><init>(Lbe/gentgo/tetsuki/Game;II)V

    .line 194
    .local v0, "frag":Lbe/gentgo/tetsuki/VariationFragment;
    iget-object v1, p0, Lbe/gentgo/tetsuki/ChatView$ShowVariationListener;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lbe/gentgo/tetsuki/DialogFragmentActivity;->startActivityWithFragment(Landroid/app/Fragment;Landroid/content/Context;)V

    .line 195
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 187
    new-instance v0, Lbe/gentgo/tetsuki/VariationFragment;

    iget-object v1, p0, Lbe/gentgo/tetsuki/ChatView$ShowVariationListener;->masterGame:Lbe/gentgo/tetsuki/Game;

    iget v2, p0, Lbe/gentgo/tetsuki/ChatView$ShowVariationListener;->moveNr:I

    iget v3, p0, Lbe/gentgo/tetsuki/ChatView$ShowVariationListener;->variationNr:I

    invoke-direct {v0, v1, v2, v3}, Lbe/gentgo/tetsuki/VariationFragment;-><init>(Lbe/gentgo/tetsuki/Game;II)V

    .line 188
    .local v0, "frag":Lbe/gentgo/tetsuki/VariationFragment;
    iget-object v1, p0, Lbe/gentgo/tetsuki/ChatView$ShowVariationListener;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lbe/gentgo/tetsuki/DialogFragmentActivity;->startActivityWithFragment(Landroid/app/Fragment;Landroid/content/Context;)V

    .line 189
    return-void
.end method
