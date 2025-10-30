.class public Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;
.super Landroid/view/View;
.source "CircleView.java"


# static fields
.field private static final SHADOW_DX:F = 0.0f

.field private static final SHADOW_DY:F = 1.0f

.field private static final SHADOW_RADIUS:F = 4.0f


# instance fields
.field private mColor:I

.field private mSWidth:F

.field private mStyle:Landroid/graphics/Paint$Style;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 35
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 26
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->mStyle:Landroid/graphics/Paint$Style;

    const/high16 p1, -0x1000000

    .line 27
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->mColor:I

    .line 28
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07026b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->mSWidth:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->mStyle:Landroid/graphics/Paint$Style;

    const/high16 p1, -0x1000000

    .line 27
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->mColor:I

    .line 28
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07026b

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->mSWidth:F

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 7

    .line 81
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x1

    .line 83
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 84
    iget v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->mColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->mStyle:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v1, 0x40800000    # 4.0f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, -0x1000000

    .line 86
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 88
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->mStyle:Landroid/graphics/Paint$Style;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne v1, v2, :cond_28

    .line 89
    iget v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->mSWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 92
    :cond_28
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    .line 93
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    sub-float/2addr v4, v2

    .line 92
    invoke-virtual {p1, v1, v3, v4, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public setCircleStrokeWidth(F)V
    .registers 2

    .line 74
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->mSWidth:F

    .line 75
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->invalidate()V

    return-void
.end method

.method public setCircleStyle(Landroid/graphics/Paint$Style;)V
    .registers 2

    .line 64
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->mStyle:Landroid/graphics/Paint$Style;

    .line 65
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->invalidate()V

    return-void
.end method

.method public setColor(I)V
    .registers 3

    .line 44
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->mColor:I

    .line 45
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->invalidate()V

    return-void
.end method

.method public setColorRGB(I)V
    .registers 2

    .line 54
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->mColor:I

    .line 55
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->invalidate()V

    return-void
.end method
