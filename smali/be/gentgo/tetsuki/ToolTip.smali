.class public Lbe/gentgo/tetsuki/ToolTip;
.super Landroid/view/View;
.source "ToolTip.java"


# instance fields
.field private above:Z

.field private bg:Landroid/graphics/Paint;

.field private pinSizeDP:F

.field private pinX:F

.field private radiusDP:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x1

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    iput-boolean v5, p0, Lbe/gentgo/tetsuki/ToolTip;->above:Z

    .line 32
    const/high16 v0, 0x41300000    # 11.0f

    iput v0, p0, Lbe/gentgo/tetsuki/ToolTip;->pinSizeDP:F

    .line 33
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lbe/gentgo/tetsuki/ToolTip;->pinX:F

    .line 34
    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lbe/gentgo/tetsuki/ToolTip;->radiusDP:F

    .line 23
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lbe/gentgo/tetsuki/ToolTip;->bg:Landroid/graphics/Paint;

    .line 24
    iget-object v0, p0, Lbe/gentgo/tetsuki/ToolTip;->bg:Landroid/graphics/Paint;

    const/16 v1, 0xf5

    const/16 v2, 0x1f

    const/16 v3, 0x99

    const/16 v4, 0xed

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 25
    iget-object v0, p0, Lbe/gentgo/tetsuki/ToolTip;->bg:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 26
    iget-object v0, p0, Lbe/gentgo/tetsuki/ToolTip;->bg:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 27
    return-void
.end method

.method public static show(Ljava/lang/String;Landroid/app/Activity;Landroid/view/View;)V
    .locals 24
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "relative"    # Landroid/view/View;

    .prologue
    .line 77
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 78
    .local v10, "rect":Landroid/graphics/Rect;
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 80
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v19, v0

    .line 81
    .local v19, "viewLocation":[I
    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 82
    const/16 v22, 0x0

    aget v22, v19, v22

    iget v0, v10, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    sub-int v18, v22, v23

    .line 83
    .local v18, "viewLeft":I
    const/16 v22, 0x1

    aget v22, v19, v22

    iget v0, v10, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    sub-int v20, v22, v23

    .line 85
    .local v20, "viewTop":I
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    .line 86
    .local v5, "inflator":Landroid/view/LayoutInflater;
    const v22, 0x7f03002d

    const/16 v23, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v5, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 87
    .local v6, "layout":Landroid/view/View;
    const v22, 0x7f0b00e4

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 88
    .local v11, "text":Landroid/widget/TextView;
    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    new-instance v12, Landroid/widget/Toast;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 90
    .local v12, "toast":Landroid/widget/Toast;
    invoke-virtual {v12, v6}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 96
    :try_start_0
    new-instance v8, Landroid/util/DisplayMetrics;

    invoke-direct {v8}, Landroid/util/DisplayMetrics;-><init>()V

    .line 97
    .local v8, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 98
    iget v0, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v22, v0

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    .line 99
    .local v21, "widthMeasureSpec":I
    iget v0, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v22, v0

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 100
    .local v4, "heightMeasureSpec":I
    invoke-virtual {v12}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1, v4}, Landroid/view/View;->measure(II)V

    .line 101
    invoke-virtual {v12}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    .line 102
    .local v14, "toastWidth":I
    invoke-virtual {v12}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getMeasuredHeight()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    .line 108
    .local v13, "toastHeight":I
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v22

    sub-int v22, v22, v20

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v23

    sub-int v22, v22, v23

    move/from16 v0, v20

    move/from16 v1, v22

    if-le v0, v1, :cond_2

    const/4 v2, 0x1

    .line 110
    .local v2, "above":Z
    :goto_0
    if-eqz v2, :cond_3

    sub-int v22, v20, v13

    add-int/lit8 v16, v22, 0xc

    .line 112
    .local v16, "toastY":I
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v22

    div-int/lit8 v22, v22, 0x2

    add-int v22, v22, v18

    div-int/lit8 v23, v14, 0x2

    sub-int v15, v22, v23

    .line 113
    .local v15, "toastX":I
    const/16 v22, 0x6

    move/from16 v0, v22

    if-ge v15, v0, :cond_0

    const/4 v15, 0x6

    .line 114
    :cond_0
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v22

    sub-int v22, v22, v14

    add-int/lit8 v7, v22, -0x6

    .line 115
    .local v7, "maxX":I
    if-le v15, v7, :cond_1

    move v15, v7

    .line 117
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v22

    div-int/lit8 v22, v22, 0x2

    add-int v22, v22, v18

    sub-int v9, v22, v15

    .line 119
    .local v9, "pinX":I
    const v22, 0x7f0b00e3

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lbe/gentgo/tetsuki/ToolTip;

    .line 120
    .local v17, "tooltip":Lbe/gentgo/tetsuki/ToolTip;
    int-to-float v0, v9

    move/from16 v22, v0

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lbe/gentgo/tetsuki/ToolTip;->setPin(FZ)V

    .line 122
    const/16 v22, 0x33

    move/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v12, v0, v15, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 123
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/widget/Toast;->setDuration(I)V

    .line 124
    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    .line 125
    .end local v2    # "above":Z
    .end local v4    # "heightMeasureSpec":I
    .end local v7    # "maxX":I
    .end local v8    # "metrics":Landroid/util/DisplayMetrics;
    .end local v9    # "pinX":I
    .end local v13    # "toastHeight":I
    .end local v14    # "toastWidth":I
    .end local v15    # "toastX":I
    .end local v16    # "toastY":I
    .end local v17    # "tooltip":Lbe/gentgo/tetsuki/ToolTip;
    .end local v21    # "widthMeasureSpec":I
    :goto_2
    return-void

    .line 103
    :catch_0
    move-exception v3

    .line 104
    .local v3, "e":Ljava/lang/Exception;
    goto :goto_2

    .line 108
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v4    # "heightMeasureSpec":I
    .restart local v8    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v13    # "toastHeight":I
    .restart local v14    # "toastWidth":I
    .restart local v21    # "widthMeasureSpec":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 110
    .restart local v2    # "above":Z
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v22

    add-int v22, v22, v20

    add-int/lit8 v16, v22, -0xc

    goto :goto_1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    const/high16 v11, 0x42b40000    # 90.0f

    const/high16 v10, 0x40000000    # 2.0f

    .line 45
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/ToolTip;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    iget v8, p0, Lbe/gentgo/tetsuki/ToolTip;->pinSizeDP:F

    mul-float/2addr v7, v8

    float-to-int v3, v7

    .line 46
    .local v3, "pinSize":I
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/ToolTip;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    iget v8, p0, Lbe/gentgo/tetsuki/ToolTip;->radiusDP:F

    mul-float v4, v7, v8

    .line 48
    .local v4, "radius":F
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/ToolTip;->getRight()I

    move-result v7

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/ToolTip;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v6, v7

    .line 49
    .local v6, "width":F
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/ToolTip;->getBottom()I

    move-result v7

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/ToolTip;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v2, v7

    .line 51
    .local v2, "height":F
    int-to-float v5, v3

    .line 52
    .local v5, "top":F
    int-to-float v7, v3

    sub-float v0, v2, v7

    .line 54
    .local v0, "bottom":F
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 55
    .local v1, "bubble":Landroid/graphics/Path;
    new-instance v7, Landroid/graphics/RectF;

    mul-float v8, v10, v4

    mul-float v9, v10, v4

    add-float/2addr v9, v5

    invoke-direct {v7, v12, v5, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v8, 0x43340000    # 180.0f

    const/4 v9, 0x1

    invoke-virtual {v1, v7, v8, v11, v9}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 56
    iget-boolean v7, p0, Lbe/gentgo/tetsuki/ToolTip;->above:Z

    if-nez v7, :cond_0

    .line 57
    iget v7, p0, Lbe/gentgo/tetsuki/ToolTip;->pinX:F

    int-to-float v8, v3

    sub-float/2addr v7, v8

    invoke-virtual {v1, v7, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 58
    iget v7, p0, Lbe/gentgo/tetsuki/ToolTip;->pinX:F

    int-to-float v8, v3

    sub-float v8, v5, v8

    invoke-virtual {v1, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 59
    iget v7, p0, Lbe/gentgo/tetsuki/ToolTip;->pinX:F

    int-to-float v8, v3

    add-float/2addr v7, v8

    invoke-virtual {v1, v7, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 61
    :cond_0
    new-instance v7, Landroid/graphics/RectF;

    mul-float v8, v10, v4

    sub-float v8, v6, v8

    mul-float v9, v10, v4

    add-float/2addr v9, v5

    invoke-direct {v7, v8, v5, v6, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v8, 0x43870000    # 270.0f

    invoke-virtual {v1, v7, v8, v11, v13}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 62
    new-instance v7, Landroid/graphics/RectF;

    mul-float v8, v10, v4

    sub-float v8, v6, v8

    mul-float v9, v10, v4

    sub-float v9, v0, v9

    invoke-direct {v7, v8, v9, v6, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, v7, v12, v11, v13}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 63
    iget-boolean v7, p0, Lbe/gentgo/tetsuki/ToolTip;->above:Z

    if-eqz v7, :cond_1

    .line 64
    iget v7, p0, Lbe/gentgo/tetsuki/ToolTip;->pinX:F

    int-to-float v8, v3

    add-float/2addr v7, v8

    invoke-virtual {v1, v7, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 65
    iget v7, p0, Lbe/gentgo/tetsuki/ToolTip;->pinX:F

    int-to-float v8, v3

    add-float/2addr v8, v0

    invoke-virtual {v1, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 66
    iget v7, p0, Lbe/gentgo/tetsuki/ToolTip;->pinX:F

    int-to-float v8, v3

    sub-float/2addr v7, v8

    invoke-virtual {v1, v7, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 68
    :cond_1
    new-instance v7, Landroid/graphics/RectF;

    mul-float v8, v10, v4

    sub-float v8, v0, v8

    mul-float v9, v10, v4

    invoke-direct {v7, v12, v8, v9, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, v7, v11, v11, v13}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 69
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 71
    iget-object v7, p0, Lbe/gentgo/tetsuki/ToolTip;->bg:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 72
    return-void
.end method

.method public setPin(FZ)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "pointingDown"    # Z

    .prologue
    .line 39
    iput-boolean p2, p0, Lbe/gentgo/tetsuki/ToolTip;->above:Z

    .line 40
    iput p1, p0, Lbe/gentgo/tetsuki/ToolTip;->pinX:F

    .line 41
    return-void
.end method
