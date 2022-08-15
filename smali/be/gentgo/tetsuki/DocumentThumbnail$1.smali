.class Lbe/gentgo/tetsuki/DocumentThumbnail$1;
.super Ljava/lang/Object;
.source "DocumentThumbnail.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbe/gentgo/tetsuki/DocumentThumbnail;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbe/gentgo/tetsuki/DocumentThumbnail;


# direct methods
.method constructor <init>(Lbe/gentgo/tetsuki/DocumentThumbnail;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbe/gentgo/tetsuki/DocumentThumbnail$1;->this$0:Lbe/gentgo/tetsuki/DocumentThumbnail;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 30

    .prologue
    .line 17
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/DocumentThumbnail$1;->this$0:Lbe/gentgo/tetsuki/DocumentThumbnail;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lbe/gentgo/tetsuki/DocumentThumbnail;->getRight()I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/DocumentThumbnail$1;->this$0:Lbe/gentgo/tetsuki/DocumentThumbnail;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lbe/gentgo/tetsuki/DocumentThumbnail;->getLeft()I

    move-result v27

    sub-int v22, v26, v27

    .line 18
    .local v22, "width":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/DocumentThumbnail$1;->this$0:Lbe/gentgo/tetsuki/DocumentThumbnail;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lbe/gentgo/tetsuki/DocumentThumbnail;->getBottom()I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/DocumentThumbnail$1;->this$0:Lbe/gentgo/tetsuki/DocumentThumbnail;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lbe/gentgo/tetsuki/DocumentThumbnail;->getTop()I

    move-result v27

    sub-int v11, v26, v27

    .line 20
    .local v11, "height":I
    if-nez v22, :cond_0

    .line 73
    :goto_0
    return-void

    .line 22
    :cond_0
    const/16 v20, 0x3

    .line 23
    .local v20, "stone":I
    const/16 v26, 0x4c

    move/from16 v0, v22

    move/from16 v1, v26

    if-lt v0, v1, :cond_1

    const/16 v26, 0x4c

    move/from16 v0, v26

    if-lt v11, v0, :cond_1

    const/16 v20, 0x4

    .line 24
    :cond_1
    const/16 v26, 0x61

    move/from16 v0, v22

    move/from16 v1, v26

    if-lt v0, v1, :cond_2

    const/16 v26, 0x61

    move/from16 v0, v26

    if-lt v11, v0, :cond_2

    const/16 v20, 0x5

    .line 25
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/DocumentThumbnail$1;->this$0:Lbe/gentgo/tetsuki/DocumentThumbnail;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lbe/gentgo/tetsuki/DocumentThumbnail;->board:Lbe/gentgo/tetsuki/Goban;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lbe/gentgo/tetsuki/Goban;->getNrOfRows()I

    move-result v19

    .line 26
    .local v19, "size":I
    mul-int v26, v20, v19

    sub-int v26, v22, v26

    div-int/lit8 v15, v26, 0x2

    .line 28
    .local v15, "margin":I
    sget-object v26, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v22

    move-object/from16 v1, v26

    invoke-static {v0, v11, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 29
    .local v13, "image":Landroid/graphics/Bitmap;
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v13}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 32
    .local v8, "canvas":Landroid/graphics/Canvas;
    new-instance v23, Landroid/graphics/Paint;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/Paint;-><init>()V

    .line 33
    .local v23, "wood":Landroid/graphics/Paint;
    const/16 v26, 0xff

    const/16 v27, 0xe5

    const/16 v28, 0xa5

    const/16 v29, 0x59

    move-object/from16 v0, v23

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 34
    new-instance v18, Landroid/graphics/Rect;

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 35
    .local v18, "rect":Landroid/graphics/Rect;
    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 37
    add-int/lit8 v26, v20, -0x1

    div-int/lit8 v26, v26, 0x2

    add-int v6, v15, v26

    .line 38
    .local v6, "begin":I
    add-int/lit8 v26, v19, -0x1

    mul-int v26, v26, v20

    add-int v26, v26, v6

    add-int/lit8 v10, v26, 0x1

    .line 40
    .local v10, "end":I
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    .line 41
    .local v14, "line":Landroid/graphics/Paint;
    const/16 v26, 0x33

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 43
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    move/from16 v0, v19

    if-lt v12, v0, :cond_3

    .line 51
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 52
    .local v7, "black":Landroid/graphics/Paint;
    new-instance v21, Landroid/graphics/Paint;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Paint;-><init>()V

    .line 53
    .local v21, "white":Landroid/graphics/Paint;
    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 54
    const/16 v26, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 55
    const/16 v26, 0xff

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 56
    const/16 v26, 0xff

    const/16 v27, 0xff

    const/16 v28, 0xff

    const/16 v29, 0xff

    move-object/from16 v0, v21

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 57
    new-instance v16, Lbe/gentgo/tetsuki/Position;

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lbe/gentgo/tetsuki/Position;-><init>(II)V

    .line 58
    .local v16, "pos":Lbe/gentgo/tetsuki/Position;
    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide v28, 0x3fdccccccccccccdL    # 0.45

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v17, v0

    .line 59
    .local v17, "radius":F
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v16

    iput v0, v1, Lbe/gentgo/tetsuki/Position;->row:I

    :goto_2
    move-object/from16 v0, v16

    iget v0, v0, Lbe/gentgo/tetsuki/Position;->row:I

    move/from16 v26, v0

    move/from16 v0, v26

    move/from16 v1, v19

    if-lt v0, v1, :cond_4

    .line 72
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/DocumentThumbnail$1;->this$0:Lbe/gentgo/tetsuki/DocumentThumbnail;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Lbe/gentgo/tetsuki/DocumentThumbnail;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 45
    .end local v7    # "black":Landroid/graphics/Paint;
    .end local v16    # "pos":Lbe/gentgo/tetsuki/Position;
    .end local v17    # "radius":F
    .end local v21    # "white":Landroid/graphics/Paint;
    :cond_3
    new-instance v18, Landroid/graphics/Rect;

    .end local v18    # "rect":Landroid/graphics/Rect;
    mul-int v26, v12, v20

    add-int v26, v26, v6

    mul-int v27, v12, v20

    add-int v27, v27, v6

    add-int/lit8 v27, v27, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v6, v1, v10, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 46
    .restart local v18    # "rect":Landroid/graphics/Rect;
    move-object/from16 v0, v18

    invoke-virtual {v8, v0, v14}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 47
    new-instance v18, Landroid/graphics/Rect;

    .end local v18    # "rect":Landroid/graphics/Rect;
    mul-int v26, v12, v20

    add-int v26, v26, v6

    mul-int v27, v12, v20

    add-int v27, v27, v6

    add-int/lit8 v27, v27, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v6, v2, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 48
    .restart local v18    # "rect":Landroid/graphics/Rect;
    move-object/from16 v0, v18

    invoke-virtual {v8, v0, v14}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 43
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 61
    .restart local v7    # "black":Landroid/graphics/Paint;
    .restart local v16    # "pos":Lbe/gentgo/tetsuki/Position;
    .restart local v17    # "radius":F
    .restart local v21    # "white":Landroid/graphics/Paint;
    :cond_4
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v16

    iput v0, v1, Lbe/gentgo/tetsuki/Position;->column:I

    :goto_3
    move-object/from16 v0, v16

    iget v0, v0, Lbe/gentgo/tetsuki/Position;->column:I

    move/from16 v26, v0

    move/from16 v0, v26

    move/from16 v1, v19

    if-lt v0, v1, :cond_5

    .line 59
    move-object/from16 v0, v16

    iget v0, v0, Lbe/gentgo/tetsuki/Position;->row:I

    move/from16 v26, v0

    add-int/lit8 v26, v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v16

    iput v0, v1, Lbe/gentgo/tetsuki/Position;->row:I

    goto :goto_2

    .line 63
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lbe/gentgo/tetsuki/DocumentThumbnail$1;->this$0:Lbe/gentgo/tetsuki/DocumentThumbnail;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lbe/gentgo/tetsuki/DocumentThumbnail;->board:Lbe/gentgo/tetsuki/Goban;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lbe/gentgo/tetsuki/Goban;->getState(Lbe/gentgo/tetsuki/Position;)I

    move-result v9

    .line 64
    .local v9, "color":I
    if-eqz v9, :cond_6

    .line 65
    move-object/from16 v0, v16

    iget v0, v0, Lbe/gentgo/tetsuki/Position;->column:I

    move/from16 v26, v0

    mul-int v26, v26, v20

    add-int v26, v26, v6

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    const/high16 v27, 0x3f000000    # 0.5f

    add-float v24, v26, v27

    .line 66
    .local v24, "x":F
    move-object/from16 v0, v16

    iget v0, v0, Lbe/gentgo/tetsuki/Position;->row:I

    move/from16 v26, v0

    mul-int v26, v26, v20

    sub-int v26, v10, v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    const/high16 v27, 0x3f000000    # 0.5f

    sub-float v25, v26, v27

    .line 67
    .local v25, "y":F
    const/16 v26, 0x1

    move/from16 v0, v26

    if-ne v9, v0, :cond_7

    move-object/from16 v26, v7

    :goto_4
    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v17

    move-object/from16 v3, v26

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 61
    .end local v24    # "x":F
    .end local v25    # "y":F
    :cond_6
    move-object/from16 v0, v16

    iget v0, v0, Lbe/gentgo/tetsuki/Position;->column:I

    move/from16 v26, v0

    add-int/lit8 v26, v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v16

    iput v0, v1, Lbe/gentgo/tetsuki/Position;->column:I

    goto :goto_3

    .restart local v24    # "x":F
    .restart local v25    # "y":F
    :cond_7
    move-object/from16 v26, v21

    .line 67
    goto :goto_4
.end method
