.class Lbe/gentgo/tetsuki/ChatView$1;
.super Ljava/lang/Object;
.source "ChatView.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbe/gentgo/tetsuki/ChatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbe/gentgo/tetsuki/ChatView;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/ChatView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/ChatView$1;->this$0:Lbe/gentgo/tetsuki/ChatView;

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 275
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lbe/gentgo/tetsuki/ChatView$1;->this$0:Lbe/gentgo/tetsuki/ChatView;

    invoke-static {v0}, Lbe/gentgo/tetsuki/ChatView;->access$0(Lbe/gentgo/tetsuki/ChatView;)Lbe/gentgo/tetsuki/Game;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 203
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lbe/gentgo/tetsuki/ChatView$1;->this$0:Lbe/gentgo/tetsuki/ChatView;

    invoke-static {v0}, Lbe/gentgo/tetsuki/ChatView;->access$0(Lbe/gentgo/tetsuki/ChatView;)Lbe/gentgo/tetsuki/Game;

    move-result-object v0

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/Game;->getConversation()Lbe/gentgo/tetsuki/Conversation;

    move-result-object v0

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/Conversation;->getNrOfQuotes()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 208
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 213
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 218
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 219
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    .line 224
    move-object v2, p2

    .line 225
    .local v2, "result":Landroid/view/View;
    if-nez p1, :cond_1

    .line 228
    if-nez v2, :cond_0

    .line 229
    iget-object v4, p0, Lbe/gentgo/tetsuki/ChatView$1;->this$0:Lbe/gentgo/tetsuki/ChatView;

    invoke-virtual {v4}, Lbe/gentgo/tetsuki/ChatView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030009

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 231
    :cond_0
    const v4, 0x7f0b003c

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 232
    .local v1, "label":Landroid/widget/TextView;
    iget-object v4, p0, Lbe/gentgo/tetsuki/ChatView$1;->this$0:Lbe/gentgo/tetsuki/ChatView;

    invoke-static {v4}, Lbe/gentgo/tetsuki/ChatView;->access$1(Lbe/gentgo/tetsuki/ChatView;)Lbe/gentgo/tetsuki/GameBaseActivity;

    move-result-object v4

    invoke-virtual {v4}, Lbe/gentgo/tetsuki/GameBaseActivity;->infoTextForChatView()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v3, v2

    .line 242
    .end local v1    # "label":Landroid/widget/TextView;
    .end local v2    # "result":Landroid/view/View;
    .local v3, "result":Landroid/view/View;
    :goto_0
    return-object v3

    .line 237
    .end local v3    # "result":Landroid/view/View;
    .restart local v2    # "result":Landroid/view/View;
    :cond_1
    if-nez v2, :cond_2

    .line 238
    iget-object v4, p0, Lbe/gentgo/tetsuki/ChatView$1;->this$0:Lbe/gentgo/tetsuki/ChatView;

    invoke-virtual {v4}, Lbe/gentgo/tetsuki/ChatView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f03002a

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 240
    :cond_2
    const v4, 0x7f0b00d4

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 241
    .local v0, "bubble":Landroid/view/View;
    iget-object v4, p0, Lbe/gentgo/tetsuki/ChatView$1;->this$0:Lbe/gentgo/tetsuki/ChatView;

    invoke-static {v4}, Lbe/gentgo/tetsuki/ChatView;->access$0(Lbe/gentgo/tetsuki/ChatView;)Lbe/gentgo/tetsuki/Game;

    move-result-object v4

    add-int/lit8 v5, p1, -0x1

    iget-object v6, p0, Lbe/gentgo/tetsuki/ChatView$1;->this$0:Lbe/gentgo/tetsuki/ChatView;

    invoke-virtual {v6}, Lbe/gentgo/tetsuki/ChatView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v0, v4, v5, v6}, Lbe/gentgo/tetsuki/ChatView;->access$2(Landroid/view/View;Lbe/gentgo/tetsuki/Game;ILandroid/content/Context;)V

    move-object v3, v2

    .line 242
    .end local v2    # "result":Landroid/view/View;
    .restart local v3    # "result":Landroid/view/View;
    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 248
    const/4 v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 253
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 258
    iget-object v1, p0, Lbe/gentgo/tetsuki/ChatView$1;->this$0:Lbe/gentgo/tetsuki/ChatView;

    invoke-static {v1}, Lbe/gentgo/tetsuki/ChatView;->access$0(Lbe/gentgo/tetsuki/ChatView;)Lbe/gentgo/tetsuki/Game;

    move-result-object v1

    if-nez v1, :cond_1

    .line 260
    :cond_0
    :goto_0
    return v0

    .line 259
    :cond_1
    iget-object v1, p0, Lbe/gentgo/tetsuki/ChatView$1;->this$0:Lbe/gentgo/tetsuki/ChatView;

    invoke-static {v1}, Lbe/gentgo/tetsuki/ChatView;->access$0(Lbe/gentgo/tetsuki/ChatView;)Lbe/gentgo/tetsuki/Game;

    move-result-object v1

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/Game;->getConversation()Lbe/gentgo/tetsuki/Conversation;

    move-result-object v1

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/Conversation;->getNrOfQuotes()I

    move-result v1

    if-eqz v1, :cond_0

    .line 260
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 280
    const/4 v0, 0x0

    return v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "obs"    # Landroid/database/DataSetObserver;

    .prologue
    .line 265
    iget-object v0, p0, Lbe/gentgo/tetsuki/ChatView$1;->this$0:Lbe/gentgo/tetsuki/ChatView;

    invoke-static {v0, p1}, Lbe/gentgo/tetsuki/ChatView;->access$3(Lbe/gentgo/tetsuki/ChatView;Landroid/database/DataSetObserver;)V

    .line 266
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 2
    .param p1, "obs"    # Landroid/database/DataSetObserver;

    .prologue
    .line 270
    iget-object v0, p0, Lbe/gentgo/tetsuki/ChatView$1;->this$0:Lbe/gentgo/tetsuki/ChatView;

    invoke-static {v0}, Lbe/gentgo/tetsuki/ChatView;->access$4(Lbe/gentgo/tetsuki/ChatView;)Landroid/database/DataSetObserver;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lbe/gentgo/tetsuki/ChatView$1;->this$0:Lbe/gentgo/tetsuki/ChatView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lbe/gentgo/tetsuki/ChatView;->access$3(Lbe/gentgo/tetsuki/ChatView;Landroid/database/DataSetObserver;)V

    .line 271
    :cond_0
    return-void
.end method
