.class public Lbe/gentgo/tetsuki/IndexView;
.super Landroid/view/View;
.source "IndexView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbe/gentgo/tetsuki/IndexView$OnIndexClickedListener;
    }
.end annotation


# instance fields
.field private cellHeight:I

.field private editingInFocus:Z

.field private indices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lbe/gentgo/tetsuki/IndexView$OnIndexClickedListener;

.field private prevIndex:I

.field private topMargin:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 99
    iput v0, p0, Lbe/gentgo/tetsuki/IndexView;->prevIndex:I

    .line 100
    iput-boolean v0, p0, Lbe/gentgo/tetsuki/IndexView;->editingInFocus:Z

    .line 22
    new-instance v0, Lbe/gentgo/tetsuki/IndexView$1;

    invoke-direct {v0, p0}, Lbe/gentgo/tetsuki/IndexView$1;-><init>(Lbe/gentgo/tetsuki/IndexView;)V

    invoke-virtual {p0, v0}, Lbe/gentgo/tetsuki/IndexView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 54
    new-instance v0, Lbe/gentgo/tetsuki/IndexView$2;

    invoke-direct {v0, p0}, Lbe/gentgo/tetsuki/IndexView$2;-><init>(Lbe/gentgo/tetsuki/IndexView;)V

    invoke-virtual {p0, v0}, Lbe/gentgo/tetsuki/IndexView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 60
    return-void
.end method

.method static synthetic access$0(Lbe/gentgo/tetsuki/IndexView;)Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lbe/gentgo/tetsuki/IndexView;->editingInFocus:Z

    return v0
.end method

.method static synthetic access$1(Lbe/gentgo/tetsuki/IndexView;)I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lbe/gentgo/tetsuki/IndexView;->prevIndex:I

    return v0
.end method

.method static synthetic access$2(Lbe/gentgo/tetsuki/IndexView;I)V
    .locals 0

    .prologue
    .line 99
    iput p1, p0, Lbe/gentgo/tetsuki/IndexView;->prevIndex:I

    return-void
.end method

.method static synthetic access$3(Lbe/gentgo/tetsuki/IndexView;)Lbe/gentgo/tetsuki/IndexView$OnIndexClickedListener;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lbe/gentgo/tetsuki/IndexView;->listener:Lbe/gentgo/tetsuki/IndexView$OnIndexClickedListener;

    return-object v0
.end method

.method static synthetic access$4(Lbe/gentgo/tetsuki/IndexView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lbe/gentgo/tetsuki/IndexView;->indices:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5(Lbe/gentgo/tetsuki/IndexView;Z)V
    .locals 0

    .prologue
    .line 100
    iput-boolean p1, p0, Lbe/gentgo/tetsuki/IndexView;->editingInFocus:Z

    return-void
.end method

.method private update()V
    .locals 4

    .prologue
    const/16 v3, 0x18

    .line 170
    iget-object v1, p0, Lbe/gentgo/tetsuki/IndexView;->indices:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 175
    :goto_0
    return-void

    .line 171
    :cond_0
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/IndexView;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/IndexView;->getTop()I

    move-result v2

    sub-int v0, v1, v2

    .line 172
    .local v0, "height":I
    add-int/lit8 v1, v0, -0x18

    iget-object v2, p0, Lbe/gentgo/tetsuki/IndexView;->indices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    div-int/2addr v1, v2

    iput v1, p0, Lbe/gentgo/tetsuki/IndexView;->cellHeight:I

    .line 173
    iget v1, p0, Lbe/gentgo/tetsuki/IndexView;->cellHeight:I

    if-le v1, v3, :cond_1

    iput v3, p0, Lbe/gentgo/tetsuki/IndexView;->cellHeight:I

    .line 174
    :cond_1
    iget-object v1, p0, Lbe/gentgo/tetsuki/IndexView;->indices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lbe/gentgo/tetsuki/IndexView;->cellHeight:I

    mul-int/2addr v1, v2

    sub-int v1, v0, v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lbe/gentgo/tetsuki/IndexView;->topMargin:I

    goto :goto_0
.end method


# virtual methods
.method public convertRawToLocal(Landroid/graphics/Point;)V
    .locals 5
    .param p1, "p"    # Landroid/graphics/Point;

    .prologue
    .line 80
    move-object v0, p0

    .line 81
    :goto_0
    if-nez v0, :cond_1

    .line 97
    :cond_0
    return-void

    .line 83
    :cond_1
    instance-of v3, v0, Landroid/view/View;

    if-eqz v3, :cond_2

    move-object v1, v0

    .line 85
    check-cast v1, Landroid/view/View;

    .line 86
    .local v1, "view":Landroid/view/View;
    iget v3, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Point;->x:I

    .line 87
    iget v3, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Point;->y:I

    .line 88
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 89
    .local v0, "o":Landroid/view/ViewParent;
    goto :goto_0

    .line 90
    .end local v0    # "o":Landroid/view/ViewParent;
    .end local v1    # "view":Landroid/view/View;
    :cond_2
    instance-of v3, v0, Landroid/view/ViewParent;

    if-eqz v3, :cond_0

    move-object v2, v0

    .line 92
    check-cast v2, Landroid/view/ViewParent;

    .line 93
    .local v2, "vp":Landroid/view/ViewParent;
    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .restart local v0    # "o":Landroid/view/ViewParent;
    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/16 v13, 0x58

    const/4 v12, 0x0

    const/high16 v11, 0x40000000    # 2.0f

    const/16 v10, 0xff

    .line 135
    iget-object v8, p0, Lbe/gentgo/tetsuki/IndexView;->indices:Ljava/util/ArrayList;

    if-nez v8, :cond_1

    .line 167
    :cond_0
    return-void

    .line 136
    :cond_1
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 137
    .local v3, "indexPaint":Landroid/graphics/Paint;
    const/high16 v8, 0x40000000    # 2.0f

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 138
    iget v5, p0, Lbe/gentgo/tetsuki/IndexView;->cellHeight:I

    .line 139
    .local v5, "text":I
    const/16 v8, 0x12

    if-le v5, v8, :cond_2

    const/16 v5, 0x12

    .line 140
    :cond_2
    int-to-float v8, v5

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 141
    sget-object v8, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 142
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 144
    sget-object v8, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 147
    iget-boolean v8, p0, Lbe/gentgo/tetsuki/IndexView;->editingInFocus:Z

    if-eqz v8, :cond_4

    .line 148
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 149
    .local v0, "focusPaint":Landroid/graphics/Paint;
    invoke-virtual {v0, v10, v10, v13, v12}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 154
    :goto_0
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/IndexView;->hasFocus()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-boolean v8, p0, Lbe/gentgo/tetsuki/IndexView;->editingInFocus:Z

    if-nez v8, :cond_3

    .line 155
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/IndexView;->getRight()I

    move-result v8

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/IndexView;->getLeft()I

    move-result v9

    sub-int v6, v8, v9

    .line 156
    .local v6, "width":I
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/IndexView;->getBottom()I

    move-result v8

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/IndexView;->getTop()I

    move-result v9

    sub-int v1, v8, v9

    .line 157
    .local v1, "height":I
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 158
    .local v4, "paint":Landroid/graphics/Paint;
    invoke-virtual {v4, v10, v10, v13, v12}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 159
    sget-object v8, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 160
    const/high16 v8, 0x40400000    # 3.0f

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 161
    new-instance v8, Landroid/graphics/RectF;

    add-int/lit8 v9, v6, -0x4

    int-to-float v9, v9

    add-int/lit8 v10, v1, -0x4

    int-to-float v10, v10

    invoke-direct {v8, v11, v11, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    div-int/lit8 v9, v6, 0x2

    add-int/lit8 v9, v9, -0x2

    int-to-float v9, v9

    div-int/lit8 v10, v6, 0x2

    add-int/lit8 v10, v10, -0x2

    int-to-float v10, v10

    invoke-virtual {p1, v8, v9, v10, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 164
    .end local v1    # "height":I
    .end local v4    # "paint":Landroid/graphics/Paint;
    .end local v6    # "width":I
    :cond_3
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/IndexView;->getRight()I

    move-result v8

    invoke-virtual {p0}, Lbe/gentgo/tetsuki/IndexView;->getLeft()I

    move-result v9

    sub-int/2addr v8, v9

    div-int/lit8 v7, v8, 0x2

    .line 165
    .local v7, "x":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v8, p0, Lbe/gentgo/tetsuki/IndexView;->indices:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_0

    .line 166
    iget-object v8, p0, Lbe/gentgo/tetsuki/IndexView;->indices:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    int-to-float v10, v7

    iget v9, p0, Lbe/gentgo/tetsuki/IndexView;->topMargin:I

    iget v11, p0, Lbe/gentgo/tetsuki/IndexView;->cellHeight:I

    add-int/lit8 v12, v2, 0x1

    mul-int/2addr v11, v12

    add-int/2addr v9, v11

    int-to-float v11, v9

    iget v9, p0, Lbe/gentgo/tetsuki/IndexView;->prevIndex:I

    if-ne v9, v2, :cond_5

    move-object v9, v0

    :goto_2
    invoke-virtual {p1, v8, v10, v11, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 165
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 152
    .end local v0    # "focusPaint":Landroid/graphics/Paint;
    .end local v2    # "i":I
    .end local v7    # "x":I
    :cond_4
    move-object v0, v3

    .restart local v0    # "focusPaint":Landroid/graphics/Paint;
    goto :goto_0

    .restart local v2    # "i":I
    .restart local v7    # "x":I
    :cond_5
    move-object v9, v3

    .line 166
    goto :goto_2
.end method

.method public onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "a"    # I
    .param p3, "b"    # I
    .param p4, "c"    # I
    .param p5, "d"    # I

    .prologue
    .line 129
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 130
    invoke-direct {p0}, Lbe/gentgo/tetsuki/IndexView;->update()V

    .line 131
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 103
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 124
    :goto_0
    :pswitch_0
    const/4 v2, 0x1

    return v2

    .line 107
    :pswitch_1
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 108
    .local v0, "finger":Landroid/graphics/Point;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 109
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Point;->y:I

    .line 110
    invoke-virtual {p0, v0}, Lbe/gentgo/tetsuki/IndexView;->convertRawToLocal(Landroid/graphics/Point;)V

    .line 111
    iget v2, v0, Landroid/graphics/Point;->y:I

    iget v3, p0, Lbe/gentgo/tetsuki/IndexView;->topMargin:I

    sub-int/2addr v2, v3

    iget v3, p0, Lbe/gentgo/tetsuki/IndexView;->cellHeight:I

    div-int v1, v2, v3

    .line 112
    .local v1, "index":I
    if-gez v1, :cond_0

    const/4 v1, 0x0

    .line 113
    :cond_0
    iget-object v2, p0, Lbe/gentgo/tetsuki/IndexView;->indices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    iget-object v2, p0, Lbe/gentgo/tetsuki/IndexView;->indices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 114
    :cond_1
    iget v2, p0, Lbe/gentgo/tetsuki/IndexView;->prevIndex:I

    if-eq v1, v2, :cond_2

    .line 115
    iget-object v2, p0, Lbe/gentgo/tetsuki/IndexView;->listener:Lbe/gentgo/tetsuki/IndexView$OnIndexClickedListener;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lbe/gentgo/tetsuki/IndexView;->listener:Lbe/gentgo/tetsuki/IndexView$OnIndexClickedListener;

    invoke-virtual {v2, v1}, Lbe/gentgo/tetsuki/IndexView$OnIndexClickedListener;->onIndexClicked(I)V

    .line 116
    :cond_2
    iput v1, p0, Lbe/gentgo/tetsuki/IndexView;->prevIndex:I

    goto :goto_0

    .line 103
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setIndices(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, "i":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lbe/gentgo/tetsuki/IndexView;->indices:Ljava/util/ArrayList;

    .line 64
    invoke-direct {p0}, Lbe/gentgo/tetsuki/IndexView;->update()V

    .line 65
    invoke-virtual {p0}, Lbe/gentgo/tetsuki/IndexView;->invalidate()V

    .line 66
    return-void
.end method

.method public setOnIndexClickedListener(Lbe/gentgo/tetsuki/IndexView$OnIndexClickedListener;)V
    .locals 0
    .param p1, "l"    # Lbe/gentgo/tetsuki/IndexView$OnIndexClickedListener;

    .prologue
    .line 72
    iput-object p1, p0, Lbe/gentgo/tetsuki/IndexView;->listener:Lbe/gentgo/tetsuki/IndexView$OnIndexClickedListener;

    return-void
.end method
