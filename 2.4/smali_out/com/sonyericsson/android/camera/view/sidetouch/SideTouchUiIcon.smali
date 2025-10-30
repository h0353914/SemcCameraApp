.class public abstract Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon;
.super Ljava/lang/Object;
.source "SideTouchUiIcon.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Icon;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RestrictedRecordingPauseIcon;,
        Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RestrictedRecordingIcon;,
        Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingPauseIcon;,
        Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingIcon;,
        Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$SelfTimerCancelIcon;,
        Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$ScreenButtonIcon;,
        Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$ZoomIcon;,
        Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;,
        Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$CountDownIcon;,
        Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$TransparentCoverIcon;
    }
.end annotation


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected mOnDetachedListener:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Icon$OnDetachedListener;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon;->mContext:Landroid/content/Context;

    return-void
.end method

.method private adjustSidePosition(Landroid/graphics/Rect;Landroid/graphics/Point;)V
    .registers 9

    .line 103
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon;->getIconView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 109
    :cond_7
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 111
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-lez v2, :cond_6b

    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-gtz v2, :cond_16

    goto :goto_6b

    .line 116
    :cond_16
    iget v2, p2, Landroid/graphics/Point;->y:I

    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 118
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/4 v3, 0x0

    if-gez v2, :cond_26

    .line 119
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 121
    :cond_26
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v5, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    add-int/2addr v4, v5

    if-ge v2, v4, :cond_3a

    .line 122
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sub-int/2addr v2, v4

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 125
    :cond_3a
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget p2, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, p2

    iget p2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    div-int/lit8 p2, p2, 0x2

    sub-int p2, v2, p2

    .line 127
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-ge p2, v2, :cond_4d

    move p1, v3

    goto :goto_5f

    .line 129
    :cond_4d
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    sub-int/2addr v2, v4

    if-le p2, v2, :cond_5e

    .line 131
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget p2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    sub-int/2addr p1, p2

    goto :goto_5f

    :cond_5e
    move p1, p2

    .line 134
    :goto_5f
    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 135
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-nez p1, :cond_67

    const/4 v3, 0x1

    .line 137
    :cond_67
    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon;->onSidePositionAttached(Z)V

    return-void

    :cond_6b
    :goto_6b
    return-void
.end method


# virtual methods
.method public attach(Landroid/view/ViewGroup;Landroid/graphics/Point;)Landroid/view/View;
    .registers 4

    .line 76
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon;->attachView(Landroid/view/ViewGroup;)V

    .line 77
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 78
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 79
    invoke-direct {p0, v0, p2}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon;->adjustSidePosition(Landroid/graphics/Rect;Landroid/graphics/Point;)V

    .line 80
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon;->getIconView()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected abstract attachView(Landroid/view/ViewGroup;)V
.end method

.method public detach(Landroid/view/ViewGroup;)V
    .registers 3

    .line 85
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon;->getIconView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 86
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon;->mOnDetachedListener:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Icon$OnDetachedListener;

    if-eqz p1, :cond_11

    .line 87
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Icon$OnDetachedListener;->onDetached(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Icon;)V

    const/4 p1, 0x0

    .line 88
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon;->mOnDetachedListener:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Icon$OnDetachedListener;

    :cond_11
    return-void
.end method

.method getDimensionPixelSize(I)I
    .registers 3

    .line 145
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1
.end method

.method protected abstract getIconView()Landroid/view/View;
.end method

.method getStringResource(I)Ljava/lang/String;
    .registers 3

    .line 149
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onFocusChanged(Z)V
    .registers 3

    .line 99
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon;->getIconView()Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_8

    const/4 p1, 0x0

    goto :goto_9

    :cond_8
    const/4 p1, 0x4

    :goto_9
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected onSidePositionAttached(Z)V
    .registers 2

    return-void
.end method

.method public setOnDetachedListener(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Icon$OnDetachedListener;)V
    .registers 2

    .line 94
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon;->mOnDetachedListener:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Icon$OnDetachedListener;

    return-void
.end method
