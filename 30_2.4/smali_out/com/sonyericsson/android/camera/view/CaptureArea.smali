.class public Lcom/sonyericsson/android/camera/view/CaptureArea;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "CaptureArea.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;,
        Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaTouchEventListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "CaptureArea"


# instance fields
.field private mIsForceTouchCanceled:Z

.field private mIsLongPressed:Z

.field private mIsTouched:Z

.field private mListener:Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;

.field private mTouchListener:Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaTouchEventListener;

.field private mUserInteractionEngine:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 51
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 34
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsTouched:Z

    .line 35
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsLongPressed:Z

    .line 37
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsForceTouchCanceled:Z

    const/4 p2, 0x0

    .line 40
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mUserInteractionEngine:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    .line 43
    new-instance p2, Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaTouchEventListener;

    invoke-direct {p2, p0}, Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaTouchEventListener;-><init>(Lcom/sonyericsson/android/camera/view/CaptureArea;)V

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mTouchListener:Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaTouchEventListener;

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f07020a

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 57
    new-instance v0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    invoke-direct {v0, p1, p0, p2}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mUserInteractionEngine:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    .line 58
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mUserInteractionEngine:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    invoke-virtual {p1, p0}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->setInteractionListener(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;)V

    .line 60
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mTouchListener:Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaTouchEventListener;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/CaptureArea;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/view/CaptureArea;)Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mUserInteractionEngine:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    return-object p0
.end method

.method static synthetic access$102(Lcom/sonyericsson/android/camera/view/CaptureArea;Z)Z
    .registers 2

    .line 29
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsTouched:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera/view/CaptureArea;)Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;

    return-object p0
.end method

.method private convertPointCoordinatesFromThisViewToScreen(Landroid/graphics/Point;)Landroid/graphics/Point;
    .registers 6

    const/4 v0, 0x2

    .line 103
    new-array v0, v0, [I

    .line 104
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/CaptureArea;->getLocationOnScreen([I)V

    .line 106
    new-instance v1, Landroid/graphics/Point;

    iget v2, p1, Landroid/graphics/Point;->x:I

    const/4 v3, 0x0

    aget v3, v0, v3

    add-int/2addr v2, v3

    iget p1, p1, Landroid/graphics/Point;->y:I

    const/4 v3, 0x1

    aget v0, v0, v3

    add-int/2addr p1, v0

    invoke-direct {v1, v2, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object v1
.end method


# virtual methods
.method public clearTouched()V
    .registers 2

    const/4 v0, 0x1

    .line 76
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsForceTouchCanceled:Z

    return-void
.end method

.method public isTouched()Z
    .registers 2

    .line 72
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsTouched:Z

    return v0
.end method

.method public onDoubleCanceled()V
    .registers 2

    .line 296
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "onDoubleCanceled: "

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 298
    :cond_d
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsTouched:Z

    if-nez v0, :cond_12

    return-void

    :cond_12
    const/4 v0, 0x0

    .line 304
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsTouched:Z

    .line 305
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsForceTouchCanceled:Z

    .line 307
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;

    if-eqz v0, :cond_1e

    .line 308
    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;->onCaptureAreaCanceled()V

    :cond_1e
    return-void
.end method

.method public onDoubleMoved(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .registers 3

    return-void
.end method

.method public onDoubleRotated(FF)V
    .registers 3

    return-void
.end method

.method public onDoubleScaled(FFF)V
    .registers 4

    .line 272
    iget-boolean p3, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsTouched:Z

    if-nez p3, :cond_5

    return-void

    :cond_5
    sub-float/2addr p1, p2

    .line 279
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;

    if-eqz p2, :cond_d

    .line 280
    invoke-interface {p2, p1}, Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;->onCaptureAreaScaled(F)V

    :cond_d
    return-void
.end method

.method public onDoubleTouched(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .registers 3

    .line 256
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsTouched:Z

    if-eqz p1, :cond_11

    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsForceTouchCanceled:Z

    if-eqz p1, :cond_9

    goto :goto_11

    .line 260
    :cond_9
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;

    if-eqz p1, :cond_10

    .line 261
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;->onCaptureAreaIsReadyToScale()V

    :cond_10
    return-void

    :cond_11
    :goto_11
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .registers 5

    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 4

    const/4 v0, 0x1

    .line 339
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsLongPressed:Z

    .line 341
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;

    if-eqz v0, :cond_1f

    .line 342
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/Point;-><init>(II)V

    .line 344
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/CaptureArea;->convertPointCoordinatesFromThisViewToScreen(Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;->onCaptureAreaLongPressed(Landroid/graphics/Point;)V

    :cond_1f
    return-void
.end method

.method public onOverTripleCanceled()V
    .registers 2

    .line 314
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "onOverTripleCanceled: "

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 316
    :cond_d
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsTouched:Z

    if-nez v0, :cond_12

    return-void

    :cond_12
    const/4 v0, 0x0

    .line 322
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsTouched:Z

    .line 323
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsForceTouchCanceled:Z

    .line 325
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;

    if-eqz v0, :cond_1e

    .line 326
    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;->onCaptureAreaCanceled()V

    :cond_1e
    return-void
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .registers 2

    return-void
.end method

.method public onSingleCanceled()V
    .registers 2

    .line 239
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsTouched:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 245
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsTouched:Z

    .line 246
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsForceTouchCanceled:Z

    .line 248
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;

    if-eqz v0, :cond_11

    .line 249
    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;->onCaptureAreaCanceled()V

    :cond_11
    return-void
.end method

.method public onSingleMoved(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .registers 4

    .line 145
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsTouched:Z

    if-nez p1, :cond_5

    return-void

    .line 150
    :cond_5
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;

    if-eqz p1, :cond_1d

    .line 173
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CaptureArea;->isTouched()Z

    move-result p1

    if-nez p1, :cond_18

    const/4 p1, 0x0

    .line 174
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsForceTouchCanceled:Z

    .line 178
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;->onCaptureAreaCanceled()V

    return-void

    .line 182
    :cond_18
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;->onCaptureAreaMoved()V

    :cond_1d
    return-void
.end method

.method public onSingleReleased(Landroid/graphics/Point;)V
    .registers 4

    .line 213
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsForceTouchCanceled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 214
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsTouched:Z

    .line 215
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsLongPressed:Z

    .line 216
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsForceTouchCanceled:Z

    .line 217
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;

    if-eqz p1, :cond_12

    .line 218
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;->onCaptureAreaCanceled()V

    :cond_12
    return-void

    .line 223
    :cond_13
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsTouched:Z

    if-nez v0, :cond_1c

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsLongPressed:Z

    if-nez v0, :cond_1c

    return-void

    .line 229
    :cond_1c
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsTouched:Z

    .line 230
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsLongPressed:Z

    .line 231
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;

    if-eqz v0, :cond_2b

    .line 233
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/CaptureArea;->convertPointCoordinatesFromThisViewToScreen(Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object p1

    .line 232
    invoke-interface {v0, p1}, Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;->onCaptureAreaReleased(Landroid/graphics/Point;)V

    :cond_2b
    return-void
.end method

.method public onSingleReleasedInDouble(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .registers 3

    return-void
.end method

.method public onSingleStopped(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .registers 4

    .line 189
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsTouched:Z

    if-nez p1, :cond_5

    return-void

    .line 194
    :cond_5
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;

    if-eqz p1, :cond_c

    .line 195
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;->onCaptureAreaStopped()V

    :cond_c
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)V
    .registers 4

    .line 355
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsTouched:Z

    if-nez v0, :cond_5

    return-void

    .line 359
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;

    if-eqz v0, :cond_21

    .line 360
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/Point;-><init>(II)V

    .line 362
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;

    .line 363
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/CaptureArea;->convertPointCoordinatesFromThisViewToScreen(Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    .line 362
    invoke-interface {p1, v0}, Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;->onCaptureAreaSingleTapUp(Landroid/graphics/Point;)V

    :cond_21
    return-void
.end method

.method public onSingleTouched(Landroid/graphics/Point;)V
    .registers 2

    const/4 p1, 0x1

    .line 134
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsTouched:Z

    const/4 p1, 0x0

    .line 135
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsForceTouchCanceled:Z

    .line 137
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;

    if-eqz p1, :cond_d

    .line 138
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;->onCaptureAreaTouched()V

    :cond_d
    return-void
.end method

.method public release()V
    .registers 3

    .line 64
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mUserInteractionEngine:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->setInteractionListener(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;)V

    .line 65
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mUserInteractionEngine:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->release()V

    .line 66
    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mUserInteractionEngine:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    .line 68
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/CaptureArea;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setCaptureAreaStateListener(Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;)V
    .registers 2

    .line 127
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;

    return-void
.end method
