.class public Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView;
.super Landroid/widget/FrameLayout;
.source "HorizontalLevelMeterView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView$LayoutOrientation;
    }
.end annotation


# static fields
.field private static final BASE_LINE_ANIMATION_DURATION_TIMER_MILLIS:J = 0x28L

.field private static final UPDATE_INTERVAL_TIMER_MILLIS:J = 0x28L


# instance fields
.field private mAdjustingLine:Landroid/widget/ImageView;

.field private mBaseLine:Landroid/widget/ImageView;

.field private mFrame:Landroid/widget/ImageView;

.field private mHorizontalLine:Landroid/widget/ImageView;

.field private mLastAngle:F

.field private mLastLayoutOrientation:Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView$LayoutOrientation;

.field private mLastUpdateTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    sget-object p1, Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView$LayoutOrientation;->Unknown:Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView$LayoutOrientation;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView;->mLastLayoutOrientation:Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView$LayoutOrientation;

    const-wide/16 p1, 0x0

    .line 38
    iput-wide p1, p0, Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView;->mLastUpdateTime:J

    const/4 p1, 0x0

    .line 41
    iput p1, p0, Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView;->mLastAngle:F

    return-void
.end method

.method private getLayoutOrientation(I)Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView$LayoutOrientation;
    .registers 4

    const/4 v0, 0x0

    const/16 v1, 0x2c

    .line 154
    invoke-direct {p0, p1, v0, v1}, Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView;->in(III)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 155
    sget-object p1, Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView$LayoutOrientation;->Portrait:Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView$LayoutOrientation;

    return-object p1

    :cond_c
    const/16 v0, 0x2e

    const/16 v1, 0x86

    .line 156
    invoke-direct {p0, p1, v0, v1}, Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView;->in(III)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 157
    sget-object p1, Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView$LayoutOrientation;->Landscape:Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView$LayoutOrientation;

    return-object p1

    :cond_19
    const/16 v0, 0x88

    const/16 v1, 0xe0

    .line 158
    invoke-direct {p0, p1, v0, v1}, Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView;->in(III)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 159
    sget-object p1, Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView$LayoutOrientation;->ReversePortrait:Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView$LayoutOrientation;

    return-object p1

    :cond_26
    const/16 v0, 0xe2

    const/16 v1, 0x13a

    .line 160
    invoke-direct {p0, p1, v0, v1}, Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView;->in(III)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 161
    sget-object p1, Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView$LayoutOrientation;->ReverseLandscape:Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView$LayoutOrientation;

    return-object p1

    :cond_33
    const/16 v0, 0x13c

    const/16 v1, 0x167

    .line 162
    invoke-direct {p0, p1, v0, v1}, Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView;->in(III)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 163
    sget-object p1, Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView$LayoutOrientation;->Portrait:Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView$LayoutOrientation;

    return-object p1

    :cond_40
    if-gez p1, :cond_45

    .line 165
    sget-object p1, Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView$LayoutOrientation;->Unknown:Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView$LayoutOrientation;

    return-object p1

    .line 167
    :cond_45
    sget-object p1, Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView$LayoutOrientation;->Unknown:Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView$LayoutOrientation;

    return-object p1
.end method

.method private in(III)Z
    .registers 4

    if-lt p1, p2, :cond_6

    if-gt p1, p3, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method private isMatchEarthLevel(I)Z
    .registers 5

    const/4 v0, 0x1

    if-le p1, v0, :cond_2a

    rsub-int v1, p1, 0x168

    if-gt v1, v0, :cond_8

    goto :goto_2a

    :cond_8
    const/16 v1, 0x59

    const/16 v2, 0x5b

    .line 186
    invoke-direct {p0, p1, v1, v2}, Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView;->in(III)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_2a

    :cond_13
    const/16 v1, 0xb3

    const/16 v2, 0xb5

    .line 188
    invoke-direct {p0, p1, v1, v2}, Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView;->in(III)Z

    move-result v1

    if-eqz v1, :cond_1e

    goto :goto_2a

    :cond_1e
    const/16 v1, 0x10d

    const/16 v2, 0x10f

    .line 190
    invoke-direct {p0, p1, v1, v2}, Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView;->in(III)Z

    move-result p1

    if-eqz p1, :cond_29

    goto :goto_2a

    :cond_29
    const/4 v0, 0x0

    :cond_2a
    :goto_2a
    return v0
.end method

.method private updateUiOrientation(Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView$LayoutOrientation;)V
    .registers 8

    .line 127
    sget-object v0, Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView$LayoutOrientation;->Portrait:Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView$LayoutOrientation;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1a

    sget-object v0, Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView$LayoutOrientation;->ReversePortrait:Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView$LayoutOrientation;

    if-ne p1, v0, :cond_a

    goto :goto_1a

    .line 130
    :cond_a
    sget-object v0, Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView$LayoutOrientation;->Landscape:Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView$LayoutOrientation;

    if-ne p1, v0, :cond_11

    const/16 p1, -0x5a

    goto :goto_1b

    .line 132
    :cond_11
    sget-object v0, Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView$LayoutOrientation;->ReverseLandscape:Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView$LayoutOrientation;

    if-ne p1, v0, :cond_18

    const/16 p1, 0x5a

    goto :goto_1b

    :cond_18
    move p1, v1

    goto :goto_1b

    :cond_1a
    :goto_1a
    move p1, v1

    .line 135
    :goto_1b
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView;->mHorizontalLine:Landroid/widget/ImageView;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 137
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView;->mFrame:Landroid/widget/ImageView;

    const-string v2, "rotation"

    const/4 v3, 0x1

    new-array v4, v3, [F

    aput p1, v4, v1

    invoke-static {v0, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v4, 0x28

    .line 138
    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 139
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 140
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 142
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView;->mBaseLine:Landroid/widget/ImageView;

    const-string v2, "rotation"

    new-array v3, v3, [F

    aput p1, v3, v1

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 143
    invoke-virtual {p1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 144
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 145
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method


# virtual methods
.method public disable()V
    .registers 2

    const/16 v0, 0x8

    .line 78
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView;->setVisibility(I)V

    return-void
.end method

.method public enable()V
    .registers 2

    const/4 v0, 0x0

    .line 71
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView;->setVisibility(I)V

    return-void
.end method

.method public onFinishInflate()V
    .registers 2

    .line 60
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f09003e

    .line 61
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView;->mBaseLine:Landroid/widget/ImageView;

    const v0, 0x7f09001d

    .line 62
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView;->mAdjustingLine:Landroid/widget/ImageView;

    const v0, 0x7f0900cd

    .line 63
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView;->mHorizontalLine:Landroid/widget/ImageView;

    const v0, 0x7f0900bf

    .line 64
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView;->mFrame:Landroid/widget/ImageView;

    return-void
.end method

.method public setOrientationDegree(I)V
    .registers 9

    .line 87
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView;->getLayoutOrientation(I)Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView$LayoutOrientation;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView;->mLastLayoutOrientation:Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView$LayoutOrientation;

    if-eq v0, v1, :cond_d

    .line 89
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView;->mLastLayoutOrientation:Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView$LayoutOrientation;

    .line 90
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView;->updateUiOrientation(Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView$LayoutOrientation;)V

    .line 93
    :cond_d
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView;->isMatchEarthLevel(I)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_26

    .line 95
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView;->mBaseLine:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 96
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView;->mAdjustingLine:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 97
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView;->mHorizontalLine:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_43

    .line 98
    :cond_26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView;->mLastUpdateTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x28

    cmp-long v3, v3, v5

    if-gez v3, :cond_34

    return-void

    .line 101
    :cond_34
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView;->mBaseLine:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 102
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView;->mAdjustingLine:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 103
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView;->mHorizontalLine:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 106
    :goto_43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView;->mLastUpdateTime:J

    const/16 v1, 0xb4

    if-le p1, v1, :cond_50

    rsub-int p1, p1, 0x168

    goto :goto_52

    :cond_50
    rsub-int/lit8 p1, p1, 0x0

    .line 114
    :goto_52
    iget v1, p0, Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView;->mLastAngle:F

    int-to-float p1, p1

    sub-float v2, v1, p1

    const/high16 v3, 0x40000000    # 2.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_67

    sub-float/2addr v1, p1

    const/high16 v2, -0x40000000    # -2.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_67

    if-nez v0, :cond_67

    return-void

    .line 121
    :cond_67
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView;->mAdjustingLine:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 122
    iput p1, p0, Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView;->mLastAngle:F

    return-void
.end method
