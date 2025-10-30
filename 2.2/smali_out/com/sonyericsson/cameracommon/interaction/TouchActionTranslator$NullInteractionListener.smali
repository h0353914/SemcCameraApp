.class final Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$NullInteractionListener;
.super Ljava/lang/Object;
.source "TouchActionTranslator.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NullInteractionListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$1;)V
    .registers 2

    .line 105
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$NullInteractionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleCanceled()V
    .registers 1

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

    return-void
.end method

.method public onDoubleTouched(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .registers 3

    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .registers 5

    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 2

    return-void
.end method

.method public onOverTripleCanceled()V
    .registers 1

    return-void
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .registers 2

    return-void
.end method

.method public onSingleCanceled()V
    .registers 1

    return-void
.end method

.method public onSingleMoved(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .registers 4

    return-void
.end method

.method public onSingleReleased(Landroid/graphics/Point;)V
    .registers 2

    return-void
.end method

.method public onSingleReleasedInDouble(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .registers 3

    return-void
.end method

.method public onSingleStopped(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .registers 4

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)V
    .registers 2

    return-void
.end method

.method public onSingleTouched(Landroid/graphics/Point;)V
    .registers 2

    return-void
.end method
