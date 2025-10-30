.class public Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;
.super Landroid/view/View;
.source "GridLineView.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "GridLineView"


# instance fields
.field private mBottomHorizontalLinePositionY:F

.field private mIsGridLineEnabled:Z

.field private mLeftVerticalLinePositionX:F

.field private mPaint:Landroid/graphics/Paint;

.field private mRightVerticalLinePositionX:F

.field private mTopHorizontalLinePositionY:F

.field private mViewHeight:I

.field private mViewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 43
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 28
    iput p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mViewWidth:I

    .line 29
    iput p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mViewHeight:I

    .line 31
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mPaint:Landroid/graphics/Paint;

    .line 40
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mIsGridLineEnabled:Z

    .line 44
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06003a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 45
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mPaint:Landroid/graphics/Paint;

    .line 46
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070263

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 45
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private drawGridLine(Landroid/graphics/Canvas;)V
    .registers 15

    .line 80
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "drawGridLine"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 82
    :cond_d
    iget v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mLeftVerticalLinePositionX:F

    const/4 v3, 0x0

    iget v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mViewHeight:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mPaint:Landroid/graphics/Paint;

    move-object v1, p1

    move v2, v4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 90
    iget v10, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mRightVerticalLinePositionX:F

    const/4 v9, 0x0

    iget v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mViewHeight:I

    int-to-float v11, v0

    iget-object v12, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mPaint:Landroid/graphics/Paint;

    move-object v7, p1

    move v8, v10

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/4 v1, 0x0

    .line 98
    iget v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mTopHorizontalLinePositionY:F

    iget v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mViewWidth:I

    int-to-float v3, v0

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/4 v7, 0x0

    .line 106
    iget v10, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mBottomHorizontalLinePositionY:F

    iget v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mViewWidth:I

    int-to-float v9, v0

    iget-object v11, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mPaint:Landroid/graphics/Paint;

    move-object v6, p1

    move v8, v10

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public disable()V
    .registers 2

    const/4 v0, 0x0

    .line 136
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mIsGridLineEnabled:Z

    const/4 v0, 0x4

    .line 137
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->setVisibility(I)V

    return-void
.end method

.method public enable()V
    .registers 2

    const/4 v0, 0x1

    .line 127
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mIsGridLineEnabled:Z

    const/4 v0, 0x0

    .line 128
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->setVisibility(I)V

    return-void
.end method

.method public hide()V
    .registers 2

    const/4 v0, 0x4

    .line 119
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->setVisibility(I)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 3

    .line 73
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 74
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mIsGridLineEnabled:Z

    if-eqz v0, :cond_a

    .line 75
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->drawGridLine(Landroid/graphics/Canvas;)V

    :cond_a
    return-void
.end method

.method public setViewSize(II)V
    .registers 7

    .line 50
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    .line 51
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

    .line 52
    :cond_26
    iget v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mViewWidth:I

    if-ne v0, p1, :cond_2f

    iget v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mViewHeight:I

    if-ne v0, p2, :cond_2f

    return-void

    .line 56
    :cond_2f
    iput p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mViewWidth:I

    .line 57
    iput p2, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mViewHeight:I

    .line 58
    iget v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mViewWidth:I

    int-to-float v1, v0

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mLeftVerticalLinePositionX:F

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    div-float/2addr v0, v2

    .line 59
    iput v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mRightVerticalLinePositionX:F

    .line 60
    iget v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mViewHeight:I

    int-to-float v1, v0

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mTopHorizontalLinePositionY:F

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    div-float/2addr v0, v2

    .line 61
    iput v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->mBottomHorizontalLinePositionY:F

    .line 63
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_5a

    .line 65
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 66
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 67
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->requestLayout()V

    :cond_5a
    return-void
.end method
