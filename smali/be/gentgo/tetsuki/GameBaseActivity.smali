.class public abstract Lbe/gentgo/tetsuki/GameBaseActivity;
.super Lbe/gentgo/tetsuki/TetsukiActivity;
.source "GameBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbe/gentgo/tetsuki/GameBaseActivity$Winder;
    }
.end annotation


# static fields
.field private static random:Ljava/util/Random;


# instance fields
.field private autoPlayHandler:Landroid/os/Handler;

.field private autoPlayRunnable:Ljava/lang/Runnable;

.field autoZoomOutHandler:Landroid/os/Handler;

.field private chatBubbles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected chatView:Lbe/gentgo/tetsuki/ChatView;

.field protected game:Lbe/gentgo/tetsuki/Game;

.field protected gameSettings:Lbe/gentgo/tetsuki/GameSettings;

.field hasShownResultToolTip:Z

.field private lastMoveNr:I

.field private lastQuoteNr:I

.field lastTappedMoveNr:I

.field protected score:Lbe/gentgo/tetsuki/ScoreCount;

.field private scoreFragment:Lbe/gentgo/tetsuki/ScoreFragment;

.field sliderOrientation:I

.field protected stoneInHand:Z

.field private toDelete:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private winder:Lbe/gentgo/tetsuki/GameBaseActivity$Winder;

.field private windingKeyListener:Landroid/view/View$OnKeyListener;

.field private windingListener:Landroid/view/View$OnTouchListener;

.field private zoomOutRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 954
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lbe/gentgo/tetsuki/GameBaseActivity;->random:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 36
    invoke-direct {p0}, Lbe/gentgo/tetsuki/TetsukiActivity;-><init>()V

    .line 145
    iput-boolean v1, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->hasShownResultToolTip:Z

    .line 227
    iput v0, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->sliderOrientation:I

    .line 443
    iput v0, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->lastMoveNr:I

    .line 444
    iput v0, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->lastQuoteNr:I

    .line 746
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->autoZoomOutHandler:Landroid/os/Handler;

    .line 748
    new-instance v0, Lbe/gentgo/tetsuki/GameBaseActivity$1;

    invoke-direct {v0, p0}, Lbe/gentgo/tetsuki/GameBaseActivity$1;-><init>(Lbe/gentgo/tetsuki/GameBaseActivity;)V

    iput-object v0, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->zoomOutRunnable:Ljava/lang/Runnable;

    .line 753
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->chatBubbles:Ljava/util/List;

    .line 754
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->toDelete:Ljava/util/List;

    .line 858
    new-instance v0, Lbe/gentgo/tetsuki/GameBaseActivity$Winder;

    invoke-direct {v0, p0}, Lbe/gentgo/tetsuki/GameBaseActivity$Winder;-><init>(Lbe/gentgo/tetsuki/GameBaseActivity;)V

    iput-object v0, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->winder:Lbe/gentgo/tetsuki/GameBaseActivity$Winder;

    .line 860
    iput-object v2, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->autoPlayRunnable:Ljava/lang/Runnable;

    .line 862
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->autoPlayHandler:Landroid/os/Handler;

    .line 904
    new-instance v0, Lbe/gentgo/tetsuki/GameBaseActivity$2;

    invoke-direct {v0, p0}, Lbe/gentgo/tetsuki/GameBaseActivity$2;-><init>(Lbe/gentgo/tetsuki/GameBaseActivity;)V

    iput-object v0, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->windingListener:Landroid/view/View$OnTouchListener;

    .line 921
    new-instance v0, Lbe/gentgo/tetsuki/GameBaseActivity$3;

    invoke-direct {v0, p0}, Lbe/gentgo/tetsuki/GameBaseActivity$3;-><init>(Lbe/gentgo/tetsuki/GameBaseActivity;)V

    iput-object v0, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->windingKeyListener:Landroid/view/View$OnKeyListener;

    .line 952
    iput-object v2, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->scoreFragment:Lbe/gentgo/tetsuki/ScoreFragment;

    .line 953
    iput-boolean v1, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->stoneInHand:Z

    .line 36
    return-void
.end method

.method static synthetic access$0(Lbe/gentgo/tetsuki/GameBaseActivity;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 748
    iget-object v0, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->zoomOutRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1(Lbe/gentgo/tetsuki/GameBaseActivity;)Lbe/gentgo/tetsuki/GameBaseActivity$Winder;
    .locals 1

    .prologue
    .line 858
    iget-object v0, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->winder:Lbe/gentgo/tetsuki/GameBaseActivity$Winder;

    return-object v0
.end method

.method static synthetic access$2(Lbe/gentgo/tetsuki/GameBaseActivity;)V
    .locals 0

    .prologue
    .line 588
    invoke-direct {p0}, Lbe/gentgo/tetsuki/GameBaseActivity;->updateZoomAndReplayButton()V

    return-void
.end method

.method static synthetic access$3(Lbe/gentgo/tetsuki/GameBaseActivity;)V
    .locals 0

    .prologue
    .line 368
    invoke-direct {p0}, Lbe/gentgo/tetsuki/GameBaseActivity;->hideChat()V

    return-void
.end method

.method static synthetic access$4(Lbe/gentgo/tetsuki/GameBaseActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 753
    iget-object v0, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->chatBubbles:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5(Lbe/gentgo/tetsuki/GameBaseActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 754
    iget-object v0, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->toDelete:Ljava/util/List;

    return-object v0
.end method

.method private hideChat()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 370
    const v3, 0x7f0b004a

    invoke-virtual {p0, v3}, Lbe/gentgo/tetsuki/GameBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 371
    .local v2, "toolBar":Landroid/view/View;
    if-eqz v2, :cond_0

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 373
    :cond_0
    const v3, 0x7f0b0050

    invoke-virtual {p0, v3}, Lbe/gentgo/tetsuki/GameBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 375
    const v3, 0x7f0b005b

    invoke-virtual {p0, v3}, Lbe/gentgo/tetsuki/GameBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 376
    .local v1, "sliderGroup":Landroid/view/View;
    if-eqz v1, :cond_1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 378
    :cond_1
    const v3, 0x7f0b0048

    invoke-virtual {p0, v3}, Lbe/gentgo/tetsuki/GameBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->chatView:Lbe/gentgo/tetsuki/ChatView;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 379
    iget-object v3, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->chatView:Lbe/gentgo/tetsuki/ChatView;

    if-nez v3, :cond_2

    .line 385
    :goto_0
    return-void

    .line 381
    :cond_2
    const-string v3, "input_method"

    invoke-virtual {p0, v3}, Lbe/gentgo/tetsuki/GameBaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 382
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v3, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->chatView:Lbe/gentgo/tetsuki/ChatView;

    invoke-virtual {v3}, Lbe/gentgo/tetsuki/ChatView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 384
    const/4 v3, 0x0

    iput-object v3, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->chatView:Lbe/gentgo/tetsuki/ChatView;

    goto :goto_0
.end method

.method private isAutoPlayActive()Z
    .locals 1

    .prologue
    .line 892
    iget-object v0, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->autoPlayRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private layoutSlider(Landroid/content/res/Configuration;)Z
    .locals 18
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 246
    move-object/from16 v0, p1

    iget v13, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_0

    const/4 v6, 0x1

    .line 248
    .local v6, "landscape":Z
    :goto_0
    const v13, 0x7f0b005b

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lbe/gentgo/tetsuki/GameBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .line 249
    .local v12, "sliderGroup":Landroid/widget/LinearLayout;
    if-nez v12, :cond_1

    const/4 v13, 0x0

    .line 291
    :goto_1
    return v13

    .line 246
    .end local v6    # "landscape":Z
    .end local v12    # "sliderGroup":Landroid/widget/LinearLayout;
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 251
    .restart local v6    # "landscape":Z
    .restart local v12    # "sliderGroup":Landroid/widget/LinearLayout;
    :cond_1
    if-eqz v6, :cond_2

    const/4 v9, 0x1

    .line 252
    .local v9, "newOrientation":I
    :goto_2
    move-object/from16 v0, p0

    iget v13, v0, Lbe/gentgo/tetsuki/GameBaseActivity;->sliderOrientation:I

    if-ne v9, v13, :cond_3

    const/4 v13, 0x0

    goto :goto_1

    .line 251
    .end local v9    # "newOrientation":I
    :cond_2
    const/4 v9, 0x0

    goto :goto_2

    .line 254
    .restart local v9    # "newOrientation":I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lbe/gentgo/tetsuki/GameBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    iget v10, v13, Landroid/util/DisplayMetrics;->density:F

    .line 255
    .local v10, "scale":F
    const/high16 v13, 0x42300000    # 44.0f

    mul-float/2addr v13, v10

    float-to-double v14, v13

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    add-double v14, v14, v16

    double-to-int v5, v14

    .line 256
    .local v5, "inset":I
    const/high16 v13, 0x40800000    # 4.0f

    mul-float/2addr v13, v10

    float-to-double v14, v13

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    add-double v14, v14, v16

    double-to-int v8, v14

    .line 258
    .local v8, "margin":I
    move-object/from16 v0, p0

    iput v9, v0, Lbe/gentgo/tetsuki/GameBaseActivity;->sliderOrientation:I

    .line 259
    move-object/from16 v0, p0

    iget v13, v0, Lbe/gentgo/tetsuki/GameBaseActivity;->sliderOrientation:I

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 260
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v13, -0x1

    const/4 v14, -0x1

    invoke-direct {v7, v13, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 261
    .local v7, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v7, v8, v8, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 262
    const v13, 0x7f0b0049

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lbe/gentgo/tetsuki/GameBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 263
    .local v2, "backButton":Landroid/widget/ImageView;
    const v13, 0x7f0b0054

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lbe/gentgo/tetsuki/GameBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 264
    .local v3, "forwardButton":Landroid/widget/ImageView;
    const/high16 v13, 0x7f0b0000

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lbe/gentgo/tetsuki/GameBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 265
    .local v4, "gameView":Landroid/view/View;
    const v13, 0x7f0b0053

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lbe/gentgo/tetsuki/GameBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 267
    .local v11, "slider":Landroid/view/View;
    move-object/from16 v0, p0

    iget v13, v0, Lbe/gentgo/tetsuki/GameBaseActivity;->sliderOrientation:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_4

    .line 268
    const/4 v13, -0x2

    iput v13, v7, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 269
    const/16 v13, 0xb

    invoke-virtual {v7, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 270
    const/4 v13, 0x3

    const v14, 0x7f0b0058

    invoke-virtual {v7, v13, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 271
    const/16 v13, 0xc

    invoke-virtual {v7, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 272
    invoke-virtual/range {p0 .. p0}, Lbe/gentgo/tetsuki/GameBaseActivity;->getGameView()Lbe/gentgo/tetsuki/GameView;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v13, v14, v5, v15, v0}, Lbe/gentgo/tetsuki/GameView;->setMargin(IIII)V

    .line 273
    const v13, 0x7f02006e

    invoke-virtual {v2, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 274
    const v13, 0x7f020026

    invoke-virtual {v3, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 275
    const v13, 0x7f0b0053

    invoke-virtual {v4, v13}, Landroid/view/View;->setNextFocusRightId(I)V

    .line 276
    const/high16 v13, 0x7f0b0000

    invoke-virtual {v11, v13}, Landroid/view/View;->setNextFocusLeftId(I)V

    .line 277
    const v13, 0x7f0b0050

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lbe/gentgo/tetsuki/GameBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/high16 v14, 0x7f0b0000

    invoke-virtual {v13, v14}, Landroid/view/View;->setNextFocusDownId(I)V

    .line 290
    :goto_3
    invoke-virtual {v12, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 291
    const/4 v13, 0x1

    goto/16 :goto_1

    .line 279
    :cond_4
    const/4 v13, -0x2

    iput v13, v7, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 280
    const/16 v13, 0x9

    invoke-virtual {v7, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 281
    const/16 v13, 0xb

    invoke-virtual {v7, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 282
    const/16 v13, 0xc

    invoke-virtual {v7, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 283
    invoke-virtual/range {p0 .. p0}, Lbe/gentgo/tetsuki/GameBaseActivity;->getGameView()Lbe/gentgo/tetsuki/GameView;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v13, v14, v15, v0, v5}, Lbe/gentgo/tetsuki/GameView;->setMargin(IIII)V

    .line 284
    const v13, 0x7f020040

    invoke-virtual {v2, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 285
    const v13, 0x7f02005a

    invoke-virtual {v3, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 287
    const v13, 0x7f0b0053

    invoke-virtual {v4, v13}, Landroid/view/View;->setNextFocusDownId(I)V

    .line 288
    const/high16 v13, 0x7f0b0000

    invoke-virtual {v11, v13}, Landroid/view/View;->setNextFocusUpId(I)V

    goto :goto_3
.end method

.method private presentBubble(Landroid/view/View;Z)V
    .locals 6
    .param p1, "bubble"    # Landroid/view/View;
    .param p2, "rightAligned"    # Z

    .prologue
    const/4 v5, -0x2

    const/4 v4, 0x0

    .line 758
    const v3, 0x7f0b0048

    invoke-virtual {p0, v3}, Lbe/gentgo/tetsuki/GameBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 759
    .local v2, "parent":Landroid/view/ViewGroup;
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 760
    .local v1, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz p2, :cond_0

    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 761
    :cond_0
    invoke-virtual {v2, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 762
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 763
    iget-object v3, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->chatBubbles:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 764
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v3, -0x3d380000    # -100.0f

    invoke-direct {v0, v4, v4, v4, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 765
    .local v0, "anim":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v4, 0x5dc

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 766
    const-wide/16 v4, 0xbb8

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 767
    new-instance v3, Lbe/gentgo/tetsuki/GameBaseActivity$22;

    invoke-direct {v3, p0}, Lbe/gentgo/tetsuki/GameBaseActivity$22;-><init>(Lbe/gentgo/tetsuki/GameBaseActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 795
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 797
    return-void
.end method

.method private setButtonEnabled(IZ)Landroid/widget/ImageView;
    .locals 3
    .param p1, "id"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 616
    invoke-virtual {p0, p1}, Lbe/gentgo/tetsuki/GameBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 617
    .local v0, "button":Landroid/widget/ImageView;
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 618
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz p2, :cond_0

    const/16 v1, 0xff

    :goto_0
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 619
    return-object v0

    .line 618
    :cond_0
    const/16 v1, 0x7f

    goto :goto_0
.end method

.method private stopAutoPlay()V
    .locals 2

    .prologue
    .line 897
    iget-object v0, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->autoPlayRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 898
    iget-object v0, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->autoPlayHandler:Landroid/os/Handler;

    iget-object v1, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->autoPlayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 899
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->autoPlayRunnable:Ljava/lang/Runnable;

    .line 900
    return-void
.end method

.method private updateZoomAndReplayButton()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v4, 0x0

    .line 590
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameBaseActivity;->isZoomEnabled()Z

    move-result v3

    .line 591
    .local v3, "zoomEnabled":Z
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameBaseActivity;->isReplayEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    if-nez v3, :cond_0

    const/4 v1, 0x1

    .line 593
    .local v1, "replayEnabled":Z
    :goto_0
    const v5, 0x7f0b004d

    invoke-virtual {p0, v5}, Lbe/gentgo/tetsuki/GameBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 594
    .local v2, "zoomButton":Landroid/widget/ImageView;
    const v5, 0x7f0b004c

    invoke-virtual {p0, v5}, Lbe/gentgo/tetsuki/GameBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 595
    .local v0, "replayButton":Landroid/widget/ImageView;
    if-eqz v3, :cond_1

    move v5, v4

    :goto_1
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 596
    if-eqz v1, :cond_2

    :goto_2
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 597
    if-nez v1, :cond_4

    .line 598
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameBaseActivity;->getGameView()Lbe/gentgo/tetsuki/GameView;

    move-result-object v4

    invoke-virtual {v4}, Lbe/gentgo/tetsuki/GameView;->getTotalView()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 599
    const v4, 0x7f020078

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 612
    :goto_3
    return-void

    .end local v0    # "replayButton":Landroid/widget/ImageView;
    .end local v1    # "replayEnabled":Z
    .end local v2    # "zoomButton":Landroid/widget/ImageView;
    :cond_0
    move v1, v4

    .line 591
    goto :goto_0

    .restart local v0    # "replayButton":Landroid/widget/ImageView;
    .restart local v1    # "replayEnabled":Z
    .restart local v2    # "zoomButton":Landroid/widget/ImageView;
    :cond_1
    move v5, v6

    .line 595
    goto :goto_1

    :cond_2
    move v4, v6

    .line 596
    goto :goto_2

    .line 601
    :cond_3
    const v4, 0x7f020079

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 605
    :cond_4
    iget-object v4, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v4}, Lbe/gentgo/tetsuki/Game;->isAfterLastMove()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 606
    const v4, 0x7f020057

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 607
    :cond_5
    invoke-direct {p0}, Lbe/gentgo/tetsuki/GameBaseActivity;->isAutoPlayActive()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 608
    const v4, 0x7f02004f

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 610
    :cond_6
    const v4, 0x7f020050

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3
.end method


# virtual methods
.method public attachmentFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 467
    const-string v0, ""

    return-object v0
.end method

.method public canIResign()Z
    .locals 1

    .prologue
    .line 450
    const/4 v0, 0x0

    return v0
.end method

.method public canReport()Z
    .locals 1

    .prologue
    .line 457
    const/4 v0, 0x0

    return v0
.end method

.method public canSaveCopyToArchive()Z
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canSpeak()Z
    .locals 1

    .prologue
    .line 458
    const/4 v0, 0x0

    return v0
.end method

.method protected chatTapped()V
    .locals 11

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x4

    .line 333
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameBaseActivity;->isChatEnabled()Z

    move-result v7

    if-nez v7, :cond_0

    .line 366
    :goto_0
    return-void

    .line 334
    :cond_0
    iget-object v7, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->chatView:Lbe/gentgo/tetsuki/ChatView;

    if-eqz v7, :cond_1

    invoke-direct {p0}, Lbe/gentgo/tetsuki/GameBaseActivity;->hideChat()V

    goto :goto_0

    .line 337
    :cond_1
    iget-object v7, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->chatBubbles:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_6

    .line 339
    const/4 v2, 0x0

    .line 340
    .local v2, "myColor":I
    iget-object v7, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    if-eqz v7, :cond_3

    .line 342
    iget-object v7, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v7}, Lbe/gentgo/tetsuki/Game;->getGameSettings()Lbe/gentgo/tetsuki/GameSettings;

    move-result-object v7

    invoke-virtual {v7}, Lbe/gentgo/tetsuki/GameSettings;->getBlackPlayer()Lbe/gentgo/tetsuki/Player;

    move-result-object v7

    invoke-virtual {v7}, Lbe/gentgo/tetsuki/Player;->getID()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v8

    invoke-virtual {v8}, Lbe/gentgo/tetsuki/Server;->getMyID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 343
    const/4 v2, 0x1

    .line 344
    :cond_2
    iget-object v7, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v7}, Lbe/gentgo/tetsuki/Game;->getGameSettings()Lbe/gentgo/tetsuki/GameSettings;

    move-result-object v7

    invoke-virtual {v7}, Lbe/gentgo/tetsuki/GameSettings;->getWhitePlayer()Lbe/gentgo/tetsuki/Player;

    move-result-object v7

    invoke-virtual {v7}, Lbe/gentgo/tetsuki/Player;->getID()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getMainServer()Lbe/gentgo/tetsuki/Server;

    move-result-object v8

    invoke-virtual {v8}, Lbe/gentgo/tetsuki/Server;->getMyID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 345
    const/4 v2, -0x1

    .line 347
    :cond_3
    new-instance v7, Lbe/gentgo/tetsuki/ChatView;

    invoke-direct {v7, p0, v2}, Lbe/gentgo/tetsuki/ChatView;-><init>(Lbe/gentgo/tetsuki/GameBaseActivity;I)V

    iput-object v7, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->chatView:Lbe/gentgo/tetsuki/ChatView;

    .line 348
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 352
    .local v3, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const v7, 0x7f0b0048

    invoke-virtual {p0, v7}, Lbe/gentgo/tetsuki/GameBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 353
    .local v4, "parent":Landroid/widget/RelativeLayout;
    iget-object v7, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->chatView:Lbe/gentgo/tetsuki/ChatView;

    invoke-virtual {v4, v7, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 354
    const v7, 0x7f0b004a

    invoke-virtual {p0, v7}, Lbe/gentgo/tetsuki/GameBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 355
    .local v6, "toolBar":Landroid/view/View;
    if-eqz v6, :cond_4

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 357
    :cond_4
    const v7, 0x7f0b005b

    invoke-virtual {p0, v7}, Lbe/gentgo/tetsuki/GameBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 358
    .local v5, "sliderGroup":Landroid/view/View;
    if-eqz v5, :cond_5

    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 360
    :cond_5
    const v7, 0x7f0b0050

    invoke-virtual {p0, v7}, Lbe/gentgo/tetsuki/GameBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    .line 362
    iget-object v7, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->chatView:Lbe/gentgo/tetsuki/ChatView;

    iget-object v8, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v7, v8}, Lbe/gentgo/tetsuki/ChatView;->updateGame(Lbe/gentgo/tetsuki/Game;)V

    .line 363
    iget-object v7, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->chatView:Lbe/gentgo/tetsuki/ChatView;

    const v8, 0x7f0b003a

    invoke-virtual {v7, v8}, Lbe/gentgo/tetsuki/ChatView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 364
    .local v1, "doneButton":Landroid/widget/Button;
    new-instance v7, Lbe/gentgo/tetsuki/GameBaseActivity$19;

    invoke-direct {v7, p0}, Lbe/gentgo/tetsuki/GameBaseActivity$19;-><init>(Lbe/gentgo/tetsuki/GameBaseActivity;)V

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 337
    .end local v1    # "doneButton":Landroid/widget/Button;
    .end local v2    # "myColor":I
    .end local v3    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v4    # "parent":Landroid/widget/RelativeLayout;
    .end local v5    # "sliderGroup":Landroid/view/View;
    .end local v6    # "toolBar":Landroid/view/View;
    :cond_6
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .local v0, "bubble":Landroid/view/View;
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method protected checkCommentTap(Lbe/gentgo/tetsuki/Position;Z)Z
    .locals 20
    .param p1, "pos"    # Lbe/gentgo/tetsuki/Position;
    .param p2, "accurate"    # Z

    .prologue
    .line 661
    if-nez p2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lbe/gentgo/tetsuki/GameBaseActivity;->isZoomEnabled()Z

    move-result v16

    if-eqz v16, :cond_0

    const/16 v16, 0x0

    .line 700
    :goto_0
    return v16

    .line 662
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    move-object/from16 v16, v0

    if-nez v16, :cond_1

    const/16 v16, 0x0

    goto :goto_0

    .line 663
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    move-object/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Lbe/gentgo/tetsuki/GameBaseActivity;->nrOfMovesToShowCommentMarks()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Lbe/gentgo/tetsuki/Game;->getNrOfMovesWithCommentedVariations(I)I

    move-result v8

    .line 664
    .local v8, "count":I
    if-nez v8, :cond_2

    const/16 v16, 0x0

    goto :goto_0

    .line 666
    :cond_2
    if-eqz p2, :cond_3

    const/4 v13, 0x1

    .line 667
    .local v13, "minDistance":I
    :goto_1
    const/4 v4, -0x1

    .line 669
    .local v4, "bestMoveNr":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    if-lt v12, v8, :cond_4

    .line 682
    if-ltz v4, :cond_8

    .line 684
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 685
    .local v5, "builder":Landroid/app/AlertDialog$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Lbe/gentgo/tetsuki/Game;->getCommentedVariation(II)Lbe/gentgo/tetsuki/Game;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lbe/gentgo/tetsuki/Game;->getGameSettings()Lbe/gentgo/tetsuki/GameSettings;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lbe/gentgo/tetsuki/GameSettings;->getCommentator()Ljava/lang/String;

    move-result-object v7

    .line 687
    .local v7, "commentator":Ljava/lang/String;
    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 688
    const v16, 0x7f080152

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/GameBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 687
    :goto_3
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 691
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lbe/gentgo/tetsuki/Game;->getNrOfCommentedVariationsAtMove(I)I

    move-result v15

    .line 692
    .local v15, "variations":I
    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    const v16, 0x7f080155

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/GameBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v16

    :goto_4
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 693
    const v16, 0x7f080153

    new-instance v17, Lbe/gentgo/tetsuki/ChatView$ShowVariationListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, p0

    invoke-direct {v0, v1, v4, v2, v3}, Lbe/gentgo/tetsuki/ChatView$ShowVariationListener;-><init>(Lbe/gentgo/tetsuki/Game;IILandroid/content/Context;)V

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 694
    const v16, 0x7f080039

    const/16 v17, 0x0

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 695
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 697
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 666
    .end local v4    # "bestMoveNr":I
    .end local v5    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v7    # "commentator":Ljava/lang/String;
    .end local v12    # "i":I
    .end local v13    # "minDistance":I
    .end local v15    # "variations":I
    :cond_3
    const/16 v13, 0x8

    goto/16 :goto_1

    .line 670
    .restart local v4    # "bestMoveNr":I
    .restart local v12    # "i":I
    .restart local v13    # "minDistance":I
    :cond_4
    new-instance v6, Lbe/gentgo/tetsuki/Position;

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v6, v0, v1}, Lbe/gentgo/tetsuki/Position;-><init>(II)V

    .line 671
    .local v6, "commentPos":Lbe/gentgo/tetsuki/Position;
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    move-object/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Lbe/gentgo/tetsuki/GameBaseActivity;->nrOfMovesToShowCommentMarks()I

    move-result v17

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v1, v12}, Lbe/gentgo/tetsuki/Game;->getMoveNrWithCommentedVariation(II)I

    move-result v14

    .line 672
    .local v14, "moveNr":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v14, v6}, Lbe/gentgo/tetsuki/Game;->isMovePlayMove(ILbe/gentgo/tetsuki/Position;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 673
    iget v0, v6, Lbe/gentgo/tetsuki/Position;->column:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Lbe/gentgo/tetsuki/Position;->column:I

    move/from16 v17, v0

    sub-int v9, v16, v17

    .line 674
    .local v9, "dX":I
    iget v0, v6, Lbe/gentgo/tetsuki/Position;->row:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Lbe/gentgo/tetsuki/Position;->row:I

    move/from16 v17, v0

    sub-int v10, v16, v17

    .line 675
    .local v10, "dY":I
    mul-int v16, v9, v9

    mul-int v17, v10, v10

    add-int v11, v16, v17

    .line 676
    .local v11, "distance":I
    if-ge v11, v13, :cond_5

    .line 677
    move v13, v11

    .line 678
    move v4, v14

    .line 669
    .end local v9    # "dX":I
    .end local v10    # "dY":I
    .end local v11    # "distance":I
    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 689
    .end local v6    # "commentPos":Lbe/gentgo/tetsuki/Position;
    .end local v14    # "moveNr":I
    .restart local v5    # "builder":Landroid/app/AlertDialog$Builder;
    .restart local v7    # "commentator":Ljava/lang/String;
    :cond_6
    const v16, 0x7f080151

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/GameBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v7, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_3

    .line 692
    .restart local v15    # "variations":I
    :cond_7
    const v16, 0x7f080154

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/GameBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_4

    .line 700
    .end local v5    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v7    # "commentator":Ljava/lang/String;
    .end local v15    # "variations":I
    :cond_8
    const/16 v16, 0x0

    goto/16 :goto_0
.end method

.method public chooseHandicap(I)V
    .locals 0
    .param p1, "stones"    # I

    .prologue
    .line 463
    return-void
.end method

.method public descriptionForStone(Lbe/gentgo/tetsuki/Position;)Ljava/lang/String;
    .locals 8
    .param p1, "pos"    # Lbe/gentgo/tetsuki/Position;

    .prologue
    const/4 v3, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 733
    iget v2, p1, Lbe/gentgo/tetsuki/Position;->column:I

    add-int/lit8 v2, v2, 0x41

    int-to-char v0, v2

    .local v0, "col":C
    const/16 v2, 0x49

    if-lt v0, v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    int-to-char v0, v2

    .line 735
    :cond_0
    iget-object v2, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v2, p1}, Lbe/gentgo/tetsuki/Game;->getMoveNrOfStone(Lbe/gentgo/tetsuki/Position;)I

    move-result v1

    .line 736
    .local v1, "moveNr":I
    if-ltz v1, :cond_2

    .line 737
    iget-object v2, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v2}, Lbe/gentgo/tetsuki/Game;->getGoban()Lbe/gentgo/tetsuki/Goban;

    move-result-object v2

    invoke-virtual {v2, p1}, Lbe/gentgo/tetsuki/Goban;->getState(Lbe/gentgo/tetsuki/Position;)I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 738
    const v2, 0x7f08010d

    invoke-virtual {p0, v2}, Lbe/gentgo/tetsuki/GameBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v3, v5

    iget v4, p1, Lbe/gentgo/tetsuki/Position;->row:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 742
    :goto_0
    return-object v2

    .line 740
    :cond_1
    const v2, 0x7f08010c

    invoke-virtual {p0, v2}, Lbe/gentgo/tetsuki/GameBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v3, v5

    iget v4, p1, Lbe/gentgo/tetsuki/Position;->row:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 742
    :cond_2
    const-string v2, "%c%d"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v3, v6

    iget v4, p1, Lbe/gentgo/tetsuki/Position;->row:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method protected dismissScore()V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->scoreFragment:Lbe/gentgo/tetsuki/ScoreFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->scoreFragment:Lbe/gentgo/tetsuki/ScoreFragment;

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/ScoreFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 232
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->scoreFragment:Lbe/gentgo/tetsuki/ScoreFragment;

    .line 233
    return-void
.end method

.method protected finishTapped()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 408
    new-instance v0, Landroid/widget/PopupMenu;

    const v1, 0x7f0b0051

    invoke-virtual {p0, v1}, Lbe/gentgo/tetsuki/GameBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 409
    .local v0, "flagMenu":Landroid/widget/PopupMenu;
    iget-object v1, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/Game;->isScoring()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 411
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const/4 v2, 0x1

    const v3, 0x7f080064

    invoke-interface {v1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 412
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const/4 v2, 0x2

    const v3, 0x7f0800eb

    invoke-interface {v1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 419
    :goto_0
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameBaseActivity;->canReport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 421
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const/4 v2, 0x5

    const v3, 0x7f0800ea

    invoke-interface {v1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 422
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const/4 v2, 0x6

    const v3, 0x7f080170

    invoke-interface {v1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 425
    :cond_0
    new-instance v1, Lbe/gentgo/tetsuki/GameBaseActivity$20;

    invoke-direct {v1, p0}, Lbe/gentgo/tetsuki/GameBaseActivity$20;-><init>(Lbe/gentgo/tetsuki/GameBaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 440
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 441
    return-void

    .line 416
    :cond_1
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameBaseActivity;->isMyTurn()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const/4 v2, 0x3

    const v3, 0x7f080068

    invoke-interface {v1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 417
    :cond_2
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const/4 v2, 0x4

    const v3, 0x7f080066

    invoke-interface {v1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected flipToolBar()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 388
    const v3, 0x7f0b004b

    invoke-virtual {p0, v3}, Lbe/gentgo/tetsuki/GameBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 389
    .local v0, "normal":Landroid/view/View;
    const v3, 0x7f0b0052

    invoke-virtual {p0, v3}, Lbe/gentgo/tetsuki/GameBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 390
    .local v2, "winding":Landroid/view/View;
    const v3, 0x7f0b004a

    invoke-virtual {p0, v3}, Lbe/gentgo/tetsuki/GameBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 391
    .local v1, "toolbar":Landroid/view/View;
    if-nez v0, :cond_1

    .line 405
    :cond_0
    :goto_0
    return-void

    .line 392
    :cond_1
    if-eqz v2, :cond_0

    .line 393
    if-eqz v1, :cond_0

    .line 395
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-ne v3, v4, :cond_2

    .line 396
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 397
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 401
    :cond_2
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 402
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public getDocument()Lbe/gentgo/tetsuki/Document;
    .locals 1

    .prologue
    .line 800
    const/4 v0, 0x0

    return-object v0
.end method

.method getGameView()Lbe/gentgo/tetsuki/GameView;
    .locals 2

    .prologue
    .line 199
    const/high16 v1, 0x7f0b0000

    invoke-virtual {p0, v1}, Lbe/gentgo/tetsuki/GameBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 200
    .local v0, "gameView":Landroid/view/View;
    check-cast v0, Lbe/gentgo/tetsuki/GameView;

    .end local v0    # "gameView":Landroid/view/View;
    return-object v0
.end method

.method protected getLayout()I
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f03000e

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f03000d

    goto :goto_0
.end method

.method public getResourceForFinishButton()I
    .locals 4

    .prologue
    const v2, 0x7f020027

    .line 476
    iget-object v3, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    if-nez v3, :cond_1

    .line 488
    :cond_0
    :goto_0
    return v2

    .line 477
    :cond_1
    iget-object v3, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v3}, Lbe/gentgo/tetsuki/Game;->isOver()Z

    move-result v3

    if-eqz v3, :cond_2

    const v2, 0x7f02002c

    goto :goto_0

    .line 478
    :cond_2
    iget-object v3, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v3}, Lbe/gentgo/tetsuki/Game;->isScoring()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 479
    const/4 v1, 0x0

    .line 480
    .local v1, "scoreCount":I
    iget-object v2, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v2}, Lbe/gentgo/tetsuki/Game;->isBlackDoneScoring()Z

    move-result v2

    if-eqz v2, :cond_3

    add-int/lit8 v1, v1, 0x1

    .line 481
    :cond_3
    iget-object v2, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v2}, Lbe/gentgo/tetsuki/Game;->isWhiteDoneScoring()Z

    move-result v2

    if-eqz v2, :cond_4

    add-int/lit8 v1, v1, 0x1

    .line 482
    :cond_4
    if-nez v1, :cond_5

    const v2, 0x7f02002a

    goto :goto_0

    .line 483
    :cond_5
    const v2, 0x7f02002b

    goto :goto_0

    .line 485
    .end local v1    # "scoreCount":I
    :cond_6
    iget-object v3, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v3}, Lbe/gentgo/tetsuki/Game;->getPassCount()I

    move-result v0

    .line 486
    .local v0, "passCount":I
    const/4 v3, 0x1

    if-ne v0, v3, :cond_7

    const v2, 0x7f020028

    goto :goto_0

    .line 487
    :cond_7
    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    const v2, 0x7f020029

    goto :goto_0
.end method

.method public goForward(IZZ)V
    .locals 8
    .param p1, "steps"    # I
    .param p2, "repeating"    # Z
    .param p3, "sound"    # Z

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 866
    invoke-direct {p0}, Lbe/gentgo/tetsuki/GameBaseActivity;->stopAutoPlay()V

    .line 867
    iget-object v3, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    if-nez v3, :cond_0

    .line 888
    :goto_0
    return-void

    .line 868
    :cond_0
    iget-object v3, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v3, v4}, Lbe/gentgo/tetsuki/Game;->getMoveNr(Z)I

    move-result v0

    .line 869
    .local v0, "move":I
    iget-object v3, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v3, p1, v4}, Lbe/gentgo/tetsuki/Game;->Wind(IZ)V

    .line 870
    iget-object v3, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v3}, Lbe/gentgo/tetsuki/Game;->isAfterLastMove()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p2, 0x0

    .line 872
    :cond_1
    new-instance v2, Lbe/gentgo/tetsuki/Position;

    invoke-direct {v2, v5, v5}, Lbe/gentgo/tetsuki/Position;-><init>(II)V

    .line 873
    .local v2, "pos":Lbe/gentgo/tetsuki/Position;
    if-eqz p3, :cond_2

    if-ne p1, v4, :cond_2

    iget-object v3, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v3, v2}, Lbe/gentgo/tetsuki/Game;->getCurrentMove(Lbe/gentgo/tetsuki/Position;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v3, v4}, Lbe/gentgo/tetsuki/Game;->getMoveNr(Z)I

    move-result v3

    if-eq v0, v3, :cond_2

    .line 875
    new-array v1, v6, [I

    fill-array-data v1, :array_0

    .line 876
    .local v1, "placeIDs":[I
    sget-object v3, Lbe/gentgo/tetsuki/GameBaseActivity;->random:Ljava/util/Random;

    invoke-virtual {v3, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    aget v3, v1, v3

    invoke-static {v3, v5}, Lbe/gentgo/tetsuki/SoundManager;->playSound(IZ)V

    .line 879
    .end local v1    # "placeIDs":[I
    :cond_2
    if-eqz p2, :cond_3

    .line 880
    new-instance v3, Lbe/gentgo/tetsuki/GameBaseActivity$23;

    invoke-direct {v3, p0}, Lbe/gentgo/tetsuki/GameBaseActivity$23;-><init>(Lbe/gentgo/tetsuki/GameBaseActivity;)V

    iput-object v3, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->autoPlayRunnable:Ljava/lang/Runnable;

    .line 885
    iget-object v3, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->autoPlayHandler:Landroid/os/Handler;

    iget-object v4, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->autoPlayRunnable:Ljava/lang/Runnable;

    invoke-static {}, Lbe/gentgo/tetsuki/Preferences;->getReplayInterval()F

    move-result v5

    const/high16 v6, 0x447a0000    # 1000.0f

    mul-float/2addr v5, v6

    float-to-long v6, v5

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 887
    :cond_3
    iget-object v3, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {p0, v3}, Lbe/gentgo/tetsuki/GameBaseActivity;->updateGame(Lbe/gentgo/tetsuki/Game;)V

    goto :goto_0

    .line 875
    :array_0
    .array-data 4
        0x7f060006
        0x7f060007
        0x7f060008
    .end array-data
.end method

.method public goToPlayerDetails(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 470
    iget-object v1, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    if-nez v1, :cond_0

    .line 473
    :goto_0
    return-void

    .line 471
    :cond_0
    const/4 v0, 0x0

    .line 472
    .local v0, "openGame":Z
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getDispatcher()Lbe/gentgo/tetsuki/Dispatcher;

    move-result-object v2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    iget-object v1, v1, Lbe/gentgo/tetsuki/Game;->gameSettings:Lbe/gentgo/tetsuki/GameSettings;

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/GameSettings;->getBlackPlayer()Lbe/gentgo/tetsuki/Player;

    move-result-object v1

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/Player;->getID()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-interface {v2, v1, v0}, Lbe/gentgo/tetsuki/Dispatcher;->goToPlayer(Ljava/lang/String;Z)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    iget-object v1, v1, Lbe/gentgo/tetsuki/Game;->gameSettings:Lbe/gentgo/tetsuki/GameSettings;

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/GameSettings;->getWhitePlayer()Lbe/gentgo/tetsuki/Player;

    move-result-object v1

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/Player;->getID()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public infoTextForChatView()Ljava/lang/String;
    .locals 1

    .prologue
    .line 461
    const-string v0, ""

    return-object v0
.end method

.method public isChatEnabled()Z
    .locals 1

    .prologue
    .line 459
    const/4 v0, 0x0

    return v0
.end method

.method public isMyTurn()Z
    .locals 1

    .prologue
    .line 449
    const/4 v0, 0x0

    return v0
.end method

.method public isOpponentJapanese()Z
    .locals 1

    .prologue
    .line 462
    const/4 v0, 0x0

    return v0
.end method

.method protected isReplayEnabled()Z
    .locals 1

    .prologue
    .line 655
    const/4 v0, 0x1

    return v0
.end method

.method protected isZoomEnabled()Z
    .locals 1

    .prologue
    .line 652
    const/4 v0, 0x0

    return v0
.end method

.method public nrOfMovesToShowCommentMarks()I
    .locals 1

    .prologue
    .line 464
    const/4 v0, 0x0

    return v0
.end method

.method public onAddTimeTapped()V
    .locals 0

    .prologue
    .line 456
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 216
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameBaseActivity;->getGameView()Lbe/gentgo/tetsuki/GameView;

    move-result-object v0

    .line 217
    .local v0, "gameView":Lbe/gentgo/tetsuki/GameView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/GameView;->getTotalView()Z

    move-result v1

    if-nez v1, :cond_0

    .line 219
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameBaseActivity;->zoomTapped()V

    .line 225
    :goto_0
    return-void

    .line 223
    :cond_0
    invoke-super {p0}, Lbe/gentgo/tetsuki/TetsukiActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 296
    invoke-direct {p0, p1}, Lbe/gentgo/tetsuki/GameBaseActivity;->layoutSlider(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {p0, v0}, Lbe/gentgo/tetsuki/GameBaseActivity;->updateGame(Lbe/gentgo/tetsuki/Game;)V

    .line 299
    :cond_0
    invoke-super {p0, p1}, Lbe/gentgo/tetsuki/TetsukiActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 300
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 22
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super/range {p0 .. p1}, Lbe/gentgo/tetsuki/TetsukiActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-static/range {p0 .. p0}, Lbe/gentgo/tetsuki/Main;->getScreenDiagonalInInch(Landroid/app/Activity;)D

    .line 45
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->screenIsFitForLandscape()Z

    move-result v18

    if-nez v18, :cond_0

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/GameBaseActivity;->setRequestedOrientation(I)V

    .line 47
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lbe/gentgo/tetsuki/GameBaseActivity;->getLayout()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/GameBaseActivity;->setContentView(I)V

    .line 48
    invoke-virtual/range {p0 .. p0}, Lbe/gentgo/tetsuki/GameBaseActivity;->getGameView()Lbe/gentgo/tetsuki/GameView;

    move-result-object v18

    new-instance v19, Lbe/gentgo/tetsuki/GameBaseActivity$4;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lbe/gentgo/tetsuki/GameBaseActivity$4;-><init>(Lbe/gentgo/tetsuki/GameBaseActivity;)V

    invoke-virtual/range {v18 .. v19}, Lbe/gentgo/tetsuki/GameView;->setTapListener(Lbe/gentgo/tetsuki/TapListener;)V

    .line 49
    invoke-virtual/range {p0 .. p0}, Lbe/gentgo/tetsuki/GameBaseActivity;->getGameView()Lbe/gentgo/tetsuki/GameView;

    move-result-object v18

    new-instance v19, Lbe/gentgo/tetsuki/GameBaseActivity$5;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lbe/gentgo/tetsuki/GameBaseActivity$5;-><init>(Lbe/gentgo/tetsuki/GameBaseActivity;)V

    invoke-virtual/range {v18 .. v19}, Lbe/gentgo/tetsuki/GameView;->setZoomListener(Ljava/lang/Runnable;)V

    .line 52
    invoke-virtual/range {p0 .. p0}, Lbe/gentgo/tetsuki/GameBaseActivity;->getGameView()Lbe/gentgo/tetsuki/GameView;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lbe/gentgo/tetsuki/GameBaseActivity;->nrOfMovesToShowCommentMarks()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lbe/gentgo/tetsuki/GameView;->nrOfMovesToShowCommentMarks:I

    .line 54
    invoke-virtual/range {p0 .. p0}, Lbe/gentgo/tetsuki/GameBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v18

    move-object/from16 v0, v18

    iget v12, v0, Landroid/util/DisplayMetrics;->density:F

    .line 55
    .local v12, "scale":F
    const/high16 v18, 0x425c0000    # 55.0f

    mul-float v18, v18, v12

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x3fe0000000000000L    # 0.5

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-int v5, v0

    .line 56
    .local v5, "bottomMargin":I
    const v18, 0x7f0b004a

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/GameBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    if-nez v18, :cond_1

    const/4 v5, 0x0

    .line 57
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lbe/gentgo/tetsuki/GameBaseActivity;->getGameView()Lbe/gentgo/tetsuki/GameView;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3, v5}, Lbe/gentgo/tetsuki/GameView;->setMargin(IIII)V

    .line 59
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->isTablet()Z

    move-result v18

    if-nez v18, :cond_2

    .line 60
    const v18, 0x7f0b0056

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/GameBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 61
    .local v10, "navigateBackButton":Landroid/widget/ImageView;
    new-instance v18, Lbe/gentgo/tetsuki/GameBaseActivity$6;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lbe/gentgo/tetsuki/GameBaseActivity$6;-><init>(Lbe/gentgo/tetsuki/GameBaseActivity;)V

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    .end local v10    # "navigateBackButton":Landroid/widget/ImageView;
    :cond_2
    const v18, 0x7f0b004c

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/GameBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 69
    .local v11, "playButton":Landroid/widget/ImageView;
    new-instance v18, Lbe/gentgo/tetsuki/GameBaseActivity$7;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lbe/gentgo/tetsuki/GameBaseActivity$7;-><init>(Lbe/gentgo/tetsuki/GameBaseActivity;)V

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    const v18, 0x7f0b004d

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/GameBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    .line 73
    .local v17, "zoomButton":Landroid/widget/ImageView;
    new-instance v18, Lbe/gentgo/tetsuki/GameBaseActivity$8;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lbe/gentgo/tetsuki/GameBaseActivity$8;-><init>(Lbe/gentgo/tetsuki/GameBaseActivity;)V

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    const v18, 0x7f0b004e

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/GameBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 77
    .local v6, "chatButton":Landroid/widget/ImageView;
    new-instance v18, Lbe/gentgo/tetsuki/GameBaseActivity$9;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lbe/gentgo/tetsuki/GameBaseActivity$9;-><init>(Lbe/gentgo/tetsuki/GameBaseActivity;)V

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    const v18, 0x7f0b0049

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/GameBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 81
    .local v4, "backButton":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/GameBaseActivity;->windingListener:Landroid/view/View$OnTouchListener;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 82
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/GameBaseActivity;->windingKeyListener:Landroid/view/View$OnKeyListener;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 83
    new-instance v18, Lbe/gentgo/tetsuki/GameBaseActivity$10;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lbe/gentgo/tetsuki/GameBaseActivity$10;-><init>(Lbe/gentgo/tetsuki/GameBaseActivity;)V

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    const v18, 0x7f0b0054

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/GameBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 86
    .local v9, "forwardButton":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/GameBaseActivity;->windingListener:Landroid/view/View$OnTouchListener;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 87
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/GameBaseActivity;->windingKeyListener:Landroid/view/View$OnKeyListener;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 88
    new-instance v18, Lbe/gentgo/tetsuki/GameBaseActivity$11;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lbe/gentgo/tetsuki/GameBaseActivity$11;-><init>(Lbe/gentgo/tetsuki/GameBaseActivity;)V

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    const v18, 0x7f0b0051

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/GameBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 92
    .local v8, "finishButton":Landroid/widget/ImageView;
    new-instance v18, Lbe/gentgo/tetsuki/GameBaseActivity$12;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lbe/gentgo/tetsuki/GameBaseActivity$12;-><init>(Lbe/gentgo/tetsuki/GameBaseActivity;)V

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    const v18, 0x7f0b0050

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/GameBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    .line 97
    .local v13, "scoreButton":Landroid/widget/ImageView;
    new-instance v18, Lbe/gentgo/tetsuki/GameBaseActivity$13;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lbe/gentgo/tetsuki/GameBaseActivity$13;-><init>(Lbe/gentgo/tetsuki/GameBaseActivity;)V

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    const v18, 0x7f0b0057

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/GameBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    .line 104
    .local v14, "settingsButton":Landroid/widget/ImageView;
    new-instance v18, Lbe/gentgo/tetsuki/GameBaseActivity$14;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lbe/gentgo/tetsuki/GameBaseActivity$14;-><init>(Lbe/gentgo/tetsuki/GameBaseActivity;)V

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    const v18, 0x7f0b004f

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/GameBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    .line 111
    .local v16, "windButton":Landroid/widget/ImageView;
    if-eqz v16, :cond_3

    new-instance v18, Lbe/gentgo/tetsuki/GameBaseActivity$15;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lbe/gentgo/tetsuki/GameBaseActivity$15;-><init>(Lbe/gentgo/tetsuki/GameBaseActivity;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    :cond_3
    const v18, 0x7f0b0055

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/GameBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 118
    .local v7, "closeButton":Landroid/widget/ImageView;
    if-eqz v7, :cond_4

    new-instance v18, Lbe/gentgo/tetsuki/GameBaseActivity$16;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lbe/gentgo/tetsuki/GameBaseActivity$16;-><init>(Lbe/gentgo/tetsuki/GameBaseActivity;)V

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    :cond_4
    const v18, 0x7f0b0053

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/GameBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lbe/gentgo/tetsuki/GameSliderView;

    .line 125
    .local v15, "slider":Lbe/gentgo/tetsuki/GameSliderView;
    if-eqz v15, :cond_5

    .line 126
    new-instance v18, Lbe/gentgo/tetsuki/GameBaseActivity$17;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lbe/gentgo/tetsuki/GameBaseActivity$17;-><init>(Lbe/gentgo/tetsuki/GameBaseActivity;)V

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lbe/gentgo/tetsuki/GameSliderView;->setListener(Lbe/gentgo/tetsuki/GameSliderView$IndexListener;)V

    .line 141
    :cond_5
    const/16 v18, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/GameBaseActivity;->setVolumeControlStream(I)V

    .line 142
    return-void
.end method

.method public onDoneTapped()V
    .locals 0

    .prologue
    .line 453
    return-void
.end method

.method protected onGobanTapped(Lbe/gentgo/tetsuki/Position;Z)V
    .locals 4
    .param p1, "pos"    # Lbe/gentgo/tetsuki/Position;
    .param p2, "accurate"    # Z

    .prologue
    .line 705
    if-nez p2, :cond_1

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameBaseActivity;->isZoomEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 708
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lbe/gentgo/tetsuki/GameBaseActivity;->zoomOn(Lbe/gentgo/tetsuki/Position;Z)V

    .line 730
    :cond_0
    :goto_0
    return-void

    .line 713
    :cond_1
    iget-object v1, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/Game;->getGoban()Lbe/gentgo/tetsuki/Goban;

    move-result-object v1

    invoke-virtual {v1, p1}, Lbe/gentgo/tetsuki/Goban;->hasStone(Lbe/gentgo/tetsuki/Position;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 715
    iget-object v1, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v1, p1}, Lbe/gentgo/tetsuki/Game;->getMoveNrOfStone(Lbe/gentgo/tetsuki/Position;)I

    move-result v1

    iput v1, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->lastTappedMoveNr:I

    .line 716
    iget v1, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->lastTappedMoveNr:I

    if-ltz v1, :cond_0

    iget v1, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->lastTappedMoveNr:I

    iget-object v2, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lbe/gentgo/tetsuki/Game;->getMoveNr(Z)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 717
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 718
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0, p1}, Lbe/gentgo/tetsuki/GameBaseActivity;->descriptionForStone(Lbe/gentgo/tetsuki/Position;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 719
    const v1, 0x7f080116

    new-instance v2, Lbe/gentgo/tetsuki/GameBaseActivity$21;

    invoke-direct {v2, p0}, Lbe/gentgo/tetsuki/GameBaseActivity$21;-><init>(Lbe/gentgo/tetsuki/GameBaseActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 726
    const v1, 0x7f080039

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 727
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 942
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 943
    iget-object v0, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->chatView:Lbe/gentgo/tetsuki/ChatView;

    if-eqz v0, :cond_0

    .line 944
    invoke-direct {p0}, Lbe/gentgo/tetsuki/GameBaseActivity;->hideChat()V

    .line 945
    const/4 v0, 0x1

    .line 948
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lbe/gentgo/tetsuki/TetsukiActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPassTapped()V
    .locals 0

    .prologue
    .line 451
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 205
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameBaseActivity;->getGameView()Lbe/gentgo/tetsuki/GameView;

    move-result-object v0

    .line 206
    .local v0, "gameView":Lbe/gentgo/tetsuki/GameView;
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lbe/gentgo/tetsuki/GameView;->setGhostStones([Lbe/gentgo/tetsuki/Position;I)V

    .line 208
    :cond_0
    invoke-super {p0}, Lbe/gentgo/tetsuki/TetsukiActivity;->onPause()V

    .line 210
    iget-object v1, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->autoZoomOutHandler:Landroid/os/Handler;

    iget-object v2, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->zoomOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 211
    invoke-direct {p0}, Lbe/gentgo/tetsuki/GameBaseActivity;->stopAutoPlay()V

    .line 212
    return-void
.end method

.method public onRecountTapped()V
    .locals 0

    .prologue
    .line 454
    return-void
.end method

.method public onReportTapped()V
    .locals 0

    .prologue
    .line 455
    return-void
.end method

.method public onResignTapped()V
    .locals 0

    .prologue
    .line 452
    return-void
.end method

.method protected onResume()V
    .locals 7

    .prologue
    .line 165
    invoke-super {p0}, Lbe/gentgo/tetsuki/TetsukiActivity;->onResume()V

    .line 166
    const/4 v5, 0x0

    iput-object v5, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->scoreFragment:Lbe/gentgo/tetsuki/ScoreFragment;

    .line 168
    invoke-direct {p0}, Lbe/gentgo/tetsuki/GameBaseActivity;->updateZoomAndReplayButton()V

    .line 169
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-direct {p0, v5}, Lbe/gentgo/tetsuki/GameBaseActivity;->layoutSlider(Landroid/content/res/Configuration;)Z

    .line 171
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameBaseActivity;->getGameView()Lbe/gentgo/tetsuki/GameView;

    move-result-object v1

    .line 172
    .local v1, "gameView":Lbe/gentgo/tetsuki/GameView;
    if-eqz v1, :cond_0

    .line 174
    invoke-virtual {v1}, Lbe/gentgo/tetsuki/GameView;->initDimensions()V

    .line 175
    iget-object v5, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {p0, v5}, Lbe/gentgo/tetsuki/GameBaseActivity;->updateGame(Lbe/gentgo/tetsuki/Game;)V

    .line 176
    invoke-virtual {v1}, Lbe/gentgo/tetsuki/GameView;->invalidate()V

    .line 180
    :cond_0
    iget-object v5, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    if-eqz v5, :cond_1

    .line 182
    iget-object v5, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lbe/gentgo/tetsuki/Game;->getLastMoveNr(Z)I

    move-result v4

    .line 183
    .local v4, "nrOfMoves":I
    iget-object v5, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v5}, Lbe/gentgo/tetsuki/Game;->getGameSettings()Lbe/gentgo/tetsuki/GameSettings;

    move-result-object v5

    invoke-virtual {v5}, Lbe/gentgo/tetsuki/GameSettings;->blackCanChooseHandicap()Z

    move-result v0

    .line 184
    .local v0, "blackChoosesHandicap":Z
    iget-object v5, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v5}, Lbe/gentgo/tetsuki/Game;->getGameSettings()Lbe/gentgo/tetsuki/GameSettings;

    move-result-object v5

    invoke-virtual {v5}, Lbe/gentgo/tetsuki/GameSettings;->getNrOfHandicapStones()I

    move-result v2

    .line 185
    .local v2, "handicap":I
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameBaseActivity;->isMyTurn()Z

    move-result v3

    .line 188
    .local v3, "myTurn":Z
    if-nez v4, :cond_1

    .line 189
    if-eqz v0, :cond_1

    .line 190
    if-eqz v3, :cond_1

    .line 191
    if-nez v2, :cond_1

    .line 193
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameBaseActivity;->showScore()V

    .line 196
    .end local v0    # "blackChoosesHandicap":Z
    .end local v2    # "handicap":I
    .end local v3    # "myTurn":Z
    .end local v4    # "nrOfMoves":I
    :cond_1
    return-void
.end method

.method protected replayTapped()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 304
    iget-object v0, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/Game;->isAfterLastMove()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/Game;->WindToBegin()V

    .line 306
    iget-object v0, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {p0, v0}, Lbe/gentgo/tetsuki/GameBaseActivity;->updateGame(Lbe/gentgo/tetsuki/Game;)V

    .line 317
    :goto_0
    return-void

    .line 310
    :cond_0
    invoke-direct {p0}, Lbe/gentgo/tetsuki/GameBaseActivity;->isAutoPlayActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    invoke-direct {p0}, Lbe/gentgo/tetsuki/GameBaseActivity;->stopAutoPlay()V

    .line 312
    iget-object v0, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {p0, v0}, Lbe/gentgo/tetsuki/GameBaseActivity;->updateGame(Lbe/gentgo/tetsuki/Game;)V

    goto :goto_0

    .line 315
    :cond_1
    invoke-virtual {p0, v1, v1, v1}, Lbe/gentgo/tetsuki/GameBaseActivity;->goForward(IZZ)V

    goto :goto_0
.end method

.method public saveCopyToArchive(Z)V
    .locals 4
    .param p1, "goThere"    # Z

    .prologue
    .line 804
    iget-object v2, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v2}, Lbe/gentgo/tetsuki/Game;->getGameSettings()Lbe/gentgo/tetsuki/GameSettings;

    move-result-object v1

    .line 805
    .local v1, "settings":Lbe/gentgo/tetsuki/GameSettings;
    invoke-virtual {v1}, Lbe/gentgo/tetsuki/GameSettings;->getTitle()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameBaseActivity;->attachmentFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbe/gentgo/tetsuki/GameSettings;->setTitle(Ljava/lang/String;)V

    .line 806
    :cond_0
    invoke-virtual {v1}, Lbe/gentgo/tetsuki/GameSettings;->getDate()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Lbe/gentgo/tetsuki/GameSettings;->setDate(Ljava/util/Date;)V

    .line 808
    :cond_1
    new-instance v0, Lbe/gentgo/tetsuki/Document;

    iget-object v2, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Lbe/gentgo/tetsuki/Document;-><init>(Lbe/gentgo/tetsuki/Game;Z)V

    .line 809
    .local v0, "d":Lbe/gentgo/tetsuki/Document;
    if-eqz p1, :cond_2

    .line 810
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameBaseActivity;->finish()V

    .line 811
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->getDispatcher()Lbe/gentgo/tetsuki/Dispatcher;

    move-result-object v2

    invoke-interface {v2, v0}, Lbe/gentgo/tetsuki/Dispatcher;->goToDocument(Lbe/gentgo/tetsuki/Document;)V

    .line 813
    :cond_2
    return-void
.end method

.method protected showResultToolTipIfNeeded()V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    if-nez v0, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    iget-object v0, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/Game;->isOver()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 150
    iget-boolean v0, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->hasShownResultToolTip:Z

    if-nez v0, :cond_0

    .line 151
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameBaseActivity;->getGameView()Lbe/gentgo/tetsuki/GameView;

    move-result-object v0

    new-instance v1, Lbe/gentgo/tetsuki/GameBaseActivity$18;

    invoke-direct {v1, p0}, Lbe/gentgo/tetsuki/GameBaseActivity$18;-><init>(Lbe/gentgo/tetsuki/GameBaseActivity;)V

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/GameView;->post(Ljava/lang/Runnable;)Z

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->hasShownResultToolTip:Z

    goto :goto_0

    .line 159
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->hasShownResultToolTip:Z

    goto :goto_0
.end method

.method protected showScore()V
    .locals 3

    .prologue
    .line 236
    new-instance v0, Lbe/gentgo/tetsuki/ScoreFragment;

    iget-object v1, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    iget-object v2, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->score:Lbe/gentgo/tetsuki/ScoreCount;

    invoke-direct {v0, p0, v1, v2}, Lbe/gentgo/tetsuki/ScoreFragment;-><init>(Lbe/gentgo/tetsuki/GameBaseActivity;Lbe/gentgo/tetsuki/Game;Lbe/gentgo/tetsuki/ScoreCount;)V

    iput-object v0, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->scoreFragment:Lbe/gentgo/tetsuki/ScoreFragment;

    .line 237
    iget-object v0, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->scoreFragment:Lbe/gentgo/tetsuki/ScoreFragment;

    invoke-static {v0, p0}, Lbe/gentgo/tetsuki/DialogFragmentActivity;->startActivityWithFragment(Landroid/app/Fragment;Landroid/content/Context;)V

    .line 238
    return-void
.end method

.method protected showSettings()V
    .locals 1

    .prologue
    .line 241
    new-instance v0, Lbe/gentgo/tetsuki/PreferencesFragment;

    invoke-direct {v0, p0}, Lbe/gentgo/tetsuki/PreferencesFragment;-><init>(Lbe/gentgo/tetsuki/GameBaseActivity;)V

    .line 242
    .local v0, "fragment":Lbe/gentgo/tetsuki/PreferencesFragment;
    invoke-static {v0, p0}, Lbe/gentgo/tetsuki/DialogFragmentActivity;->startActivityWithFragment(Landroid/app/Fragment;Landroid/content/Context;)V

    .line 243
    return-void
.end method

.method public speak(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 460
    return-void
.end method

.method protected updateGame(Lbe/gentgo/tetsuki/Game;)V
    .locals 14
    .param p1, "g"    # Lbe/gentgo/tetsuki/Game;

    .prologue
    .line 493
    if-eqz p1, :cond_0

    iget-object v11, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {p1, v11}, Lbe/gentgo/tetsuki/Game;->samePointer(Lbe/gentgo/tetsuki/NativeObject;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 495
    :cond_0
    const/4 v11, -0x1

    iput v11, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->lastMoveNr:I

    .line 496
    const/4 v11, -0x1

    iput v11, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->lastQuoteNr:I

    .line 497
    iput-object p1, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    .line 498
    iget-object v11, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    if-nez v11, :cond_1

    .line 586
    :goto_0
    return-void

    .line 501
    :cond_1
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameBaseActivity;->getGameView()Lbe/gentgo/tetsuki/GameView;

    move-result-object v1

    .line 503
    .local v1, "gameView":Lbe/gentgo/tetsuki/GameView;
    iget-object v11, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    if-eqz v11, :cond_4

    .line 505
    iget-object v11, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lbe/gentgo/tetsuki/Game;->getLastMoveNr(Z)I

    move-result v4

    .line 506
    .local v4, "nr":I
    iget v11, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->lastMoveNr:I

    if-eq v4, v11, :cond_2

    if-eqz v1, :cond_2

    .line 507
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v1, v11, v12}, Lbe/gentgo/tetsuki/GameView;->setGhostStones([Lbe/gentgo/tetsuki/Position;I)V

    .line 508
    :cond_2
    new-instance v6, Lbe/gentgo/tetsuki/Position;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v6, v11, v12}, Lbe/gentgo/tetsuki/Position;-><init>(II)V

    .line 509
    .local v6, "pos":Lbe/gentgo/tetsuki/Position;
    iget-object v11, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v11, v6}, Lbe/gentgo/tetsuki/Game;->isLastMovePlayMove(Lbe/gentgo/tetsuki/Position;)Z

    move-result v3

    .line 510
    .local v3, "lastMoveIsPlay":Z
    iget v11, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->lastMoveNr:I

    add-int/lit8 v11, v11, 0x1

    if-ne v4, v11, :cond_3

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lbe/gentgo/tetsuki/GameBaseActivity;->isAutoPlayActive()Z

    move-result v11

    if-nez v11, :cond_3

    .line 512
    const/4 v11, 0x3

    new-array v5, v11, [I

    fill-array-data v5, :array_0

    .line 513
    .local v5, "placeIDs":[I
    sget-object v11, Lbe/gentgo/tetsuki/GameBaseActivity;->random:Ljava/util/Random;

    const/4 v12, 0x3

    invoke-virtual {v11, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    aget v11, v5, v11

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lbe/gentgo/tetsuki/SoundManager;->playSound(IZ)V

    .line 514
    const/4 v11, 0x0

    iput-boolean v11, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->stoneInHand:Z

    .line 516
    .end local v5    # "placeIDs":[I
    :cond_3
    iput v4, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->lastMoveNr:I

    .line 517
    iget-object v11, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->chatView:Lbe/gentgo/tetsuki/ChatView;

    if-eqz v11, :cond_b

    .line 518
    iget-object v11, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->chatView:Lbe/gentgo/tetsuki/ChatView;

    iget-object v12, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v11, v12}, Lbe/gentgo/tetsuki/ChatView;->updateGame(Lbe/gentgo/tetsuki/Game;)V

    .line 519
    iget-object v11, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v11}, Lbe/gentgo/tetsuki/Game;->getConversation()Lbe/gentgo/tetsuki/Conversation;

    move-result-object v11

    invoke-virtual {v11}, Lbe/gentgo/tetsuki/Conversation;->getNrOfQuotes()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    iput v11, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->lastQuoteNr:I

    .line 532
    .end local v3    # "lastMoveIsPlay":Z
    .end local v4    # "nr":I
    .end local v6    # "pos":Lbe/gentgo/tetsuki/Position;
    :cond_4
    :goto_1
    iget-object v11, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    if-eqz v11, :cond_c

    iget-object v11, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v11}, Lbe/gentgo/tetsuki/Game;->getTurn()I

    move-result v11

    if-eqz v11, :cond_5

    iget-object v11, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v11}, Lbe/gentgo/tetsuki/Game;->isWonOnPoints()Z

    move-result v11

    if-eqz v11, :cond_c

    .line 533
    :cond_5
    new-instance v11, Lbe/gentgo/tetsuki/ScoreCount;

    iget-object v12, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-direct {v11, v12}, Lbe/gentgo/tetsuki/ScoreCount;-><init>(Lbe/gentgo/tetsuki/Game;)V

    iput-object v11, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->score:Lbe/gentgo/tetsuki/ScoreCount;

    .line 537
    :goto_2
    iget-object v11, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    if-eqz v11, :cond_6

    const/4 v11, 0x1

    invoke-static {v11}, Lbe/gentgo/tetsuki/Preferences;->isMessageShown(I)Z

    move-result v11

    if-nez v11, :cond_6

    iget-object v11, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v11}, Lbe/gentgo/tetsuki/Game;->isScoring()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameBaseActivity;->isMyTurn()Z

    move-result v11

    if-eqz v11, :cond_6

    iget-object v11, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v11}, Lbe/gentgo/tetsuki/Game;->isAfterLastMove()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 540
    new-instance v11, Landroid/app/AlertDialog$Builder;

    invoke-direct {v11, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 541
    const v12, 0x7f08009b

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    .line 542
    const v12, 0x7f08009c

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    .line 543
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    .line 544
    const v12, 0x7f08003b

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    .line 545
    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 546
    const/4 v11, 0x1

    invoke-static {v11}, Lbe/gentgo/tetsuki/Preferences;->setMessageShown(I)V

    .line 549
    :cond_6
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameBaseActivity;->showResultToolTipIfNeeded()V

    .line 551
    iget-object v11, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->scoreFragment:Lbe/gentgo/tetsuki/ScoreFragment;

    if-eqz v11, :cond_7

    iget-object v11, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->scoreFragment:Lbe/gentgo/tetsuki/ScoreFragment;

    iget-object v12, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    iget-object v13, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->score:Lbe/gentgo/tetsuki/ScoreCount;

    invoke-virtual {v11, v12, v13}, Lbe/gentgo/tetsuki/ScoreFragment;->updateGame(Lbe/gentgo/tetsuki/Game;Lbe/gentgo/tetsuki/ScoreCount;)V

    .line 553
    :cond_7
    iget-object v11, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    iget-object v12, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->score:Lbe/gentgo/tetsuki/ScoreCount;

    invoke-virtual {v1, v11, v12}, Lbe/gentgo/tetsuki/GameView;->setGameAndScore(Lbe/gentgo/tetsuki/Game;Lbe/gentgo/tetsuki/ScoreCount;)V

    .line 556
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->isTablet()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 558
    const v11, 0x7f0b0058

    invoke-virtual {p0, v11}, Lbe/gentgo/tetsuki/GameBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 559
    .local v9, "titleBar":Landroid/view/View;
    if-eqz v9, :cond_8

    .line 560
    invoke-static {}, Lbe/gentgo/tetsuki/Preferences;->getBackgroundStyle()I

    move-result v11

    if-nez v11, :cond_d

    const v11, 0x7f020059

    :goto_3
    invoke-virtual {v9, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 563
    .end local v9    # "titleBar":Landroid/view/View;
    :cond_8
    iget-object v11, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    if-eqz v11, :cond_e

    const/4 v2, 0x1

    .line 564
    .local v2, "hasGame":Z
    :goto_4
    invoke-direct {p0}, Lbe/gentgo/tetsuki/GameBaseActivity;->updateZoomAndReplayButton()V

    .line 565
    const v11, 0x7f0b004e

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameBaseActivity;->isChatEnabled()Z

    move-result v12

    invoke-direct {p0, v11, v12}, Lbe/gentgo/tetsuki/GameBaseActivity;->setButtonEnabled(IZ)Landroid/widget/ImageView;

    .line 566
    const v12, 0x7f0b0049

    if-eqz v2, :cond_f

    iget-object v11, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v11}, Lbe/gentgo/tetsuki/Game;->isBeforeFirstMove()Z

    move-result v11

    if-nez v11, :cond_f

    const/4 v11, 0x1

    :goto_5
    invoke-direct {p0, v12, v11}, Lbe/gentgo/tetsuki/GameBaseActivity;->setButtonEnabled(IZ)Landroid/widget/ImageView;

    .line 567
    const v12, 0x7f0b0054

    if-eqz v2, :cond_10

    iget-object v11, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v11}, Lbe/gentgo/tetsuki/Game;->isAfterLastMove()Z

    move-result v11

    if-nez v11, :cond_10

    const/4 v11, 0x1

    :goto_6
    invoke-direct {p0, v12, v11}, Lbe/gentgo/tetsuki/GameBaseActivity;->setButtonEnabled(IZ)Landroid/widget/ImageView;

    .line 568
    const v11, 0x7f0b0051

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameBaseActivity;->canIResign()Z

    move-result v12

    invoke-direct {p0, v11, v12}, Lbe/gentgo/tetsuki/GameBaseActivity;->setButtonEnabled(IZ)Landroid/widget/ImageView;

    move-result-object v11

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameBaseActivity;->getResourceForFinishButton()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 571
    const v11, 0x7f0b0053

    invoke-virtual {p0, v11}, Lbe/gentgo/tetsuki/GameBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lbe/gentgo/tetsuki/GameSliderView;

    .line 572
    .local v7, "slider":Lbe/gentgo/tetsuki/GameSliderView;
    if-eqz v7, :cond_9

    .line 573
    iget-object v11, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    if-nez v11, :cond_11

    .line 574
    const/4 v11, 0x0

    const/16 v12, 0xc8

    invoke-virtual {v7, v11, v12}, Lbe/gentgo/tetsuki/GameSliderView;->setIndexAndTotal(II)V

    .line 579
    :cond_9
    :goto_7
    const v11, 0x7f0b004f

    invoke-virtual {p0, v11}, Lbe/gentgo/tetsuki/GameBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 580
    .local v10, "windButton":Landroid/widget/ImageView;
    if-eqz v10, :cond_a

    .line 581
    if-eqz v2, :cond_12

    iget-object v11, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v11}, Lbe/gentgo/tetsuki/Game;->isAfterLastMove()Z

    move-result v11

    if-eqz v11, :cond_12

    const v11, 0x7f020005

    :goto_8
    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 584
    :cond_a
    const v11, 0x7f0b0029

    invoke-virtual {p0, v11}, Lbe/gentgo/tetsuki/GameBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lbe/gentgo/tetsuki/TitleView;

    .line 585
    .local v8, "title":Lbe/gentgo/tetsuki/TitleView;
    iget-object v11, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    iget-object v12, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->score:Lbe/gentgo/tetsuki/ScoreCount;

    invoke-virtual {v8, v11, v12}, Lbe/gentgo/tetsuki/TitleView;->setGameAndScore(Lbe/gentgo/tetsuki/Game;Lbe/gentgo/tetsuki/ScoreCount;)V

    goto/16 :goto_0

    .line 520
    .end local v2    # "hasGame":Z
    .end local v7    # "slider":Lbe/gentgo/tetsuki/GameSliderView;
    .end local v8    # "title":Lbe/gentgo/tetsuki/TitleView;
    .end local v10    # "windButton":Landroid/widget/ImageView;
    .restart local v3    # "lastMoveIsPlay":Z
    .restart local v4    # "nr":I
    .restart local v6    # "pos":Lbe/gentgo/tetsuki/Position;
    :cond_b
    iget-object v11, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v11}, Lbe/gentgo/tetsuki/Game;->getConversation()Lbe/gentgo/tetsuki/Conversation;

    move-result-object v11

    invoke-virtual {v11}, Lbe/gentgo/tetsuki/Conversation;->getNrOfQuotes()I

    move-result v11

    iget v12, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->lastQuoteNr:I

    add-int/lit8 v12, v12, 0x1

    if-le v11, v12, :cond_4

    .line 522
    iget-object v11, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v11}, Lbe/gentgo/tetsuki/Game;->getConversation()Lbe/gentgo/tetsuki/Conversation;

    move-result-object v11

    invoke-virtual {v11}, Lbe/gentgo/tetsuki/Conversation;->getNrOfQuotes()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    iput v11, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->lastQuoteNr:I

    .line 525
    iget-object v11, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    iget v12, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->lastQuoteNr:I

    invoke-static {p0, v11, v12}, Lbe/gentgo/tetsuki/ChatView;->makeBubble(Landroid/content/Context;Lbe/gentgo/tetsuki/Game;I)Landroid/view/View;

    move-result-object v0

    .line 526
    .local v0, "bubble":Landroid/view/View;
    iget-object v11, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v11}, Lbe/gentgo/tetsuki/Game;->getGameSettings()Lbe/gentgo/tetsuki/GameSettings;

    move-result-object v11

    invoke-virtual {v11}, Lbe/gentgo/tetsuki/GameSettings;->getBlackPlayer()Lbe/gentgo/tetsuki/Player;

    move-result-object v11

    invoke-virtual {v11}, Lbe/gentgo/tetsuki/Player;->getID()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v12}, Lbe/gentgo/tetsuki/Game;->getConversation()Lbe/gentgo/tetsuki/Conversation;

    move-result-object v12

    iget v13, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->lastQuoteNr:I

    invoke-virtual {v12, v13}, Lbe/gentgo/tetsuki/Conversation;->getQuoteSource(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    invoke-direct {p0, v0, v11}, Lbe/gentgo/tetsuki/GameBaseActivity;->presentBubble(Landroid/view/View;Z)V

    .line 527
    const v11, 0x7f06000d

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lbe/gentgo/tetsuki/SoundManager;->playSound(IZ)V

    goto/16 :goto_1

    .line 535
    .end local v0    # "bubble":Landroid/view/View;
    .end local v3    # "lastMoveIsPlay":Z
    .end local v4    # "nr":I
    .end local v6    # "pos":Lbe/gentgo/tetsuki/Position;
    :cond_c
    const/4 v11, 0x0

    iput-object v11, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->score:Lbe/gentgo/tetsuki/ScoreCount;

    goto/16 :goto_2

    .line 560
    .restart local v9    # "titleBar":Landroid/view/View;
    :cond_d
    const v11, 0x7f020068

    goto/16 :goto_3

    .line 563
    .end local v9    # "titleBar":Landroid/view/View;
    :cond_e
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 566
    .restart local v2    # "hasGame":Z
    :cond_f
    const/4 v11, 0x0

    goto/16 :goto_5

    .line 567
    :cond_10
    const/4 v11, 0x0

    goto/16 :goto_6

    .line 576
    .restart local v7    # "slider":Lbe/gentgo/tetsuki/GameSliderView;
    :cond_11
    iget-object v11, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lbe/gentgo/tetsuki/Game;->getMoveNr(Z)I

    move-result v11

    iget-object v12, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lbe/gentgo/tetsuki/Game;->getLastMoveNr(Z)I

    move-result v12

    invoke-virtual {v7, v11, v12}, Lbe/gentgo/tetsuki/GameSliderView;->setIndexAndTotal(II)V

    goto/16 :goto_7

    .line 581
    .restart local v10    # "windButton":Landroid/widget/ImageView;
    :cond_12
    const v11, 0x7f020004

    goto/16 :goto_8

    .line 512
    nop

    :array_0
    .array-data 4
        0x7f060006
        0x7f060007
        0x7f060008
    .end array-data
.end method

.method protected zoomOn(Lbe/gentgo/tetsuki/Position;Z)V
    .locals 3
    .param p1, "pos"    # Lbe/gentgo/tetsuki/Position;
    .param p2, "animated"    # Z

    .prologue
    const/4 v2, 0x5

    .line 624
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameBaseActivity;->getGameView()Lbe/gentgo/tetsuki/GameView;

    move-result-object v1

    invoke-virtual {v1, p1}, Lbe/gentgo/tetsuki/GameView;->zoomOnAnimated(Lbe/gentgo/tetsuki/Position;)V

    .line 626
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameBaseActivity;->isMyTurn()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/Game;->isScoring()Z

    move-result v1

    if-nez v1, :cond_0

    .line 628
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    .line 629
    .local v0, "pickup":[I
    sget-object v1, Lbe/gentgo/tetsuki/GameBaseActivity;->random:Ljava/util/Random;

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    aget v1, v0, v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lbe/gentgo/tetsuki/SoundManager;->playSound(IZ)V

    .line 630
    const/4 v1, 0x1

    iput-boolean v1, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->stoneInHand:Z

    .line 632
    .end local v0    # "pickup":[I
    :cond_0
    return-void

    .line 628
    nop

    :array_0
    .array-data 4
        0x7f060001
        0x7f060002
        0x7f060003
        0x7f060004
        0x7f060005
    .end array-data
.end method

.method protected zoomOut(Z)V
    .locals 4
    .param p1, "animated"    # Z

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 636
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameBaseActivity;->getGameView()Lbe/gentgo/tetsuki/GameView;

    move-result-object v1

    invoke-virtual {v1, p1}, Lbe/gentgo/tetsuki/GameView;->zoomOut(Z)V

    .line 637
    iget-boolean v1, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->stoneInHand:Z

    if-eqz v1, :cond_0

    .line 639
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    .line 640
    .local v0, "putback":[I
    sget-object v1, Lbe/gentgo/tetsuki/GameBaseActivity;->random:Ljava/util/Random;

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    aget v1, v0, v1

    invoke-static {v1, v2}, Lbe/gentgo/tetsuki/SoundManager;->playSound(IZ)V

    .line 641
    iput-boolean v2, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->stoneInHand:Z

    .line 643
    .end local v0    # "putback":[I
    :cond_0
    return-void

    .line 639
    :array_0
    .array-data 4
        0x7f06000a
        0x7f06000b
    .end array-data
.end method

.method protected zoomOutDelayed()V
    .locals 4

    .prologue
    .line 646
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameBaseActivity;->getGameView()Lbe/gentgo/tetsuki/GameView;

    move-result-object v0

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/GameView;->getTotalView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 649
    :goto_0
    return-void

    .line 647
    :cond_0
    iget-object v0, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->autoZoomOutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->zoomOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 648
    iget-object v0, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->autoZoomOutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->zoomOutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method protected zoomTapped()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 320
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameBaseActivity;->getGameView()Lbe/gentgo/tetsuki/GameView;

    move-result-object v0

    .line 321
    .local v0, "gameView":Lbe/gentgo/tetsuki/GameView;
    invoke-virtual {v0}, Lbe/gentgo/tetsuki/GameView;->getTotalView()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 323
    new-instance v1, Lbe/gentgo/tetsuki/Position;

    invoke-direct {v1, v3, v3}, Lbe/gentgo/tetsuki/Position;-><init>(II)V

    .line 324
    .local v1, "pos":Lbe/gentgo/tetsuki/Position;
    iget-object v2, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    if-nez v2, :cond_0

    .line 330
    .end local v1    # "pos":Lbe/gentgo/tetsuki/Position;
    :goto_0
    return-void

    .line 325
    .restart local v1    # "pos":Lbe/gentgo/tetsuki/Position;
    :cond_0
    iget-object v2, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v2, v1}, Lbe/gentgo/tetsuki/Game;->getCurrentMove(Lbe/gentgo/tetsuki/Position;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v2}, Lbe/gentgo/tetsuki/Game;->getGameSettings()Lbe/gentgo/tetsuki/GameSettings;

    move-result-object v2

    invoke-virtual {v2}, Lbe/gentgo/tetsuki/GameSettings;->getColumns()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Lbe/gentgo/tetsuki/Position;->row:I

    iget-object v2, p0, Lbe/gentgo/tetsuki/GameBaseActivity;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v2}, Lbe/gentgo/tetsuki/Game;->getGameSettings()Lbe/gentgo/tetsuki/GameSettings;

    move-result-object v2

    invoke-virtual {v2}, Lbe/gentgo/tetsuki/GameSettings;->getRows()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Lbe/gentgo/tetsuki/Position;->column:I

    .line 326
    :cond_1
    invoke-virtual {p0, v1, v4}, Lbe/gentgo/tetsuki/GameBaseActivity;->zoomOn(Lbe/gentgo/tetsuki/Position;Z)V

    goto :goto_0

    .line 329
    .end local v1    # "pos":Lbe/gentgo/tetsuki/Position;
    :cond_2
    invoke-virtual {p0, v4}, Lbe/gentgo/tetsuki/GameBaseActivity;->zoomOut(Z)V

    goto :goto_0
.end method
