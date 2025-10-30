.class public Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;
.super Landroid/widget/TextView;
.source "ModeSelectorButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton$Type;
    }
.end annotation


# static fields
.field private static final GRAY_OUT_ALPHA:F = 0.4f

.field private static final VISIBLE_ALPHA:F = 1.0f


# instance fields
.field private mIsAvailable:Z

.field private mIsGray:Z

.field private mIsTouchable:Z

.field private mOrientation:I

.field private mRequestVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 63
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 64
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 68
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->init()V

    return-void
.end method

.method private init()V
    .registers 2

    const/4 v0, 0x0

    .line 136
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->mIsAvailable:Z

    .line 137
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->mRequestVisible:Z

    .line 138
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->mIsGray:Z

    const/4 v0, 0x1

    .line 139
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->mIsTouchable:Z

    .line 140
    sget-object v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->MEDIUM:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    invoke-static {p0, v0}, Lcom/sonymobile/cameracommon/font/FontUtil;->setRobotoFont(Landroid/widget/TextView;Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;)Z

    .line 141
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->update()V

    return-void
.end method

.method private setTextResource(I)V
    .registers 3

    const/4 v0, -0x1

    if-ne v0, p1, :cond_9

    const-string p1, ""

    .line 160
    invoke-super {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_18

    .line 162
    :cond_9
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_18
    return-void
.end method

.method private update()V
    .registers 4

    .line 145
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->mIsAvailable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3b

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->mRequestVisible:Z

    if-eqz v0, :cond_3b

    .line 146
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->setVisibility(I)V

    .line 147
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->mIsTouchable:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->mIsGray:Z

    if-nez v0, :cond_17

    move v0, v2

    goto :goto_18

    :cond_17
    move v0, v1

    :goto_18
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->setClickable(Z)V

    .line 148
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->mIsGray:Z

    if-eqz v0, :cond_23

    const v0, 0x3ecccccd    # 0.4f

    goto :goto_25

    :cond_23
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_25
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->setAlpha(F)V

    .line 149
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_37

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->mIsTouchable:Z

    if-eqz v0, :cond_37

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->mIsGray:Z

    if-nez v0, :cond_37

    move v1, v2

    :cond_37
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->setPressed(Z)V

    goto :goto_49

    :cond_3b
    const/16 v0, 0x8

    .line 151
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->setVisibility(I)V

    .line 152
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->setClickable(Z)V

    .line 153
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->setPressed(Z)V

    .line 154
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->setSelected(Z)V

    :goto_49
    return-void
.end method


# virtual methods
.method public grayOut()V
    .registers 2

    const/4 v0, 0x1

    .line 121
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->mIsGray:Z

    .line 122
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->update()V

    return-void
.end method

.method public hide()V
    .registers 2

    const/4 v0, 0x0

    .line 116
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->mRequestVisible:Z

    .line 117
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->update()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 87
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    .line 88
    iget p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->mOrientation:I

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->setUiOrientation(I)V

    return-void
.end method

.method public set(Z)V
    .registers 2

    .line 131
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->mIsAvailable:Z

    .line 132
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->update()V

    return-void
.end method

.method public setTouchable(Z)V
    .registers 2

    .line 126
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->mIsTouchable:Z

    .line 127
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->update()V

    return-void
.end method

.method public setUiOrientation(I)V
    .registers 6

    .line 73
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->mOrientation:I

    .line 74
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->getWidth()I

    move-result v0

    .line 75
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->getHeight()I

    move-result v1

    if-eqz v0, :cond_27

    if-eqz v1, :cond_27

    int-to-float v0, v0

    const/high16 v2, 0x40800000    # 4.0f

    div-float/2addr v0, v2

    int-to-float v3, v1

    div-float/2addr v3, v2

    add-float/2addr v3, v0

    .line 78
    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->setPivotX(F)V

    mul-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    div-float/2addr v1, v2

    sub-float/2addr v1, v0

    .line 79
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->setPivotY(F)V

    .line 80
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getAngle(I)F

    move-result p1

    .line 81
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->setRotation(F)V

    :cond_27
    return-void
.end method

.method public show()V
    .registers 2

    const/4 v0, 0x1

    .line 110
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->mRequestVisible:Z

    const/4 v0, 0x0

    .line 111
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->mIsGray:Z

    .line 112
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->update()V

    return-void
.end method

.method public update(Z)V
    .registers 5

    .line 93
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_9

    .line 96
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton$Type;->RETURN:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton$Type;

    goto :goto_b

    .line 98
    :cond_9
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton$Type;->MODE_SELECTOR:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton$Type;

    .line 100
    :goto_b
    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton$Type;->mBackgroundId:I
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton$Type;->access$000(Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton$Type;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->setBackgroundResource(I)V

    .line 101
    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton$Type;->mStringId:I
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton$Type;->access$100(Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton$Type;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->setTextResource(I)V

    .line 103
    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton$Type;->mContentDescriptionId:I
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton$Type;->access$200(Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton$Type;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 102
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 105
    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton$Type;->mMinWidthId:I
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton$Type;->access$300(Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton$Type;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_34

    .line 106
    # getter for: Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton$Type;->mMinWidthId:I
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton$Type;->access$300(Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton$Type;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_35

    :cond_34
    const/4 p1, 0x0

    .line 104
    :goto_35
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->setMinimumWidth(I)V

    return-void
.end method
