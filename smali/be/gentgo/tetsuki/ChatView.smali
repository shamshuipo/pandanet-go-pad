.class public Lbe/gentgo/tetsuki/ChatView;
.super Landroid/widget/LinearLayout;
.source "ChatView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbe/gentgo/tetsuki/ChatView$ShowVariationListener;
    }
.end annotation


# instance fields
.field private activity:Lbe/gentgo/tetsuki/GameBaseActivity;

.field private chatAdapter:Landroid/widget/ListAdapter;

.field private game:Lbe/gentgo/tetsuki/Game;

.field private lastNrOfQuotes:I

.field private myColor:I

.field private observer:Landroid/database/DataSetObserver;

.field private final popularQuotesEnglish:[Ljava/lang/CharSequence;

.field private final popularQuotesJapanese:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Lbe/gentgo/tetsuki/GameBaseActivity;I)V
    .locals 13
    .param p1, "act"    # Lbe/gentgo/tetsuki/GameBaseActivity;
    .param p2, "myColor"    # I

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 24
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 198
    new-instance v5, Lbe/gentgo/tetsuki/ChatView$1;

    invoke-direct {v5, p0}, Lbe/gentgo/tetsuki/ChatView$1;-><init>(Lbe/gentgo/tetsuki/ChatView;)V

    iput-object v5, p0, Lbe/gentgo/tetsuki/ChatView;->chatAdapter:Landroid/widget/ListAdapter;

    .line 284
    iput v8, p0, Lbe/gentgo/tetsuki/ChatView;->lastNrOfQuotes:I

    .line 286
    const/4 v5, 0x0

    iput-object v5, p0, Lbe/gentgo/tetsuki/ChatView;->observer:Landroid/database/DataSetObserver;

    .line 290
    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/CharSequence;

    .line 291
    const-string v6, "Have a good game."

    aput-object v6, v5, v8

    .line 292
    const-string v6, "Thank you for the game."

    aput-object v6, v5, v9

    .line 293
    const-string v6, "Good move."

    aput-object v6, v5, v10

    .line 294
    const-string v6, "Mind your time!"

    aput-object v6, v5, v11

    .line 295
    const-string v6, "I made a mistake."

    aput-object v6, v5, v12

    const/4 v6, 0x5

    .line 296
    const-string v7, "I hope we play again sometime."

    aput-object v7, v5, v6

    iput-object v5, p0, Lbe/gentgo/tetsuki/ChatView;->popularQuotesEnglish:[Ljava/lang/CharSequence;

    .line 298
    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/CharSequence;

    .line 299
    const-string v6, "\u3088\u308d\u3057\u304f\u304a\u9858\u3044\u3057\u307e\u3059\u3002"

    aput-object v6, v5, v8

    .line 300
    const-string v6, "\u3042\u308a\u304c\u3068\u3046\u3054\u3056\u3044\u307e\u3057\u305f\u3002"

    aput-object v6, v5, v9

    .line 301
    const-string v6, "\u826f\u3044\u624b\u3067\u3059\u306d\uff01"

    aput-object v6, v5, v10

    .line 302
    const-string v6, "\u6301\u3061\u6642\u9593\u306b\u6c17\u3092\u4ed8\u3051\u3066\uff01"

    aput-object v6, v5, v11

    .line 303
    const-string v6, "\u79c1\u306f\u30df\u30b9\u3057\u3066\u3057\u307e\u3044\u307e\u3057\u305f\u3002"

    aput-object v6, v5, v12

    const/4 v6, 0x5

    .line 304
    const-string v7, "\u697d\u3057\u304b\u3063\u305f\u3067\u3059\u3002\u307e\u305f\u5bfe\u5c40\u3057\u305f\u3044\u3067\u3059\u3002"

    aput-object v7, v5, v6

    iput-object v5, p0, Lbe/gentgo/tetsuki/ChatView;->popularQuotesJapanese:[Ljava/lang/CharSequence;

    .line 25
    iput p2, p0, Lbe/gentgo/tetsuki/ChatView;->myColor:I

    .line 26
    iput-object p1, p0, Lbe/gentgo/tetsuki/ChatView;->activity:Lbe/gentgo/tetsuki/GameBaseActivity;

    .line 27
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 28
    .local v2, "infl":Landroid/view/LayoutInflater;
    const v5, 0x7f030008

    invoke-virtual {v2, v5, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 30
    const v5, 0x7f0b0038

    invoke-virtual {p0, v5}, Lbe/gentgo/tetsuki/ChatView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 31
    .local v1, "editBubble":Landroid/view/ViewGroup;
    if-ne p2, v9, :cond_0

    const v5, 0x7f020013

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 32
    :cond_0
    const/4 v5, -0x1

    if-ne p2, v5, :cond_1

    const v5, 0x7f020012

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 34
    :cond_1
    const v5, 0x7f0b002b

    invoke-virtual {p0, v5}, Lbe/gentgo/tetsuki/ChatView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    .line 35
    .local v3, "list":Landroid/widget/ListView;
    iget-object v5, p0, Lbe/gentgo/tetsuki/ChatView;->chatAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 36
    const v5, 0x7f0b0039

    invoke-virtual {p0, v5}, Lbe/gentgo/tetsuki/ChatView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 38
    .local v0, "edit":Landroid/widget/EditText;
    new-instance v5, Lbe/gentgo/tetsuki/ChatView$2;

    invoke-direct {v5, p0}, Lbe/gentgo/tetsuki/ChatView$2;-><init>(Lbe/gentgo/tetsuki/ChatView;)V

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 55
    const v5, 0x7f0b003b

    invoke-virtual {p0, v5}, Lbe/gentgo/tetsuki/ChatView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 56
    .local v4, "quotesButton":Landroid/widget/Button;
    new-instance v5, Lbe/gentgo/tetsuki/ChatView$3;

    invoke-direct {v5, p0}, Lbe/gentgo/tetsuki/ChatView$3;-><init>(Lbe/gentgo/tetsuki/ChatView;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    return-void
.end method

.method static synthetic access$0(Lbe/gentgo/tetsuki/ChatView;)Lbe/gentgo/tetsuki/Game;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lbe/gentgo/tetsuki/ChatView;->game:Lbe/gentgo/tetsuki/Game;

    return-object v0
.end method

.method static synthetic access$1(Lbe/gentgo/tetsuki/ChatView;)Lbe/gentgo/tetsuki/GameBaseActivity;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lbe/gentgo/tetsuki/ChatView;->activity:Lbe/gentgo/tetsuki/GameBaseActivity;

    return-object v0
.end method

.method static synthetic access$2(Landroid/view/View;Lbe/gentgo/tetsuki/Game;ILandroid/content/Context;)V
    .locals 0

    .prologue
    .line 110
    invoke-static {p0, p1, p2, p3}, Lbe/gentgo/tetsuki/ChatView;->configureBubble(Landroid/view/View;Lbe/gentgo/tetsuki/Game;ILandroid/content/Context;)V

    return-void
.end method

.method static synthetic access$3(Lbe/gentgo/tetsuki/ChatView;Landroid/database/DataSetObserver;)V
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Lbe/gentgo/tetsuki/ChatView;->observer:Landroid/database/DataSetObserver;

    return-void
.end method

.method static synthetic access$4(Lbe/gentgo/tetsuki/ChatView;)Landroid/database/DataSetObserver;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lbe/gentgo/tetsuki/ChatView;->observer:Landroid/database/DataSetObserver;

    return-object v0
.end method

.method static synthetic access$5(Lbe/gentgo/tetsuki/ChatView;)[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 306
    invoke-direct {p0}, Lbe/gentgo/tetsuki/ChatView;->popularQuotes()[Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private static configureBubble(Landroid/view/View;Lbe/gentgo/tetsuki/Game;ILandroid/content/Context;)V
    .locals 11
    .param p0, "bubble"    # Landroid/view/View;
    .param p1, "game"    # Lbe/gentgo/tetsuki/Game;
    .param p2, "quoteNr"    # I
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 111
    invoke-virtual {p1}, Lbe/gentgo/tetsuki/Game;->getConversation()Lbe/gentgo/tetsuki/Conversation;

    move-result-object v7

    invoke-virtual {v7, p2}, Lbe/gentgo/tetsuki/Conversation;->getQuoteSource(I)Ljava/lang/String;

    move-result-object v6

    .line 112
    .local v6, "source":Ljava/lang/String;
    invoke-virtual {p1}, Lbe/gentgo/tetsuki/Game;->getConversation()Lbe/gentgo/tetsuki/Conversation;

    move-result-object v7

    invoke-virtual {v7, p2}, Lbe/gentgo/tetsuki/Conversation;->getQuoteText(I)[B

    move-result-object v7

    invoke-static {v7}, Lbe/gentgo/tetsuki/Preferences;->decode([B)Ljava/lang/String;

    move-result-object v3

    .line 114
    .local v3, "quote":Ljava/lang/String;
    const/4 v1, 0x0

    .line 115
    .local v1, "listener":Landroid/view/View$OnClickListener;
    const/4 v0, 0x0

    .line 117
    .local v0, "color":I
    invoke-virtual {p1}, Lbe/gentgo/tetsuki/Game;->getConversation()Lbe/gentgo/tetsuki/Conversation;

    move-result-object v7

    invoke-virtual {v7, p2}, Lbe/gentgo/tetsuki/Conversation;->hasVariation(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 119
    new-instance v1, Lbe/gentgo/tetsuki/ChatView$ShowVariationListener;

    .end local v1    # "listener":Landroid/view/View$OnClickListener;
    invoke-virtual {p1}, Lbe/gentgo/tetsuki/Game;->getConversation()Lbe/gentgo/tetsuki/Conversation;

    move-result-object v7

    invoke-virtual {v7, p2}, Lbe/gentgo/tetsuki/Conversation;->getMoveNrOfVariation(I)I

    move-result v7

    invoke-virtual {p1}, Lbe/gentgo/tetsuki/Game;->getConversation()Lbe/gentgo/tetsuki/Conversation;

    move-result-object v8

    invoke-virtual {v8, p2}, Lbe/gentgo/tetsuki/Conversation;->getIndexOfVariation(I)I

    move-result v8

    invoke-direct {v1, p1, v7, v8, p3}, Lbe/gentgo/tetsuki/ChatView$ShowVariationListener;-><init>(Lbe/gentgo/tetsuki/Game;IILandroid/content/Context;)V

    .line 120
    .restart local v1    # "listener":Landroid/view/View$OnClickListener;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f080151

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 121
    const/4 v6, 0x0

    .line 133
    :cond_0
    :goto_0
    const/4 v7, 0x1

    if-ne v0, v7, :cond_3

    .line 135
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    const/4 v10, 0x5

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    const v7, 0x7f020013

    invoke-virtual {p0, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 147
    :goto_1
    const v7, 0x7f0b0067

    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 148
    .local v2, "person":Landroid/widget/TextView;
    if-nez v6, :cond_5

    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    :goto_2
    const v7, 0x7f0b0081

    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 155
    .local v4, "quoteView":Landroid/widget/TextView;
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    const v7, 0x7f0b00d5

    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 158
    .local v5, "showButton":Landroid/widget/Button;
    if-eqz v1, :cond_6

    .line 160
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 161
    invoke-virtual {v5, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    :goto_3
    return-void

    .line 123
    .end local v2    # "person":Landroid/widget/TextView;
    .end local v4    # "quoteView":Landroid/widget/TextView;
    .end local v5    # "showButton":Landroid/widget/Button;
    :cond_1
    invoke-virtual {p1}, Lbe/gentgo/tetsuki/Game;->getGameSettings()Lbe/gentgo/tetsuki/GameSettings;

    move-result-object v7

    invoke-virtual {v7}, Lbe/gentgo/tetsuki/GameSettings;->getWhitePlayer()Lbe/gentgo/tetsuki/Player;

    move-result-object v7

    invoke-virtual {v7}, Lbe/gentgo/tetsuki/Player;->getID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 125
    const/4 v0, -0x1

    .line 126
    const/4 v6, 0x0

    .line 127
    goto :goto_0

    .line 128
    :cond_2
    invoke-virtual {p1}, Lbe/gentgo/tetsuki/Game;->getGameSettings()Lbe/gentgo/tetsuki/GameSettings;

    move-result-object v7

    invoke-virtual {v7}, Lbe/gentgo/tetsuki/GameSettings;->getBlackPlayer()Lbe/gentgo/tetsuki/Player;

    move-result-object v7

    invoke-virtual {v7}, Lbe/gentgo/tetsuki/Player;->getID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 130
    const/4 v0, 0x1

    .line 131
    const/4 v6, 0x0

    goto :goto_0

    .line 140
    :cond_3
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    const/4 v10, 0x3

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    const/4 v7, -0x1

    if-ne v0, v7, :cond_4

    .line 142
    const v7, 0x7f020012

    invoke-virtual {p0, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 144
    :cond_4
    const v7, 0x7f020011

    invoke-virtual {p0, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 150
    .restart local v2    # "person":Landroid/widget/TextView;
    :cond_5
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 165
    .restart local v4    # "quoteView":Landroid/widget/TextView;
    .restart local v5    # "showButton":Landroid/widget/Button;
    :cond_6
    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_3
.end method

.method public static makeBubble(Landroid/content/Context;Lbe/gentgo/tetsuki/Game;I)Landroid/view/View;
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "game"    # Lbe/gentgo/tetsuki/Game;
    .param p2, "quoteNr"    # I

    .prologue
    .line 170
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 171
    .local v0, "infl":Landroid/view/LayoutInflater;
    const v2, 0x7f030029

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 172
    .local v1, "result":Landroid/view/View;
    invoke-static {v1, p1, p2, p0}, Lbe/gentgo/tetsuki/ChatView;->configureBubble(Landroid/view/View;Lbe/gentgo/tetsuki/Game;ILandroid/content/Context;)V

    .line 173
    return-object v1
.end method

.method private popularQuotes()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 307
    invoke-static {}, Lbe/gentgo/tetsuki/Preferences;->isJapaneseUser()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lbe/gentgo/tetsuki/Preferences;->getEncoding()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbe/gentgo/tetsuki/ChatView;->activity:Lbe/gentgo/tetsuki/GameBaseActivity;

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/GameBaseActivity;->isOpponentJapanese()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lbe/gentgo/tetsuki/ChatView;->popularQuotesJapanese:[Ljava/lang/CharSequence;

    .line 310
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lbe/gentgo/tetsuki/ChatView;->popularQuotesEnglish:[Ljava/lang/CharSequence;

    goto :goto_0
.end method


# virtual methods
.method public updateGame(Lbe/gentgo/tetsuki/Game;)V
    .locals 7
    .param p1, "game"    # Lbe/gentgo/tetsuki/Game;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 77
    iput-object p1, p0, Lbe/gentgo/tetsuki/ChatView;->game:Lbe/gentgo/tetsuki/Game;

    .line 78
    iget-object v3, p0, Lbe/gentgo/tetsuki/ChatView;->observer:Landroid/database/DataSetObserver;

    if-eqz v3, :cond_0

    .line 79
    iget v3, p0, Lbe/gentgo/tetsuki/ChatView;->lastNrOfQuotes:I

    invoke-virtual {p1}, Lbe/gentgo/tetsuki/Game;->getConversation()Lbe/gentgo/tetsuki/Conversation;

    move-result-object v4

    invoke-virtual {v4}, Lbe/gentgo/tetsuki/Conversation;->getNrOfQuotes()I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 80
    invoke-virtual {p1}, Lbe/gentgo/tetsuki/Game;->getConversation()Lbe/gentgo/tetsuki/Conversation;

    move-result-object v3

    invoke-virtual {v3}, Lbe/gentgo/tetsuki/Conversation;->getNrOfQuotes()I

    move-result v3

    iput v3, p0, Lbe/gentgo/tetsuki/ChatView;->lastNrOfQuotes:I

    .line 81
    iget-object v3, p0, Lbe/gentgo/tetsuki/ChatView;->observer:Landroid/database/DataSetObserver;

    invoke-virtual {v3}, Landroid/database/DataSetObserver;->onChanged()V

    .line 83
    const v3, 0x7f0b002b

    invoke-virtual {p0, v3}, Lbe/gentgo/tetsuki/ChatView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 84
    .local v1, "list":Landroid/widget/ListView;
    iget v3, p0, Lbe/gentgo/tetsuki/ChatView;->lastNrOfQuotes:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setSelection(I)V

    .line 88
    .end local v1    # "list":Landroid/widget/ListView;
    :cond_0
    const v3, 0x7f0b0039

    invoke-virtual {p0, v3}, Lbe/gentgo/tetsuki/ChatView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 89
    .local v0, "edit":Landroid/widget/EditText;
    const v3, 0x7f0b003b

    invoke-virtual {p0, v3}, Lbe/gentgo/tetsuki/ChatView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 90
    .local v2, "quotes":Landroid/widget/Button;
    iget-object v3, p0, Lbe/gentgo/tetsuki/ChatView;->activity:Lbe/gentgo/tetsuki/GameBaseActivity;

    invoke-virtual {v3}, Lbe/gentgo/tetsuki/GameBaseActivity;->canSpeak()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 92
    iget v3, p0, Lbe/gentgo/tetsuki/ChatView;->myColor:I

    if-nez v3, :cond_1

    .line 93
    const v3, 0x7f080095

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHint(I)V

    .line 96
    :goto_0
    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 97
    invoke-virtual {v2, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 108
    :goto_1
    return-void

    .line 95
    :cond_1
    const v3, 0x7f080096

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHint(I)V

    goto :goto_0

    .line 101
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lbe/gentgo/tetsuki/Game;->isOver()Z

    move-result v3

    if-nez v3, :cond_3

    .line 102
    const v3, 0x7f080117

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHint(I)V

    .line 105
    :goto_2
    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 106
    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 104
    :cond_3
    const v3, 0x7f080030

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHint(I)V

    goto :goto_2
.end method
