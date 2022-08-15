.class public Lbe/gentgo/tetsuki/GameView;
.super Landroid/view/View;
.source "GameView.java"


# instance fields
.field public allowCoordinates:Z

.field blackShadow:Landroid/graphics/Bitmap;

.field blackStone:Landroid/graphics/Bitmap;

.field protected bottomMargin:I

.field private currentFrame:Landroid/graphics/Rect;

.field private dragging:Z

.field public drawMoveNumbers:Z

.field private finger:Landroid/graphics/Point;

.field protected fullSizeDimensions:Lbe/gentgo/tetsuki/GobanDimensions;

.field protected game:Lbe/gentgo/tetsuki/Game;

.field protected gameSettings:Lbe/gentgo/tetsuki/GameSettings;

.field private ghostColor:I

.field private ghostStones:[Lbe/gentgo/tetsuki/Position;

.field protected goban:Lbe/gentgo/tetsuki/Goban;

.field protected gobanDimensions:Lbe/gentgo/tetsuki/GobanDimensions;

.field protected leftMargin:I

.field public nrOfMovesToShowCommentMarks:I

.field private pointToZoomOn:Landroid/graphics/Point;

.field previousStoneStyle:I

.field previousWoodStyle:I

.field protected rightMargin:I

.field private score:Lbe/gentgo/tetsuki/ScoreCount;

.field private tapListener:Lbe/gentgo/tetsuki/TapListener;

.field protected topMargin:I

.field protected totalView:Z

.field protected totalViewDimensions:Lbe/gentgo/tetsuki/GobanDimensions;

.field public whiteBackground:Z

.field whiteShadow:Landroid/graphics/Bitmap;

.field whiteStone:Landroid/graphics/Bitmap;

.field woodPattern:Landroid/graphics/Bitmap;

.field protected zoomBitmap:Landroid/graphics/Bitmap;

.field private zoomListener:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lbe/gentgo/tetsuki/GameView;->currentFrame:Landroid/graphics/Rect;

    .line 89
    iput-object v1, p0, Lbe/gentgo/tetsuki/GameView;->woodPattern:Landroid/graphics/Bitmap;

    .line 90
    iput-object v1, p0, Lbe/gentgo/tetsuki/GameView;->whiteShadow:Landroid/graphics/Bitmap;

    .line 91
    iput-object v1, p0, Lbe/gentgo/tetsuki/GameView;->blackShadow:Landroid/graphics/Bitmap;

    .line 92
    iput-object v1, p0, Lbe/gentgo/tetsuki/GameView;->whiteStone:Landroid/graphics/Bitmap;

    .line 93
    iput-object v1, p0, Lbe/gentgo/tetsuki/GameView;->blackStone:Landroid/graphics/Bitmap;

    .line 94
    iput v4, p0, Lbe/gentgo/tetsuki/GameView;->previousWoodStyle:I

    .line 95
    iput v4, p0, Lbe/gentgo/tetsuki/GameView;->previousStoneStyle:I

    .line 404
    iput-boolean v2, p0, Lbe/gentgo/tetsuki/GameView;->drawMoveNumbers:Z

    .line 545
    iput-object v1, p0, Lbe/gentgo/tetsuki/GameView;->score:Lbe/gentgo/tetsuki/ScoreCount;

    .line 546
    iput-object v1, p0, Lbe/gentgo/tetsuki/GameView;->ghostStones:[Lbe/gentgo/tetsuki/Position;

    .line 547
    iput v2, p0, Lbe/gentgo/tetsuki/GameView;->ghostColor:I

    .line 548
    iput-boolean v3, p0, Lbe/gentgo/tetsuki/GameView;->totalView:Z

    .line 552
    iput-object v1, p0, Lbe/gentgo/tetsuki/GameView;->gobanDimensions:Lbe/gentgo/tetsuki/GobanDimensions;

    .line 553
    iput-object v1, p0, Lbe/gentgo/tetsuki/GameView;->totalViewDimensions:Lbe/gentgo/tetsuki/GobanDimensions;

    .line 554
    iput-object v1, p0, Lbe/gentgo/tetsuki/GameView;->fullSizeDimensions:Lbe/gentgo/tetsuki/GobanDimensions;

    .line 620
    iput-object v1, p0, Lbe/gentgo/tetsuki/GameView;->zoomBitmap:Landroid/graphics/Bitmap;

    .line 676
    iput v2, p0, Lbe/gentgo/tetsuki/GameView;->nrOfMovesToShowCommentMarks:I

    .line 727
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lbe/gentgo/tetsuki/GameView;->finger:Landroid/graphics/Point;

    .line 831
    iput-object v1, p0, Lbe/gentgo/tetsuki/GameView;->tapListener:Lbe/gentgo/tetsuki/TapListener;

    .line 936
    iput-boolean v3, p0, Lbe/gentgo/tetsuki/GameView;->allowCoordinates:Z

    .line 937
    iput-boolean v2, p0, Lbe/gentgo/tetsuki/GameView;->whiteBackground:Z

    .line 29
    new-instance v0, Lbe/gentgo/tetsuki/GobanDimensions;

    invoke-direct {v0}, Lbe/gentgo/tetsuki/GobanDimensions;-><init>()V

    iput-object v0, p0, Lbe/gentgo/tetsuki/GameView;->fullSizeDimensions:Lbe/gentgo/tetsuki/GobanDimensions;

    .line 30
    new-instance v0, Lbe/gentgo/tetsuki/GobanDimensions;

    invoke-direct {v0}, Lbe/gentgo/tetsuki/GobanDimensions;-><init>()V

    iput-object v0, p0, Lbe/gentgo/tetsuki/GameView;->totalViewDimensions:Lbe/gentgo/tetsuki/GobanDimensions;

    .line 33
    invoke-virtual {p0, v3, v1}, Lbe/gentgo/tetsuki/GameView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 34
    return-void
.end method

.method private constrainScroll(Landroid/graphics/Point;)V
    .locals 5
    .param p1, "p"    # Landroid/graphics/Point;

    .prologue
    const/4 v4, 0x0

    .line 754
    iget v3, p1, Landroid/graphics/Point;->x:I

    if-gez v3, :cond_0

    iput v4, p1, Landroid/graphics/Point;->x:I

    .line 755
    :cond_0
    iget v3, p1, Landroid/graphics/Point;->y:I

    if-gez v3, :cond_1

    iput v4, p1, Landroid/graphics/Point;->y:I

    .line 756
    :cond_1
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .local v2, "rect":Landroid/graphics/Rect;
    iget-object v3, p0, Lbe/gentgo/tetsuki/GameView;->gobanDimensions:Lbe/gentgo/tetsuki/GobanDimensions;

    invoke-virtual {v3, v2}, Lbe/gentgo/tetsuki/GobanDimensions;->getTotalRect(Landroid/graphics/Rect;)V

    .line 758
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lbe/gentgo/tetsuki/GameView;->bottomMargin:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 759
    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lbe/gentgo/tetsuki/GameView;->topMargin:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 760
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lbe/gentgo/tetsuki/GameView;->leftMargin:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 761
    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lbe/gentgo/tetsuki/GameView;->rightMargin:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 763
    iget v3, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameView;->getRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameView;->getLeft()I

    move-result v4

    add-int v0, v3, v4

    .line 764
    .local v0, "maxScrollX":I
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameView;->getBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameView;->getTop()I

    move-result v4

    add-int v1, v3, v4

    .line 765
    .local v1, "maxScrollY":I
    iget v3, p1, Landroid/graphics/Point;->x:I

    if-le v3, v0, :cond_2

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 766
    :cond_2
    iget v3, p1, Landroid/graphics/Point;->y:I

    if-le v3, v1, :cond_3

    iput v1, p1, Landroid/graphics/Point;->y:I

    .line 767
    :cond_3
    return-void
.end method

.method private newBitmapWithContent()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    .line 600
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameView;->getRight()I

    move-result v2

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameView;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameView;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameView;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 601
    .local v1, "sprite":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lbe/gentgo/tetsuki/GameView;->game:Lbe/gentgo/tetsuki/Game;

    if-nez v2, :cond_0

    .line 607
    :goto_0
    return-object v1

    .line 604
    :cond_0
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 605
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0, v0}, Lbe/gentgo/tetsuki/GameView;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method


# virtual methods
.method public convertRawToLocal(Landroid/graphics/Point;)V
    .locals 5
    .param p1, "p"    # Landroid/graphics/Point;

    .prologue
    .line 733
    move-object v0, p0

    .line 734
    :goto_0
    if-nez v0, :cond_1

    .line 750
    :cond_0
    return-void

    .line 736
    :cond_1
    instance-of v3, v0, Landroid/view/View;

    if-eqz v3, :cond_2

    move-object v1, v0

    .line 738
    check-cast v1, Landroid/view/View;

    .line 739
    .local v1, "view":Landroid/view/View;
    iget v3, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Point;->x:I

    .line 740
    iget v3, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Point;->y:I

    .line 741
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 742
    .local v0, "o":Landroid/view/ViewParent;
    goto :goto_0

    .line 743
    .end local v0    # "o":Landroid/view/ViewParent;
    .end local v1    # "view":Landroid/view/View;
    :cond_2
    instance-of v3, v0, Landroid/view/ViewParent;

    if-eqz v3, :cond_0

    move-object v2, v0

    .line 745
    check-cast v2, Landroid/view/ViewParent;

    .line 746
    .local v2, "vp":Landroid/view/ViewParent;
    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .restart local v0    # "o":Landroid/view/ViewParent;
    goto :goto_0
.end method

.method protected drawBoard(Landroid/graphics/Canvas;)V
    .locals 31
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/GameView;->game:Lbe/gentgo/tetsuki/Game;

    move-object/from16 v26, v0

    if-nez v26, :cond_1

    .line 181
    :cond_0
    return-void

    .line 102
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lbe/gentgo/tetsuki/GameView;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    .line 104
    .local v18, "res":Landroid/content/res/Resources;
    new-instance v17, Landroid/graphics/Rect;

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 105
    .local v17, "rect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/GameView;->gobanDimensions:Lbe/gentgo/tetsuki/GobanDimensions;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/GobanDimensions;->getTotalRect(Landroid/graphics/Rect;)V

    .line 107
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->isTablet()Z

    move-result v26

    if-eqz v26, :cond_a

    .line 108
    new-instance v22, Landroid/graphics/Paint;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Paint;-><init>()V

    .line 109
    .local v22, "shadowPaint":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lbe/gentgo/tetsuki/GameView;->whiteBackground:Z

    move/from16 v26, v0

    if-nez v26, :cond_2

    .line 110
    const/high16 v26, 0x42000000    # 32.0f

    const/16 v27, 0x0

    const/high16 v28, 0x41200000    # 10.0f

    const/high16 v29, -0x34000000    # -3.3554432E7f

    move-object/from16 v0, v22

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 111
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 113
    :cond_2
    invoke-static {}, Lbe/gentgo/tetsuki/Preferences;->getWoodStyle()I

    move-result v25

    .line 114
    .local v25, "woodStyle":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/GameView;->woodPattern:Landroid/graphics/Bitmap;

    move-object/from16 v26, v0

    if-eqz v26, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lbe/gentgo/tetsuki/GameView;->previousWoodStyle:I

    move/from16 v26, v0

    move/from16 v0, v26

    move/from16 v1, v25

    if-eq v0, v1, :cond_4

    .line 115
    :cond_3
    if-nez v25, :cond_9

    const v26, 0x7f020049

    :goto_0
    move-object/from16 v0, v18

    move/from16 v1, v26

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lbe/gentgo/tetsuki/GameView;->woodPattern:Landroid/graphics/Bitmap;

    .line 116
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lbe/gentgo/tetsuki/GameView;->previousWoodStyle:I

    .line 119
    :cond_4
    new-instance v24, Landroid/graphics/Paint;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/Paint;-><init>()V

    .line 120
    .local v24, "woodPaint":Landroid/graphics/Paint;
    const/16 v26, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/GameView;->woodPattern:Landroid/graphics/Bitmap;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v17

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 129
    .end local v22    # "shadowPaint":Landroid/graphics/Paint;
    .end local v24    # "woodPaint":Landroid/graphics/Paint;
    .end local v25    # "woodStyle":I
    :goto_1
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    .line 130
    .local v13, "outerLines":Landroid/graphics/Paint;
    const-wide/high16 v26, 0x3fe0000000000000L    # 0.5

    const/high16 v28, 0x437f0000    # 255.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/GameView;->gobanDimensions:Lbe/gentgo/tetsuki/GobanDimensions;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    invoke-virtual/range {v29 .. v30}, Lbe/gentgo/tetsuki/GobanDimensions;->getOpacityForLine(Z)F

    move-result v29

    mul-float v28, v28, v29

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    add-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 131
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    .line 132
    .local v12, "innerLines":Landroid/graphics/Paint;
    const-wide/high16 v26, 0x3fe0000000000000L    # 0.5

    const/high16 v28, 0x437f0000    # 255.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/GameView;->gobanDimensions:Lbe/gentgo/tetsuki/GobanDimensions;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Lbe/gentgo/tetsuki/GobanDimensions;->getOpacityForLine(Z)F

    move-result v29

    mul-float v28, v28, v29

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    add-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/GameView;->gameSettings:Lbe/gentgo/tetsuki/GameSettings;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lbe/gentgo/tetsuki/GameSettings;->getColumns()I

    move-result v10

    .line 136
    .local v10, "cols":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/GameView;->gameSettings:Lbe/gentgo/tetsuki/GameSettings;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lbe/gentgo/tetsuki/GameSettings;->getRows()I

    move-result v21

    .line 137
    .local v21, "rows":I
    const/4 v8, 0x0

    .line 138
    .local v8, "col0":I
    move v9, v10

    .line 139
    .local v9, "col1":I
    const/16 v19, 0x0

    .line 140
    .local v19, "row0":I
    move/from16 v20, v21

    .line 141
    .local v20, "row1":I
    new-instance v15, Lbe/gentgo/tetsuki/Position;

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-direct {v15, v0, v1}, Lbe/gentgo/tetsuki/Position;-><init>(II)V

    .line 143
    .local v15, "pos":Lbe/gentgo/tetsuki/Position;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lbe/gentgo/tetsuki/GameView;->totalView:Z

    move/from16 v26, v0

    if-nez v26, :cond_8

    .line 146
    new-instance v14, Landroid/graphics/Point;

    invoke-direct {v14}, Landroid/graphics/Point;-><init>()V

    .line 147
    .local v14, "p":Landroid/graphics/Point;
    invoke-virtual/range {p0 .. p0}, Lbe/gentgo/tetsuki/GameView;->getScrollX()I

    move-result v26

    move/from16 v0, v26

    iput v0, v14, Landroid/graphics/Point;->x:I

    invoke-virtual/range {p0 .. p0}, Lbe/gentgo/tetsuki/GameView;->getScrollY()I

    move-result v26

    move/from16 v0, v26

    iput v0, v14, Landroid/graphics/Point;->y:I

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/GameView;->gobanDimensions:Lbe/gentgo/tetsuki/GobanDimensions;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Lbe/gentgo/tetsuki/GobanDimensions;->getFloatColumnOfPoint(Landroid/graphics/Point;)F

    move-result v26

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide/high16 v28, 0x3fe0000000000000L    # 0.5

    add-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-int v8, v0

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/GameView;->gobanDimensions:Lbe/gentgo/tetsuki/GobanDimensions;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Lbe/gentgo/tetsuki/GobanDimensions;->getFloatRowOfPoint(Landroid/graphics/Point;)F

    move-result v26

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide v28, 0x3ffb333333333333L    # 1.7

    add-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v20, v0

    .line 151
    iget v0, v14, Landroid/graphics/Point;->x:I

    move/from16 v26, v0

    invoke-virtual/range {p0 .. p0}, Lbe/gentgo/tetsuki/GameView;->getRight()I

    move-result v27

    invoke-virtual/range {p0 .. p0}, Lbe/gentgo/tetsuki/GameView;->getLeft()I

    move-result v28

    sub-int v27, v27, v28

    add-int v26, v26, v27

    move/from16 v0, v26

    iput v0, v14, Landroid/graphics/Point;->x:I

    .line 152
    iget v0, v14, Landroid/graphics/Point;->y:I

    move/from16 v26, v0

    invoke-virtual/range {p0 .. p0}, Lbe/gentgo/tetsuki/GameView;->getBottom()I

    move-result v27

    invoke-virtual/range {p0 .. p0}, Lbe/gentgo/tetsuki/GameView;->getTop()I

    move-result v28

    sub-int v27, v27, v28

    add-int v26, v26, v27

    move/from16 v0, v26

    iput v0, v14, Landroid/graphics/Point;->y:I

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/GameView;->gobanDimensions:Lbe/gentgo/tetsuki/GobanDimensions;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Lbe/gentgo/tetsuki/GobanDimensions;->getFloatColumnOfPoint(Landroid/graphics/Point;)F

    move-result v26

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide/high16 v28, 0x3ff8000000000000L    # 1.5

    add-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-int v9, v0

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/GameView;->gobanDimensions:Lbe/gentgo/tetsuki/GobanDimensions;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Lbe/gentgo/tetsuki/GobanDimensions;->getFloatRowOfPoint(Landroid/graphics/Point;)F

    move-result v26

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide/high16 v28, 0x3fe0000000000000L    # 0.5

    add-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v19, v0

    .line 156
    if-gez v8, :cond_5

    const/4 v8, 0x0

    .line 157
    :cond_5
    if-gez v19, :cond_6

    const/16 v19, 0x0

    .line 158
    :cond_6
    if-le v9, v10, :cond_7

    move v9, v10

    .line 159
    :cond_7
    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_8

    move/from16 v20, v21

    .line 162
    .end local v14    # "p":Landroid/graphics/Point;
    :cond_8
    move v7, v8

    .local v7, "c":I
    :goto_2
    if-lt v7, v9, :cond_b

    .line 167
    move/from16 v16, v19

    .local v16, "r":I
    :goto_3
    move/from16 v0, v16

    move/from16 v1, v20

    if-lt v0, v1, :cond_e

    .line 174
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .local v6, "black":Landroid/graphics/Paint;
    const/16 v26, 0xff

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 175
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/GameView;->goban:Lbe/gentgo/tetsuki/Goban;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lbe/gentgo/tetsuki/Goban;->getNrOfStars()I

    move-result v26

    move/from16 v0, v26

    if-ge v11, v0, :cond_0

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/GameView;->goban:Lbe/gentgo/tetsuki/Goban;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v11, v15}, Lbe/gentgo/tetsuki/Goban;->getStar(ILbe/gentgo/tetsuki/Position;)V

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/GameView;->gobanDimensions:Lbe/gentgo/tetsuki/GobanDimensions;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v15, v1}, Lbe/gentgo/tetsuki/GobanDimensions;->getRectForStar(Lbe/gentgo/tetsuki/Position;Landroid/graphics/Rect;)V

    .line 179
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v26, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v27, v0

    add-int v26, v26, v27

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    const/high16 v27, 0x40000000    # 2.0f

    div-float v26, v26, v27

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v27, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v28, v0

    add-int v27, v27, v28

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const/high16 v28, 0x40000000    # 2.0f

    div-float v27, v27, v28

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v28, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    const/high16 v29, 0x40000000    # 2.0f

    div-float v28, v28, v29

    move-object/from16 v0, p1

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 175
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 115
    .end local v6    # "black":Landroid/graphics/Paint;
    .end local v7    # "c":I
    .end local v8    # "col0":I
    .end local v9    # "col1":I
    .end local v10    # "cols":I
    .end local v11    # "i":I
    .end local v12    # "innerLines":Landroid/graphics/Paint;
    .end local v13    # "outerLines":Landroid/graphics/Paint;
    .end local v15    # "pos":Lbe/gentgo/tetsuki/Position;
    .end local v16    # "r":I
    .end local v19    # "row0":I
    .end local v20    # "row1":I
    .end local v21    # "rows":I
    .restart local v22    # "shadowPaint":Landroid/graphics/Paint;
    .restart local v25    # "woodStyle":I
    :cond_9
    const v26, 0x7f02003f

    goto/16 :goto_0

    .line 124
    .end local v22    # "shadowPaint":Landroid/graphics/Paint;
    .end local v25    # "woodStyle":I
    :cond_a
    new-instance v23, Landroid/graphics/Paint;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/Paint;-><init>()V

    .line 125
    .local v23, "woodColor":Landroid/graphics/Paint;
    const/16 v26, 0xff

    const/16 v27, 0xe5

    const/16 v28, 0xa6

    const/16 v29, 0x59

    move-object/from16 v0, v23

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 126
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 164
    .end local v23    # "woodColor":Landroid/graphics/Paint;
    .restart local v7    # "c":I
    .restart local v8    # "col0":I
    .restart local v9    # "col1":I
    .restart local v10    # "cols":I
    .restart local v12    # "innerLines":Landroid/graphics/Paint;
    .restart local v13    # "outerLines":Landroid/graphics/Paint;
    .restart local v15    # "pos":Lbe/gentgo/tetsuki/Position;
    .restart local v19    # "row0":I
    .restart local v20    # "row1":I
    .restart local v21    # "rows":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/GameView;->gobanDimensions:Lbe/gentgo/tetsuki/GobanDimensions;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v7, v1}, Lbe/gentgo/tetsuki/GobanDimensions;->getRectForVerticalLine(ILandroid/graphics/Rect;)V

    .line 165
    if-eqz v7, :cond_c

    add-int/lit8 v26, v10, -0x1

    move/from16 v0, v26

    if-ne v7, v0, :cond_d

    :cond_c
    move-object/from16 v26, v13

    :goto_5
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 162
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    :cond_d
    move-object/from16 v26, v12

    .line 165
    goto :goto_5

    .line 169
    .restart local v16    # "r":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/GameView;->gobanDimensions:Lbe/gentgo/tetsuki/GobanDimensions;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lbe/gentgo/tetsuki/GobanDimensions;->getRectForHorizontalLine(ILandroid/graphics/Rect;)V

    .line 170
    if-eqz v16, :cond_f

    add-int/lit8 v26, v21, -0x1

    move/from16 v0, v16

    move/from16 v1, v26

    if-ne v0, v1, :cond_10

    :cond_f
    move-object/from16 v26, v13

    :goto_6
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 167
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_3

    :cond_10
    move-object/from16 v26, v12

    .line 170
    goto :goto_6
.end method

.method protected drawCoordinates(Landroid/graphics/Canvas;)V
    .locals 30
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 429
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lbe/gentgo/tetsuki/GameView;->allowCoordinates:Z

    move/from16 v26, v0

    if-nez v26, :cond_1

    .line 511
    :cond_0
    return-void

    .line 430
    :cond_1
    invoke-static {}, Lbe/gentgo/tetsuki/Preferences;->getShowCoordinates()Z

    move-result v26

    if-eqz v26, :cond_0

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/GameView;->gameSettings:Lbe/gentgo/tetsuki/GameSettings;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lbe/gentgo/tetsuki/GameSettings;->getColumns()I

    move-result v11

    .line 434
    .local v11, "cols":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/GameView;->gameSettings:Lbe/gentgo/tetsuki/GameSettings;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lbe/gentgo/tetsuki/GameSettings;->getRows()I

    move-result v22

    .line 435
    .local v22, "rows":I
    const/4 v9, 0x0

    .line 436
    .local v9, "col0":I
    move v10, v11

    .line 437
    .local v10, "col1":I
    const/16 v20, 0x0

    .line 438
    .local v20, "row0":I
    move/from16 v21, v22

    .line 440
    .local v21, "row1":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lbe/gentgo/tetsuki/GameView;->totalView:Z

    move/from16 v26, v0

    if-nez v26, :cond_5

    .line 443
    new-instance v16, Landroid/graphics/Point;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Point;-><init>()V

    .line 444
    .local v16, "p":Landroid/graphics/Point;
    invoke-virtual/range {p0 .. p0}, Lbe/gentgo/tetsuki/GameView;->getScrollX()I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/Point;->x:I

    invoke-virtual/range {p0 .. p0}, Lbe/gentgo/tetsuki/GameView;->getScrollY()I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/Point;->y:I

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/GameView;->gobanDimensions:Lbe/gentgo/tetsuki/GobanDimensions;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/GobanDimensions;->getFloatColumnOfPoint(Landroid/graphics/Point;)F

    move-result v26

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide/high16 v28, 0x3fe0000000000000L    # 0.5

    add-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-int v9, v0

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/GameView;->gobanDimensions:Lbe/gentgo/tetsuki/GobanDimensions;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/GobanDimensions;->getFloatRowOfPoint(Landroid/graphics/Point;)F

    move-result v26

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide v28, 0x3ffb333333333333L    # 1.7

    add-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v21, v0

    .line 448
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v26, v0

    invoke-virtual/range {p0 .. p0}, Lbe/gentgo/tetsuki/GameView;->getRight()I

    move-result v27

    invoke-virtual/range {p0 .. p0}, Lbe/gentgo/tetsuki/GameView;->getLeft()I

    move-result v28

    sub-int v27, v27, v28

    add-int v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/Point;->x:I

    .line 449
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v26, v0

    invoke-virtual/range {p0 .. p0}, Lbe/gentgo/tetsuki/GameView;->getBottom()I

    move-result v27

    invoke-virtual/range {p0 .. p0}, Lbe/gentgo/tetsuki/GameView;->getTop()I

    move-result v28

    sub-int v27, v27, v28

    add-int v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/Point;->y:I

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/GameView;->gobanDimensions:Lbe/gentgo/tetsuki/GobanDimensions;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/GobanDimensions;->getFloatColumnOfPoint(Landroid/graphics/Point;)F

    move-result v26

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide/high16 v28, 0x3ff8000000000000L    # 1.5

    add-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-int v10, v0

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/GameView;->gobanDimensions:Lbe/gentgo/tetsuki/GobanDimensions;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/GobanDimensions;->getFloatRowOfPoint(Landroid/graphics/Point;)F

    move-result v26

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide/high16 v28, 0x3fe0000000000000L    # 0.5

    add-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v20, v0

    .line 453
    if-gez v9, :cond_2

    const/4 v9, 0x0

    .line 454
    :cond_2
    if-gez v20, :cond_3

    const/16 v20, 0x0

    .line 455
    :cond_3
    if-le v10, v11, :cond_4

    move v10, v11

    .line 456
    :cond_4
    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_5

    move/from16 v21, v22

    .line 460
    .end local v16    # "p":Landroid/graphics/Point;
    :cond_5
    new-instance v17, Landroid/graphics/Paint;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Paint;-><init>()V

    .line 461
    .local v17, "paint":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/GameView;->gobanDimensions:Lbe/gentgo/tetsuki/GobanDimensions;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lbe/gentgo/tetsuki/GobanDimensions;->getLabelSize()I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 462
    sget-object v26, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 463
    const/16 v26, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 464
    sget-object v26, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 465
    const/high16 v26, -0x1000000

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 467
    invoke-virtual/range {p0 .. p0}, Lbe/gentgo/tetsuki/GameView;->getTotalView()Z

    move-result v26

    if-nez v26, :cond_9

    .line 468
    const/high16 v26, 0x40000000    # 2.0f

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 469
    invoke-virtual/range {p0 .. p0}, Lbe/gentgo/tetsuki/GameView;->getScrollX()I

    move-result v26

    add-int/lit8 v26, v26, 0xc

    move/from16 v0, v26

    int-to-float v15, v0

    .line 470
    .local v15, "left":F
    invoke-virtual/range {p0 .. p0}, Lbe/gentgo/tetsuki/GameView;->getScrollY()I

    move-result v26

    add-int/lit8 v26, v26, 0x26

    move/from16 v0, v26

    int-to-float v12, v0

    .line 471
    .local v12, "fadey":F
    const/high16 v26, 0x41400000    # 12.0f

    cmpg-float v26, v15, v26

    if-gez v26, :cond_6

    const/high16 v15, 0x41400000    # 12.0f

    .line 472
    :cond_6
    move/from16 v19, v15

    .line 473
    .local v19, "right":F
    invoke-virtual/range {p0 .. p0}, Lbe/gentgo/tetsuki/GameView;->getScrollY()I

    move-result v26

    add-int/lit8 v26, v26, 0x11

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v23, v0

    .line 474
    .local v23, "top":F
    const/high16 v26, 0x41880000    # 17.0f

    cmpg-float v26, v23, v26

    if-gez v26, :cond_7

    const/high16 v23, 0x41880000    # 17.0f

    .line 475
    :cond_7
    move/from16 v7, v23

    .line 489
    .local v7, "bottom":F
    :goto_0
    move/from16 v18, v20

    .local v18, "r":I
    :goto_1
    move/from16 v0, v18

    move/from16 v1, v21

    if-lt v0, v1, :cond_a

    .line 502
    const/16 v26, 0xff

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 504
    move v8, v9

    .local v8, "c":I
    :goto_2
    if-ge v8, v10, :cond_0

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/GameView;->gobanDimensions:Lbe/gentgo/tetsuki/GobanDimensions;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Lbe/gentgo/tetsuki/GobanDimensions;->getXForColumnLabel(I)I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v24, v0

    .line 507
    .local v24, "x":F
    new-instance v14, Ljava/lang/String;

    const/16 v26, 0x8

    move/from16 v0, v26

    if-ge v8, v0, :cond_e

    add-int/lit8 v26, v8, 0x41

    :goto_3
    invoke-static/range {v26 .. v26}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v26

    move-object/from16 v0, v26

    invoke-direct {v14, v0}, Ljava/lang/String;-><init>([C)V

    .line 508
    .local v14, "label":Ljava/lang/String;
    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v23

    move-object/from16 v3, v17

    invoke-virtual {v0, v14, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 509
    cmpl-float v26, v7, v23

    if-eqz v26, :cond_8

    move-object/from16 v0, p1

    move/from16 v1, v24

    move-object/from16 v2, v17

    invoke-virtual {v0, v14, v1, v7, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 504
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 479
    .end local v7    # "bottom":F
    .end local v8    # "c":I
    .end local v12    # "fadey":F
    .end local v14    # "label":Ljava/lang/String;
    .end local v15    # "left":F
    .end local v18    # "r":I
    .end local v19    # "right":F
    .end local v23    # "top":F
    .end local v24    # "x":F
    :cond_9
    const/4 v12, 0x0

    .line 480
    .restart local v12    # "fadey":F
    new-instance v18, Landroid/graphics/Rect;

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 481
    .local v18, "r":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/GameView;->gobanDimensions:Lbe/gentgo/tetsuki/GobanDimensions;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/GobanDimensions;->getTotalRect(Landroid/graphics/Rect;)V

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/GameView;->gobanDimensions:Lbe/gentgo/tetsuki/GobanDimensions;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lbe/gentgo/tetsuki/GobanDimensions;->getLabelSize()I

    move-result v13

    .line 483
    .local v13, "inset":I
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v26, v0

    add-int v26, v26, v13

    move/from16 v0, v26

    int-to-float v15, v0

    .line 484
    .restart local v15    # "left":F
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v26, v0

    sub-int v26, v26, v13

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v19, v0

    .line 485
    .restart local v19    # "right":F
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    add-int v26, v26, v13

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v23, v0

    .line 486
    .restart local v23    # "top":F
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v26, v0

    div-int/lit8 v27, v13, 0x2

    sub-int v26, v26, v27

    move/from16 v0, v26

    int-to-float v7, v0

    .restart local v7    # "bottom":F
    goto/16 :goto_0

    .line 491
    .end local v13    # "inset":I
    .local v18, "r":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/GameView;->gobanDimensions:Lbe/gentgo/tetsuki/GobanDimensions;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/GobanDimensions;->getYForRowLabel(I)I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v25, v0

    .line 492
    .local v25, "y":F
    cmpg-float v26, v25, v12

    if-gez v26, :cond_d

    .line 493
    sub-float v26, v12, v25

    const/high16 v27, 0x41700000    # 15.0f

    mul-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    rsub-int v6, v0, 0xff

    .line 494
    .local v6, "alpha":I
    if-gtz v6, :cond_c

    .line 489
    .end local v6    # "alpha":I
    :cond_b
    :goto_4
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_1

    .line 495
    .restart local v6    # "alpha":I
    :cond_c
    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 498
    .end local v6    # "alpha":I
    :goto_5
    const-string v26, "%d"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    add-int/lit8 v29, v18, 0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 499
    .restart local v14    # "label":Ljava/lang/String;
    move-object/from16 v0, p1

    move/from16 v1, v25

    move-object/from16 v2, v17

    invoke-virtual {v0, v14, v15, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 500
    cmpl-float v26, v19, v15

    if-eqz v26, :cond_b

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v25

    move-object/from16 v3, v17

    invoke-virtual {v0, v14, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_4

    .line 496
    .end local v14    # "label":Ljava/lang/String;
    :cond_d
    const/16 v26, 0xff

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_5

    .line 507
    .end local v25    # "y":F
    .restart local v8    # "c":I
    .restart local v24    # "x":F
    :cond_e
    add-int/lit8 v26, v8, 0x42

    goto/16 :goto_3
.end method

.method protected drawStoneMarks(Landroid/graphics/Canvas;)V
    .locals 24
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 306
    new-instance v14, Lbe/gentgo/tetsuki/Position;

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v14, v0, v1}, Lbe/gentgo/tetsuki/Position;-><init>(II)V

    .line 307
    .local v14, "pos":Lbe/gentgo/tetsuki/Position;
    new-instance v15, Landroid/graphics/Rect;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v15, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 308
    .local v15, "rect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/GameView;->game:Lbe/gentgo/tetsuki/Game;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lbe/gentgo/tetsuki/Game;->isAfterLastMove()Z

    move-result v18

    if-nez v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/GameView;->game:Lbe/gentgo/tetsuki/Game;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lbe/gentgo/tetsuki/Game;->getNrOfNextMoves()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_0

    .line 310
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    .line 311
    .local v12, "nextMovePaint":Landroid/graphics/Paint;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/GameView;->game:Lbe/gentgo/tetsuki/Game;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lbe/gentgo/tetsuki/Game;->getTurn()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    .line 313
    const/16 v18, 0x99

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 316
    :goto_0
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/GameView;->game:Lbe/gentgo/tetsuki/Game;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lbe/gentgo/tetsuki/Game;->getNrOfNextMoves()I

    move-result v18

    move/from16 v0, v18

    if-lt v7, v0, :cond_6

    .line 325
    .end local v7    # "i":I
    .end local v12    # "nextMovePaint":Landroid/graphics/Paint;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/GameView;->game:Lbe/gentgo/tetsuki/Game;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lbe/gentgo/tetsuki/Game;->getCurrentMove(Lbe/gentgo/tetsuki/Position;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 327
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 328
    .local v9, "lastMove":Landroid/graphics/Paint;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/GameView;->game:Lbe/gentgo/tetsuki/Game;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lbe/gentgo/tetsuki/Game;->getTurn()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    .line 330
    const/16 v18, 0xa6

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 333
    :goto_2
    sget-object v18, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/GameView;->gobanDimensions:Lbe/gentgo/tetsuki/GobanDimensions;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lbe/gentgo/tetsuki/GobanDimensions;->getDameLineWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/GameView;->gobanDimensions:Lbe/gentgo/tetsuki/GobanDimensions;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v15}, Lbe/gentgo/tetsuki/GobanDimensions;->getRectForLastPlayedDot(Lbe/gentgo/tetsuki/Position;Landroid/graphics/Rect;)V

    .line 336
    iget v0, v15, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    iget v0, v15, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    iget v0, v15, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    iget v0, v15, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    iget v0, v15, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    iget v0, v15, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 340
    .end local v9    # "lastMove":Landroid/graphics/Paint;
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lbe/gentgo/tetsuki/GameView;->nrOfMovesToShowCommentMarks:I

    move/from16 v18, v0

    if-lez v18, :cond_2

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/GameView;->game:Lbe/gentgo/tetsuki/Game;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lbe/gentgo/tetsuki/GameView;->nrOfMovesToShowCommentMarks:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lbe/gentgo/tetsuki/Game;->getNrOfMovesWithCommentedVariations(I)I

    move-result v5

    .line 343
    .local v5, "count":I
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_3
    if-lt v7, v5, :cond_8

    .line 378
    .end local v5    # "count":I
    .end local v7    # "i":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/GameView;->game:Lbe/gentgo/tetsuki/Game;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lbe/gentgo/tetsuki/Game;->getGoban()Lbe/gentgo/tetsuki/Goban;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lbe/gentgo/tetsuki/Goban;->getNrOfMarks()I

    move-result v13

    .line 379
    .local v13, "nrOfMarks":I
    if-lez v13, :cond_3

    .line 380
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_4
    if-lt v7, v13, :cond_c

    .line 387
    .end local v7    # "i":I
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lbe/gentgo/tetsuki/GameView;->drawMoveNumbers:Z

    move/from16 v18, v0

    if-eqz v18, :cond_4

    .line 389
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v14, Lbe/gentgo/tetsuki/Position;->row:I

    :goto_5
    iget v0, v14, Lbe/gentgo/tetsuki/Position;->row:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/GameView;->game:Lbe/gentgo/tetsuki/Game;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lbe/gentgo/tetsuki/Game;->getGameSettings()Lbe/gentgo/tetsuki/GameSettings;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lbe/gentgo/tetsuki/GameSettings;->getRows()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_d

    .line 402
    :cond_4
    return-void

    .line 315
    .end local v13    # "nrOfMarks":I
    .restart local v12    # "nextMovePaint":Landroid/graphics/Paint;
    :cond_5
    const/16 v18, 0xb3

    const/16 v19, 0xff

    const/16 v20, 0xff

    const/16 v21, 0xff

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    goto/16 :goto_0

    .line 318
    .restart local v7    # "i":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/GameView;->game:Lbe/gentgo/tetsuki/Game;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7, v14}, Lbe/gentgo/tetsuki/Game;->getNextMove(ILbe/gentgo/tetsuki/Position;)V

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/GameView;->gobanDimensions:Lbe/gentgo/tetsuki/GobanDimensions;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v15}, Lbe/gentgo/tetsuki/GobanDimensions;->getRectForVariationDot(Lbe/gentgo/tetsuki/Position;Landroid/graphics/Rect;)V

    .line 320
    iget v0, v15, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    iget v0, v15, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    iget v0, v15, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    iget v0, v15, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    iget v0, v15, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    iget v0, v15, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v12}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 316
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 332
    .end local v7    # "i":I
    .end local v12    # "nextMovePaint":Landroid/graphics/Paint;
    .restart local v9    # "lastMove":Landroid/graphics/Paint;
    :cond_7
    const/16 v18, 0xa6

    const/16 v19, 0xff

    const/16 v20, 0xff

    const/16 v21, 0xff

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    goto/16 :goto_2

    .line 344
    .end local v9    # "lastMove":Landroid/graphics/Paint;
    .restart local v5    # "count":I
    .restart local v7    # "i":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/GameView;->game:Lbe/gentgo/tetsuki/Game;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lbe/gentgo/tetsuki/GameView;->nrOfMovesToShowCommentMarks:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v7}, Lbe/gentgo/tetsuki/Game;->getMoveNrWithCommentedVariation(II)I

    move-result v11

    .line 345
    .local v11, "moveNr":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/GameView;->game:Lbe/gentgo/tetsuki/Game;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11, v14}, Lbe/gentgo/tetsuki/Game;->isMovePlayMove(ILbe/gentgo/tetsuki/Position;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 346
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 347
    .local v4, "commentMark":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/GameView;->gobanDimensions:Lbe/gentgo/tetsuki/GobanDimensions;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v15}, Lbe/gentgo/tetsuki/GobanDimensions;->getRectForLastPlayedDot(Lbe/gentgo/tetsuki/Position;Landroid/graphics/Rect;)V

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/GameView;->gobanDimensions:Lbe/gentgo/tetsuki/GobanDimensions;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lbe/gentgo/tetsuki/GobanDimensions;->getDameLineWidth()I

    move-result v10

    .line 351
    .local v10, "lineWidth":I
    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    const-wide v20, 0x3fc999999999999aL    # 0.2

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v22

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    mul-double v20, v20, v22

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-int v6, v0

    .line 352
    .local v6, "horInset":I
    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v18

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0x3fe6666666666666L    # 0.7

    mul-double v18, v18, v20

    int-to-double v0, v10

    move-wide/from16 v20, v0

    sub-double v18, v18, v20

    const-wide v20, 0x3fd6666666666666L    # 0.35

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-int v8, v0

    .line 353
    .local v8, "interLine":I
    if-gt v8, v10, :cond_9

    add-int/lit8 v8, v10, 0x1

    .line 354
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/GameView;->game:Lbe/gentgo/tetsuki/Game;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lbe/gentgo/tetsuki/Game;->getGoban()Lbe/gentgo/tetsuki/Goban;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lbe/gentgo/tetsuki/Goban;->getState(Lbe/gentgo/tetsuki/Position;)I

    move-result v16

    .line 355
    .local v16, "stoneColor":I
    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    .line 356
    const/16 v18, 0xa6

    const/16 v19, 0xff

    const/16 v20, 0xff

    const/16 v21, 0xff

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 360
    :goto_6
    iget v0, v15, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    add-int v18, v18, v6

    move/from16 v0, v18

    iput v0, v15, Landroid/graphics/Rect;->left:I

    .line 361
    iget v0, v15, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    sub-int v18, v18, v6

    move/from16 v0, v18

    iput v0, v15, Landroid/graphics/Rect;->right:I

    .line 362
    iget v0, v15, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    iget v0, v15, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    add-int v18, v18, v19

    sub-int v18, v18, v10

    div-int/lit8 v18, v18, 0x2

    sub-int v18, v18, v8

    move/from16 v0, v18

    iput v0, v15, Landroid/graphics/Rect;->top:I

    .line 363
    iget v0, v15, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    add-int v18, v18, v10

    move/from16 v0, v18

    iput v0, v15, Landroid/graphics/Rect;->bottom:I

    .line 364
    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 366
    iget v0, v15, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    add-int v18, v18, v8

    move/from16 v0, v18

    iput v0, v15, Landroid/graphics/Rect;->top:I

    .line 367
    iget v0, v15, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    add-int v18, v18, v8

    move/from16 v0, v18

    iput v0, v15, Landroid/graphics/Rect;->bottom:I

    .line 368
    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 370
    iget v0, v15, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    add-int v18, v18, v8

    move/from16 v0, v18

    iput v0, v15, Landroid/graphics/Rect;->top:I

    .line 371
    iget v0, v15, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    add-int v18, v18, v8

    move/from16 v0, v18

    iput v0, v15, Landroid/graphics/Rect;->bottom:I

    .line 372
    iget v0, v15, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    const-wide v20, 0x3fe3333333333333L    # 0.6

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v19

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v22, v0

    mul-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    iput v0, v15, Landroid/graphics/Rect;->right:I

    .line 373
    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 343
    .end local v4    # "commentMark":Landroid/graphics/Paint;
    .end local v6    # "horInset":I
    .end local v8    # "interLine":I
    .end local v10    # "lineWidth":I
    .end local v16    # "stoneColor":I
    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    .line 357
    .restart local v4    # "commentMark":Landroid/graphics/Paint;
    .restart local v6    # "horInset":I
    .restart local v8    # "interLine":I
    .restart local v10    # "lineWidth":I
    .restart local v16    # "stoneColor":I
    :cond_b
    const/16 v18, -0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    .line 358
    const/16 v18, 0xa6

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    goto/16 :goto_6

    .line 381
    .end local v4    # "commentMark":Landroid/graphics/Paint;
    .end local v5    # "count":I
    .end local v6    # "horInset":I
    .end local v8    # "interLine":I
    .end local v10    # "lineWidth":I
    .end local v11    # "moveNr":I
    .end local v16    # "stoneColor":I
    .restart local v13    # "nrOfMarks":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/GameView;->game:Lbe/gentgo/tetsuki/Game;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lbe/gentgo/tetsuki/Game;->getGoban()Lbe/gentgo/tetsuki/Goban;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7, v14}, Lbe/gentgo/tetsuki/Goban;->getPositionOfMark(ILbe/gentgo/tetsuki/Position;)V

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/GameView;->game:Lbe/gentgo/tetsuki/Game;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lbe/gentgo/tetsuki/Game;->getGoban()Lbe/gentgo/tetsuki/Goban;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lbe/gentgo/tetsuki/Goban;->getSymbolOfMark(I)Ljava/lang/String;

    move-result-object v17

    .line 383
    .local v17, "symbol":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2, v14}, Lbe/gentgo/tetsuki/GameView;->drawSymbol(Landroid/graphics/Canvas;Ljava/lang/String;Lbe/gentgo/tetsuki/Position;)V

    .line 380
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_4

    .line 391
    .end local v7    # "i":I
    .end local v17    # "symbol":Ljava/lang/String;
    :cond_d
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v14, Lbe/gentgo/tetsuki/Position;->column:I

    :goto_7
    iget v0, v14, Lbe/gentgo/tetsuki/Position;->column:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/GameView;->game:Lbe/gentgo/tetsuki/Game;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lbe/gentgo/tetsuki/Game;->getGameSettings()Lbe/gentgo/tetsuki/GameSettings;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lbe/gentgo/tetsuki/GameSettings;->getColumns()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_e

    .line 389
    iget v0, v14, Lbe/gentgo/tetsuki/Position;->row:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    iput v0, v14, Lbe/gentgo/tetsuki/Position;->row:I

    goto/16 :goto_5

    .line 393
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/GameView;->game:Lbe/gentgo/tetsuki/Game;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lbe/gentgo/tetsuki/Game;->getMoveNrOfStone(Lbe/gentgo/tetsuki/Position;)I

    move-result v11

    .line 394
    .restart local v11    # "moveNr":I
    if-ltz v11, :cond_f

    .line 396
    const-string v18, "%d"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 397
    .restart local v17    # "symbol":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2, v14}, Lbe/gentgo/tetsuki/GameView;->drawSymbol(Landroid/graphics/Canvas;Ljava/lang/String;Lbe/gentgo/tetsuki/Position;)V

    .line 391
    .end local v17    # "symbol":Ljava/lang/String;
    :cond_f
    iget v0, v14, Lbe/gentgo/tetsuki/Position;->column:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    iput v0, v14, Lbe/gentgo/tetsuki/Position;->column:I

    goto :goto_7
.end method

.method protected drawStones(Landroid/graphics/Canvas;)V
    .locals 26
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 185
    move-object/from16 v0, p0

    iget-object v2, v0, Lbe/gentgo/tetsuki/GameView;->game:Lbe/gentgo/tetsuki/Game;

    if-nez v2, :cond_1

    .line 301
    :cond_0
    return-void

    .line 187
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lbe/gentgo/tetsuki/GameView;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    .line 190
    .local v18, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v2, v0, Lbe/gentgo/tetsuki/GameView;->gameSettings:Lbe/gentgo/tetsuki/GameSettings;

    invoke-virtual {v2}, Lbe/gentgo/tetsuki/GameSettings;->getColumns()I

    move-result v12

    .line 191
    .local v12, "cols":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lbe/gentgo/tetsuki/GameView;->gameSettings:Lbe/gentgo/tetsuki/GameSettings;

    invoke-virtual {v2}, Lbe/gentgo/tetsuki/GameSettings;->getRows()I

    move-result v21

    .line 192
    .local v21, "rows":I
    const/4 v10, 0x0

    .line 193
    .local v10, "col0":I
    move v11, v12

    .line 194
    .local v11, "col1":I
    const/16 v19, 0x0

    .line 195
    .local v19, "row0":I
    move/from16 v20, v21

    .line 196
    .local v20, "row1":I
    new-instance v16, Lbe/gentgo/tetsuki/Position;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3}, Lbe/gentgo/tetsuki/Position;-><init>(II)V

    .line 198
    .local v16, "pos":Lbe/gentgo/tetsuki/Position;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lbe/gentgo/tetsuki/GameView;->totalView:Z

    if-nez v2, :cond_5

    .line 201
    new-instance v15, Landroid/graphics/Point;

    invoke-direct {v15}, Landroid/graphics/Point;-><init>()V

    .line 202
    .local v15, "p":Landroid/graphics/Point;
    invoke-virtual/range {p0 .. p0}, Lbe/gentgo/tetsuki/GameView;->getScrollX()I

    move-result v2

    iput v2, v15, Landroid/graphics/Point;->x:I

    invoke-virtual/range {p0 .. p0}, Lbe/gentgo/tetsuki/GameView;->getScrollY()I

    move-result v2

    iput v2, v15, Landroid/graphics/Point;->y:I

    .line 203
    move-object/from16 v0, p0

    iget-object v2, v0, Lbe/gentgo/tetsuki/GameView;->gobanDimensions:Lbe/gentgo/tetsuki/GobanDimensions;

    invoke-virtual {v2, v15}, Lbe/gentgo/tetsuki/GobanDimensions;->getFloatColumnOfPoint(Landroid/graphics/Point;)F

    move-result v2

    float-to-double v2, v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int v10, v2

    .line 204
    move-object/from16 v0, p0

    iget-object v2, v0, Lbe/gentgo/tetsuki/GameView;->gobanDimensions:Lbe/gentgo/tetsuki/GobanDimensions;

    invoke-virtual {v2, v15}, Lbe/gentgo/tetsuki/GobanDimensions;->getFloatRowOfPoint(Landroid/graphics/Point;)F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x3ffb333333333333L    # 1.7

    add-double/2addr v2, v4

    double-to-int v0, v2

    move/from16 v20, v0

    .line 206
    iget v2, v15, Landroid/graphics/Point;->x:I

    invoke-virtual/range {p0 .. p0}, Lbe/gentgo/tetsuki/GameView;->getRight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lbe/gentgo/tetsuki/GameView;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, v15, Landroid/graphics/Point;->x:I

    .line 207
    iget v2, v15, Landroid/graphics/Point;->y:I

    invoke-virtual/range {p0 .. p0}, Lbe/gentgo/tetsuki/GameView;->getBottom()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lbe/gentgo/tetsuki/GameView;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, v15, Landroid/graphics/Point;->y:I

    .line 208
    move-object/from16 v0, p0

    iget-object v2, v0, Lbe/gentgo/tetsuki/GameView;->gobanDimensions:Lbe/gentgo/tetsuki/GobanDimensions;

    invoke-virtual {v2, v15}, Lbe/gentgo/tetsuki/GobanDimensions;->getFloatColumnOfPoint(Landroid/graphics/Point;)F

    move-result v2

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    add-double/2addr v2, v4

    double-to-int v11, v2

    .line 209
    move-object/from16 v0, p0

    iget-object v2, v0, Lbe/gentgo/tetsuki/GameView;->gobanDimensions:Lbe/gentgo/tetsuki/GobanDimensions;

    invoke-virtual {v2, v15}, Lbe/gentgo/tetsuki/GobanDimensions;->getFloatRowOfPoint(Landroid/graphics/Point;)F

    move-result v2

    float-to-double v2, v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int v0, v2

    move/from16 v19, v0

    .line 211
    if-gez v10, :cond_2

    const/4 v10, 0x0

    .line 212
    :cond_2
    if-gez v19, :cond_3

    const/16 v19, 0x0

    .line 213
    :cond_3
    if-le v11, v12, :cond_4

    move v11, v12

    .line 214
    :cond_4
    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_5

    move/from16 v20, v21

    .line 216
    .end local v15    # "p":Landroid/graphics/Point;
    :cond_5
    new-instance v17, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 217
    .local v17, "rect":Landroid/graphics/Rect;
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 218
    .local v8, "bitmapPaint":Landroid/graphics/Paint;
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 221
    move-object/from16 v0, p0

    iget-object v2, v0, Lbe/gentgo/tetsuki/GameView;->blackShadow:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lbe/gentgo/tetsuki/GameView;->whiteShadow:Landroid/graphics/Bitmap;

    if-nez v2, :cond_7

    .line 222
    :cond_6
    const v2, 0x7f020006

    move-object/from16 v0, v18

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lbe/gentgo/tetsuki/GameView;->blackShadow:Landroid/graphics/Bitmap;

    .line 223
    const v2, 0x7f020073

    move-object/from16 v0, v18

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lbe/gentgo/tetsuki/GameView;->whiteShadow:Landroid/graphics/Bitmap;

    .line 225
    :cond_7
    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Lbe/gentgo/tetsuki/Position;->row:I

    :goto_0
    move-object/from16 v0, v16

    iget v2, v0, Lbe/gentgo/tetsuki/Position;->row:I

    move/from16 v0, v20

    if-lt v2, v0, :cond_a

    .line 244
    invoke-static {}, Lbe/gentgo/tetsuki/Preferences;->getStonesStyle()I

    move-result v24

    .line 245
    .local v24, "stoneStyle":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lbe/gentgo/tetsuki/GameView;->blackStone:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lbe/gentgo/tetsuki/GameView;->whiteStone:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Lbe/gentgo/tetsuki/GameView;->previousStoneStyle:I

    move/from16 v0, v24

    if-eq v0, v2, :cond_9

    .line 247
    :cond_8
    if-nez v24, :cond_f

    const v2, 0x7f020007

    :goto_1
    move-object/from16 v0, v18

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lbe/gentgo/tetsuki/GameView;->blackStone:Landroid/graphics/Bitmap;

    .line 248
    if-nez v24, :cond_10

    const v2, 0x7f020074

    :goto_2
    move-object/from16 v0, v18

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lbe/gentgo/tetsuki/GameView;->whiteStone:Landroid/graphics/Bitmap;

    .line 249
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lbe/gentgo/tetsuki/GameView;->previousStoneStyle:I

    .line 251
    :cond_9
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .local v9, "black":Landroid/graphics/Paint;
    const/16 v2, 0xff

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v9, v2, v3, v4, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 252
    new-instance v25, Landroid/graphics/Paint;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/Paint;-><init>()V

    .local v25, "white":Landroid/graphics/Paint;
    const/16 v2, 0xff

    const/16 v3, 0xff

    const/16 v4, 0xff

    const/16 v5, 0xff

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    const/4 v2, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 253
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    .line 254
    .local v14, "half":Landroid/graphics/Paint;
    const/16 v2, 0x80

    const/16 v3, 0xff

    const/16 v4, 0xff

    const/16 v5, 0xff

    invoke-virtual {v14, v2, v3, v4, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 255
    const/4 v2, 0x1

    invoke-virtual {v14, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 256
    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Lbe/gentgo/tetsuki/Position;->row:I

    :goto_3
    move-object/from16 v0, v16

    iget v2, v0, Lbe/gentgo/tetsuki/Position;->row:I

    move/from16 v0, v20

    if-ge v2, v0, :cond_0

    .line 258
    move-object/from16 v0, v16

    iput v10, v0, Lbe/gentgo/tetsuki/Position;->column:I

    :goto_4
    move-object/from16 v0, v16

    iget v2, v0, Lbe/gentgo/tetsuki/Position;->column:I

    if-lt v2, v11, :cond_11

    .line 256
    move-object/from16 v0, v16

    iget v2, v0, Lbe/gentgo/tetsuki/Position;->row:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v16

    iput v2, v0, Lbe/gentgo/tetsuki/Position;->row:I

    goto :goto_3

    .line 226
    .end local v9    # "black":Landroid/graphics/Paint;
    .end local v14    # "half":Landroid/graphics/Paint;
    .end local v24    # "stoneStyle":I
    .end local v25    # "white":Landroid/graphics/Paint;
    :cond_a
    move-object/from16 v0, v16

    iput v10, v0, Lbe/gentgo/tetsuki/Position;->column:I

    :goto_5
    move-object/from16 v0, v16

    iget v2, v0, Lbe/gentgo/tetsuki/Position;->column:I

    if-lt v2, v11, :cond_b

    .line 225
    move-object/from16 v0, v16

    iget v2, v0, Lbe/gentgo/tetsuki/Position;->row:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v16

    iput v2, v0, Lbe/gentgo/tetsuki/Position;->row:I

    goto/16 :goto_0

    .line 228
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lbe/gentgo/tetsuki/GameView;->goban:Lbe/gentgo/tetsuki/Goban;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lbe/gentgo/tetsuki/Goban;->getState(Lbe/gentgo/tetsuki/Position;)I

    move-result v23

    .line 229
    .local v23, "state":I
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/GameView;->getGhostState(Lbe/gentgo/tetsuki/Position;)I

    move-result v13

    .line 230
    .local v13, "ghostState":I
    if-eqz v13, :cond_c

    const/16 v23, 0x0

    .line 231
    :cond_c
    const/4 v2, -0x1

    move/from16 v0, v23

    if-ne v0, v2, :cond_d

    .line 233
    move-object/from16 v0, p0

    iget-object v2, v0, Lbe/gentgo/tetsuki/GameView;->gobanDimensions:Lbe/gentgo/tetsuki/GobanDimensions;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Lbe/gentgo/tetsuki/GobanDimensions;->getRectForShadow(Lbe/gentgo/tetsuki/Position;Landroid/graphics/Rect;)V

    .line 234
    move-object/from16 v0, p0

    iget-object v2, v0, Lbe/gentgo/tetsuki/GameView;->whiteShadow:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v3, v1, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 236
    :cond_d
    const/4 v2, 0x1

    move/from16 v0, v23

    if-ne v0, v2, :cond_e

    .line 238
    move-object/from16 v0, p0

    iget-object v2, v0, Lbe/gentgo/tetsuki/GameView;->gobanDimensions:Lbe/gentgo/tetsuki/GobanDimensions;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Lbe/gentgo/tetsuki/GobanDimensions;->getRectForShadow(Lbe/gentgo/tetsuki/Position;Landroid/graphics/Rect;)V

    .line 239
    move-object/from16 v0, p0

    iget-object v2, v0, Lbe/gentgo/tetsuki/GameView;->blackShadow:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v3, v1, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 226
    :cond_e
    move-object/from16 v0, v16

    iget v2, v0, Lbe/gentgo/tetsuki/Position;->column:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v16

    iput v2, v0, Lbe/gentgo/tetsuki/Position;->column:I

    goto :goto_5

    .line 247
    .end local v13    # "ghostState":I
    .end local v23    # "state":I
    .restart local v24    # "stoneStyle":I
    :cond_f
    const v2, 0x7f020008

    goto/16 :goto_1

    .line 248
    :cond_10
    const v2, 0x7f020075

    goto/16 :goto_2

    .line 260
    .restart local v9    # "black":Landroid/graphics/Paint;
    .restart local v14    # "half":Landroid/graphics/Paint;
    .restart local v25    # "white":Landroid/graphics/Paint;
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lbe/gentgo/tetsuki/GameView;->goban:Lbe/gentgo/tetsuki/Goban;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lbe/gentgo/tetsuki/Goban;->getState(Lbe/gentgo/tetsuki/Position;)I

    move-result v23

    .line 261
    .restart local v23    # "state":I
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/GameView;->getGhostState(Lbe/gentgo/tetsuki/Position;)I

    move-result v13

    .line 262
    .restart local v13    # "ghostState":I
    move-object v15, v8

    .line 263
    .local v15, "p":Landroid/graphics/Paint;
    if-eqz v13, :cond_12

    move/from16 v23, v13

    move-object v15, v14

    .line 264
    :cond_12
    const/4 v2, -0x1

    move/from16 v0, v23

    if-ne v0, v2, :cond_13

    .line 266
    move-object/from16 v0, p0

    iget-object v2, v0, Lbe/gentgo/tetsuki/GameView;->gobanDimensions:Lbe/gentgo/tetsuki/GobanDimensions;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Lbe/gentgo/tetsuki/GobanDimensions;->getRectForStone(Lbe/gentgo/tetsuki/Position;Landroid/graphics/Rect;)V

    .line 267
    move-object/from16 v0, p0

    iget-object v2, v0, Lbe/gentgo/tetsuki/GameView;->whiteStone:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v3, v1, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 269
    :cond_13
    const/4 v2, 0x1

    move/from16 v0, v23

    if-ne v0, v2, :cond_14

    .line 271
    move-object/from16 v0, p0

    iget-object v2, v0, Lbe/gentgo/tetsuki/GameView;->gobanDimensions:Lbe/gentgo/tetsuki/GobanDimensions;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Lbe/gentgo/tetsuki/GobanDimensions;->getRectForStone(Lbe/gentgo/tetsuki/Position;Landroid/graphics/Rect;)V

    .line 272
    move-object/from16 v0, p0

    iget-object v2, v0, Lbe/gentgo/tetsuki/GameView;->blackStone:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v3, v1, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 275
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lbe/gentgo/tetsuki/GameView;->score:Lbe/gentgo/tetsuki/ScoreCount;

    if-eqz v2, :cond_17

    .line 277
    move-object/from16 v0, p0

    iget-object v2, v0, Lbe/gentgo/tetsuki/GameView;->score:Lbe/gentgo/tetsuki/ScoreCount;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lbe/gentgo/tetsuki/ScoreCount;->getState(Lbe/gentgo/tetsuki/Position;)I

    move-result v22

    .line 278
    .local v22, "scoreState":I
    const/4 v2, 0x2

    move/from16 v0, v22

    if-ne v0, v2, :cond_15

    .line 280
    move-object/from16 v0, p0

    iget-object v2, v0, Lbe/gentgo/tetsuki/GameView;->gobanDimensions:Lbe/gentgo/tetsuki/GobanDimensions;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Lbe/gentgo/tetsuki/GobanDimensions;->getRectForTerritory(Lbe/gentgo/tetsuki/Position;Landroid/graphics/Rect;)V

    .line 281
    move-object/from16 v0, v17

    iget v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v17

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    move-object/from16 v0, v17

    iget v4, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v17

    iget v5, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 283
    :cond_15
    const/4 v2, -0x2

    move/from16 v0, v22

    if-ne v0, v2, :cond_16

    .line 285
    move-object/from16 v0, p0

    iget-object v2, v0, Lbe/gentgo/tetsuki/GameView;->gobanDimensions:Lbe/gentgo/tetsuki/GobanDimensions;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Lbe/gentgo/tetsuki/GobanDimensions;->getRectForTerritory(Lbe/gentgo/tetsuki/Position;Landroid/graphics/Rect;)V

    .line 286
    move-object/from16 v0, v17

    iget v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v17

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    move-object/from16 v0, v17

    iget v4, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v17

    iget v5, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 288
    :cond_16
    const/4 v2, 0x4

    move/from16 v0, v22

    if-ne v0, v2, :cond_17

    .line 290
    move-object/from16 v0, p0

    iget-object v2, v0, Lbe/gentgo/tetsuki/GameView;->gobanDimensions:Lbe/gentgo/tetsuki/GobanDimensions;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Lbe/gentgo/tetsuki/GobanDimensions;->getRectForDameMark(Lbe/gentgo/tetsuki/Position;Landroid/graphics/Rect;)V

    .line 291
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 292
    .local v7, "dame":Landroid/graphics/Paint;
    const/16 v2, 0xff

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v7, v2, v3, v4, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 293
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 294
    move-object/from16 v0, p0

    iget-object v2, v0, Lbe/gentgo/tetsuki/GameView;->gobanDimensions:Lbe/gentgo/tetsuki/GobanDimensions;

    invoke-virtual {v2}, Lbe/gentgo/tetsuki/GobanDimensions;->getDameLineWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 295
    move-object/from16 v0, v17

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v2

    move-object/from16 v0, v17

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v2

    move-object/from16 v0, v17

    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v5, v2

    move-object/from16 v0, v17

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 296
    move-object/from16 v0, v17

    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v2

    move-object/from16 v0, v17

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v2

    move-object/from16 v0, v17

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v5, v2

    move-object/from16 v0, v17

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 258
    .end local v7    # "dame":Landroid/graphics/Paint;
    .end local v22    # "scoreState":I
    :cond_17
    move-object/from16 v0, v16

    iget v2, v0, Lbe/gentgo/tetsuki/Position;->column:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v16

    iput v2, v0, Lbe/gentgo/tetsuki/Position;->column:I

    goto/16 :goto_4
.end method

.method protected drawSymbol(Landroid/graphics/Canvas;Ljava/lang/String;Lbe/gentgo/tetsuki/Position;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "symbol"    # Ljava/lang/String;
    .param p3, "pos"    # Lbe/gentgo/tetsuki/Position;

    .prologue
    const/4 v10, 0x1

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    .line 408
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 409
    .local v1, "rect":Landroid/graphics/Rect;
    iget-object v4, p0, Lbe/gentgo/tetsuki/GameView;->gobanDimensions:Lbe/gentgo/tetsuki/GobanDimensions;

    invoke-virtual {v4, p3, v1}, Lbe/gentgo/tetsuki/GobanDimensions;->getRectForStone(Lbe/gentgo/tetsuki/Position;Landroid/graphics/Rect;)V

    .line 410
    const-wide v4, 0x3fe999999999999aL    # 0.8

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v4, v6

    add-double/2addr v4, v8

    double-to-int v3, v4

    .line 412
    .local v3, "textSize":I
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 413
    .local v0, "paint":Landroid/graphics/Paint;
    int-to-float v4, v3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 414
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 415
    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 416
    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 417
    iget-object v4, p0, Lbe/gentgo/tetsuki/GameView;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v4}, Lbe/gentgo/tetsuki/Game;->getGoban()Lbe/gentgo/tetsuki/Goban;

    move-result-object v4

    invoke-virtual {v4, p3}, Lbe/gentgo/tetsuki/Goban;->getState(Lbe/gentgo/tetsuki/Position;)I

    move-result v2

    .line 418
    .local v2, "stoneColor":I
    if-ne v2, v10, :cond_0

    .line 419
    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 423
    :goto_0
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    int-to-double v6, v5

    add-double/2addr v6, v8

    int-to-double v8, v3

    const-wide/high16 v10, 0x4010000000000000L    # 4.0

    div-double/2addr v8, v10

    sub-double/2addr v6, v8

    double-to-int v5, v6

    int-to-float v5, v5

    invoke-virtual {p1, p2, v4, v5, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 424
    return-void

    .line 421
    :cond_0
    const/high16 v4, -0x1000000

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method

.method public getGhostState(Lbe/gentgo/tetsuki/Position;)I
    .locals 6
    .param p1, "pos"    # Lbe/gentgo/tetsuki/Position;

    .prologue
    const/4 v1, 0x0

    .line 539
    iget-object v2, p0, Lbe/gentgo/tetsuki/GameView;->ghostStones:[Lbe/gentgo/tetsuki/Position;

    if-nez v2, :cond_1

    .line 542
    :cond_0
    :goto_0
    return v1

    .line 540
    :cond_1
    iget-object v3, p0, Lbe/gentgo/tetsuki/GameView;->ghostStones:[Lbe/gentgo/tetsuki/Position;

    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 541
    .local v0, "p":Lbe/gentgo/tetsuki/Position;
    invoke-virtual {v0, p1}, Lbe/gentgo/tetsuki/Position;->equals(Lbe/gentgo/tetsuki/Position;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget v1, p0, Lbe/gentgo/tetsuki/GameView;->ghostColor:I

    goto :goto_0

    .line 540
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public getTotalView()Z
    .locals 1

    .prologue
    .line 587
    iget-boolean v0, p0, Lbe/gentgo/tetsuki/GameView;->totalView:Z

    return v0
.end method

.method public hasGhostStones()Z
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lbe/gentgo/tetsuki/GameView;->ghostStones:[Lbe/gentgo/tetsuki/Position;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initDimensions()V
    .locals 11

    .prologue
    const/4 v5, 0x1

    const/4 v10, 0x0

    .line 565
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameView;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameView;->getLeft()I

    move-result v6

    sub-int/2addr v0, v6

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameView;->getBottom()I

    move-result v6

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameView;->getTop()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-direct {v1, v10, v10, v0, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 566
    .local v1, "frame":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 585
    :goto_0
    return-void

    .line 570
    :cond_0
    iget v0, v1, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lbe/gentgo/tetsuki/GameView;->topMargin:I

    add-int/2addr v0, v6

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 571
    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    iget v6, p0, Lbe/gentgo/tetsuki/GameView;->bottomMargin:I

    sub-int/2addr v0, v6

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 572
    const/16 v3, 0x13

    .local v3, "rows":I
    const/16 v2, 0x13

    .line 573
    .local v2, "columns":I
    iget-object v0, p0, Lbe/gentgo/tetsuki/GameView;->game:Lbe/gentgo/tetsuki/Game;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbe/gentgo/tetsuki/GameView;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/Game;->getGameSettings()Lbe/gentgo/tetsuki/GameSettings;

    move-result-object v0

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/GameSettings;->getRows()I

    move-result v3

    iget-object v0, p0, Lbe/gentgo/tetsuki/GameView;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/Game;->getGameSettings()Lbe/gentgo/tetsuki/GameSettings;

    move-result-object v0

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/GameSettings;->getColumns()I

    move-result v2

    .line 576
    :cond_1
    new-instance v9, Landroid/util/DisplayMetrics;

    invoke-direct {v9}, Landroid/util/DisplayMetrics;-><init>()V

    .line 577
    .local v9, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameView;->getContext()Landroid/content/Context;

    move-result-object v8

    check-cast v8, Landroid/app/Activity;

    .line 578
    .local v8, "act":Landroid/app/Activity;
    invoke-virtual {v8}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 579
    iget v0, v9, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v4, v0

    .line 581
    .local v4, "dpi":F
    iget-object v0, p0, Lbe/gentgo/tetsuki/GameView;->totalViewDimensions:Lbe/gentgo/tetsuki/GobanDimensions;

    iget-boolean v6, p0, Lbe/gentgo/tetsuki/GameView;->allowCoordinates:Z

    if-eqz v6, :cond_2

    invoke-static {}, Lbe/gentgo/tetsuki/Preferences;->getShowCoordinates()Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v5

    :goto_1
    invoke-static {}, Lbe/gentgo/tetsuki/Preferences;->getZoom()Z

    move-result v7

    invoke-virtual/range {v0 .. v7}, Lbe/gentgo/tetsuki/GobanDimensions;->initForTotalView(Landroid/graphics/Rect;IIFZZZ)V

    .line 582
    iget-object v0, p0, Lbe/gentgo/tetsuki/GameView;->fullSizeDimensions:Lbe/gentgo/tetsuki/GobanDimensions;

    iget-boolean v6, p0, Lbe/gentgo/tetsuki/GameView;->allowCoordinates:Z

    if-eqz v6, :cond_3

    invoke-static {}, Lbe/gentgo/tetsuki/Preferences;->getShowCoordinates()Z

    move-result v6

    if-eqz v6, :cond_3

    :goto_2
    iget-object v6, p0, Lbe/gentgo/tetsuki/GameView;->totalViewDimensions:Lbe/gentgo/tetsuki/GobanDimensions;

    invoke-virtual/range {v0 .. v6}, Lbe/gentgo/tetsuki/GobanDimensions;->initForFullSize(Landroid/graphics/Rect;IIFZLbe/gentgo/tetsuki/GobanDimensions;)V

    .line 584
    iget-boolean v0, p0, Lbe/gentgo/tetsuki/GameView;->totalView:Z

    invoke-virtual {p0, v0}, Lbe/gentgo/tetsuki/GameView;->setTotalView(Z)V

    goto :goto_0

    :cond_2
    move v6, v10

    .line 581
    goto :goto_1

    :cond_3
    move v5, v10

    .line 582
    goto :goto_2
.end method

.method public onAnimationEnd()V
    .locals 1

    .prologue
    .line 612
    invoke-super {p0}, Landroid/view/View;->onAnimationEnd()V

    .line 613
    const/4 v0, 0x0

    iput-object v0, p0, Lbe/gentgo/tetsuki/GameView;->zoomBitmap:Landroid/graphics/Bitmap;

    .line 614
    iget-object v0, p0, Lbe/gentgo/tetsuki/GameView;->pointToZoomOn:Landroid/graphics/Point;

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lbe/gentgo/tetsuki/GameView;->pointToZoomOn:Landroid/graphics/Point;

    invoke-virtual {p0, v0}, Lbe/gentgo/tetsuki/GameView;->zoomOnPoint(Landroid/graphics/Point;)V

    .line 618
    :goto_0
    return-void

    .line 617
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbe/gentgo/tetsuki/GameView;->zoomOut(Z)V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 515
    iget-object v1, p0, Lbe/gentgo/tetsuki/GameView;->zoomBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 516
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 517
    .local v0, "bitmapPaint":Landroid/graphics/Paint;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 518
    iget-object v1, p0, Lbe/gentgo/tetsuki/GameView;->zoomBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1, v2, v2, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 532
    .end local v0    # "bitmapPaint":Landroid/graphics/Paint;
    :cond_0
    :goto_0
    return-void

    .line 521
    :cond_1
    iget-object v1, p0, Lbe/gentgo/tetsuki/GameView;->game:Lbe/gentgo/tetsuki/Game;

    if-eqz v1, :cond_0

    .line 523
    invoke-virtual {p0, p1}, Lbe/gentgo/tetsuki/GameView;->drawBoard(Landroid/graphics/Canvas;)V

    .line 525
    invoke-virtual {p0, p1}, Lbe/gentgo/tetsuki/GameView;->drawStones(Landroid/graphics/Canvas;)V

    .line 527
    invoke-virtual {p0, p1}, Lbe/gentgo/tetsuki/GameView;->drawStoneMarks(Landroid/graphics/Canvas;)V

    .line 529
    invoke-virtual {p0, p1}, Lbe/gentgo/tetsuki/GameView;->drawCoordinates(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v2, 0x0

    .line 40
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 41
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2, p3, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 42
    .local v0, "frame":Landroid/graphics/Rect;
    iget-object v3, p0, Lbe/gentgo/tetsuki/GameView;->currentFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 51
    :goto_0
    return-void

    .line 45
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lbe/gentgo/tetsuki/GameView;->currentFrame:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-ne v3, v4, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget-object v4, p0, Lbe/gentgo/tetsuki/GameView;->currentFrame:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-ge v3, v4, :cond_2

    const/4 v1, 0x1

    .line 46
    .local v1, "seemsKeyboardJustAppeared":Z
    :goto_1
    iget-object v3, p0, Lbe/gentgo/tetsuki/GameView;->game:Lbe/gentgo/tetsuki/Game;

    if-eqz v3, :cond_1

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    .line 47
    invoke-virtual {p0, v2}, Lbe/gentgo/tetsuki/GameView;->zoomOut(Z)V

    .line 49
    :cond_1
    iput-object v0, p0, Lbe/gentgo/tetsuki/GameView;->currentFrame:Landroid/graphics/Rect;

    .line 50
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameView;->initDimensions()V

    goto :goto_0

    .end local v1    # "seemsKeyboardJustAppeared":Z
    :cond_2
    move v1, v2

    .line 45
    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 770
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 828
    :cond_0
    :goto_0
    return v5

    .line 772
    :pswitch_0
    iget-object v6, p0, Lbe/gentgo/tetsuki/GameView;->finger:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    float-to-int v7, v7

    iput v7, v6, Landroid/graphics/Point;->x:I

    .line 773
    iget-object v6, p0, Lbe/gentgo/tetsuki/GameView;->finger:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    float-to-int v7, v7

    iput v7, v6, Landroid/graphics/Point;->y:I

    .line 774
    iget-object v6, p0, Lbe/gentgo/tetsuki/GameView;->finger:Landroid/graphics/Point;

    invoke-virtual {p0, v6}, Lbe/gentgo/tetsuki/GameView;->convertRawToLocal(Landroid/graphics/Point;)V

    .line 775
    iget-object v6, p0, Lbe/gentgo/tetsuki/GameView;->finger:Landroid/graphics/Point;

    iget v7, v6, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameView;->getScrollX()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Point;->x:I

    .line 776
    iget-object v6, p0, Lbe/gentgo/tetsuki/GameView;->finger:Landroid/graphics/Point;

    iget v7, v6, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameView;->getScrollY()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Point;->y:I

    .line 777
    iput-boolean v4, p0, Lbe/gentgo/tetsuki/GameView;->dragging:Z

    goto :goto_0

    .line 782
    :pswitch_1
    iget-boolean v4, p0, Lbe/gentgo/tetsuki/GameView;->totalView:Z

    if-eqz v4, :cond_1

    .line 784
    iget-boolean v4, p0, Lbe/gentgo/tetsuki/GameView;->dragging:Z

    if-nez v4, :cond_0

    .line 785
    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    float-to-int v6, v6

    invoke-direct {v1, v4, v6}, Landroid/graphics/Point;-><init>(II)V

    .line 786
    .local v1, "p":Landroid/graphics/Point;
    invoke-virtual {p0, v1}, Lbe/gentgo/tetsuki/GameView;->convertRawToLocal(Landroid/graphics/Point;)V

    .line 787
    iget v4, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameView;->getScrollX()I

    move-result v6

    add-int/2addr v4, v6

    iput v4, v1, Landroid/graphics/Point;->x:I

    .line 788
    iget v4, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameView;->getScrollY()I

    move-result v6

    add-int/2addr v4, v6

    iput v4, v1, Landroid/graphics/Point;->y:I

    .line 789
    iget v4, v1, Landroid/graphics/Point;->x:I

    iget-object v6, p0, Lbe/gentgo/tetsuki/GameView;->finger:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v6

    iput v4, v1, Landroid/graphics/Point;->x:I

    .line 790
    iget v4, v1, Landroid/graphics/Point;->y:I

    iget-object v6, p0, Lbe/gentgo/tetsuki/GameView;->finger:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v6

    iput v4, v1, Landroid/graphics/Point;->y:I

    .line 791
    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v6, v1, Landroid/graphics/Point;->x:I

    mul-int/2addr v4, v6

    iget v6, v1, Landroid/graphics/Point;->y:I

    iget v7, v1, Landroid/graphics/Point;->y:I

    mul-int/2addr v6, v7

    add-int/2addr v4, v6

    const/16 v6, 0xe1

    if-le v4, v6, :cond_0

    iput-boolean v5, p0, Lbe/gentgo/tetsuki/GameView;->dragging:Z

    goto :goto_0

    .line 795
    .end local v1    # "p":Landroid/graphics/Point;
    :cond_1
    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    float-to-int v6, v6

    invoke-direct {v1, v4, v6}, Landroid/graphics/Point;-><init>(II)V

    .line 796
    .restart local v1    # "p":Landroid/graphics/Point;
    invoke-virtual {p0, v1}, Lbe/gentgo/tetsuki/GameView;->convertRawToLocal(Landroid/graphics/Point;)V

    .line 797
    new-instance v0, Landroid/graphics/Point;

    iget v4, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameView;->getScrollX()I

    move-result v6

    add-int/2addr v4, v6

    iget-object v6, p0, Lbe/gentgo/tetsuki/GameView;->finger:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v6

    iget v6, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameView;->getScrollY()I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, p0, Lbe/gentgo/tetsuki/GameView;->finger:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    sub-int/2addr v6, v7

    invoke-direct {v0, v4, v6}, Landroid/graphics/Point;-><init>(II)V

    .line 798
    .local v0, "d":Landroid/graphics/Point;
    iget v4, v0, Landroid/graphics/Point;->x:I

    iget v6, v0, Landroid/graphics/Point;->x:I

    mul-int/2addr v4, v6

    iget v6, v0, Landroid/graphics/Point;->y:I

    iget v7, v0, Landroid/graphics/Point;->y:I

    mul-int/2addr v6, v7

    add-int/2addr v4, v6

    const/16 v6, 0x31

    if-le v4, v6, :cond_2

    iput-boolean v5, p0, Lbe/gentgo/tetsuki/GameView;->dragging:Z

    .line 799
    :cond_2
    iget-boolean v4, p0, Lbe/gentgo/tetsuki/GameView;->dragging:Z

    if-eqz v4, :cond_0

    .line 801
    iget-object v4, p0, Lbe/gentgo/tetsuki/GameView;->finger:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget v6, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v6

    iput v4, v1, Landroid/graphics/Point;->x:I

    .line 802
    iget-object v4, p0, Lbe/gentgo/tetsuki/GameView;->finger:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget v6, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v6

    iput v4, v1, Landroid/graphics/Point;->y:I

    .line 803
    invoke-direct {p0, v1}, Lbe/gentgo/tetsuki/GameView;->constrainScroll(Landroid/graphics/Point;)V

    .line 804
    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v6, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v4, v6}, Lbe/gentgo/tetsuki/GameView;->scrollTo(II)V

    goto/16 :goto_0

    .line 810
    .end local v0    # "d":Landroid/graphics/Point;
    .end local v1    # "p":Landroid/graphics/Point;
    :pswitch_2
    iget-boolean v6, p0, Lbe/gentgo/tetsuki/GameView;->dragging:Z

    if-nez v6, :cond_0

    iget-object v6, p0, Lbe/gentgo/tetsuki/GameView;->tapListener:Lbe/gentgo/tetsuki/TapListener;

    if-eqz v6, :cond_0

    .line 812
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v4, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 813
    .local v3, "rect":Landroid/graphics/Rect;
    iget-object v6, p0, Lbe/gentgo/tetsuki/GameView;->gobanDimensions:Lbe/gentgo/tetsuki/GobanDimensions;

    invoke-virtual {v6, v3}, Lbe/gentgo/tetsuki/GobanDimensions;->getTotalRect(Landroid/graphics/Rect;)V

    .line 816
    iget-object v6, p0, Lbe/gentgo/tetsuki/GameView;->finger:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    iget v7, v3, Landroid/graphics/Rect;->left:I

    if-lt v6, v7, :cond_0

    .line 817
    iget-object v6, p0, Lbe/gentgo/tetsuki/GameView;->finger:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    iget v7, v3, Landroid/graphics/Rect;->right:I

    if-gt v6, v7, :cond_0

    .line 818
    iget-object v6, p0, Lbe/gentgo/tetsuki/GameView;->finger:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    iget v7, v3, Landroid/graphics/Rect;->top:I

    if-lt v6, v7, :cond_0

    .line 819
    iget-object v6, p0, Lbe/gentgo/tetsuki/GameView;->finger:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    if-gt v6, v7, :cond_0

    .line 821
    new-instance v2, Lbe/gentgo/tetsuki/Position;

    invoke-direct {v2, v4, v4}, Lbe/gentgo/tetsuki/Position;-><init>(II)V

    .line 822
    .local v2, "pos":Lbe/gentgo/tetsuki/Position;
    iget-object v6, p0, Lbe/gentgo/tetsuki/GameView;->gobanDimensions:Lbe/gentgo/tetsuki/GobanDimensions;

    iget-object v7, p0, Lbe/gentgo/tetsuki/GameView;->finger:Landroid/graphics/Point;

    invoke-virtual {v6, v7, v2}, Lbe/gentgo/tetsuki/GobanDimensions;->getPositionOfPoint(Landroid/graphics/Point;Lbe/gentgo/tetsuki/Position;)V

    .line 823
    iget-object v6, p0, Lbe/gentgo/tetsuki/GameView;->tapListener:Lbe/gentgo/tetsuki/TapListener;

    iget-boolean v7, p0, Lbe/gentgo/tetsuki/GameView;->totalView:Z

    if-eqz v7, :cond_3

    :goto_1
    invoke-interface {v6, v2, v4}, Lbe/gentgo/tetsuki/TapListener;->onTap(Lbe/gentgo/tetsuki/Position;Z)V

    goto/16 :goto_0

    :cond_3
    move v4, v5

    goto :goto_1

    .line 770
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setGameAndScore(Lbe/gentgo/tetsuki/Game;Lbe/gentgo/tetsuki/ScoreCount;)V
    .locals 1
    .param p1, "g"    # Lbe/gentgo/tetsuki/Game;
    .param p2, "s"    # Lbe/gentgo/tetsuki/ScoreCount;

    .prologue
    .line 60
    iput-object p2, p0, Lbe/gentgo/tetsuki/GameView;->score:Lbe/gentgo/tetsuki/ScoreCount;

    .line 62
    iget-boolean v0, p0, Lbe/gentgo/tetsuki/GameView;->whiteBackground:Z

    if-eqz v0, :cond_4

    .line 64
    const v0, 0x7f02007b

    invoke-virtual {p0, v0}, Lbe/gentgo/tetsuki/GameView;->setBackgroundResource(I)V

    .line 71
    :cond_0
    :goto_0
    iget-object v0, p0, Lbe/gentgo/tetsuki/GameView;->game:Lbe/gentgo/tetsuki/Game;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbe/gentgo/tetsuki/GameView;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v0, p1}, Lbe/gentgo/tetsuki/Game;->samePointer(Lbe/gentgo/tetsuki/NativeObject;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 74
    :cond_1
    iput-object p1, p0, Lbe/gentgo/tetsuki/GameView;->game:Lbe/gentgo/tetsuki/Game;

    .line 75
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameView;->initDimensions()V

    .line 76
    iget-object v0, p0, Lbe/gentgo/tetsuki/GameView;->game:Lbe/gentgo/tetsuki/Game;

    if-eqz v0, :cond_6

    .line 78
    iget-object v0, p0, Lbe/gentgo/tetsuki/GameView;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/Game;->getGameSettings()Lbe/gentgo/tetsuki/GameSettings;

    move-result-object v0

    iput-object v0, p0, Lbe/gentgo/tetsuki/GameView;->gameSettings:Lbe/gentgo/tetsuki/GameSettings;

    .line 79
    iget-object v0, p0, Lbe/gentgo/tetsuki/GameView;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v0}, Lbe/gentgo/tetsuki/Game;->getGoban()Lbe/gentgo/tetsuki/Goban;

    move-result-object v0

    iput-object v0, p0, Lbe/gentgo/tetsuki/GameView;->goban:Lbe/gentgo/tetsuki/Goban;

    .line 80
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbe/gentgo/tetsuki/GameView;->zoomOut(Z)V

    .line 85
    :cond_2
    :goto_1
    iget-object v0, p0, Lbe/gentgo/tetsuki/GameView;->zoomBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameView;->invalidate()V

    .line 86
    :cond_3
    return-void

    .line 66
    :cond_4
    invoke-static {}, Lbe/gentgo/tetsuki/Main;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-static {}, Lbe/gentgo/tetsuki/Preferences;->getBackgroundStyle()I

    move-result v0

    if-nez v0, :cond_5

    const v0, 0x7f020067

    :goto_2
    invoke-virtual {p0, v0}, Lbe/gentgo/tetsuki/GameView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_5
    const v0, 0x7f020031

    goto :goto_2

    .line 83
    :cond_6
    const/4 v0, 0x0

    iput-object v0, p0, Lbe/gentgo/tetsuki/GameView;->gameSettings:Lbe/gentgo/tetsuki/GameSettings;

    goto :goto_1
.end method

.method public setGhostStone(Lbe/gentgo/tetsuki/Position;I)V
    .locals 3
    .param p1, "g"    # Lbe/gentgo/tetsuki/Position;
    .param p2, "color"    # I

    .prologue
    .line 535
    const/4 v0, 0x1

    new-array v0, v0, [Lbe/gentgo/tetsuki/Position;

    iput-object v0, p0, Lbe/gentgo/tetsuki/GameView;->ghostStones:[Lbe/gentgo/tetsuki/Position;

    iget-object v0, p0, Lbe/gentgo/tetsuki/GameView;->ghostStones:[Lbe/gentgo/tetsuki/Position;

    const/4 v1, 0x0

    new-instance v2, Lbe/gentgo/tetsuki/Position;

    invoke-direct {v2, p1}, Lbe/gentgo/tetsuki/Position;-><init>(Lbe/gentgo/tetsuki/Position;)V

    aput-object v2, v0, v1

    iput p2, p0, Lbe/gentgo/tetsuki/GameView;->ghostColor:I

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameView;->invalidate()V

    return-void
.end method

.method public setGhostStones([Lbe/gentgo/tetsuki/Position;I)V
    .locals 0
    .param p1, "g"    # [Lbe/gentgo/tetsuki/Position;
    .param p2, "color"    # I

    .prologue
    .line 534
    iput-object p1, p0, Lbe/gentgo/tetsuki/GameView;->ghostStones:[Lbe/gentgo/tetsuki/Position;

    iput p2, p0, Lbe/gentgo/tetsuki/GameView;->ghostColor:I

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameView;->invalidate()V

    return-void
.end method

.method public setMargin(IIII)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "top"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 557
    iput p3, p0, Lbe/gentgo/tetsuki/GameView;->topMargin:I

    .line 558
    iput p4, p0, Lbe/gentgo/tetsuki/GameView;->bottomMargin:I

    .line 559
    iput p1, p0, Lbe/gentgo/tetsuki/GameView;->leftMargin:I

    .line 560
    iput p2, p0, Lbe/gentgo/tetsuki/GameView;->rightMargin:I

    .line 562
    return-void
.end method

.method public setTapListener(Lbe/gentgo/tetsuki/TapListener;)V
    .locals 0
    .param p1, "l"    # Lbe/gentgo/tetsuki/TapListener;

    .prologue
    .line 832
    iput-object p1, p0, Lbe/gentgo/tetsuki/GameView;->tapListener:Lbe/gentgo/tetsuki/TapListener;

    return-void
.end method

.method protected setTotalView(Z)V
    .locals 1
    .param p1, "f"    # Z

    .prologue
    .line 591
    iput-boolean p1, p0, Lbe/gentgo/tetsuki/GameView;->totalView:Z

    .line 592
    iget-boolean v0, p0, Lbe/gentgo/tetsuki/GameView;->totalView:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbe/gentgo/tetsuki/GameView;->totalViewDimensions:Lbe/gentgo/tetsuki/GobanDimensions;

    :goto_0
    iput-object v0, p0, Lbe/gentgo/tetsuki/GameView;->gobanDimensions:Lbe/gentgo/tetsuki/GobanDimensions;

    .line 594
    iget-object v0, p0, Lbe/gentgo/tetsuki/GameView;->zoomListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbe/gentgo/tetsuki/GameView;->zoomListener:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 595
    :cond_0
    return-void

    .line 592
    :cond_1
    iget-object v0, p0, Lbe/gentgo/tetsuki/GameView;->fullSizeDimensions:Lbe/gentgo/tetsuki/GobanDimensions;

    goto :goto_0
.end method

.method public setZoomListener(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "l"    # Ljava/lang/Runnable;

    .prologue
    .line 724
    iput-object p1, p0, Lbe/gentgo/tetsuki/GameView;->zoomListener:Ljava/lang/Runnable;

    return-void
.end method

.method public update()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lbe/gentgo/tetsuki/GameView;->game:Lbe/gentgo/tetsuki/Game;

    iget-object v1, p0, Lbe/gentgo/tetsuki/GameView;->score:Lbe/gentgo/tetsuki/ScoreCount;

    invoke-virtual {p0, v0, v1}, Lbe/gentgo/tetsuki/GameView;->setGameAndScore(Lbe/gentgo/tetsuki/Game;Lbe/gentgo/tetsuki/ScoreCount;)V

    .line 56
    return-void
.end method

.method public zoomOnAnimated(Lbe/gentgo/tetsuki/Position;)V
    .locals 13
    .param p1, "pos"    # Lbe/gentgo/tetsuki/Position;

    .prologue
    .line 633
    iget-boolean v1, p0, Lbe/gentgo/tetsuki/GameView;->totalView:Z

    if-nez v1, :cond_0

    .line 674
    :goto_0
    return-void

    .line 637
    :cond_0
    new-instance v11, Landroid/graphics/Point;

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {v11, v1, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 639
    .local v11, "stoneCurrentPoint":Landroid/graphics/Point;
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lbe/gentgo/tetsuki/GameView;->setTotalView(Z)V

    .line 640
    new-instance v1, Landroid/graphics/Point;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, p0, Lbe/gentgo/tetsuki/GameView;->pointToZoomOn:Landroid/graphics/Point;

    .line 641
    iget-object v1, p0, Lbe/gentgo/tetsuki/GameView;->gobanDimensions:Lbe/gentgo/tetsuki/GobanDimensions;

    iget-object v3, p0, Lbe/gentgo/tetsuki/GameView;->pointToZoomOn:Landroid/graphics/Point;

    invoke-virtual {v1, p1, v3}, Lbe/gentgo/tetsuki/GobanDimensions;->getCenterOfStone(Lbe/gentgo/tetsuki/Position;Landroid/graphics/Point;)V

    .line 642
    new-instance v9, Landroid/graphics/Point;

    iget-object v1, p0, Lbe/gentgo/tetsuki/GameView;->pointToZoomOn:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameView;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameView;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    iget-object v3, p0, Lbe/gentgo/tetsuki/GameView;->pointToZoomOn:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameView;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameView;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    invoke-direct {v9, v1, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 643
    .local v9, "newScroll":Landroid/graphics/Point;
    invoke-direct {p0, v9}, Lbe/gentgo/tetsuki/GameView;->constrainScroll(Landroid/graphics/Point;)V

    .line 644
    iget-object v1, p0, Lbe/gentgo/tetsuki/GameView;->pointToZoomOn:Landroid/graphics/Point;

    iget v3, v9, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameView;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameView;->getLeft()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Point;->x:I

    .line 645
    iget-object v1, p0, Lbe/gentgo/tetsuki/GameView;->pointToZoomOn:Landroid/graphics/Point;

    iget v3, v9, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameView;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameView;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Point;->y:I

    .line 646
    iget-object v1, p0, Lbe/gentgo/tetsuki/GameView;->gobanDimensions:Lbe/gentgo/tetsuki/GobanDimensions;

    iget-object v3, p0, Lbe/gentgo/tetsuki/GameView;->pointToZoomOn:Landroid/graphics/Point;

    invoke-virtual {v1, v3}, Lbe/gentgo/tetsuki/GobanDimensions;->getFloatColumnOfPoint(Landroid/graphics/Point;)F

    move-result v8

    .line 647
    .local v8, "column":F
    iget-object v1, p0, Lbe/gentgo/tetsuki/GameView;->gobanDimensions:Lbe/gentgo/tetsuki/GobanDimensions;

    iget-object v3, p0, Lbe/gentgo/tetsuki/GameView;->pointToZoomOn:Landroid/graphics/Point;

    invoke-virtual {v1, v3}, Lbe/gentgo/tetsuki/GobanDimensions;->getFloatRowOfPoint(Landroid/graphics/Point;)F

    move-result v10

    .line 648
    .local v10, "row":F
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lbe/gentgo/tetsuki/GameView;->setTotalView(Z)V

    .line 649
    iget-object v1, p0, Lbe/gentgo/tetsuki/GameView;->gobanDimensions:Lbe/gentgo/tetsuki/GobanDimensions;

    const/4 v3, 0x0

    invoke-virtual {v1, v8, v10, v3, v11}, Lbe/gentgo/tetsuki/GobanDimensions;->getPointOfFloatPosition(FFZLandroid/graphics/Point;)V

    .line 653
    invoke-direct {p0}, Lbe/gentgo/tetsuki/GameView;->newBitmapWithContent()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lbe/gentgo/tetsuki/GameView;->zoomBitmap:Landroid/graphics/Bitmap;

    .line 654
    iget-object v1, p0, Lbe/gentgo/tetsuki/GameView;->fullSizeDimensions:Lbe/gentgo/tetsuki/GobanDimensions;

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/GobanDimensions;->getCellWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lbe/gentgo/tetsuki/GameView;->totalViewDimensions:Lbe/gentgo/tetsuki/GobanDimensions;

    invoke-virtual {v3}, Lbe/gentgo/tetsuki/GobanDimensions;->getCellWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v2, v1, v3

    .line 655
    .local v2, "zoom":F
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    iget v4, v11, Landroid/graphics/Point;->x:I

    int-to-float v5, v4

    iget v4, v11, Landroid/graphics/Point;->y:I

    int-to-float v6, v4

    move v4, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 656
    .local v0, "zoomAnimation":Landroid/view/animation/ScaleAnimation;
    new-instance v9, Landroid/graphics/Point;

    .end local v9    # "newScroll":Landroid/graphics/Point;
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameView;->getRight()I

    move-result v1

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameView;->getLeft()I

    move-result v3

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    iget v3, v11, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v3

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameView;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameView;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iget v4, v11, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v4

    invoke-direct {v9, v1, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 657
    .restart local v9    # "newScroll":Landroid/graphics/Point;
    new-instance v12, Landroid/view/animation/TranslateAnimation;

    .line 658
    const/4 v1, 0x0

    iget v3, v9, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    const/4 v4, 0x0

    iget v5, v9, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    .line 657
    invoke-direct {v12, v1, v3, v4, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 659
    .local v12, "translateAnimation":Landroid/view/animation/TranslateAnimation;
    new-instance v7, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v7, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 660
    .local v7, "animation":Landroid/view/animation/AnimationSet;
    invoke-virtual {v7, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 661
    invoke-virtual {v7, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 662
    const-wide/16 v4, 0xfa

    invoke-virtual {v7, v4, v5}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 673
    invoke-virtual {p0, v7}, Lbe/gentgo/tetsuki/GameView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0
.end method

.method public zoomOnPoint(Landroid/graphics/Point;)V
    .locals 5
    .param p1, "pos"    # Landroid/graphics/Point;

    .prologue
    .line 623
    iget-object v1, p0, Lbe/gentgo/tetsuki/GameView;->game:Lbe/gentgo/tetsuki/Game;

    if-nez v1, :cond_1

    .line 630
    :cond_0
    :goto_0
    return-void

    .line 624
    :cond_1
    iget-object v1, p0, Lbe/gentgo/tetsuki/GameView;->game:Lbe/gentgo/tetsuki/Game;

    invoke-virtual {v1}, Lbe/gentgo/tetsuki/Game;->getGoban()Lbe/gentgo/tetsuki/Goban;

    move-result-object v1

    iput-object v1, p0, Lbe/gentgo/tetsuki/GameView;->goban:Lbe/gentgo/tetsuki/Goban;

    .line 625
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lbe/gentgo/tetsuki/GameView;->setTotalView(Z)V

    .line 626
    new-instance v0, Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameView;->getRight()I

    move-result v2

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameView;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameView;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameView;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 627
    .local v0, "scroll":Landroid/graphics/Point;
    invoke-direct {p0, v0}, Lbe/gentgo/tetsuki/GameView;->constrainScroll(Landroid/graphics/Point;)V

    .line 628
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v1, v2}, Lbe/gentgo/tetsuki/GameView;->scrollTo(II)V

    .line 629
    iget-object v1, p0, Lbe/gentgo/tetsuki/GameView;->zoomBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameView;->invalidate()V

    goto :goto_0
.end method

.method public zoomOut(Z)V
    .locals 14
    .param p1, "animated"    # Z

    .prologue
    .line 679
    if-eqz p1, :cond_1

    .line 682
    new-instance v9, Landroid/graphics/Point;

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameView;->getRight()I

    move-result v2

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameView;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameView;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameView;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    invoke-direct {v9, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 683
    .local v9, "p":Landroid/graphics/Point;
    iget v2, v9, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameView;->getScrollX()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Point;->x:I

    .line 684
    iget v2, v9, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameView;->getScrollY()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Point;->y:I

    .line 685
    iget-object v2, p0, Lbe/gentgo/tetsuki/GameView;->gobanDimensions:Lbe/gentgo/tetsuki/GobanDimensions;

    invoke-virtual {v2, v9}, Lbe/gentgo/tetsuki/GobanDimensions;->getFloatRowOfPoint(Landroid/graphics/Point;)F

    move-result v10

    .line 686
    .local v10, "row":F
    iget-object v2, p0, Lbe/gentgo/tetsuki/GameView;->gobanDimensions:Lbe/gentgo/tetsuki/GobanDimensions;

    invoke-virtual {v2, v9}, Lbe/gentgo/tetsuki/GobanDimensions;->getFloatColumnOfPoint(Landroid/graphics/Point;)F

    move-result v8

    .line 688
    .local v8, "column":F
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lbe/gentgo/tetsuki/GameView;->setTotalView(Z)V

    .line 689
    invoke-direct {p0}, Lbe/gentgo/tetsuki/GameView;->newBitmapWithContent()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lbe/gentgo/tetsuki/GameView;->zoomBitmap:Landroid/graphics/Bitmap;

    .line 690
    iget-object v2, p0, Lbe/gentgo/tetsuki/GameView;->gobanDimensions:Lbe/gentgo/tetsuki/GobanDimensions;

    const/4 v3, 0x1

    invoke-virtual {v2, v8, v10, v3, v9}, Lbe/gentgo/tetsuki/GobanDimensions;->getPointOfFloatPosition(FFZLandroid/graphics/Point;)V

    .line 691
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lbe/gentgo/tetsuki/GameView;->scrollTo(II)V

    .line 693
    iget-object v2, p0, Lbe/gentgo/tetsuki/GameView;->fullSizeDimensions:Lbe/gentgo/tetsuki/GobanDimensions;

    invoke-virtual {v2}, Lbe/gentgo/tetsuki/GobanDimensions;->getCellWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lbe/gentgo/tetsuki/GameView;->totalViewDimensions:Lbe/gentgo/tetsuki/GobanDimensions;

    invoke-virtual {v3}, Lbe/gentgo/tetsuki/GobanDimensions;->getCellWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 694
    .local v1, "zoom":F
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v3, v1

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 695
    .local v0, "zoomAnimation":Landroid/view/animation/ScaleAnimation;
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameView;->getRight()I

    move-result v2

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameView;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, v9, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    sub-float v11, v2, v3

    .line 696
    .local v11, "tX":F
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameView;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameView;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, v9, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    sub-float v12, v2, v3

    .line 697
    .local v12, "tY":F
    new-instance v13, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v13, v11, v2, v12, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 698
    .local v13, "translateAnimation":Landroid/view/animation/TranslateAnimation;
    new-instance v7, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v7, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 699
    .local v7, "animation":Landroid/view/animation/AnimationSet;
    invoke-virtual {v7, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 700
    invoke-virtual {v7, v13}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 701
    const-wide/16 v2, 0xfa

    invoke-virtual {v7, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 712
    invoke-virtual {p0, v7}, Lbe/gentgo/tetsuki/GameView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 713
    const/4 v2, 0x0

    iput-object v2, p0, Lbe/gentgo/tetsuki/GameView;->pointToZoomOn:Landroid/graphics/Point;

    .line 723
    .end local v0    # "zoomAnimation":Landroid/view/animation/ScaleAnimation;
    .end local v1    # "zoom":F
    .end local v7    # "animation":Landroid/view/animation/AnimationSet;
    .end local v8    # "column":F
    .end local v9    # "p":Landroid/graphics/Point;
    .end local v10    # "row":F
    .end local v11    # "tX":F
    .end local v12    # "tY":F
    .end local v13    # "translateAnimation":Landroid/view/animation/TranslateAnimation;
    :cond_0
    :goto_0
    return-void

    .line 717
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lbe/gentgo/tetsuki/GameView;->setTotalView(Z)V

    .line 718
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lbe/gentgo/tetsuki/GameView;->scrollTo(II)V

    .line 719
    iget-object v2, p0, Lbe/gentgo/tetsuki/GameView;->zoomBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameView;->invalidate()V

    goto :goto_0
.end method
