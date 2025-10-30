.class public Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;
.super Landroid/view/View;
.source "ZoomLineView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView$UpdateListener;
    }
.end annotation


# static fields
.field public static final GRAY_OUT_ALPHA:F = 0.4f

.field public static final TAG:Ljava/lang/String; = "ZoomLineView"

.field public static final VISIBLE_ALPHA:F = 1.0f

.field private static final zoomPointRect:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Float;",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field largest_rect_margin:F

.field private mCurrentZoomValue:F

.field private mIsGray:Z

.field private mIsZoomLineEnabled:Z

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPaintCircle:Landroid/graphics/Paint;

.field private final mPaintRect:Landroid/graphics/Paint;

.field private final mPaintText:Landroid/graphics/Paint;

.field private mViewHeight:F

.field private mViewWidth:F

.field private modeOne:Z

.field orientation:I

.field scaledDensityLargest:Z

.field text_rect_margin:F

.field tvSize:F

.field private updateListener:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView$UpdateListener;

.field private zoomAssistDetail:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->zoomPointRect:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8

    .line 84
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 42
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mViewWidth:F

    .line 43
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mViewHeight:F

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->modeOne:Z

    .line 48
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mPaint:Landroid/graphics/Paint;

    .line 49
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mPaintText:Landroid/graphics/Paint;

    .line 50
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mPaintRect:Landroid/graphics/Paint;

    .line 51
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mPaintCircle:Landroid/graphics/Paint;

    .line 53
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0702a0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->tvSize:F

    .line 54
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0702a1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->largest_rect_margin:F

    .line 55
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0702a3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->text_rect_margin:F

    const/4 v1, 0x0

    .line 66
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mIsZoomLineEnabled:Z

    .line 68
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mIsGray:Z

    const/high16 v2, 0x3f800000    # 1.0f

    .line 70
    iput v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mCurrentZoomValue:F

    .line 122
    iput v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->orientation:I

    .line 85
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->scaledDensity:F

    float-to-double v2, v2

    const-wide v4, 0x400a666666666666L    # 3.3

    cmpl-double v2, v2, v4

    if-lez v2, :cond_6e

    goto :goto_6f

    :cond_6e
    move v0, v1

    :goto_6f
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->scaledDensityLargest:Z

    .line 87
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600a0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0702a2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    const/high16 v3, -0x1000000

    invoke-virtual {v0, v1, p1, p1, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 89
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0702a4

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 90
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 91
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mPaintCircle:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 92
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mPaintCircle:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 93
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mPaintCircle:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07027c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 94
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 95
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mPaintText:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 96
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mPaintCircle:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1, p1, p1, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 97
    new-instance p1, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView$1;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView$1;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;)V

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;)Z
    .registers 1

    .line 35
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mIsGray:Z

    return p0
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;)F
    .registers 1

    .line 35
    iget p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mCurrentZoomValue:F

    return p0
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;)Ljava/lang/String;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->zoomAssistDetail:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 35
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->zoomAssistDetail:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;)Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView$UpdateListener;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->updateListener:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView$UpdateListener;

    return-object p0
.end method

.method private drawZoomLine(Landroid/graphics/Canvas;)V
    .registers 8

    .line 173
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->modeOne:Z

    if-eqz v0, :cond_2f

    const/4 v0, 0x2

    .line 174
    new-array v0, v0, [F

    fill-array-data v0, :array_30

    .line 175
    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->zoomPointRect:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 176
    array-length v1, v0

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v1, :cond_2f

    aget v3, v0, v2

    .line 177
    iget v4, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mCurrentZoomValue:F

    const/high16 v5, 0x40000000    # 2.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_22

    cmpl-float v4, v3, v5

    if-lez v4, :cond_22

    goto :goto_2c

    .line 179
    :cond_22
    iget v4, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mCurrentZoomValue:F

    invoke-direct {p0, p1, v4, v3}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->drawZoomLineOne(Landroid/graphics/Canvas;FF)V

    .line 180
    iget v4, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mCurrentZoomValue:F

    invoke-direct {p0, p1, v4, v3}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->drawZoomValueOne(Landroid/graphics/Canvas;FF)V

    :goto_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_2f
    return-void

    :array_30
    .array-data 4
        0x40a00000    # 5.0f
        0x40000000    # 2.0f
    .end array-data
.end method

.method private drawZoomLineOne(Landroid/graphics/Canvas;FF)V
    .registers 12

    mul-float v0, p2, p3

    const/high16 v1, 0x40a00000    # 5.0f

    cmpl-float p2, p2, v1

    if-lez p2, :cond_9

    return-void

    .line 222
    :cond_9
    iget p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mViewWidth:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, p2, v1

    div-float v3, p2, v1

    div-float/2addr v3, p3

    sub-float/2addr v2, v3

    .line 223
    iget v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mViewHeight:F

    div-float v4, v3, v1

    div-float v5, v3, v1

    div-float/2addr v5, p3

    sub-float/2addr v4, v5

    div-float v5, p2, v1

    div-float/2addr p2, v1

    div-float/2addr p2, p3

    add-float/2addr v5, p2

    div-float p2, v3, v1

    div-float/2addr v3, v1

    div-float/2addr v3, p3

    add-float/2addr p2, v3

    .line 226
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "x"

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 228
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mPaintText:Landroid/graphics/Paint;

    iget v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->tvSize:F

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 229
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 230
    iget v3, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    .line 231
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 232
    iget-object p3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mPaintText:Landroid/graphics/Paint;

    const-string v0, "x9.9"

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p3

    .line 234
    iget v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->orientation:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_a4

    .line 235
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 236
    iget-boolean v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->scaledDensityLargest:Z

    if-eqz v3, :cond_84

    .line 237
    iget v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->largest_rect_margin:F

    sub-float v3, p2, v3

    div-float v6, p3, v1

    add-float/2addr v3, v6

    iget v6, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->text_rect_margin:F

    add-float/2addr v3, v6

    .line 238
    invoke-virtual {v0, v5, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 239
    invoke-virtual {v0, v5, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 240
    invoke-virtual {v0, v2, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 241
    invoke-virtual {v0, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 242
    invoke-virtual {v0, v5, v4}, Landroid/graphics/Path;->lineTo(FF)V

    sub-float/2addr v3, p3

    .line 243
    iget v6, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->text_rect_margin:F

    mul-float/2addr v6, v1

    sub-float/2addr v3, v6

    invoke-virtual {v0, v5, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_9f

    :cond_84
    div-float v3, p3, v1

    sub-float v6, v5, v3

    .line 246
    iget v7, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->text_rect_margin:F

    sub-float/2addr v6, v7

    invoke-virtual {v0, v6, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 247
    invoke-virtual {v0, v2, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 248
    invoke-virtual {v0, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 249
    invoke-virtual {v0, v5, v4}, Landroid/graphics/Path;->lineTo(FF)V

    sub-float v3, p2, v3

    .line 250
    iget v6, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->text_rect_margin:F

    sub-float/2addr v3, v6

    invoke-virtual {v0, v5, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 252
    :goto_9f
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 254
    :cond_a4
    iget v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->orientation:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_f3

    .line 255
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 256
    iget-boolean v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->scaledDensityLargest:Z

    if-eqz v3, :cond_d5

    div-float/2addr p3, v1

    sub-float v1, p2, p3

    .line 257
    iget v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->text_rect_margin:F

    sub-float/2addr v1, v3

    iget v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->largest_rect_margin:F

    sub-float/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 258
    invoke-virtual {v0, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 259
    invoke-virtual {v0, v5, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 260
    invoke-virtual {v0, v5, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 261
    invoke-virtual {v0, v2, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 262
    iget v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->largest_rect_margin:F

    sub-float/2addr p2, v1

    add-float/2addr p2, p3

    iget p3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->text_rect_margin:F

    add-float/2addr p2, p3

    invoke-virtual {v0, v2, p2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_ee

    :cond_d5
    div-float/2addr p3, v1

    sub-float v1, p2, p3

    .line 264
    iget v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->text_rect_margin:F

    sub-float/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 265
    invoke-virtual {v0, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 266
    invoke-virtual {v0, v5, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 267
    invoke-virtual {v0, v5, p2}, Landroid/graphics/Path;->lineTo(FF)V

    add-float/2addr v2, p3

    .line 268
    iget p3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->text_rect_margin:F

    add-float/2addr v2, p3

    invoke-virtual {v0, v2, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 270
    :goto_ee
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_f3
    return-void
.end method

.method private drawZoomValueOne(Landroid/graphics/Canvas;FF)V
    .registers 25
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    mul-float v8, p2, p3

    const/high16 v1, 0x40a00000    # 5.0f

    cmpl-float v1, p2, v1

    if-lez v1, :cond_d

    return-void

    :cond_d
    const-string v1, "x%.1f"

    const/4 v2, 0x1

    .line 282
    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/high16 v3, 0x3f800000    # 1.0f

    rem-float v3, v8, v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_37

    const-string v1, "x%d"

    .line 284
    new-array v3, v2, [Ljava/lang/Object;

    float-to-int v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v9, v1

    goto :goto_38

    :cond_37
    move-object v9, v1

    .line 287
    :goto_38
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mPaintText:Landroid/graphics/Paint;

    iget v3, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->tvSize:F

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 288
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    .line 295
    iget v3, v1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v10, v3, v1

    .line 296
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v11

    .line 297
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mPaintText:Landroid/graphics/Paint;

    const-string v3, "x9.9"

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v12

    .line 299
    iget v1, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mViewWidth:F

    const/high16 v13, 0x40000000    # 2.0f

    div-float v3, v1, v13

    div-float v4, v1, v13

    div-float v4, v4, p3

    add-float v14, v3, v4

    .line 300
    iget v3, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mViewHeight:F

    div-float v4, v3, v13

    div-float/2addr v3, v13

    div-float v3, v3, p3

    add-float v15, v4, v3

    div-float v3, v1, v13

    div-float/2addr v1, v13

    div-float v1, v1, p3

    sub-float v6, v3, v1

    .line 302
    iget v1, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->orientation:I

    const/high16 v16, 0x40800000    # 4.0f

    if-ne v1, v2, :cond_18e

    .line 304
    iget-boolean v1, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->scaledDensityLargest:Z

    if-eqz v1, :cond_117

    div-float v1, v11, v13

    sub-float v2, v14, v1

    sub-float v1, v15, v1

    .line 307
    new-instance v3, Landroid/graphics/RectF;

    iget v13, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->text_rect_margin:F

    sub-float v4, v2, v13

    sub-float/2addr v1, v13

    iget v5, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->largest_rect_margin:F

    sub-float/2addr v1, v5

    add-float v18, v14, v11

    move/from16 v19, v6

    add-float v6, v18, v13

    add-float v18, v15, v11

    add-float v18, v18, v13

    sub-float v5, v18, v5

    invoke-direct {v3, v4, v1, v6, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 310
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mPaintRect:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060029

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 311
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mPaintRect:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 312
    iget v1, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->largest_rect_margin:F

    sub-float v1, v15, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float v13, v12, v4

    iget v4, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->text_rect_margin:F

    add-float/2addr v4, v13

    iget-object v5, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mPaintRect:Landroid/graphics/Paint;

    invoke-virtual {v7, v14, v1, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 313
    iget v1, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->largest_rect_margin:F

    sub-float v1, v15, v1

    iget v4, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->text_rect_margin:F

    add-float/2addr v13, v4

    iget-object v4, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mPaintCircle:Landroid/graphics/Paint;

    invoke-virtual {v7, v14, v1, v13, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 314
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    div-float v1, v10, v16

    add-float/2addr v1, v15

    .line 315
    iget v5, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->largest_rect_margin:F

    sub-float v5, v1, v5

    invoke-virtual {v4, v2, v5}, Landroid/graphics/Path;->moveTo(FF)V

    add-float/2addr v2, v11

    .line 316
    iget v5, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->largest_rect_margin:F

    sub-float/2addr v1, v5

    invoke-virtual {v4, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 317
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mPaintText:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/4 v5, 0x0

    const/4 v13, 0x0

    .line 318
    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mPaintText:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move-object/from16 v17, v2

    move-object v2, v9

    move-object/from16 v20, v3

    move-object v3, v4

    move-object/from16 v18, v9

    const v9, 0x7f060029

    move v4, v5

    move v5, v13

    move-object v9, v6

    move/from16 v13, v19

    move-object/from16 v6, v17

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    .line 319
    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->zoomPointRect:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    move-object/from16 v3, v20

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_191

    :cond_117
    move-object/from16 v18, v9

    move v1, v13

    const/4 v9, 0x0

    move v13, v6

    div-float v2, v11, v1

    sub-float v1, v14, v2

    sub-float v2, v15, v2

    .line 324
    new-instance v6, Landroid/graphics/RectF;

    iget v3, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->text_rect_margin:F

    sub-float v4, v1, v3

    sub-float/2addr v2, v3

    add-float v5, v14, v11

    add-float/2addr v5, v3

    add-float v17, v15, v11

    add-float v3, v17, v3

    invoke-direct {v6, v4, v2, v5, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 327
    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mPaintRect:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060029

    invoke-virtual {v3, v4, v9}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 328
    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mPaintRect:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v12, v2

    .line 329
    iget v2, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->text_rect_margin:F

    add-float/2addr v2, v3

    iget-object v4, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mPaintRect:Landroid/graphics/Paint;

    invoke-virtual {v7, v14, v15, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 330
    iget v2, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->text_rect_margin:F

    add-float/2addr v3, v2

    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mPaintCircle:Landroid/graphics/Paint;

    invoke-virtual {v7, v14, v15, v3, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 331
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    div-float v2, v10, v16

    add-float/2addr v2, v15

    .line 332
    invoke-virtual {v3, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    add-float/2addr v1, v11

    .line 333
    invoke-virtual {v3, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 334
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mPaintText:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 335
    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mPaintText:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move-object/from16 v17, v2

    move-object/from16 v2, v18

    move-object v9, v6

    move-object/from16 v6, v17

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    .line 336
    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->zoomPointRect:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_191

    :cond_18e
    move v13, v6

    move-object/from16 v18, v9

    .line 341
    :goto_191
    iget v1, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_296

    .line 343
    iget-boolean v1, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->scaledDensityLargest:Z

    if-eqz v1, :cond_229

    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, v11, v1

    sub-float v6, v13, v2

    sub-float v1, v15, v2

    .line 347
    new-instance v9, Landroid/graphics/RectF;

    iget v2, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->text_rect_margin:F

    sub-float/2addr v6, v2

    sub-float v3, v1, v2

    iget v4, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->largest_rect_margin:F

    sub-float/2addr v3, v4

    add-float/2addr v14, v11

    add-float/2addr v14, v2

    add-float v5, v15, v11

    add-float/2addr v5, v2

    sub-float/2addr v5, v4

    invoke-direct {v9, v6, v3, v14, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 350
    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mPaintRect:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060029

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 351
    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mPaintRect:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 352
    iget v2, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->largest_rect_margin:F

    sub-float v2, v15, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v12, v3

    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0702a3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    add-float/2addr v3, v12

    iget-object v5, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mPaintRect:Landroid/graphics/Paint;

    invoke-virtual {v7, v13, v2, v3, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 353
    iget v2, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->largest_rect_margin:F

    sub-float/2addr v15, v2

    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    add-float/2addr v12, v2

    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mPaintCircle:Landroid/graphics/Paint;

    invoke-virtual {v7, v13, v15, v12, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 354
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    div-float v10, v10, v16

    sub-float v6, v13, v10

    .line 355
    iget v2, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->largest_rect_margin:F

    sub-float v2, v1, v2

    invoke-virtual {v3, v6, v2}, Landroid/graphics/Path;->moveTo(FF)V

    add-float/2addr v1, v11

    .line 356
    iget v2, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->largest_rect_margin:F

    sub-float/2addr v1, v2

    invoke-virtual {v3, v6, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 357
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mPaintText:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 358
    iget-object v6, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mPaintText:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    .line 359
    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->zoomPointRect:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_296

    :cond_229
    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, v11, v1

    sub-float v6, v13, v2

    sub-float v1, v15, v2

    .line 364
    new-instance v9, Landroid/graphics/RectF;

    iget v2, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->text_rect_margin:F

    sub-float/2addr v6, v2

    sub-float v3, v1, v2

    add-float/2addr v14, v11

    add-float/2addr v14, v2

    add-float v4, v15, v11

    add-float/2addr v4, v2

    invoke-direct {v9, v6, v3, v14, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 367
    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mPaintRect:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060029

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 368
    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mPaintRect:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v12, v2

    .line 369
    iget v2, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->text_rect_margin:F

    add-float/2addr v2, v12

    iget-object v3, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mPaintRect:Landroid/graphics/Paint;

    invoke-virtual {v7, v13, v15, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 370
    iget v2, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->text_rect_margin:F

    add-float/2addr v12, v2

    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mPaintCircle:Landroid/graphics/Paint;

    invoke-virtual {v7, v13, v15, v12, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 371
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    div-float v10, v10, v16

    sub-float v6, v13, v10

    .line 372
    invoke-virtual {v3, v6, v1}, Landroid/graphics/Path;->moveTo(FF)V

    add-float/2addr v1, v11

    .line 373
    invoke-virtual {v3, v6, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 374
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mPaintText:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 375
    iget-object v6, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mPaintText:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    .line 376
    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->zoomPointRect:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_296
    :goto_296
    return-void
.end method

.method public static getTouchedZoomValue(Landroid/graphics/Rect;)Ljava/lang/Float;
    .registers 6

    .line 192
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->zoomPointRect:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    .line 193
    sget-object v2, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->zoomPointRect:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/RectF;

    .line 194
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    iget v4, v2, Landroid/graphics/RectF;->left:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_a

    invoke-virtual {p0}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    iget v4, v2, Landroid/graphics/RectF;->right:F

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_a

    .line 195
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    iget v4, v2, Landroid/graphics/RectF;->top:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_a

    invoke-virtual {p0}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    cmpg-float v2, v3, v2

    if-gtz v2, :cond_a

    return-object v1

    :cond_4b
    const/4 p0, 0x0

    return-object p0
.end method

.method public static onClickedRect(FF)Ljava/lang/Float;
    .registers 9

    .line 203
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->zoomPointRect:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    .line 204
    sget-object v2, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->zoomPointRect:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/RectF;

    if-eqz v2, :cond_a

    .line 207
    new-instance v3, Landroid/graphics/RectF;

    iget v4, v2, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    iget v6, v2, Landroid/graphics/RectF;->right:F

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v3, v4, v5, v6, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 208
    invoke-virtual {v3, p0, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_a

    return-object v1

    :cond_34
    const/high16 p0, -0x40800000    # -1.0f

    .line 213
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public disable()V
    .registers 2

    const/4 v0, 0x0

    .line 424
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mIsZoomLineEnabled:Z

    return-void
.end method

.method public enable()V
    .registers 2

    const/4 v0, 0x1

    .line 428
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mIsZoomLineEnabled:Z

    return-void
.end method

.method public hide()V
    .registers 2

    .line 389
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "hide"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_d
    const/4 v0, 0x4

    .line 390
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->setVisibility(I)V

    return-void
.end method

.method public isEnabled()Z
    .registers 2

    .line 436
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mIsZoomLineEnabled:Z

    return v0
.end method

.method public isVisible()Z
    .registers 2

    .line 432
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 3

    .line 149
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    const-string v0, "onDraw"

    .line 150
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 151
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mIsZoomLineEnabled:Z

    if-eqz v0, :cond_13

    .line 152
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->drawZoomLine(Landroid/graphics/Canvas;)V

    :cond_13
    return-void
.end method

.method public setGray(Z)V
    .registers 7

    .line 412
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1e

    new-array v0, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setGray "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 413
    :cond_1e
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mIsZoomLineEnabled:Z

    if-eqz v0, :cond_2f

    .line 414
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mIsGray:Z

    if-eqz p1, :cond_2a

    const p1, 0x3ecccccd    # 0.4f

    goto :goto_2c

    :cond_2a
    const/high16 p1, 0x3f800000    # 1.0f

    .line 415
    :goto_2c
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->setAlpha(F)V

    :cond_2f
    return-void
.end method

.method public setModeOne(Ljava/lang/Boolean;)V
    .registers 2

    .line 188
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->modeOne:Z

    return-void
.end method

.method public setOrientation(I)V
    .registers 2

    .line 125
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->orientation:I

    .line 126
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->invalidate()V

    return-void
.end method

.method public setUpdateListener(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView$UpdateListener;)V
    .registers 2

    .line 75
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->updateListener:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView$UpdateListener;

    return-void
.end method

.method public setViewSize(II)V
    .registers 7

    .line 131
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    .line 132
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setViewSize width:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " height:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 133
    :cond_26
    iget v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mViewWidth:F

    int-to-float v1, p1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_35

    iget v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mViewHeight:F

    int-to-float v2, p2

    cmpl-float v0, v0, v2

    if-nez v0, :cond_35

    return-void

    .line 136
    :cond_35
    iput v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mViewWidth:F

    int-to-float v0, p2

    .line 137
    iput v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mViewHeight:F

    .line 139
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_47

    .line 141
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 142
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 143
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->requestLayout()V

    :cond_47
    return-void
.end method

.method public setmIsZoomLineEnabled(Z)V
    .registers 2

    .line 60
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mIsZoomLineEnabled:Z

    return-void
.end method

.method public show()V
    .registers 2

    .line 398
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "show"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 399
    :cond_d
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mIsZoomLineEnabled:Z

    if-eqz v0, :cond_1c

    const/4 v0, 0x0

    .line 400
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mIsGray:Z

    .line 401
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->setVisibility(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 402
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->setAlpha(F)V

    :cond_1c
    return-void
.end method

.method public update(F)V
    .registers 6

    .line 157
    iget v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mCurrentZoomValue:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_12

    .line 158
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->updateWithAnimation(F)V

    goto :goto_35

    .line 160
    :cond_12
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_30

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 161
    :cond_30
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mCurrentZoomValue:F

    .line 162
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->invalidate()V

    :goto_35
    return-void
.end method

.method public updateWithAnimation(F)V
    .registers 2

    .line 168
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->mCurrentZoomValue:F

    .line 169
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->invalidate()V

    return-void
.end method
