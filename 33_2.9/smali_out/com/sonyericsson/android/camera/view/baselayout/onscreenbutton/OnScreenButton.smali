.class public Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;
.super Landroid/widget/FrameLayout;
.source "OnScreenButton.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$OnItemUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$LongClickListener;,
        Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;
    }
.end annotation


# static fields
.field private static final DISABLED_FILTER:I = 0x7f060031

.field public static final EMPTY_LISTENER:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;

.field public static final EMPTY_RESOURCE:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;

.field private static final GRAY_OUT_ALPHA:F = 0.4f

.field private static final TAG:Ljava/lang/String; = "OnScreenButton"

.field private static final VISIBLE_ALPHA:F = 1.0f


# instance fields
.field private final mIcon:Landroid/widget/ImageView;

.field private mIsCanceled:Z

.field private mIsGray:Z

.field private mIsRotatable:Z

.field private mIsTouchable:Z

.field private mIsTouched:Z

.field private mItem:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;

.field private mListener:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;

.field private mOrientation:I

.field private mResource:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;

.field private mStaticOrientation:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 372
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$1;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$1;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->EMPTY_LISTENER:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;

    .line 389
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;-><init>(IIIILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->EMPTY_RESOURCE:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 129
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 57
    iput v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mStaticOrientation:I

    const/4 v0, 0x1

    .line 58
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mIsRotatable:Z

    .line 130
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mIcon:Landroid/widget/ImageView;

    .line 131
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 135
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 57
    iput p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mStaticOrientation:I

    const/4 p2, 0x1

    .line 58
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mIsRotatable:Z

    .line 136
    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mIcon:Landroid/widget/ImageView;

    .line 137
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;)Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mListener:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;

    return-object p0
.end method

.method private contains(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 360
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 361
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3c

    .line 362
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_3c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->getHeight()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_3c

    .line 363
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_3c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->getWidth()I

    move-result p0

    sub-int/2addr p0, v4

    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_3b

    goto :goto_3c

    :cond_3b
    return v4

    :cond_3c
    :goto_3c
    return v1
.end method

.method private createIconAnimation()Landroid/view/animation/Animation;
    .registers 10

    .line 440
    new-instance p0, Landroid/view/animation/ScaleAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 444
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v0}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v0, 0xfa

    .line 445
    invoke-virtual {p0, v0, v1}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const-wide/16 v0, 0x32

    .line 446
    invoke-virtual {p0, v0, v1}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    return-object p0
.end method

.method private init()V
    .registers 4

    const/4 v0, 0x2

    .line 141
    iput v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mOrientation:I

    .line 142
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->EMPTY_RESOURCE:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mResource:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;

    .line 143
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->EMPTY_LISTENER:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mListener:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;

    const/4 v0, 0x0

    .line 144
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mItem:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;

    const/4 v1, 0x0

    .line 145
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mIsTouched:Z

    .line 146
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mIsCanceled:Z

    .line 147
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mIsGray:Z

    const/4 v2, 0x1

    .line 148
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mIsTouchable:Z

    .line 149
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setFocusable(Z)V

    .line 150
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setFocusableInTouchMode(Z)V

    .line 151
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setClickable(Z)V

    .line 153
    new-instance v2, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$LongClickListener;

    invoke-direct {v2, p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$LongClickListener;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$1;)V

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 154
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setSoundEffectsEnabled(Z)V

    .line 156
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->addView(Landroid/view/View;)V

    .line 157
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mIcon:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 158
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 159
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 160
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0x11

    iput v0, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    return-void
.end method

.method private sendStartupPerformanceDataForReadyForUse()V
    .registers 2

    .line 461
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_COLD_BOOT_FROM_HOME_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->stopMeasurement(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 465
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_WARM_BOOT_FROM_HOME_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->stopMeasurement(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 469
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_COLD_BOOT_FROM_CAMERAKEY_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->stopMeasurement(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 473
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_WARM_BOOT_FROM_CAMERAKEY_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->stopMeasurement(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 477
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_COLD_BOOT_FROM_LOCKSCREEN_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->stopMeasurement(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 481
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_WARM_BOOT_FROM_LOCKSCREEN_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->stopMeasurement(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    return-void
.end method

.method private update()V
    .registers 6

    .line 248
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update orientation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mOrientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 250
    :cond_22
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mResource:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;

    iget v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;->getIconResource(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_5b

    .line 251
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mResource:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;

    iget v4, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mOrientation:I

    invoke-virtual {v3, v4}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;->getIconResource(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 252
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->requestLayout()V

    .line 253
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mResource:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;->shouldRotateByView()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 254
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mIcon:Landroid/widget/ImageView;

    iget v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mOrientation:I

    invoke-static {v3}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getAngle(I)F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setRotation(F)V

    goto :goto_60

    .line 256
    :cond_54
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mIcon:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setRotation(F)V

    goto :goto_60

    .line 259
    :cond_5b
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 262
    :goto_60
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mResource:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;->getBackgroundResource()I

    move-result v0

    if-eq v0, v2, :cond_72

    .line 263
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mResource:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;->getBackgroundResource()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setBackgroundResource(I)V

    goto :goto_75

    .line 265
    :cond_72
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 268
    :goto_75
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mResource:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 271
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 272
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->clearColorFilter()V

    goto :goto_96

    .line 274
    :cond_8e
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mIcon:Landroid/widget/ImageView;

    const v0, 0x7f060031

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    :goto_96
    return-void
.end method


# virtual methods
.method public changeRotatability(IZ)V
    .registers 3

    .line 397
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mIsRotatable:Z

    if-nez p2, :cond_6

    .line 399
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mStaticOrientation:I

    .line 401
    :cond_6
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setUiOrientation(I)V

    return-void
.end method

.method public clearTouched()V
    .registers 2

    const/4 v0, 0x0

    .line 236
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mIsTouched:Z

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 453
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 454
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->sendStartupPerformanceDataForReadyForUse()V

    .line 456
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->VIDEO_RECORDING_STOP_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->stopMeasurement(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    return-void
.end method

.method public grayOut()V
    .registers 2

    const/4 v0, 0x1

    .line 431
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mIsGray:Z

    const v0, 0x3ecccccd    # 0.4f

    .line 432
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setAlpha(F)V

    return-void
.end method

.method public isGray()Z
    .registers 1

    .line 436
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mIsGray:Z

    return p0
.end method

.method public isTouched()Z
    .registers 1

    .line 240
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mIsTouched:Z

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 280
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 282
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_10

    const-string v0, "onTouchEvent()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 284
    :cond_10
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mListener:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;

    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->EMPTY_LISTENER:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_18

    return v2

    .line 288
    :cond_18
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mIsTouchable:Z

    if-eqz v0, :cond_fb

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mIsGray:Z

    if-eqz v0, :cond_22

    goto/16 :goto_fb

    .line 293
    :cond_22
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_e1

    const/4 v3, 0x3

    if-eq v0, v1, :cond_86

    const/4 v4, 0x2

    if-eq v0, v4, :cond_4e

    if-eq v0, v3, :cond_33

    goto/16 :goto_fa

    .line 305
    :cond_33
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_40

    const-string v0, "  event:CANCEL"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 307
    :cond_40
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setPressed(Z)V

    .line 308
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mIsTouched:Z

    .line 309
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mIsCanceled:Z

    .line 310
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mListener:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;

    invoke-interface {v0, p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;->onCancel(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;Landroid/view/MotionEvent;)V

    goto/16 :goto_fa

    .line 314
    :cond_4e
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->contains(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 315
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_61

    const-string v0, "  event:MOVE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 317
    :cond_61
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mListener:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;

    invoke-interface {v0, p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;->onMove(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;Landroid/view/MotionEvent;)V

    goto/16 :goto_fa

    .line 319
    :cond_68
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_75

    const-string v0, "  event:MOVE to outside of CaptureButton"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 321
    :cond_75
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setPressed(Z)V

    .line 322
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mIsTouched:Z

    .line 323
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mIsCanceled:Z

    .line 324
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 325
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mListener:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;

    invoke-interface {v0, p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;->onCancel(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;Landroid/view/MotionEvent;)V

    goto/16 :goto_fa

    .line 330
    :cond_86
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->contains(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_c4

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mIsTouched:Z

    if-eqz v0, :cond_c4

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mIsCanceled:Z

    if-nez v0, :cond_c4

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_c4

    .line 331
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_a7

    const-string v0, "  event:UP"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 333
    :cond_a7
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setPressed(Z)V

    .line 334
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mIsTouched:Z

    .line 335
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 336
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->playSoundEffect(I)V

    .line 337
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mListener:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;

    invoke-interface {v0, p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;->onUp(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;Landroid/view/MotionEvent;)V

    goto :goto_de

    .line 339
    :cond_bb
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 340
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mListener:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;

    invoke-interface {v0, p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;->onCancel(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;Landroid/view/MotionEvent;)V

    goto :goto_de

    .line 343
    :cond_c4
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d1

    const-string v0, "  event:UP outside of CaptureButton"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 345
    :cond_d1
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setPressed(Z)V

    .line 346
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mIsTouched:Z

    .line 347
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 348
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mListener:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;

    invoke-interface {v0, p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;->onCancel(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;Landroid/view/MotionEvent;)V

    .line 350
    :goto_de
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mIsCanceled:Z

    goto :goto_fa

    .line 296
    :cond_e1
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_ee

    const-string v0, "  event:DOWN"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 298
    :cond_ee
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setPressed(Z)V

    .line 299
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mIsTouched:Z

    .line 300
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mIsCanceled:Z

    .line 301
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mListener:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;

    invoke-interface {v0, p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;->onDown(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;Landroid/view/MotionEvent;)V

    :goto_fa
    return v1

    .line 289
    :cond_fb
    :goto_fb
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setPressed(Z)V

    return v2
.end method

.method public onUpdated(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;)V
    .registers 5

    .line 406
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mResource:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;

    iget v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;->getIconResource(I)I

    move-result v0

    .line 407
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;->getResource()Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;

    move-result-object v1

    iget v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mOrientation:I

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;->getIconResource(I)I

    move-result v1

    if-eq v0, v1, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 409
    :goto_17
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;->isSoundEffectsEnabled()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setSoundEffectsEnabled(Z)V

    .line 410
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;->isEnabled()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setEnabled(Z)V

    .line 411
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;->getResource()Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->set(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;)V

    .line 413
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->isShown()Z

    move-result p1

    if-eqz p1, :cond_3d

    if-eqz v0, :cond_3d

    .line 414
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mIcon:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->createIconAnimation()Landroid/view/animation/Animation;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_3d
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 201
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mResource:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    if-nez p1, :cond_c

    .line 206
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->EMPTY_RESOURCE:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mResource:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;

    goto :goto_e

    .line 208
    :cond_c
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mResource:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;

    .line 210
    :goto_e
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->update()V

    return-void
.end method

.method public setItem(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;)V
    .registers 6

    .line 164
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mItem:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    if-eqz p1, :cond_e

    .line 166
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    .line 171
    :cond_e
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mItem:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_24

    .line 172
    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setPressed(Z)V

    .line 173
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mIsCanceled:Z

    .line 174
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mListener:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;

    invoke-interface {v0, p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;->onCancel(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;Landroid/view/MotionEvent;)V

    .line 175
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mItem:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;->removeOnUpdatedListener(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$OnItemUpdatedListener;)V

    .line 178
    :cond_24
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mItem:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;

    if-eqz p1, :cond_53

    .line 181
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;->getOnScreenButtonListener()Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setListener(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;)V

    .line 182
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mItem:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;->isSoundEffectsEnabled()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setSoundEffectsEnabled(Z)V

    .line 183
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mItem:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;->isEnabled()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setEnabled(Z)V

    .line 184
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mItem:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;->getResource()Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->set(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;)V

    .line 185
    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setPressed(Z)V

    .line 188
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mItem:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;

    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;->addOnUpdatedListener(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$OnItemUpdatedListener;)V

    goto :goto_62

    .line 191
    :cond_53
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setListener(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;)V

    .line 192
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setSoundEffectsEnabled(Z)V

    .line 193
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setEnabled(Z)V

    .line 194
    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setSelected(Z)V

    .line 195
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->set(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;)V

    :goto_62
    return-void
.end method

.method public setListener(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_7

    .line 216
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->EMPTY_LISTENER:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mListener:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;

    goto :goto_9

    .line 218
    :cond_7
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mListener:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;

    :goto_9
    return-void
.end method

.method public setTouchable(Z)V
    .registers 2

    .line 244
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mIsTouchable:Z

    return-void
.end method

.method public setUiOrientation(I)V
    .registers 3

    .line 223
    iget v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mOrientation:I

    if-ne p1, v0, :cond_5

    return-void

    .line 227
    :cond_5
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mIsRotatable:Z

    if-eqz v0, :cond_c

    .line 228
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mOrientation:I

    goto :goto_10

    .line 230
    :cond_c
    iget p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mStaticOrientation:I

    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mOrientation:I

    .line 232
    :goto_10
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->update()V

    return-void
.end method

.method public setVisibility(I)V
    .registers 3

    const/4 v0, 0x0

    .line 420
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->mIsGray:Z

    if-nez p1, :cond_a

    const/high16 v0, 0x3f800000    # 1.0f

    .line 422
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setAlpha(F)V

    .line 424
    :cond_a
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->getVisibility()I

    move-result v0

    if-ne v0, p1, :cond_11

    return-void

    .line 427
    :cond_11
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
