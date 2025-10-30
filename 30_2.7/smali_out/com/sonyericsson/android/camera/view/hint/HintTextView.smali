.class public Lcom/sonyericsson/android/camera/view/hint/HintTextView;
.super Landroid/widget/FrameLayout;
.source "HintTextView.java"


# instance fields
.field private mButton:Landroid/widget/Button;

.field private mLayoutContainer:Landroid/widget/LinearLayout;

.field private mLayoutGravity:I

.field private mMessage:Landroid/widget/TextView;

.field private mMessageBackground:Landroid/view/View;

.field private mOrientation:I

.field private mSendAccessibilityEventTask:Ljava/lang/Runnable;

.field private mTransparentBackground:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 39
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mTransparentBackground:Z

    .line 47
    new-instance p1, Lcom/sonyericsson/android/camera/view/hint/HintTextView$1;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView$1;-><init>(Lcom/sonyericsson/android/camera/view/hint/HintTextView;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mSendAccessibilityEventTask:Ljava/lang/Runnable;

    return-void
.end method

.method private getBottomMarginPixelSize(I)I
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_f

    .line 222
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0700c2

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1

    .line 224
    :cond_f
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0700c1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1
.end method

.method public static inflate(Landroid/content/Context;)Lcom/sonyericsson/android/camera/view/hint/HintTextView;
    .registers 3

    const v0, 0x7f0c0052

    const/4 v1, 0x0

    .line 55
    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;

    return-object p0
.end method

.method private postAccessibilityEvent()V
    .registers 2

    .line 179
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mSendAccessibilityEventTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 180
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mSendAccessibilityEventTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setButtonDescription(I)V
    .registers 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_b

    .line 160
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mButton:Landroid/widget/Button;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    .line 164
    :cond_b
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 165
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setButtonMessage(I)V
    .registers 8

    const v0, 0x7f0901d2

    .line 128
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090044

    .line 129
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 131
    iget v2, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mLayoutGravity:I

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/16 v5, 0x30

    if-ne v2, v5, :cond_1e

    .line 132
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 133
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_24

    .line 135
    :cond_1e
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 136
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_24
    const/4 v0, -0x1

    if-ne p1, v0, :cond_2d

    .line 140
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mButton:Landroid/widget/Button;

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setVisibility(I)V

    return-void

    .line 144
    :cond_2d
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mButton:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_3a

    .line 145
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mButton:Landroid/widget/Button;

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setVisibility(I)V

    :cond_3a
    return-void
.end method

.method private setMessageContents(I)V
    .registers 4

    const/4 v0, -0x1

    if-ne p1, v0, :cond_10

    .line 116
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mMessage:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 117
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mMessageBackground:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 120
    :cond_10
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_23

    .line 121
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mMessage:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mMessageBackground:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 124
    :cond_23
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private setMessageDescription(I)V
    .registers 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    return-void

    .line 154
    :cond_4
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 155
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setTransparentBackground(Z)V
    .registers 3

    .line 262
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mTransparentBackground:Z

    .line 263
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mMessage:Landroid/widget/TextView;

    if-eqz p1, :cond_11

    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mTransparentBackground:Z

    if-eqz p1, :cond_11

    .line 264
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mMessageBackground:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_19

    .line 266
    :cond_11
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mMessageBackground:Landroid/view/View;

    const v0, 0x7f080220

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_19
    return-void
.end method

.method private updateRotation()V
    .registers 5

    .line 230
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getMeasuredWidth()I

    move-result v0

    .line 231
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getMeasuredHeight()I

    move-result v1

    .line 232
    iget v2, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mOrientation:I

    invoke-static {v2}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getAngle(I)F

    move-result v2

    .line 234
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getRotation()F

    move-result v3

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_19

    .line 235
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->setRotation(F)V

    :cond_19
    if-eqz v0, :cond_3c

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_26

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v3, v0, v1

    :cond_26
    float-to-int v0, v3

    .line 247
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getTranslationX()F

    move-result v1

    float-to-int v1, v1

    if-eq v0, v1, :cond_3c

    .line 248
    iget v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mLayoutGravity:I

    const/16 v1, 0x30

    if-ne v0, v1, :cond_39

    neg-float v0, v3

    .line 249
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->setTranslationX(F)V

    goto :goto_3c

    .line 251
    :cond_39
    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->setTranslationX(F)V

    :cond_3c
    :goto_3c
    return-void
.end method


# virtual methods
.method public onFinishInflate()V
    .registers 3

    .line 61
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0900bd

    .line 63
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mLayoutContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f0900be

    .line 64
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mMessage:Landroid/widget/TextView;

    const v0, 0x7f090048

    .line 65
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mButton:Landroid/widget/Button;

    const v0, 0x7f0900bf

    .line 66
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mMessageBackground:Landroid/view/View;

    .line 68
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mMessage:Landroid/widget/TextView;

    sget-object v1, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->MEDIUM:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/font/FontUtil;->setRobotoFont(Landroid/widget/TextView;Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;)Z

    .line 69
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mButton:Landroid/widget/Button;

    sget-object v1, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->MEDIUM:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/font/FontUtil;->setRobotoFont(Landroid/widget/Button;Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;)Z

    return-void
.end method

.method protected onMeasure(II)V
    .registers 5

    .line 185
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 186
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->updateRotation()V

    .line 190
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_28

    .line 191
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mLayoutContainer:Landroid/widget/LinearLayout;

    .line 192
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 193
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 194
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :cond_28
    return-void
.end method

.method public setContent(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)V
    .registers 4

    .line 90
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getMessageResourceId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->setMessageContents(I)V

    .line 91
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getButtonMessageResourceId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->setButtonMessage(I)V

    .line 92
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getMessageDescriptionResourceId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->setMessageDescription(I)V

    .line 93
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getButtonDescriptionResourceId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->setButtonDescription(I)V

    .line 94
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->isTransparentBackground()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->setTransparentBackground(Z)V

    .line 96
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getMessageDescriptionResourceId()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, -0x1

    if-ne p1, v1, :cond_2f

    .line 97
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->setImportantForAccessibility(I)V

    goto :goto_33

    :cond_2f
    const/4 p1, 0x1

    .line 99
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->setImportantForAccessibility(I)V

    .line 102
    :goto_33
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3c

    .line 103
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->postAccessibilityEvent()V

    .line 106
    :cond_3c
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mButton:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getVisibility()I

    move-result p1

    if-nez p1, :cond_5d

    .line 107
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getHeight()I

    move-result p1

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getWidth()I

    move-result v1

    mul-int/2addr v1, v0

    sub-int/2addr p1, v1

    .line 108
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMaxWidth()I

    move-result v0

    if-le v0, p1, :cond_5d

    .line 109
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_5d
    return-void
.end method

.method public setLayoutGravity(I)V
    .registers 3

    .line 82
    iput p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mLayoutGravity:I

    .line 83
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mLayoutContainer:Landroid/widget/LinearLayout;

    .line 84
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 85
    iget v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mLayoutGravity:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 86
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setOnButtonClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3

    .line 73
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setUiOrientation(Landroid/graphics/Rect;Landroid/content/Context;Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;I)V
    .registers 5

    .line 201
    iput p4, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mOrientation:I

    .line 202
    iget p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mLayoutGravity:I

    const/16 p2, 0x30

    if-ne p1, p2, :cond_41

    const/4 p1, 0x1

    const p2, 0x7f0901d2

    if-ne p4, p1, :cond_24

    .line 204
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f0700c6

    .line 205
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_39

    .line 207
    :cond_24
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f0700c5

    .line 208
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 210
    :goto_39
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    goto :goto_59

    :cond_41
    const p1, 0x7f090044

    .line 212
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 213
    invoke-direct {p0, p4}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getBottomMarginPixelSize(I)I

    move-result p3

    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 214
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 217
    :goto_59
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->updateRotation()V

    return-void
.end method

.method public setVisibility(I)V
    .registers 3

    .line 169
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_a

    if-nez p1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 171
    :goto_b
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-eqz v0, :cond_13

    .line 174
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->postAccessibilityEvent()V

    :cond_13
    return-void
.end method
