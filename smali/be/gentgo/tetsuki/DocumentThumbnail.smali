.class public Lbe/gentgo/tetsuki/DocumentThumbnail;
.super Landroid/widget/ImageView;
.source "DocumentThumbnail.java"


# instance fields
.field board:Lbe/gentgo/tetsuki/Goban;

.field draw:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    new-instance v0, Lbe/gentgo/tetsuki/DocumentThumbnail$1;

    invoke-direct {v0, p0}, Lbe/gentgo/tetsuki/DocumentThumbnail$1;-><init>(Lbe/gentgo/tetsuki/DocumentThumbnail;)V

    iput-object v0, p0, Lbe/gentgo/tetsuki/DocumentThumbnail;->draw:Ljava/lang/Runnable;

    .line 74
    return-void
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 78
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 79
    if-eqz p1, :cond_0

    if-nez p3, :cond_0

    iget-object v0, p0, Lbe/gentgo/tetsuki/DocumentThumbnail;->draw:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 80
    :cond_0
    return-void
.end method

.method public setId(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 83
    invoke-static {p1}, Lbe/gentgo/tetsuki/Document;->getDocument(I)Lbe/gentgo/tetsuki/Document;

    move-result-object v0

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/Document;->getBoard()Lbe/gentgo/tetsuki/Goban;

    move-result-object v0

    iput-object v0, p0, Lbe/gentgo/tetsuki/DocumentThumbnail;->board:Lbe/gentgo/tetsuki/Goban;

    .line 84
    iget-object v0, p0, Lbe/gentgo/tetsuki/DocumentThumbnail;->draw:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 85
    return-void
.end method
