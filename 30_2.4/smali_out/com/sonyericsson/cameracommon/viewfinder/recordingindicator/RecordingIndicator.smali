.class public Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;
.super Landroid/widget/RelativeLayout;
.source "RecordingIndicator.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingTimeIndicator;


# static fields
.field public static final TAG:Ljava/lang/String; = "RecordingIndicator"


# instance fields
.field private mConstraintIndicator:Landroid/widget/LinearLayout;

.field private mConstraintRecordingTimeText:Landroid/widget/TextView;

.field private mContainer:Landroid/view/View;

.field private mDisplayOrientation:I

.field private mDuration:I

.field private mIsConstraint:Z

.field private mIsRecording:Z

.field private mIsSequence:Z

.field private mIsThumbnailReady:Z

.field private mMaxDurationText:Landroid/widget/TextView;

.field private mMaxTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

.field private mPivotForRotationConstraint:I

.field private mPivotForRotationSequence:I

.field private mPivotForRotationUnConstraint:I

.field private mProgressBar:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;

.field private final mRadius:F

.field private mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

.field private mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

.field private mSequenceIndicator:Landroid/widget/LinearLayout;

.field private mSequenceRec:Landroid/widget/TextView;

.field private mSequenceRecordingTimeText:Landroid/widget/TextView;

.field private mStringFormatRecordingTime:Ljava/lang/String;

.field private mStringFormatRemainConstraintTime:Ljava/lang/String;

.field private mThumbnailCnt:I

.field private mThumbnailContainer:Landroid/widget/LinearLayout;

.field private final mThumbnailMaxNum:I

.field private final mThumbnailPadding:I

.field private final mThumbnailParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private final mThumbnailSize:I

.field private final mThumbnails:[Landroid/graphics/Bitmap;

.field private mTimeContainer:Landroid/widget/LinearLayout;

.field private mUnConstraintIndicator:Landroid/widget/LinearLayout;

.field private mUnConstraintRecordingTimeText:Landroid/widget/TextView;

.field private mViewFinderCaptureArea:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    .line 112
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 50
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintIndicator:Landroid/widget/LinearLayout;

    .line 51
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintRecordingTimeText:Landroid/widget/TextView;

    .line 54
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintIndicator:Landroid/widget/LinearLayout;

    .line 55
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintRecordingTimeText:Landroid/widget/TextView;

    .line 56
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mMaxDurationText:Landroid/widget/TextView;

    .line 59
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceIndicator:Landroid/widget/LinearLayout;

    .line 60
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceRecordingTimeText:Landroid/widget/TextView;

    .line 61
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailContainer:Landroid/widget/LinearLayout;

    .line 62
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mTimeContainer:Landroid/widget/LinearLayout;

    .line 63
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceRec:Landroid/widget/TextView;

    .line 65
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mProgressBar:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;

    .line 68
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a000b

    .line 69
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailMaxNum:I

    .line 70
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070158

    .line 71
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailSize:I

    .line 72
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070157

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRadius:F

    .line 74
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailSize:I

    const/4 v2, -0x2

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 76
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070156

    .line 77
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailPadding:I

    .line 80
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mStringFormatRemainConstraintTime:Ljava/lang/String;

    .line 81
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mStringFormatRecordingTime:Ljava/lang/String;

    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsConstraint:Z

    .line 86
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsSequence:Z

    .line 89
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsThumbnailReady:Z

    .line 91
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsRecording:Z

    .line 94
    iput v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailCnt:I

    .line 95
    iget v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailMaxNum:I

    new-array v1, v1, [Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnails:[Landroid/graphics/Bitmap;

    .line 98
    iput v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mDuration:I

    .line 99
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mMaxTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    .line 100
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f07015b

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mPivotForRotationUnConstraint:I

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070149

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mPivotForRotationConstraint:I

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070151

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mPivotForRotationSequence:I

    return-void
.end method

.method private addEmptyThumbnails()V
    .registers 4

    .line 483
    iget v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailSize:I

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/high16 v1, -0x1000000

    .line 485
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 487
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->createRoundRectImageView(Landroid/graphics/Bitmap;)Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;

    move-result-object v0

    .line 488
    iget v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRadius:F

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v1}, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->setRadius(FFFF)V

    .line 490
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private createRoundRectImageView(Landroid/graphics/Bitmap;)Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;
    .registers 4

    .line 392
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "createRoundRectImageView"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 394
    :cond_d
    new-instance v0, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;-><init>(Landroid/content/Context;)V

    .line 395
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 396
    invoke-virtual {v0, p1}, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 p1, 0x0

    .line 397
    invoke-virtual {v0, p1}, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->setClickable(Z)V

    .line 398
    invoke-virtual {v0, p1}, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->setFocusable(Z)V

    .line 399
    invoke-virtual {v0, p1}, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->setFocusableInTouchMode(Z)V

    return-object v0
.end method

.method private resetThumbnails()V
    .registers 2

    .line 471
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "resetThumbnails"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_d
    const/4 v0, 0x0

    .line 473
    iput v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailCnt:I

    .line 475
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_17

    .line 476
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 479
    :cond_17
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->addEmptyThumbnails()V

    return-void
.end method

.method private setSequentialIndicator(Z)V
    .registers 7

    .line 435
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSequentialIndicator:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1e
    if-eqz p1, :cond_25

    .line 438
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsThumbnailReady:Z

    if-nez v0, :cond_27

    return-void

    .line 444
    :cond_25
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsThumbnailReady:Z

    :cond_27
    if-eqz p1, :cond_2e

    const p1, 0x7f080294

    move v0, v1

    goto :goto_33

    :cond_2e
    const p1, 0x7f080293

    const/16 v0, 0x8

    .line 457
    :goto_33
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mTimeContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 458
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mTimeContainer:Landroid/widget/LinearLayout;

    .line 459
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070154

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 461
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 458
    invoke-virtual {p1, v2, v1, v3, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 463
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mTimeContainer:Landroid/widget/LinearLayout;

    .line 464
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    .line 465
    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 466
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mTimeContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 467
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceRec:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private setUnconstraintIndicator(Z)V
    .registers 6

    .line 417
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setUnconstraintIndicator:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1e
    if-eqz p1, :cond_24

    const p1, 0x7f080297

    goto :goto_27

    :cond_24
    const p1, 0x7f080296

    .line 426
    :goto_27
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 427
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintIndicator:Landroid/widget/LinearLayout;

    .line 428
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070154

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 430
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 427
    invoke-virtual {p1, v0, v1, v2, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-void
.end method

.method private updateLayout()V
    .registers 7

    .line 526
    iget v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mDisplayOrientation:I

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getAngle(I)F

    move-result v0

    .line 528
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getOrientation()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    move-result-object v1

    .line 529
    sget-object v2, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    if-ne v1, v2, :cond_15

    const/high16 v2, 0x42b40000    # 90.0f

    add-float/2addr v0, v2

    .line 533
    :cond_15
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    if-eqz v2, :cond_50

    sget-object v3, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;->EIGHTEEN_NINE:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    if-ne v2, v3, :cond_50

    .line 535
    sget-object v2, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    const v3, 0x7f07015e

    const/4 v4, 0x0

    if-ne v1, v2, :cond_3b

    .line 536
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 537
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 536
    invoke-static {v2, v5, v3}, Lcom/sonyericsson/cameracommon/utility/ResourceUtil;->getDimensionPixelSize(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_50

    .line 539
    :cond_3b
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 540
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 539
    invoke-static {v2, v5, v3}, Lcom/sonyericsson/cameracommon/utility/ResourceUtil;->getDimensionPixelSize(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v4, v4, v4, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 544
    :cond_50
    :goto_50
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintIndicator:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_6c

    .line 545
    invoke-direct {p0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->updateLayoutParams(Landroid/widget/LinearLayout;)V

    .line 546
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setRotation(F)V

    .line 547
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintIndicator:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mPivotForRotationUnConstraint:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setPivotX(F)V

    .line 548
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintIndicator:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mPivotForRotationUnConstraint:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setPivotY(F)V

    .line 550
    :cond_6c
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintIndicator:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_88

    .line 551
    invoke-direct {p0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->updateLayoutParams(Landroid/widget/LinearLayout;)V

    .line 552
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setRotation(F)V

    .line 553
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintIndicator:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mPivotForRotationConstraint:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setPivotX(F)V

    .line 554
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintIndicator:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mPivotForRotationConstraint:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setPivotY(F)V

    .line 556
    :cond_88
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceIndicator:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_a4

    .line 557
    invoke-direct {p0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->updateLayoutParams(Landroid/widget/LinearLayout;)V

    .line 558
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setRotation(F)V

    .line 559
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceIndicator:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mPivotForRotationSequence:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setPivotX(F)V

    .line 560
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceIndicator:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mPivotForRotationSequence:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setPivotY(F)V

    :cond_a4
    return-void
.end method

.method private updateLayoutParams(Landroid/widget/LinearLayout;)V
    .registers 8

    .line 509
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 511
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getOrientation()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    move-result-object v1

    .line 512
    sget-object v2, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    const/4 v3, -0x1

    const/16 v4, 0xc

    const/16 v5, 0xa

    if-ne v1, v2, :cond_1e

    .line 513
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 514
    invoke-virtual {v0, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_24

    .line 516
    :cond_1e
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 517
    invoke-virtual {v0, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 519
    :goto_24
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mViewFinderCaptureArea:Landroid/graphics/Rect;

    if-eqz v1, :cond_2c

    .line 520
    iget v1, v1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 522
    :cond_2c
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method

.method private updateProgressbar(I)V
    .registers 4

    .line 249
    iget v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mDuration:I

    if-le p1, v0, :cond_5

    goto :goto_a

    .line 253
    :cond_5
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mProgressBar:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;

    invoke-virtual {v1, p1, v0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->setProgress(II)V

    :goto_a
    return-void
.end method

.method private updateThumbnails(Landroid/graphics/Bitmap;)V
    .registers 9

    const/4 v0, 0x1

    .line 347
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsThumbnailReady:Z

    .line 348
    iget-boolean v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsRecording:Z

    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->setIndicator(Z)V

    .line 350
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->createRoundRectImageView(Landroid/graphics/Bitmap;)Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;

    move-result-object v1

    .line 352
    iget v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailCnt:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v2, :cond_21

    .line 354
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 356
    iget v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRadius:F

    invoke-virtual {v1, v2, v3, v3, v2}, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->setRadius(FFFF)V

    .line 357
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnails:[Landroid/graphics/Bitmap;

    aput-object p1, v2, v4

    goto :goto_66

    .line 359
    :cond_21
    iget v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailPadding:I

    invoke-virtual {v1, v2, v4, v4, v4}, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->setPadding(IIII)V

    .line 361
    iget v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailCnt:I

    if-ne v2, v0, :cond_2f

    .line 362
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnails:[Landroid/graphics/Bitmap;

    aput-object p1, v2, v0

    goto :goto_5f

    .line 363
    :cond_2f
    iget v5, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailMaxNum:I

    if-lt v2, v5, :cond_5f

    .line 365
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 368
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnails:[Landroid/graphics/Bitmap;

    aget-object v2, v2, v0

    invoke-direct {p0, v2}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->createRoundRectImageView(Landroid/graphics/Bitmap;)Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;

    move-result-object v2

    .line 369
    iget v5, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRadius:F

    invoke-virtual {v2, v5, v3, v3, v5}, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->setRadius(FFFF)V

    .line 372
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 373
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    move v2, v4

    .line 375
    :goto_50
    iget v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailMaxNum:I

    sub-int/2addr v3, v0

    if-ge v2, v3, :cond_5f

    .line 376
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnails:[Landroid/graphics/Bitmap;

    add-int/lit8 v5, v2, 0x1

    aget-object v6, v3, v5

    aput-object v6, v3, v2

    move v2, v5

    goto :goto_50

    .line 380
    :cond_5f
    :goto_5f
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnails:[Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailMaxNum:I

    sub-int/2addr v3, v0

    aput-object p1, v2, v3

    .line 384
    :goto_66
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 385
    iget p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailCnt:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailCnt:I

    .line 387
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_8e

    new-array p1, v0, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateThumbnails: thumnailCnt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailCnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v4

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_8e
    return-void
.end method


# virtual methods
.method public addChapter([BI)V
    .registers 8

    .line 302
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1e

    new-array v0, v1, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addChapter: orientation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 304
    :cond_1e
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsSequence:Z

    if-nez v0, :cond_23

    return-void

    .line 308
    :cond_23
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 311
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 312
    array-length v3, p1

    invoke-static {p1, v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 313
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 314
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-ge v3, v4, :cond_40

    int-to-float v3, v3

    .line 318
    iget v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailSize:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_4d

    :cond_40
    if-ge v4, v3, :cond_4d

    int-to-float v3, v4

    .line 320
    iget v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailSize:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 324
    :cond_4d
    :goto_4d
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 325
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v3, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 326
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 328
    array-length v1, p1

    invoke-static {p1, v2, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 331
    iget v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailSize:I

    invoke-static {p1, v0, v0}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 332
    invoke-static {p1, p2}, Lcom/sonyericsson/cameracommon/contentsview/ThumbnailUtil;->rotateThumbnail(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 335
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->updateThumbnails(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onFinishInflate()V
    .registers 5

    .line 123
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0901f2

    .line 127
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintIndicator:Landroid/widget/LinearLayout;

    .line 128
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintIndicator:Landroid/widget/LinearLayout;

    const v1, 0x7f090143

    .line 129
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintRecordingTimeText:Landroid/widget/TextView;

    .line 130
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintRecordingTimeText:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/sonymobile/cameracommon/font/FontUtil;->setBold(Landroid/widget/TextView;)Z

    .line 131
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintIndicator:Landroid/widget/LinearLayout;

    const v2, 0x7f090141

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0}, Lcom/sonymobile/cameracommon/font/FontUtil;->setBold(Landroid/widget/TextView;)Z

    const v0, 0x7f09007d

    .line 134
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintIndicator:Landroid/widget/LinearLayout;

    .line 135
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintIndicator:Landroid/widget/LinearLayout;

    .line 136
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintRecordingTimeText:Landroid/widget/TextView;

    .line 137
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintRecordingTimeText:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/sonymobile/cameracommon/font/FontUtil;->setBold(Landroid/widget/TextView;)Z

    .line 138
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0}, Lcom/sonymobile/cameracommon/font/FontUtil;->setBold(Landroid/widget/TextView;)Z

    .line 140
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintIndicator:Landroid/widget/LinearLayout;

    const v3, 0x7f090140

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0}, Lcom/sonymobile/cameracommon/font/FontUtil;->setBold(Landroid/widget/TextView;)Z

    .line 142
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintIndicator:Landroid/widget/LinearLayout;

    const v3, 0x7f090149

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mMaxDurationText:Landroid/widget/TextView;

    .line 143
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mMaxDurationText:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/sonymobile/cameracommon/font/FontUtil;->setBold(Landroid/widget/TextView;)Z

    const v0, 0x7f09013b

    .line 144
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mProgressBar:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;

    const v0, 0x7f090188

    .line 147
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceIndicator:Landroid/widget/LinearLayout;

    .line 148
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceIndicator:Landroid/widget/LinearLayout;

    .line 149
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceRecordingTimeText:Landroid/widget/TextView;

    .line 150
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceRecordingTimeText:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/sonymobile/cameracommon/font/FontUtil;->setBold(Landroid/widget/TextView;)Z

    .line 151
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceRec:Landroid/widget/TextView;

    .line 152
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceRec:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/sonymobile/cameracommon/font/FontUtil;->setBold(Landroid/widget/TextView;)Z

    .line 153
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceIndicator:Landroid/widget/LinearLayout;

    const v1, 0x7f0901d7

    .line 154
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailContainer:Landroid/widget/LinearLayout;

    .line 155
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceIndicator:Landroid/widget/LinearLayout;

    const v1, 0x7f0901d9

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mTimeContainer:Landroid/widget/LinearLayout;

    .line 157
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mMaxTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    .line 158
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    const v0, 0x7f09013f

    .line 159
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mContainer:Landroid/view/View;

    return-void
.end method

.method public onTimeTicked(I)V
    .registers 2

    .line 598
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->updateRecordingTime(I)V

    return-void
.end method

.method public prepareBeforeRecording(I)V
    .registers 10

    .line 181
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->update(I)V

    .line 182
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mContainer:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 183
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070150

    .line 184
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 186
    iget-boolean v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsConstraint:Z

    const v3, 0x7f0e004b

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eqz v2, :cond_8d

    .line 188
    iput p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mDuration:I

    .line 189
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mMaxTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mDuration:I

    invoke-virtual {p1, v0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->update(I)V

    .line 192
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mProgressBar:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;

    invoke-virtual {p1, v1, v1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->setProgress(II)V

    .line 195
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 196
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mStringFormatRemainConstraintTime:Ljava/lang/String;

    .line 197
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mMaxDurationText:Landroid/widget/TextView;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mStringFormatRemainConstraintTime:Ljava/lang/String;

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mMaxTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v7, v7, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->min:I

    .line 199
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    iget-object v7, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mMaxTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v7, v7, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->sec:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    .line 198
    invoke-static {v0, v2, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 197
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 201
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mStringFormatRecordingTime:Ljava/lang/String;

    .line 202
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintRecordingTimeText:Landroid/widget/TextView;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mStringFormatRecordingTime:Ljava/lang/String;

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v5, v5, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->min:I

    .line 204
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v1

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v5, v5, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->sec:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 203
    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 202
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_fa

    .line 206
    :cond_8d
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mStringFormatRecordingTime:Ljava/lang/String;

    .line 209
    iget-boolean p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsSequence:Z

    if-eqz p1, :cond_cf

    .line 210
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->resetThumbnails()V

    .line 213
    iget-boolean p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsRecording:Z

    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->setIndicator(Z)V

    .line 215
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceRecordingTimeText:Landroid/widget/TextView;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mStringFormatRecordingTime:Ljava/lang/String;

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v6, v6, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->min:I

    .line 217
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v6, v6, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->sec:I

    .line 218
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    .line 215
    invoke-static {v2, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceRecordingTimeText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_fa

    .line 221
    :cond_cf
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintRecordingTimeText:Landroid/widget/TextView;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mStringFormatRecordingTime:Ljava/lang/String;

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v6, v6, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->min:I

    .line 223
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v6, v6, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->sec:I

    .line 224
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    .line 221
    invoke-static {v2, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintRecordingTimeText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 230
    :goto_fa
    iget-boolean p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsConstraint:Z

    const/16 v0, 0x8

    if-eqz p1, :cond_110

    .line 231
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 232
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 233
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_133

    .line 234
    :cond_110
    iget-boolean p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsSequence:Z

    if-eqz p1, :cond_124

    .line 235
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 236
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 237
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_133

    .line 239
    :cond_124
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 240
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 241
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 244
    :goto_133
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->updateLayout()V

    return-void
.end method

.method public release()V
    .registers 1

    return-void
.end method

.method public setConstraint(Z)V
    .registers 2

    .line 163
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsConstraint:Z

    return-void
.end method

.method public setIndicator(Z)V
    .registers 6

    .line 405
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setIndicator:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 407
    :cond_1e
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsRecording:Z

    .line 409
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsSequence:Z

    if-eqz v0, :cond_28

    .line 410
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->setSequentialIndicator(Z)V

    goto :goto_2b

    .line 412
    :cond_28
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->setUnconstraintIndicator(Z)V

    :goto_2b
    return-void
.end method

.method public setOrientation(I)V
    .registers 6

    .line 502
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setOrientation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 503
    :cond_1e
    iput p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mDisplayOrientation:I

    .line 504
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->updateLayout()V

    return-void
.end method

.method public setScreenAspect(Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;)V
    .registers 2

    .line 589
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    return-void
.end method

.method public setSequenceMode(Z)V
    .registers 2

    .line 167
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsSequence:Z

    return-void
.end method

.method public setViewFinderCaptureArea(Landroid/graphics/Rect;)V
    .registers 2

    .line 593
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mViewFinderCaptureArea:Landroid/graphics/Rect;

    return-void
.end method

.method public updateRecordingTime(I)V
    .registers 9

    .line 265
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->update(I)V

    .line 266
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 270
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v0, v0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->hour:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ge v0, v3, :cond_4e

    .line 271
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->getContext()Landroid/content/Context;

    move-result-object v0

    const v4, 0x7f0e004b

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mStringFormatRecordingTime:Ljava/lang/String;

    .line 273
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mStringFormatRecordingTime:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v5, v5, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->min:I

    .line 274
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v1

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v1, v1, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->sec:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    .line 273
    invoke-static {v0, v4, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 275
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070150

    .line 276
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_93

    .line 278
    :cond_4e
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->getContext()Landroid/content/Context;

    move-result-object v0

    const v4, 0x7f0e004a

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mStringFormatRecordingTime:Ljava/lang/String;

    .line 280
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mStringFormatRecordingTime:Ljava/lang/String;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v6, v6, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->hour:I

    .line 281
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v1, v1, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->min:I

    .line 282
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v3

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v1, v1, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->sec:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    .line 280
    invoke-static {v0, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 283
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07014f

    .line 284
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 287
    :goto_93
    iget-boolean v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsConstraint:Z

    if-eqz v2, :cond_a0

    .line 288
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintRecordingTimeText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->updateProgressbar(I)V

    goto :goto_bf

    .line 291
    :cond_a0
    iget-boolean p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsSequence:Z

    if-eqz p1, :cond_b2

    .line 292
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceRecordingTimeText:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceRecordingTimeText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_bf

    .line 295
    :cond_b2
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintRecordingTimeText:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintRecordingTimeText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_bf
    return-void
.end method

.method public updateVisibility(Z)V
    .registers 4

    const/16 v0, 0x8

    if-eqz p1, :cond_42

    .line 566
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 567
    iget-boolean p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsConstraint:Z

    if-eqz p1, :cond_1e

    .line 568
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 569
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 570
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_57

    .line 571
    :cond_1e
    iget-boolean p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsSequence:Z

    if-eqz p1, :cond_32

    .line 572
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 573
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 574
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_57

    .line 576
    :cond_32
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 577
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 578
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_57

    .line 581
    :cond_42
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mContainer:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 582
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 583
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 584
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_57
    return-void
.end method
