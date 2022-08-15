.class public Lbe/gentgo/tetsuki/GameSliderView;
.super Landroid/view/View;
.source "GameSliderView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbe/gentgo/tetsuki/GameSliderView$IndexListener;
    }
.end annotation


# instance fields
.field dragging:Z

.field private horizontal:Z

.field listener:Lbe/gentgo/tetsuki/GameSliderView$IndexListener;

.field private maxNumberOfMoves:I

.field private numberOfLabels:I

.field private stepSize:I

.field private thumbHeight:I

.field private thumbIndex:I

.field private thumbWidth:I

.field touchOffset:Landroid/graphics/Point;

.field private touchRadius:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lbe/gentgo/tetsuki/GameSliderView;->listener:Lbe/gentgo/tetsuki/GameSliderView$IndexListener;

    .line 55
    iput v1, p0, Lbe/gentgo/tetsuki/GameSliderView;->thumbIndex:I

    .line 56
    iput v1, p0, Lbe/gentgo/tetsuki/GameSliderView;->maxNumberOfMoves:I

    .line 205
    iput-boolean v1, p0, Lbe/gentgo/tetsuki/GameSliderView;->dragging:Z

    .line 27
    new-instance v0, Lbe/gentgo/tetsuki/GameSliderView$1;

    invoke-direct {v0, p0}, Lbe/gentgo/tetsuki/GameSliderView$1;-><init>(Lbe/gentgo/tetsuki/GameSliderView;)V

    invoke-virtual {p0, v0}, Lbe/gentgo/tetsuki/GameSliderView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 48
    return-void
.end method

.method static synthetic access$0(Lbe/gentgo/tetsuki/GameSliderView;)Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lbe/gentgo/tetsuki/GameSliderView;->horizontal:Z

    return v0
.end method

.method static synthetic access$1(Lbe/gentgo/tetsuki/GameSliderView;)I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lbe/gentgo/tetsuki/GameSliderView;->thumbIndex:I

    return v0
.end method

.method static synthetic access$2(Lbe/gentgo/tetsuki/GameSliderView;)I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lbe/gentgo/tetsuki/GameSliderView;->maxNumberOfMoves:I

    return v0
.end method

.method private updateDimensions()V
    .locals 15

    .prologue
    const/4 v14, 0x3

    const-wide/high16 v12, 0x3ff8000000000000L    # 1.5

    const-wide v10, 0x3fefae147ae147aeL    # 0.99

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    .line 79
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameSliderView;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameSliderView;->getLeft()I

    move-result v5

    sub-int v3, v4, v5

    .line 80
    .local v3, "width":I
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameSliderView;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameSliderView;->getTop()I

    move-result v5

    sub-int v0, v4, v5

    .line 81
    .local v0, "height":I
    if-eqz v3, :cond_0

    if-nez v0, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    if-le v3, v0, :cond_3

    const/4 v4, 0x1

    :goto_1
    iput-boolean v4, p0, Lbe/gentgo/tetsuki/GameSliderView;->horizontal:Z

    .line 84
    iget-boolean v4, p0, Lbe/gentgo/tetsuki/GameSliderView;->horizontal:Z

    if-eqz v4, :cond_4

    move v4, v0

    :goto_2
    int-to-double v4, v4

    const-wide v6, 0x3feb333333333333L    # 0.85

    mul-double/2addr v4, v6

    add-double/2addr v4, v8

    double-to-int v4, v4

    iput v4, p0, Lbe/gentgo/tetsuki/GameSliderView;->thumbWidth:I

    .line 85
    iget v4, p0, Lbe/gentgo/tetsuki/GameSliderView;->thumbWidth:I

    int-to-double v4, v4

    const-wide v6, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v4, v6

    add-double/2addr v4, v8

    double-to-int v4, v4

    iput v4, p0, Lbe/gentgo/tetsuki/GameSliderView;->thumbHeight:I

    .line 86
    iget v4, p0, Lbe/gentgo/tetsuki/GameSliderView;->thumbWidth:I

    int-to-double v4, v4

    mul-double/2addr v4, v12

    add-double/2addr v4, v8

    double-to-int v4, v4

    iput v4, p0, Lbe/gentgo/tetsuki/GameSliderView;->touchRadius:I

    .line 90
    iget-boolean v4, p0, Lbe/gentgo/tetsuki/GameSliderView;->horizontal:Z

    if-eqz v4, :cond_5

    .line 93
    iget v4, p0, Lbe/gentgo/tetsuki/GameSliderView;->thumbWidth:I

    sub-int v2, v3, v4

    .line 101
    .local v2, "space":I
    :goto_3
    int-to-double v4, v2

    iget v6, p0, Lbe/gentgo/tetsuki/GameSliderView;->thumbWidth:I

    int-to-double v6, v6

    mul-double/2addr v6, v12

    div-double/2addr v4, v6

    add-double/2addr v4, v8

    double-to-int v4, v4

    iput v4, p0, Lbe/gentgo/tetsuki/GameSliderView;->numberOfLabels:I

    .line 102
    iget v4, p0, Lbe/gentgo/tetsuki/GameSliderView;->numberOfLabels:I

    if-ge v4, v14, :cond_2

    iput v14, p0, Lbe/gentgo/tetsuki/GameSliderView;->numberOfLabels:I

    .line 104
    :cond_2
    iget v4, p0, Lbe/gentgo/tetsuki/GameSliderView;->maxNumberOfMoves:I

    div-int/lit8 v4, v4, 0xa

    mul-int/lit8 v4, v4, 0xa

    add-int/lit8 v1, v4, 0xa

    .line 106
    .local v1, "max":I
    int-to-float v4, v1

    iget v5, p0, Lbe/gentgo/tetsuki/GameSliderView;->numberOfLabels:I

    add-int/lit8 v5, v5, -0x1

    mul-int/lit8 v5, v5, 0x5

    int-to-float v5, v5

    div-float/2addr v4, v5

    float-to-double v4, v4

    add-double/2addr v4, v10

    double-to-int v4, v4

    mul-int/lit8 v4, v4, 0x5

    iput v4, p0, Lbe/gentgo/tetsuki/GameSliderView;->stepSize:I

    .line 108
    int-to-float v4, v1

    iget v5, p0, Lbe/gentgo/tetsuki/GameSliderView;->stepSize:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    float-to-double v4, v4

    add-double/2addr v4, v10

    double-to-int v4, v4

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lbe/gentgo/tetsuki/GameSliderView;->numberOfLabels:I

    goto :goto_0

    .line 83
    .end local v1    # "max":I
    .end local v2    # "space":I
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    :cond_4
    move v4, v3

    .line 84
    goto :goto_2

    .line 98
    :cond_5
    iget v4, p0, Lbe/gentgo/tetsuki/GameSliderView;->thumbHeight:I

    sub-int v2, v0, v4

    .restart local v2    # "space":I
    goto :goto_3
.end method


# virtual methods
.method public convertRawToLocal(Landroid/graphics/Point;)V
    .locals 5
    .param p1, "p"    # Landroid/graphics/Point;

    .prologue
    .line 211
    move-object v0, p0

    .line 212
    :goto_0
    if-nez v0, :cond_1

    .line 228
    :cond_0
    return-void

    .line 214
    :cond_1
    instance-of v3, v0, Landroid/view/View;

    if-eqz v3, :cond_2

    move-object v1, v0

    .line 216
    check-cast v1, Landroid/view/View;

    .line 217
    .local v1, "view":Landroid/view/View;
    iget v3, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Point;->x:I

    .line 218
    iget v3, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Point;->y:I

    .line 219
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 220
    .local v0, "o":Landroid/view/ViewParent;
    goto :goto_0

    .line 221
    .end local v0    # "o":Landroid/view/ViewParent;
    .end local v1    # "view":Landroid/view/View;
    :cond_2
    instance-of v3, v0, Landroid/view/ViewParent;

    if-eqz v3, :cond_0

    move-object v2, v0

    .line 223
    check-cast v2, Landroid/view/ViewParent;

    .line 224
    .local v2, "vp":Landroid/view/ViewParent;
    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .restart local v0    # "o":Landroid/view/ViewParent;
    goto :goto_0
.end method

.method public indexForPoint(Landroid/graphics/Point;)I
    .locals 8
    .param p1, "p"    # Landroid/graphics/Point;

    .prologue
    .line 143
    iget v3, p0, Lbe/gentgo/tetsuki/GameSliderView;->numberOfLabels:I

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lbe/gentgo/tetsuki/GameSliderView;->stepSize:I

    mul-int/2addr v3, v4

    add-int/lit8 v1, v3, 0x1

    .line 146
    .local v1, "totalMoves":I
    iget-boolean v3, p0, Lbe/gentgo/tetsuki/GameSliderView;->horizontal:Z

    if-eqz v3, :cond_2

    .line 147
    iget v3, p1, Landroid/graphics/Point;->x:I

    iget v4, p0, Lbe/gentgo/tetsuki/GameSliderView;->thumbWidth:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameSliderView;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameSliderView;->getLeft()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, p0, Lbe/gentgo/tetsuki/GameSliderView;->thumbWidth:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 151
    .local v2, "value":F
    :goto_0
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    int-to-float v3, v1

    mul-float/2addr v3, v2

    float-to-double v6, v3

    add-double/2addr v4, v6

    double-to-int v0, v4

    .line 152
    .local v0, "result":I
    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 153
    :cond_0
    iget v3, p0, Lbe/gentgo/tetsuki/GameSliderView;->maxNumberOfMoves:I

    if-le v0, v3, :cond_1

    iget v0, p0, Lbe/gentgo/tetsuki/GameSliderView;->maxNumberOfMoves:I

    .line 155
    :cond_1
    return v0

    .line 149
    .end local v0    # "result":I
    .end local v2    # "value":F
    :cond_2
    iget v3, p1, Landroid/graphics/Point;->y:I

    iget v4, p0, Lbe/gentgo/tetsuki/GameSliderView;->thumbHeight:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameSliderView;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameSliderView;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, p0, Lbe/gentgo/tetsuki/GameSliderView;->thumbHeight:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float v2, v3, v4

    .restart local v2    # "value":F
    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 160
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 161
    .local v3, "indicesPaint":Landroid/graphics/Paint;
    const/16 v8, 0xff

    const/16 v9, 0xdc

    const/16 v10, 0xdc

    const/16 v11, 0xdc

    invoke-virtual {v3, v8, v9, v10, v11}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 162
    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    iget v10, p0, Lbe/gentgo/tetsuki/GameSliderView;->thumbHeight:I

    int-to-double v10, v10

    const-wide v12, 0x3fe4cccccccccccdL    # 0.65

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    double-to-int v8, v8

    int-to-float v8, v8

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 163
    sget-object v8, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 165
    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    iget v10, p0, Lbe/gentgo/tetsuki/GameSliderView;->thumbHeight:I

    int-to-double v10, v10

    const-wide/high16 v12, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    double-to-int v4, v8

    .line 166
    .local v4, "offset":I
    const-wide v8, 0x3fefae147ae147aeL    # 0.99

    iget v10, p0, Lbe/gentgo/tetsuki/GameSliderView;->thumbHeight:I

    int-to-double v10, v10

    const-wide v12, 0x3fa999999999999aL    # 0.05

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    double-to-int v1, v8

    .line 167
    .local v1, "dotRadius":I
    sget-object v8, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 168
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 169
    sget-object v8, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 171
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v8, p0, Lbe/gentgo/tetsuki/GameSliderView;->numberOfLabels:I

    mul-int/lit8 v8, v8, 0x2

    add-int/lit8 v8, v8, -0x1

    if-lt v2, v8, :cond_1

    .line 186
    iget v8, p0, Lbe/gentgo/tetsuki/GameSliderView;->thumbIndex:I

    if-ltz v8, :cond_0

    .line 188
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 190
    .local v6, "thumbFill":Landroid/graphics/Paint;
    const/16 v8, 0x8c

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v6, v8, v9, v10, v11}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 191
    iget v8, p0, Lbe/gentgo/tetsuki/GameSliderView;->thumbIndex:I

    int-to-float v8, v8

    invoke-virtual {p0, v8}, Lbe/gentgo/tetsuki/GameSliderView;->pointForIndex(F)Landroid/graphics/Point;

    move-result-object v0

    .line 192
    .local v0, "center":Landroid/graphics/Point;
    new-instance v5, Landroid/graphics/RectF;

    iget v8, v0, Landroid/graphics/Point;->x:I

    iget v9, p0, Lbe/gentgo/tetsuki/GameSliderView;->thumbWidth:I

    div-int/lit8 v9, v9, 0x2

    sub-int/2addr v8, v9

    int-to-float v8, v8

    iget v9, v0, Landroid/graphics/Point;->y:I

    iget v10, p0, Lbe/gentgo/tetsuki/GameSliderView;->thumbHeight:I

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v9, v10

    int-to-float v9, v9

    iget v10, v0, Landroid/graphics/Point;->x:I

    iget v11, p0, Lbe/gentgo/tetsuki/GameSliderView;->thumbWidth:I

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    int-to-float v10, v10

    iget v11, v0, Landroid/graphics/Point;->y:I

    iget v12, p0, Lbe/gentgo/tetsuki/GameSliderView;->thumbHeight:I

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    int-to-float v11, v11

    invoke-direct {v5, v8, v9, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 193
    .local v5, "thumb":Landroid/graphics/RectF;
    mul-int/lit8 v8, v1, 0x2

    int-to-float v8, v8

    mul-int/lit8 v9, v1, 0x2

    int-to-float v9, v9

    invoke-virtual {p1, v5, v8, v9, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 194
    const/16 v8, 0xff

    const/16 v9, 0xff

    const/16 v10, 0xff

    const/16 v11, 0xff

    invoke-virtual {v3, v8, v9, v10, v11}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 195
    iget v8, p0, Lbe/gentgo/tetsuki/GameSliderView;->thumbIndex:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    iget v9, v0, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    iget v10, v0, Landroid/graphics/Point;->y:I

    add-int/2addr v10, v4

    int-to-float v10, v10

    invoke-virtual {p1, v8, v9, v10, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 196
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameSliderView;->hasFocus()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 197
    sget-object v8, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 198
    const/high16 v8, 0x40400000    # 3.0f

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 199
    const/16 v8, 0xff

    const/16 v9, 0xff

    const/16 v10, 0x58

    const/4 v11, 0x0

    invoke-virtual {v3, v8, v9, v10, v11}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 200
    mul-int/lit8 v8, v1, 0x2

    int-to-float v8, v8

    mul-int/lit8 v9, v1, 0x2

    int-to-float v9, v9

    invoke-virtual {p1, v5, v8, v9, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 203
    .end local v0    # "center":Landroid/graphics/Point;
    .end local v5    # "thumb":Landroid/graphics/RectF;
    .end local v6    # "thumbFill":Landroid/graphics/Paint;
    :cond_0
    return-void

    .line 172
    :cond_1
    iget v8, p0, Lbe/gentgo/tetsuki/GameSliderView;->stepSize:I

    mul-int/2addr v8, v2

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float v7, v8, v9

    .line 174
    .local v7, "value":F
    iget v8, p0, Lbe/gentgo/tetsuki/GameSliderView;->maxNumberOfMoves:I

    int-to-float v8, v8

    cmpl-float v8, v7, v8

    if-lez v8, :cond_2

    const/16 v8, 0x41

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 176
    :cond_2
    invoke-virtual {p0, v7}, Lbe/gentgo/tetsuki/GameSliderView;->pointForIndex(F)Landroid/graphics/Point;

    move-result-object v0

    .line 177
    .restart local v0    # "center":Landroid/graphics/Point;
    rem-int/lit8 v8, v2, 0x2

    if-nez v8, :cond_3

    .line 179
    float-to-int v8, v7

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    iget v9, v0, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    iget v10, v0, Landroid/graphics/Point;->y:I

    add-int/2addr v10, v4

    int-to-float v10, v10

    invoke-virtual {p1, v8, v9, v10, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 171
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 183
    :cond_3
    iget v8, v0, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    iget v9, v0, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    int-to-float v10, v1

    invoke-virtual {p1, v8, v9, v10, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method public onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 114
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 115
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lbe/gentgo/tetsuki/GameSliderView;->updateDimensions()V

    .line 116
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 231
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_2

    .line 232
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 233
    .local v1, "touch":Landroid/graphics/Point;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    float-to-int v4, v4

    iput v4, v1, Landroid/graphics/Point;->x:I

    .line 234
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v4, v4

    iput v4, v1, Landroid/graphics/Point;->y:I

    .line 235
    invoke-virtual {p0, v1}, Lbe/gentgo/tetsuki/GameSliderView;->convertRawToLocal(Landroid/graphics/Point;)V

    .line 237
    iget v4, p0, Lbe/gentgo/tetsuki/GameSliderView;->thumbIndex:I

    int-to-float v4, v4

    invoke-virtual {p0, v4}, Lbe/gentgo/tetsuki/GameSliderView;->pointForIndex(F)Landroid/graphics/Point;

    move-result-object v4

    iput-object v4, p0, Lbe/gentgo/tetsuki/GameSliderView;->touchOffset:Landroid/graphics/Point;

    .line 238
    iget-object v4, p0, Lbe/gentgo/tetsuki/GameSliderView;->touchOffset:Landroid/graphics/Point;

    iget v5, v4, Landroid/graphics/Point;->x:I

    iget v6, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Point;->x:I

    .line 239
    iget-object v4, p0, Lbe/gentgo/tetsuki/GameSliderView;->touchOffset:Landroid/graphics/Point;

    iget v5, v4, Landroid/graphics/Point;->y:I

    iget v6, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Point;->y:I

    .line 240
    iget-object v4, p0, Lbe/gentgo/tetsuki/GameSliderView;->touchOffset:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lbe/gentgo/tetsuki/GameSliderView;->touchRadius:I

    if-le v4, v5, :cond_1

    .line 274
    .end local v1    # "touch":Landroid/graphics/Point;
    :cond_0
    :goto_0
    return v2

    .line 241
    .restart local v1    # "touch":Landroid/graphics/Point;
    :cond_1
    iget-object v4, p0, Lbe/gentgo/tetsuki/GameSliderView;->touchOffset:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lbe/gentgo/tetsuki/GameSliderView;->touchRadius:I

    if-gt v4, v5, :cond_0

    .line 243
    iput-boolean v3, p0, Lbe/gentgo/tetsuki/GameSliderView;->dragging:Z

    move v2, v3

    .line 244
    goto :goto_0

    .line 247
    .end local v1    # "touch":Landroid/graphics/Point;
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    .line 248
    iget-boolean v4, p0, Lbe/gentgo/tetsuki/GameSliderView;->dragging:Z

    if-eqz v4, :cond_0

    .line 250
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 251
    .restart local v1    # "touch":Landroid/graphics/Point;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    float-to-int v4, v4

    iput v4, v1, Landroid/graphics/Point;->x:I

    .line 252
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v4, v4

    iput v4, v1, Landroid/graphics/Point;->y:I

    .line 253
    invoke-virtual {p0, v1}, Lbe/gentgo/tetsuki/GameSliderView;->convertRawToLocal(Landroid/graphics/Point;)V

    .line 255
    iget v4, v1, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lbe/gentgo/tetsuki/GameSliderView;->touchOffset:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    add-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Point;->x:I

    .line 256
    iget v4, v1, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lbe/gentgo/tetsuki/GameSliderView;->touchOffset:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    add-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Point;->y:I

    .line 258
    invoke-virtual {p0, v1}, Lbe/gentgo/tetsuki/GameSliderView;->indexForPoint(Landroid/graphics/Point;)I

    move-result v0

    .line 259
    .local v0, "newIndex":I
    iget v4, p0, Lbe/gentgo/tetsuki/GameSliderView;->thumbIndex:I

    if-eq v0, v4, :cond_3

    .line 261
    iget v4, p0, Lbe/gentgo/tetsuki/GameSliderView;->maxNumberOfMoves:I

    invoke-virtual {p0, v0, v4}, Lbe/gentgo/tetsuki/GameSliderView;->setIndexAndTotal(II)V

    .line 262
    iget-object v4, p0, Lbe/gentgo/tetsuki/GameSliderView;->listener:Lbe/gentgo/tetsuki/GameSliderView$IndexListener;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lbe/gentgo/tetsuki/GameSliderView;->listener:Lbe/gentgo/tetsuki/GameSliderView$IndexListener;

    invoke-interface {v4, v0, v2}, Lbe/gentgo/tetsuki/GameSliderView$IndexListener;->indexChanged(IZ)V

    :cond_3
    move v2, v3

    .line 264
    goto :goto_0

    .line 267
    .end local v0    # "newIndex":I
    .end local v1    # "touch":Landroid/graphics/Point;
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-eq v4, v3, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 269
    :cond_5
    iget-boolean v4, p0, Lbe/gentgo/tetsuki/GameSliderView;->dragging:Z

    if-eqz v4, :cond_0

    .line 270
    iput-boolean v2, p0, Lbe/gentgo/tetsuki/GameSliderView;->dragging:Z

    move v2, v3

    .line 271
    goto :goto_0
.end method

.method public pointForIndex(F)Landroid/graphics/Point;
    .locals 10
    .param p1, "index"    # F

    .prologue
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 121
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameSliderView;->getRight()I

    move-result v5

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameSliderView;->getLeft()I

    move-result v6

    sub-int v4, v5, v6

    .line 122
    .local v4, "width":I
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameSliderView;->getBottom()I

    move-result v5

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameSliderView;->getTop()I

    move-result v6

    sub-int v0, v5, v6

    .line 123
    .local v0, "height":I
    iget v5, p0, Lbe/gentgo/tetsuki/GameSliderView;->numberOfLabels:I

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lbe/gentgo/tetsuki/GameSliderView;->stepSize:I

    mul-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    int-to-float v3, v5

    .line 125
    .local v3, "totalMoves":F
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 127
    .local v1, "result":Landroid/graphics/Point;
    iget-boolean v5, p0, Lbe/gentgo/tetsuki/GameSliderView;->horizontal:Z

    if-eqz v5, :cond_0

    .line 128
    iget v5, p0, Lbe/gentgo/tetsuki/GameSliderView;->thumbWidth:I

    sub-int v5, v4, v5

    int-to-float v2, v5

    .line 129
    .local v2, "space":F
    iget v5, p0, Lbe/gentgo/tetsuki/GameSliderView;->thumbWidth:I

    int-to-double v6, v5

    div-double/2addr v6, v8

    mul-float v5, v2, p1

    div-float/2addr v5, v3

    float-to-double v8, v5

    add-double/2addr v6, v8

    double-to-int v5, v6

    iput v5, v1, Landroid/graphics/Point;->x:I

    .line 130
    div-int/lit8 v5, v0, 0x2

    iput v5, v1, Landroid/graphics/Point;->y:I

    .line 138
    :goto_0
    return-object v1

    .line 134
    .end local v2    # "space":F
    :cond_0
    iget v5, p0, Lbe/gentgo/tetsuki/GameSliderView;->thumbHeight:I

    sub-int v5, v0, v5

    int-to-float v2, v5

    .line 135
    .restart local v2    # "space":F
    div-int/lit8 v5, v4, 0x2

    iput v5, v1, Landroid/graphics/Point;->x:I

    .line 136
    iget v5, p0, Lbe/gentgo/tetsuki/GameSliderView;->thumbWidth:I

    int-to-double v6, v5

    div-double/2addr v6, v8

    mul-float v5, v2, p1

    div-float/2addr v5, v3

    float-to-double v8, v5

    add-double/2addr v6, v8

    double-to-int v5, v6

    iput v5, v1, Landroid/graphics/Point;->y:I

    goto :goto_0
.end method

.method public setIndexAndTotal(II)V
    .locals 1
    .param p1, "i"    # I
    .param p2, "t"    # I

    .prologue
    .line 66
    iget v0, p0, Lbe/gentgo/tetsuki/GameSliderView;->maxNumberOfMoves:I

    if-eq p2, v0, :cond_0

    .line 67
    iput p2, p0, Lbe/gentgo/tetsuki/GameSliderView;->maxNumberOfMoves:I

    .line 68
    invoke-direct {p0}, Lbe/gentgo/tetsuki/GameSliderView;->updateDimensions()V

    .line 69
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameSliderView;->invalidate()V

    .line 71
    :cond_0
    iget v0, p0, Lbe/gentgo/tetsuki/GameSliderView;->thumbIndex:I

    if-eq p1, v0, :cond_1

    .line 72
    iput p1, p0, Lbe/gentgo/tetsuki/GameSliderView;->thumbIndex:I

    .line 73
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/GameSliderView;->invalidate()V

    .line 75
    :cond_1
    return-void
.end method

.method public setListener(Lbe/gentgo/tetsuki/GameSliderView$IndexListener;)V
    .locals 0
    .param p1, "list"    # Lbe/gentgo/tetsuki/GameSliderView$IndexListener;

    .prologue
    .line 51
    iput-object p1, p0, Lbe/gentgo/tetsuki/GameSliderView;->listener:Lbe/gentgo/tetsuki/GameSliderView$IndexListener;

    .line 52
    return-void
.end method
