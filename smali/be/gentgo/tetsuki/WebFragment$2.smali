.class Lbe/gentgo/tetsuki/WebFragment$2;
.super Landroid/webkit/WebViewClient;
.source "WebFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbe/gentgo/tetsuki/WebFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbe/gentgo/tetsuki/WebFragment;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/WebFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/WebFragment$2;->this$0:Lbe/gentgo/tetsuki/WebFragment;

    .line 56
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 93
    invoke-virtual {p3}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "url":Ljava/lang/String;
    const-string v1, "https://www.pandanet.co.jp/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 95
    const-string v1, "https://my.pandanet.co.jp/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 96
    const-string v1, "https://sec.pandanet.co.jp/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    :cond_0
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 100
    :goto_0
    return-void

    .line 99
    :cond_1
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 10
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 60
    const-string v8, ".sgf"

    invoke-virtual {p2, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, ".ugi"

    invoke-virtual {p2, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, ".SGF"

    invoke-virtual {p2, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, ".UGI"

    invoke-virtual {p2, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 61
    :cond_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lbe/gentgo/tetsuki/WebFragment$2;->this$0:Lbe/gentgo/tetsuki/WebFragment;

    invoke-virtual {v9}, Lbe/gentgo/tetsuki/WebFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v8, v9}, Lbe/gentgo/tetsuki/GameRecordActivity;->downloadUri(Landroid/net/Uri;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "fileSpec":Ljava/lang/String;
    new-instance v4, Lbe/gentgo/tetsuki/SGFLoader;

    invoke-direct {v4}, Lbe/gentgo/tetsuki/SGFLoader;-><init>()V

    .line 63
    .local v4, "loader":Lbe/gentgo/tetsuki/SGFLoader;
    invoke-virtual {v4, v1}, Lbe/gentgo/tetsuki/SGFLoader;->newGame(Ljava/lang/String;)Lbe/gentgo/tetsuki/Game;

    move-result-object v2

    .line 65
    .local v2, "game":Lbe/gentgo/tetsuki/Game;
    invoke-virtual {v4}, Lbe/gentgo/tetsuki/SGFLoader;->getObserveHints()Lbe/gentgo/tetsuki/ObserveHints;

    move-result-object v3

    .line 66
    .local v3, "hints":Lbe/gentgo/tetsuki/ObserveHints;
    if-eqz v3, :cond_3

    .line 68
    invoke-virtual {v3}, Lbe/gentgo/tetsuki/ObserveHints;->hasHost()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 70
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getDispatcher()Lbe/gentgo/tetsuki/Dispatcher;

    move-result-object v7

    invoke-interface {v7, v3}, Lbe/gentgo/tetsuki/Dispatcher;->goToGameOnServer(Lbe/gentgo/tetsuki/ObserveHints;)V

    .line 84
    :goto_0
    const/4 v7, 0x1

    .line 86
    .end local v1    # "fileSpec":Ljava/lang/String;
    .end local v2    # "game":Lbe/gentgo/tetsuki/Game;
    .end local v3    # "hints":Lbe/gentgo/tetsuki/ObserveHints;
    .end local v4    # "loader":Lbe/gentgo/tetsuki/SGFLoader;
    :cond_1
    return v7

    .line 74
    .restart local v1    # "fileSpec":Ljava/lang/String;
    .restart local v2    # "game":Lbe/gentgo/tetsuki/Game;
    .restart local v3    # "hints":Lbe/gentgo/tetsuki/ObserveHints;
    .restart local v4    # "loader":Lbe/gentgo/tetsuki/SGFLoader;
    :cond_2
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v6

    .line 75
    .local v6, "server":Lbe/gentgo/tetsuki/Server;
    invoke-virtual {v6, v3}, Lbe/gentgo/tetsuki/Server;->addObserveHints(Lbe/gentgo/tetsuki/ObserveHints;)V

    .line 76
    invoke-virtual {v3}, Lbe/gentgo/tetsuki/ObserveHints;->getPlayerID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lbe/gentgo/tetsuki/Server;->observePlayer(Ljava/lang/String;)Lbe/gentgo/tetsuki/Messenger;

    move-result-object v5

    .line 77
    .local v5, "req":Lbe/gentgo/tetsuki/Messenger;
    new-instance v7, Lbe/gentgo/tetsuki/WebFragment$ObservePlayerForLiveGameListener;

    iget-object v8, p0, Lbe/gentgo/tetsuki/WebFragment$2;->this$0:Lbe/gentgo/tetsuki/WebFragment;

    invoke-virtual {v3}, Lbe/gentgo/tetsuki/ObserveHints;->getPlayerID()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lbe/gentgo/tetsuki/WebFragment$ObservePlayerForLiveGameListener;-><init>(Lbe/gentgo/tetsuki/WebFragment;Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Lbe/gentgo/tetsuki/Messenger;->addListener(Lbe/gentgo/tetsuki/Listener;)V

    .line 78
    invoke-virtual {v5}, Lbe/gentgo/tetsuki/Messenger;->notifyListeners()V

    goto :goto_0

    .line 81
    .end local v5    # "req":Lbe/gentgo/tetsuki/Messenger;
    .end local v6    # "server":Lbe/gentgo/tetsuki/Server;
    :cond_3
    new-instance v0, Lbe/gentgo/tetsuki/Document;

    invoke-direct {v0, v2, v7}, Lbe/gentgo/tetsuki/Document;-><init>(Lbe/gentgo/tetsuki/Game;Z)V

    .line 82
    .local v0, "doc":Lbe/gentgo/tetsuki/Document;
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getDispatcher()Lbe/gentgo/tetsuki/Dispatcher;

    move-result-object v7

    invoke-interface {v7, v0}, Lbe/gentgo/tetsuki/Dispatcher;->goToDocument(Lbe/gentgo/tetsuki/Document;)V

    goto :goto_0
.end method
