.class public Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;
.super Landroid/widget/FrameLayout;
.source "SelfTimerCountDownView.java"


# instance fields
.field mIsHideHintText:Z

.field private mLeftSelfTimerCountDownNumberView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

.field private mLeftSelfTimerCountDownNumberViewPort:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

.field private mRightSelfTimerCountDownNumberView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

.field private mRightSelfTimerCountDownNumberViewPort:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

.field private mSelfTimerCountDownCircleView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;

.field private mSelfTimerCountDownCircleViewPort:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 35
    iput-boolean p1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mIsHideHintText:Z

    return-void
.end method


# virtual methods
.method public cancelSelfTimerCountDownAnimation()V
    .registers 2

    .line 105
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mSelfTimerCountDownCircleView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;

    if-eqz v0, :cond_9

    .line 106
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mSelfTimerCountDownCircleView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->cancelSelfTimerAnimation()V

    .line 109
    :cond_9
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mSelfTimerCountDownCircleViewPort:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;

    if-eqz v0, :cond_12

    .line 110
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mSelfTimerCountDownCircleViewPort:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->cancelSelfTimerAnimation()V

    .line 113
    :cond_12
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mLeftSelfTimerCountDownNumberView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    if-eqz v0, :cond_1b

    .line 114
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mLeftSelfTimerCountDownNumberView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->cancelSelfTimerAnimation()V

    .line 117
    :cond_1b
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mRightSelfTimerCountDownNumberView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    if-eqz v0, :cond_24

    .line 118
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mRightSelfTimerCountDownNumberView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->cancelSelfTimerAnimation()V

    .line 121
    :cond_24
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mLeftSelfTimerCountDownNumberViewPort:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    if-eqz v0, :cond_2d

    .line 122
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mLeftSelfTimerCountDownNumberViewPort:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->cancelSelfTimerAnimation()V

    .line 125
    :cond_2d
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mRightSelfTimerCountDownNumberViewPort:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    if-eqz v0, :cond_36

    .line 126
    iget-object p0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mRightSelfTimerCountDownNumberViewPort:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->cancelSelfTimerAnimation()V

    :cond_36
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 64
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onFinishInflate()V
    .registers 4

    .line 43
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f090142

    .line 44
    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mSelfTimerCountDownCircleView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;

    const v0, 0x7f090143

    .line 46
    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mSelfTimerCountDownCircleViewPort:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;

    const v0, 0x7f0900be

    .line 48
    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mLeftSelfTimerCountDownNumberView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    .line 50
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mLeftSelfTimerCountDownNumberView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setIsTenDigit(Z)V

    const v0, 0x7f090119

    .line 51
    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mRightSelfTimerCountDownNumberView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    .line 53
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mRightSelfTimerCountDownNumberView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setIsTenDigit(Z)V

    const v0, 0x7f0900bf

    .line 54
    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mLeftSelfTimerCountDownNumberViewPort:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    .line 56
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mLeftSelfTimerCountDownNumberViewPort:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setIsTenDigit(Z)V

    const v0, 0x7f09011a

    .line 57
    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mRightSelfTimerCountDownNumberViewPort:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    .line 59
    iget-object p0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mRightSelfTimerCountDownNumberViewPort:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    invoke-virtual {p0, v2}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setIsTenDigit(Z)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 3

    .line 160
    invoke-super {p0, p2, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setSelfTimer(Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;)V
    .registers 3

    .line 131
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mSelfTimerCountDownCircleView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;

    if-eqz v0, :cond_9

    .line 132
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mSelfTimerCountDownCircleView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;

    invoke-virtual {v0, p1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->setSelfTimer(Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;)V

    .line 135
    :cond_9
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mSelfTimerCountDownCircleViewPort:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;

    if-eqz v0, :cond_12

    .line 136
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mSelfTimerCountDownCircleViewPort:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;

    invoke-virtual {v0, p1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->setSelfTimer(Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;)V

    .line 139
    :cond_12
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mLeftSelfTimerCountDownNumberView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    if-eqz v0, :cond_1b

    .line 140
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mLeftSelfTimerCountDownNumberView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    invoke-virtual {v0, p1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setSelfTimer(Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;)V

    .line 143
    :cond_1b
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mRightSelfTimerCountDownNumberView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    if-eqz v0, :cond_24

    .line 144
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mRightSelfTimerCountDownNumberView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    invoke-virtual {v0, p1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setSelfTimer(Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;)V

    .line 147
    :cond_24
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mLeftSelfTimerCountDownNumberViewPort:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    if-eqz v0, :cond_2d

    .line 148
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mLeftSelfTimerCountDownNumberViewPort:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    invoke-virtual {v0, p1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setSelfTimer(Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;)V

    .line 151
    :cond_2d
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mRightSelfTimerCountDownNumberViewPort:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    if-eqz v0, :cond_36

    .line 152
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mRightSelfTimerCountDownNumberViewPort:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    invoke-virtual {v0, p1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setSelfTimer(Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;)V

    .line 155
    :cond_36
    invoke-interface {p1}, Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;->getCountDownIconId()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_3f

    const/4 p1, 0x1

    goto :goto_40

    :cond_3f
    const/4 p1, 0x0

    :goto_40
    iput-boolean p1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mIsHideHintText:Z

    return-void
.end method

.method public setSensorOrientation(I)V
    .registers 6

    .line 164
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getAngle(I)F

    move-result v0

    .line 165
    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->setRotation(F)V

    const v0, 0x7f090145

    .line 166
    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090146

    .line 168
    invoke-virtual {p0, v1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne p1, v3, :cond_25

    .line 172
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 173
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2b

    .line 175
    :cond_25
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 176
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_2b
    return-void
.end method

.method public startSelfTimerCountDownAnimation(Z)V
    .registers 4

    const v0, 0x7f090149

    .line 68
    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f09014a

    .line 69
    invoke-virtual {p0, v1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz p1, :cond_20

    .line 71
    iget-boolean p1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mIsHideHintText:Z

    if-nez p1, :cond_20

    const/4 p1, 0x0

    .line 72
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 73
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_27

    :cond_20
    const/4 p1, 0x4

    .line 75
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 76
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 79
    :goto_27
    iget-object p1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mLeftSelfTimerCountDownNumberView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    if-eqz p1, :cond_30

    .line 80
    iget-object p1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mLeftSelfTimerCountDownNumberView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    invoke-virtual {p1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->startAnimation()V

    .line 83
    :cond_30
    iget-object p1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mRightSelfTimerCountDownNumberView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    if-eqz p1, :cond_39

    .line 84
    iget-object p1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mRightSelfTimerCountDownNumberView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    invoke-virtual {p1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->startAnimation()V

    .line 87
    :cond_39
    iget-object p1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mLeftSelfTimerCountDownNumberViewPort:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    if-eqz p1, :cond_42

    .line 88
    iget-object p1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mLeftSelfTimerCountDownNumberViewPort:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    invoke-virtual {p1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->startAnimation()V

    .line 91
    :cond_42
    iget-object p1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mRightSelfTimerCountDownNumberViewPort:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    if-eqz p1, :cond_4b

    .line 92
    iget-object p1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mRightSelfTimerCountDownNumberViewPort:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    invoke-virtual {p1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->startAnimation()V

    .line 95
    :cond_4b
    iget-object p1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mSelfTimerCountDownCircleView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;

    if-eqz p1, :cond_54

    .line 96
    iget-object p1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mSelfTimerCountDownCircleView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;

    invoke-virtual {p1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->startAnimation()V

    .line 99
    :cond_54
    iget-object p1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mSelfTimerCountDownCircleViewPort:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;

    if-eqz p1, :cond_5d

    .line 100
    iget-object p0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mSelfTimerCountDownCircleViewPort:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->startAnimation()V

    :cond_5d
    return-void
.end method
