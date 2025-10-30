.class public Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
.super Landroid/widget/RelativeLayout;
.source "TaggedRectangle.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;


# static fields
.field public static final FACEDETECT_CAPTURE:I = 0x1

.field public static final FACERECOGNITION_REVIEW:I = 0x2

.field private static final GAUGE_DIR_BOTTOM:I = 0x2

.field private static final GAUGE_DIR_LEFT:I = 0x0

.field private static final GAUGE_DIR_TOP:I = 0x1

.field public static final OBJECT_TRACKING:I = 0x3

.field private static final RECT_SIZE_LIFE_TIME_MILLIS:I = 0x12c

.field public static final SMILE_DETECTION_CAPTURE:I = 0x0

.field private static final SMILE_GAUGE_NUMBER:I = 0x3

.field public static final TAG:Ljava/lang/String; = "TaggedRectangle"


# instance fields
.field private mCurrentType:I

.field private mFaceUuid:Ljava/lang/String;

.field private mIsAbleToTouch:Z

.field private mIsLockedBySelfTimer:Z

.field private mIsUpdate:Z

.field private mLastSizeUpdatedTimestamp:J

.field private mRectImageHeight:I

.field private mRectImageWidth:I

.field private mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

.field private mRectangleOnTouchListener:Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;

.field private mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 102
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 77
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mIsUpdate:Z

    const-wide/16 v0, 0x0

    .line 80
    iput-wide v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mLastSizeUpdatedTimestamp:J

    const/4 v0, 0x1

    .line 86
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mIsAbleToTouch:Z

    .line 89
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mIsLockedBySelfTimer:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 116
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 77
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mIsUpdate:Z

    const-wide/16 v0, 0x0

    .line 80
    iput-wide v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mLastSizeUpdatedTimestamp:J

    const/4 p2, 0x1

    .line 86
    iput-boolean p2, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mIsAbleToTouch:Z

    .line 89
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mIsLockedBySelfTimer:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 133
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 77
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mIsUpdate:Z

    const-wide/16 p2, 0x0

    .line 80
    iput-wide p2, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mLastSizeUpdatedTimestamp:J

    const/4 p2, 0x1

    .line 86
    iput-boolean p2, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mIsAbleToTouch:Z

    .line 89
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mIsLockedBySelfTimer:Z

    return-void
.end method

.method private isRectSizeAlreadyInvalid()Z
    .registers 5

    .line 260
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mLastSizeUpdatedTimestamp:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long p0, v2, v0

    if-gez p0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method private isSmileGaugeVisible()Z
    .registers 4

    .line 468
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->getVisibility()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    aget-object v0, v0, v2

    .line 469
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_23

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    const/4 v0, 0x2

    aget-object p0, p0, v0

    .line 470
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->getVisibility()I

    move-result p0

    if-nez p0, :cond_22

    goto :goto_23

    :cond_22
    return v1

    :cond_23
    :goto_23
    return v2
.end method

.method private prepare()V
    .registers 4

    .line 140
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "prepare() is called."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_d
    const v0, 0x7f09010f

    .line 149
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    const/4 v0, 0x3

    .line 150
    new-array v0, v0, [Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    .line 151
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    const/4 v1, 0x0

    const v2, 0x7f090167

    invoke-virtual {p0, v2}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    aput-object v2, v0, v1

    .line 152
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    const/4 v1, 0x1

    const v2, 0x7f09016a

    invoke-virtual {p0, v2}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    aput-object v2, v0, v1

    .line 153
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    const/4 v1, 0x2

    const v2, 0x7f090165

    invoke-virtual {p0, v2}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    aput-object p0, v0, v1

    return-void
.end method

.method private setRectCenter(II)V
    .registers 5

    .line 283
    iget v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mCurrentType:I

    packed-switch v0, :pswitch_data_2a

    .line 302
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 303
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    goto :goto_22

    .line 292
    :pswitch_16
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 293
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    :goto_22
    neg-int p1, p1

    add-int/2addr p1, v0

    neg-int p2, p2

    add-int/2addr p2, v1

    .line 307
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->scrollTo(II)V

    return-void

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_16
        :pswitch_16
    .end packed-switch
.end method

.method private setRectSize(II)V
    .registers 4

    .line 246
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 248
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 249
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 250
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_11
    return-void
.end method

.method private setUuid(Ljava/lang/String;)V
    .registers 2

    .line 521
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mFaceUuid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final changeRectangleResource(I)V
    .registers 2

    .line 328
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->changeChildBackgroundResource(I)V

    return-void
.end method

.method public clearUpdated()V
    .registers 2

    const/4 v0, 0x0

    .line 574
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mIsUpdate:Z

    return-void
.end method

.method public getFaceRect()Landroid/graphics/Rect;
    .registers 4

    .line 508
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 509
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    const/4 v1, 0x2

    .line 510
    new-array v1, v1, [I

    .line 511
    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->getLocationInWindow([I)V

    const/4 p0, 0x0

    .line 512
    aget p0, v1, p0

    neg-int p0, p0

    const/4 v2, 0x1

    aget v1, v1, v2

    neg-int v1, v1

    invoke-virtual {v0, p0, v1}, Landroid/graphics/Rect;->offset(II)V

    return-object v0
.end method

.method public getRectImageHeight()I
    .registers 1

    .line 622
    iget p0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectImageHeight:I

    return p0
.end method

.method public getRectImageWidth()I
    .registers 1

    .line 619
    iget p0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectImageWidth:I

    return p0
.end method

.method public getRectangleHeight()I
    .registers 1

    .line 436
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->getHeight()I

    move-result p0

    return p0
.end method

.method public getRectangleLeft()I
    .registers 1

    .line 409
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->getLeft()I

    move-result p0

    return p0
.end method

.method public getRectangleTop()I
    .registers 1

    .line 418
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->getTop()I

    move-result p0

    return p0
.end method

.method public getRectangleWidth()I
    .registers 1

    .line 427
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->getWidth()I

    move-result p0

    return p0
.end method

.method public getUuid()Ljava/lang/String;
    .registers 1

    .line 517
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mFaceUuid:Ljava/lang/String;

    return-object p0
.end method

.method public hide()V
    .registers 4

    .line 582
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->isSmileGaugeVisible()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_a

    .line 583
    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setSmileGaugeVisibility(I)V

    .line 585
    :cond_a
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_29

    .line 589
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_22

    const/4 v2, 0x0

    .line 591
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 592
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 593
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 595
    :cond_22
    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setVisibility(I)V

    const-wide/16 v0, 0x0

    .line 596
    iput-wide v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mLastSizeUpdatedTimestamp:J

    :cond_29
    return-void
.end method

.method public isUpdate()Z
    .registers 1

    .line 578
    iget-boolean p0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mIsUpdate:Z

    return p0
.end method

.method public moveRectTopLeft(II)V
    .registers 3

    neg-int p1, p1

    neg-int p2, p2

    .line 319
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->scrollBy(II)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .line 343
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "onDetachedFromWindow() is called."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_d
    const/4 v0, 0x0

    .line 344
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangleOnTouchListener:Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;

    .line 345
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->setRectangleOnTouchListener(Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;)V

    .line 346
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onRectTouchCancel(Landroid/view/View;Landroid/view/MotionEvent;)V
    .registers 3

    .line 395
    iget-boolean p1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mIsLockedBySelfTimer:Z

    if-eqz p1, :cond_5

    return-void

    .line 398
    :cond_5
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangleOnTouchListener:Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;

    if-eqz p1, :cond_12

    iget-boolean p1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mIsAbleToTouch:Z

    if-eqz p1, :cond_12

    .line 399
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangleOnTouchListener:Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;

    invoke-interface {p1, p0, p2}, Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;->onRectTouchCancel(Landroid/view/View;Landroid/view/MotionEvent;)V

    :cond_12
    return-void
.end method

.method public onRectTouchDown(Landroid/view/View;Landroid/view/MotionEvent;)V
    .registers 3

    .line 359
    iget-boolean p1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mIsLockedBySelfTimer:Z

    if-eqz p1, :cond_5

    return-void

    .line 362
    :cond_5
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangleOnTouchListener:Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;

    if-eqz p1, :cond_12

    iget-boolean p1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mIsAbleToTouch:Z

    if-eqz p1, :cond_12

    .line 363
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangleOnTouchListener:Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;

    invoke-interface {p1, p0, p2}, Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;->onRectTouchDown(Landroid/view/View;Landroid/view/MotionEvent;)V

    :cond_12
    return-void
.end method

.method public onRectTouchLongPress(Landroid/view/View;Landroid/view/MotionEvent;)V
    .registers 3

    .line 602
    iget-boolean p1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mIsLockedBySelfTimer:Z

    if-eqz p1, :cond_5

    return-void

    .line 605
    :cond_5
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangleOnTouchListener:Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;

    if-eqz p1, :cond_12

    iget-boolean p1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mIsAbleToTouch:Z

    if-eqz p1, :cond_12

    .line 606
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangleOnTouchListener:Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;

    invoke-interface {p1, p0, p2}, Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;->onRectTouchLongPress(Landroid/view/View;Landroid/view/MotionEvent;)V

    :cond_12
    return-void
.end method

.method public onRectTouchUp(Landroid/view/View;Landroid/view/MotionEvent;)V
    .registers 3

    .line 377
    iget-boolean p1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mIsLockedBySelfTimer:Z

    if-eqz p1, :cond_5

    return-void

    .line 380
    :cond_5
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangleOnTouchListener:Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;

    if-eqz p1, :cond_12

    iget-boolean p1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mIsAbleToTouch:Z

    if-eqz p1, :cond_12

    .line 381
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangleOnTouchListener:Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;

    invoke-interface {p1, p0, p2}, Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;->onRectTouchUp(Landroid/view/View;Landroid/view/MotionEvent;)V

    :cond_12
    return-void
.end method

.method public prepare(I)V
    .registers 2

    .line 165
    iput p1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mCurrentType:I

    .line 166
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->prepare()V

    packed-switch p1, :pswitch_data_16

    goto :goto_15

    .line 172
    :pswitch_9
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->setVisibility(I)V

    goto :goto_15

    .line 175
    :pswitch_10
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    invoke-virtual {p1, p0}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->setRectangleOnTouchListener(Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;)V

    :goto_15
    :pswitch_15
    return-void

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_10
        :pswitch_15
        :pswitch_9
        :pswitch_15
    .end packed-switch
.end method

.method public setIsAbleToTouch(Z)V
    .registers 2

    .line 611
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mIsAbleToTouch:Z

    return-void
.end method

.method public setLockedBySelfTimer(Z)V
    .registers 2

    .line 615
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mIsLockedBySelfTimer:Z

    return-void
.end method

.method public setRawPosition(Landroid/graphics/Rect;)V
    .registers 4

    .line 189
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setRectSize(II)V

    .line 190
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setRectCenter(II)V

    return-void
.end method

.method public setRectImageSize(IIII)V
    .registers 7

    .line 221
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    const v1, 0x7f090110

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 222
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 223
    iput p3, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectImageWidth:I

    .line 224
    iput p4, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectImageHeight:I

    if-eqz v1, :cond_1f

    .line 226
    iput p4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 227
    iput p3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 228
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    invoke-virtual {v0}, Landroid/widget/ImageView;->requestLayout()V

    .line 231
    :cond_1f
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setRectCenter(II)V

    return-void
.end method

.method public setRectOrientation(I)V
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    .line 563
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    const/high16 p1, -0x3d4c0000    # -90.0f

    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->setRotation(F)V

    goto :goto_11

    .line 565
    :cond_b
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->setRotation(F)V

    :goto_11
    return-void
.end method

.method public setRectPosition(IIII)V
    .registers 6

    .line 204
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->isRectSizeAlreadyInvalid()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 205
    invoke-direct {p0, p3, p4}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setRectSize(II)V

    .line 206
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setRectCenter(II)V

    .line 208
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mLastSizeUpdatedTimestamp:J

    :cond_12
    return-void
.end method

.method public setRectangleOnTouchListener(Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;)V
    .registers 2

    .line 338
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangleOnTouchListener:Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;

    return-void
.end method

.method public setSize(II)V
    .registers 4

    .line 265
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 266
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 267
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 268
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setSmileGaugeVisibility(I)V
    .registers 4

    .line 482
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->setVisibility(I)V

    .line 483
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->setVisibility(I)V

    .line 484
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    const/4 v0, 0x2

    aget-object p0, p0, v0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->setVisibility(I)V

    return-void
.end method

.method public setSmileGaugesPosition(IIIII)V
    .registers 14

    .line 497
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->setPosition(IIIII)V

    .line 498
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    const/4 v1, 0x1

    aget-object v2, v0, v1

    invoke-virtual/range {v2 .. v7}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->setPosition(IIIII)V

    .line 499
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    const/4 v0, 0x2

    aget-object v1, p0, v0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->setPosition(IIIII)V

    return-void
.end method

.method public final setSmileLevel(I)V
    .registers 5

    if-gez p1, :cond_3

    return-void

    .line 444
    :cond_3
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_11

    aget-object v2, p0, v1

    .line 445
    invoke-virtual {v2, p1}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->setSmileLevel(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_11
    return-void
.end method

.method public setSmileScore(I)V
    .registers 4

    .line 456
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->setSmileScore(I)V

    .line 457
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->setSmileScore(I)V

    .line 458
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    const/4 v0, 0x2

    aget-object p0, p0, v0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->setSmileScore(I)V

    return-void
.end method

.method public setUpdated()V
    .registers 2

    const/4 v0, 0x1

    .line 570
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mIsUpdate:Z

    return-void
.end method

.method public startRectangleAnimation(I)V
    .registers 3

    .line 542
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f010021

    .line 541
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    check-cast p1, Landroid/view/animation/AnimationSet;

    .line 545
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public startRectanglePressAnimation()V
    .registers 3

    .line 551
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010020

    .line 550
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    check-cast v0, Landroid/view/animation/AnimationSet;

    .line 554
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public stopAnimation()V
    .registers 2

    .line 533
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 534
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->clearAnimation()V

    .line 535
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_13
    return-void
.end method

.method public update(Ljava/lang/String;I)V
    .registers 3

    .line 529
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setUuid(Ljava/lang/String;)V

    return-void
.end method
