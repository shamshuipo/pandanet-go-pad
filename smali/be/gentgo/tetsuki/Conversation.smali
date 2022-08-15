.class public Lbe/gentgo/tetsuki/Conversation;
.super Lbe/gentgo/tetsuki/NativeObject;
.source "Conversation.java"


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "ptr"    # J

    .prologue
    .line 4
    invoke-direct {p0, p1, p2}, Lbe/gentgo/tetsuki/NativeObject;-><init>(J)V

    return-void
.end method


# virtual methods
.method public native getIndexOfVariation(I)I
.end method

.method public native getMoveNrOfVariation(I)I
.end method

.method public native getNrOfQuotes()I
.end method

.method public native getQuoteSource(I)Ljava/lang/String;
.end method

.method public native getQuoteText(I)[B
.end method

.method public native hasVariation(I)Z
.end method
