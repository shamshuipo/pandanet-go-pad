.class public Lbe/gentgo/tetsuki/WebFragment;
.super Landroid/app/Fragment;
.source "WebFragment.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbe/gentgo/tetsuki/WebFragment$ObservePlayerForLiveGameListener;
    }
.end annotation


# instance fields
.field private titleID:I

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "aTitle"    # I
    .param p2, "aUrl"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 24
    iput-object p2, p0, Lbe/gentgo/tetsuki/WebFragment;->url:Ljava/lang/String;

    .line 25
    iput p1, p0, Lbe/gentgo/tetsuki/WebFragment;->titleID:I

    .line 26
    return-void
.end method

.method static synthetic access$0(Lbe/gentgo/tetsuki/WebFragment;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 125
    invoke-direct {p0}, Lbe/gentgo/tetsuki/WebFragment;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    return-object v0
.end method

.method private getWebView()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/WebFragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    return-object v0
.end method


# virtual methods
.method public loadUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "aUrl"    # Ljava/lang/String;

    .prologue
    .line 29
    iget-object v0, p0, Lbe/gentgo/tetsuki/WebFragment;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbe/gentgo/tetsuki/WebFragment;->url:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    :goto_0
    return-void

    .line 30
    :cond_0
    iput-object p1, p0, Lbe/gentgo/tetsuki/WebFragment;->url:Ljava/lang/String;

    .line 31
    invoke-direct {p0}, Lbe/gentgo/tetsuki/WebFragment;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lbe/gentgo/tetsuki/WebFragment;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 47
    const v1, 0x7f030031

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 48
    .local v0, "result":Landroid/webkit/WebView;
    iget-object v1, p0, Lbe/gentgo/tetsuki/WebFragment;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 50
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 51
    new-instance v1, Lbe/gentgo/tetsuki/WebFragment$1;

    invoke-direct {v1, p0}, Lbe/gentgo/tetsuki/WebFragment$1;-><init>(Lbe/gentgo/tetsuki/WebFragment;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 56
    new-instance v1, Lbe/gentgo/tetsuki/WebFragment$2;

    invoke-direct {v1, p0}, Lbe/gentgo/tetsuki/WebFragment$2;-><init>(Lbe/gentgo/tetsuki/WebFragment;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 102
    return-object v0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 120
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 121
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainActionBar()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0b001c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 122
    .local v0, "backButton":Landroid/widget/ImageButton;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 123
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 107
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainActionBar()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0b001c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 108
    .local v0, "backButton":Landroid/widget/ImageButton;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 109
    new-instance v2, Lbe/gentgo/tetsuki/WebFragment$3;

    invoke-direct {v2, p0}, Lbe/gentgo/tetsuki/WebFragment$3;-><init>(Lbe/gentgo/tetsuki/WebFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainActionBar()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0b001a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 114
    .local v1, "titleView":Landroid/widget/TextView;
    iget v2, p0, Lbe/gentgo/tetsuki/WebFragment;->titleID:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 115
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 116
    return-void
.end method
