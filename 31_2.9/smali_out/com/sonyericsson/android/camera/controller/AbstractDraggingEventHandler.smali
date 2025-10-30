.class public abstract Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;
.super Ljava/lang/Object;
.source "AbstractDraggingEventHandler.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$OnViewFinderGestureDetectorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AbstractDraggingEventHandler"


# instance fields
.field private final mCameraSwitchDragFinishDistance:I

.field private mDirection:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

.field private mDragStartMargin:I

.field private mIsDragging:Z

.field private final mModeChangeDragFinishDistance:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .registers 5

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->mIsDragging:Z

    .line 36
    sget-object v0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->NONE:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->mDirection:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    .line 37
    iput p2, p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->mModeChangeDragFinishDistance:I

    .line 38
    iput p3, p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->mCameraSwitchDragFinishDistance:I

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070094

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->mDragStartMargin:I

    return-void
.end method

.method private acceptNewDirection(Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;)Z
    .registers 6

    .line 199
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->mDirection:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->UP:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_28

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->mDirection:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->DOWN:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    if-ne v0, v1, :cond_f

    goto :goto_28

    .line 201
    :cond_f
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->mDirection:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->RIGHT:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    if-eq v0, v1, :cond_1d

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->mDirection:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->LEFT:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    if-ne v0, v1, :cond_1c

    goto :goto_1d

    :cond_1c
    return v3

    .line 202
    :cond_1d
    :goto_1d
    sget-object v0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->RIGHT:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    if-eq p1, v0, :cond_27

    sget-object v0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->LEFT:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    if-ne p1, v0, :cond_26

    goto :goto_27

    :cond_26
    move v2, v3

    :cond_27
    :goto_27
    return v2

    .line 200
    :cond_28
    :goto_28
    sget-object v0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->UP:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    if-eq p1, v0, :cond_32

    sget-object v0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->DOWN:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    if-ne p1, v0, :cond_31

    goto :goto_32

    :cond_31
    move v2, v3

    :cond_32
    :goto_32
    return v2
.end method

.method private computeDirection(Landroid/graphics/Point;Landroid/graphics/Point;)Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;
    .registers 10

    .line 153
    sget-object v0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->NONE:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    .line 154
    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v2, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v2

    int-to-double v1, v1

    iget v3, p1, Landroid/graphics/Point;->y:I

    iget v4, p2, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v4

    int-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    const-wide v3, 0x4066800000000000L    # 180.0

    mul-double/2addr v1, v3

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v1, v3

    double-to-int v1, v1

    .line 156
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_3d

    new-array v2, v4, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dragRotation = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_3d
    const/16 v2, 0x2d

    if-ge v1, v2, :cond_45

    const/16 v2, -0x2d

    if-gt v1, v2, :cond_55

    :cond_45
    const/16 v2, 0x87

    if-le v1, v2, :cond_4d

    const/16 v2, 0xb4

    if-le v1, v2, :cond_55

    :cond_4d
    const/16 v2, -0x87

    if-ge v1, v2, :cond_a1

    const/16 v2, -0xb4

    if-lt v1, v2, :cond_a1

    .line 160
    :cond_55
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v2, :cond_71

    new-array v2, v4, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VERTICAL dragrotation = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 162
    :cond_71
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getOrientation()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    if-ne v1, v2, :cond_8f

    .line 164
    iget v1, p1, Landroid/graphics/Point;->y:I

    iget v2, p2, Landroid/graphics/Point;->y:I

    if-le v1, v2, :cond_86

    .line 165
    sget-object v0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->LEFT:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    goto :goto_ec

    .line 166
    :cond_86
    iget p1, p1, Landroid/graphics/Point;->y:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    if-ge p1, p2, :cond_ec

    .line 167
    sget-object v0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->RIGHT:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    goto :goto_ec

    .line 170
    :cond_8f
    iget v1, p1, Landroid/graphics/Point;->y:I

    iget v2, p2, Landroid/graphics/Point;->y:I

    if-le v1, v2, :cond_98

    .line 171
    sget-object v0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->DOWN:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    goto :goto_ec

    .line 172
    :cond_98
    iget p1, p1, Landroid/graphics/Point;->y:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    if-ge p1, p2, :cond_ec

    .line 173
    sget-object v0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->UP:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    goto :goto_ec

    .line 177
    :cond_a1
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v2, :cond_bd

    new-array v2, v4, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HORIZONTAL dragrotation = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 179
    :cond_bd
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getOrientation()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    if-ne v1, v2, :cond_db

    .line 181
    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v2, p2, Landroid/graphics/Point;->x:I

    if-le v1, v2, :cond_d2

    .line 182
    sget-object v0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->UP:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    goto :goto_ec

    .line 183
    :cond_d2
    iget p1, p1, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->x:I

    if-ge p1, p2, :cond_ec

    .line 184
    sget-object v0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->DOWN:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    goto :goto_ec

    .line 187
    :cond_db
    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v2, p2, Landroid/graphics/Point;->x:I

    if-le v1, v2, :cond_e4

    .line 188
    sget-object v0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->LEFT:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    goto :goto_ec

    .line 189
    :cond_e4
    iget p1, p1, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->x:I

    if-ge p1, p2, :cond_ec

    .line 190
    sget-object v0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->RIGHT:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    :cond_ec
    :goto_ec
    return-object v0
.end method

.method private computeDistance(Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;Landroid/graphics/Point;Landroid/graphics/Point;)I
    .registers 6

    .line 133
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getOrientation()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    if-ne v0, v1, :cond_29

    .line 135
    sget-object v0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->UP:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    if-eq p1, v0, :cond_23

    sget-object v0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->DOWN:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    if-ne p1, v0, :cond_15

    goto :goto_23

    .line 138
    :cond_15
    sget-object v0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->LEFT:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    if-eq p1, v0, :cond_1d

    sget-object v0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->RIGHT:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    if-ne p1, v0, :cond_3b

    .line 139
    :cond_1d
    iget p1, p2, Landroid/graphics/Point;->y:I

    iget p2, p3, Landroid/graphics/Point;->y:I

    sub-int/2addr p1, p2

    return p1

    .line 136
    :cond_23
    :goto_23
    iget p1, p3, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr p1, p2

    return p1

    .line 142
    :cond_29
    sget-object v0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->UP:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    if-eq p1, v0, :cond_43

    sget-object v0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->DOWN:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    if-ne p1, v0, :cond_32

    goto :goto_43

    .line 145
    :cond_32
    sget-object v0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->LEFT:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    if-eq p1, v0, :cond_3d

    sget-object v0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->RIGHT:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    if-ne p1, v0, :cond_3b

    goto :goto_3d

    :cond_3b
    const/4 p1, 0x0

    return p1

    .line 146
    :cond_3d
    :goto_3d
    iget p1, p2, Landroid/graphics/Point;->x:I

    iget p2, p3, Landroid/graphics/Point;->x:I

    sub-int/2addr p1, p2

    return p1

    .line 143
    :cond_43
    :goto_43
    iget p1, p2, Landroid/graphics/Point;->y:I

    iget p2, p3, Landroid/graphics/Point;->y:I

    sub-int/2addr p1, p2

    return p1
.end method

.method private computeProgress(Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;Landroid/graphics/Point;Landroid/graphics/Point;)F
    .registers 5

    .line 122
    sget-object v0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->UP:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    if-eq p1, v0, :cond_17

    sget-object v0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->DOWN:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    if-ne p1, v0, :cond_9

    goto :goto_17

    .line 126
    :cond_9
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->computeDistance(Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;Landroid/graphics/Point;Landroid/graphics/Point;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    iget p2, p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->mCameraSwitchDragFinishDistance:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    return p1

    .line 123
    :cond_17
    :goto_17
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->computeDistance(Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;Landroid/graphics/Point;Landroid/graphics/Point;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    iget p2, p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->mModeChangeDragFinishDistance:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    return p1
.end method

.method private dragging(Landroid/graphics/Point;Landroid/graphics/Point;)Z
    .registers 7

    .line 95
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->mIsDragging:Z

    if-eqz v0, :cond_35

    .line 96
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->mDirection:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    invoke-direct {p0, v0, p1, p2}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->computeProgress(Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;Landroid/graphics/Point;Landroid/graphics/Point;)F

    move-result v0

    .line 97
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->mDirection:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    invoke-direct {p0, v1, p1, p2}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->computeDistance(Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;Landroid/graphics/Point;Landroid/graphics/Point;)I

    move-result v1

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->computeDirection(Landroid/graphics/Point;Landroid/graphics/Point;)Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    move-result-object v2

    .line 100
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->acceptNewDirection(Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 101
    iput-object v2, p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->mDirection:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    :cond_1c
    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_28

    .line 105
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->mDirection:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    invoke-virtual {p0, p1, v1, v0}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->sendProgressEvent(Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;IF)V

    goto :goto_33

    .line 107
    :cond_28
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->mDirection:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->LEFT:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    if-eq v0, v1, :cond_33

    .line 108
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$FinishReason;->UP:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$FinishReason;

    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->finishDragging(Landroid/graphics/Point;Landroid/graphics/Point;Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$FinishReason;)Z

    :cond_33
    :goto_33
    const/4 p1, 0x1

    return p1

    :cond_35
    const/4 p1, 0x0

    return p1
.end method

.method private finishDragging(Landroid/graphics/Point;Landroid/graphics/Point;Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$FinishReason;)Z
    .registers 6

    .line 80
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->mIsDragging:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2b

    .line 81
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->mIsDragging:Z

    .line 83
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->mDirection:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    invoke-direct {p0, v0, p1, p2}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->computeProgress(Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;Landroid/graphics/Point;Landroid/graphics/Point;)F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, p2

    if-gez p1, :cond_24

    .line 84
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$FinishReason;->FLING:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$FinishReason;

    if-ne p3, p1, :cond_1e

    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->mDirection:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    sget-object p2, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->RIGHT:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    if-eq p1, p2, :cond_1e

    goto :goto_24

    .line 87
    :cond_1e
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->mDirection:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->sendCancelEvent(Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;)V

    goto :goto_29

    .line 85
    :cond_24
    :goto_24
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->mDirection:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->sendFinishEvent(Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;)V

    :goto_29
    const/4 p1, 0x1

    return p1

    :cond_2b
    return v1
.end method

.method private startDragging(Landroid/graphics/Point;Landroid/graphics/Point;)Z
    .registers 5

    .line 71
    iget v0, p1, Landroid/graphics/Point;->y:I

    iget v1, p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->mDragStartMargin:I

    if-le v0, v1, :cond_21

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->mIsDragging:Z

    if-nez v0, :cond_21

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->canDragging()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->computeDirection(Landroid/graphics/Point;Landroid/graphics/Point;)Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->mDirection:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    .line 73
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->mDirection:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->sendStartEvent(Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->mIsDragging:Z

    .line 74
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->mIsDragging:Z

    return p1

    :cond_21
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected abstract canDragging()Z
.end method

.method public onDown(Landroid/view/MotionEvent;)V
    .registers 2

    .line 214
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->sendTouchDownEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onDragging(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .registers 8

    .line 219
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-direct {v0, v1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 220
    new-instance p2, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {p2, v1, p1}, Landroid/graphics/Point;-><init>(II)V

    .line 222
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_5c

    new-array p1, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDragging() E start:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " end:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " isDragging:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->mIsDragging:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " direction:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->mDirection:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    .line 226
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v1

    .line 222
    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 228
    :cond_5c
    invoke-direct {p0, p2, v0}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->dragging(Landroid/graphics/Point;Landroid/graphics/Point;)Z

    move-result p1

    .line 230
    sget-boolean p2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p2, :cond_94

    new-array p2, v2, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDragging() X handled:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " isDragging:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->mIsDragging:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " direction:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->mDirection:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    .line 233
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v1

    .line 230
    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :cond_94
    return-void
.end method

.method public onFinishDragging(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$FinishReason;)V
    .registers 9

    .line 257
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/Point;-><init>(II)V

    .line 258
    new-instance p1, Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-direct {p1, v1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 260
    sget-boolean p2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_68

    new-array p2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onFinishDragging() E start:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " end:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " reason:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$FinishReason;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " isDragging:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->mIsDragging:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " direction:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->mDirection:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    .line 265
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p2, v1

    .line 260
    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 267
    :cond_68
    invoke-direct {p0, p1, v0, p3}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->finishDragging(Landroid/graphics/Point;Landroid/graphics/Point;Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$FinishReason;)Z

    move-result p1

    .line 269
    sget-boolean p2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p2, :cond_88

    new-array p2, v2, [Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onFinishDragging() X handled:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v1

    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_88
    return-void
.end method

.method public onStartDragging(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .registers 8

    .line 238
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-direct {v0, v1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 239
    new-instance p2, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {p2, v1, p1}, Landroid/graphics/Point;-><init>(II)V

    .line 241
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_5e

    new-array p1, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStartDragging() E start:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " end:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " isDragging:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->mIsDragging:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " direction:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->mDirection:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    .line 245
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v1

    .line 241
    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 247
    :cond_5e
    invoke-direct {p0, p2, v0}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->startDragging(Landroid/graphics/Point;Landroid/graphics/Point;)Z

    move-result p1

    .line 249
    sget-boolean p2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p2, :cond_96

    new-array p2, v2, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartDragging() X handled:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " isDragging:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->mIsDragging:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " direction:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->mDirection:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    .line 252
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v1

    .line 249
    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :cond_96
    return-void
.end method

.method protected abstract sendCancelEvent(Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;)V
.end method

.method protected abstract sendFinishEvent(Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;)V
.end method

.method protected abstract sendProgressEvent(Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;IF)V
.end method

.method protected abstract sendStartEvent(Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;)Z
.end method

.method protected abstract sendTouchDownEvent(Landroid/view/MotionEvent;)V
.end method
