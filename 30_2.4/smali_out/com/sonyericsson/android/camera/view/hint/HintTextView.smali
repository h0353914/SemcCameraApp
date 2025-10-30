.class public Lcom/sonyericsson/android/camera/view/hint/HintTextView;
.super Landroid/widget/FrameLayout;
.source "HintTextView.java"


# instance fields
.field private mButton:Landroid/widget/Button;

.field private mLayoutContainer:Landroid/widget/LinearLayout;

.field private mLayoutGravity:I

.field protected mMessage:Landroid/widget/TextView;

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

    .line 252
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0700d2

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1

    .line 254
    :cond_f
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0700d1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1
.end method

.method public static inflate(Landroid/content/Context;)Lcom/sonyericsson/android/camera/view/hint/HintTextView;
    .registers 3

    const v0, 0x7f0b004f

    const/4 v1, 0x0

    .line 55
    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;

    return-object p0
.end method

.method private postAccessibilityEvent()V
    .registers 2

    .line 181
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mSendAccessibilityEventTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 182
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mSendAccessibilityEventTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setButtonDescription(I)V
    .registers 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_b

    .line 162
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mButton:Landroid/widget/Button;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    .line 166
    :cond_b
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 167
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setButtonMessage(I)V
    .registers 8

    const v0, 0x7f0901e0

    .line 130
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090044

    .line 131
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 133
    iget v2, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mLayoutGravity:I

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/16 v5, 0x30

    if-ne v2, v5, :cond_1e

    .line 134
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 135
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_24

    .line 137
    :cond_1e
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 138
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_24
    const/4 v0, -0x1

    if-ne p1, v0, :cond_2d

    .line 142
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mButton:Landroid/widget/Button;

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setVisibility(I)V

    return-void

    .line 146
    :cond_2d
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mButton:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_3a

    .line 147
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mButton:Landroid/widget/Button;

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setVisibility(I)V

    :cond_3a
    return-void
.end method

.method private setMessageContents(I)V
    .registers 4

    const/4 v0, -0x1

    if-ne p1, v0, :cond_10

    .line 109
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mMessage:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mMessageBackground:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 113
    :cond_10
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_23

    .line 114
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mMessage:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mMessageBackground:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 117
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

    .line 156
    :cond_4
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 157
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setTransparentBackground(Z)V
    .registers 3

    .line 292
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mTransparentBackground:Z

    .line 293
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mMessage:Landroid/widget/TextView;

    if-eqz p1, :cond_11

    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mTransparentBackground:Z

    if-eqz p1, :cond_11

    .line 294
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mMessageBackground:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_19

    .line 296
    :cond_11
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mMessageBackground:Landroid/view/View;

    const v0, 0x7f08022b

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_19
    return-void
.end method

.method private updateRotation()V
    .registers 5

    .line 260
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getMeasuredWidth()I

    move-result v0

    .line 261
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getMeasuredHeight()I

    move-result v1

    .line 262
    iget v2, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mOrientation:I

    invoke-static {v2}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getAngle(I)F

    move-result v2

    .line 264
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getRotation()F

    move-result v3

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_19

    .line 265
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

    .line 277
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getTranslationX()F

    move-result v1

    float-to-int v1, v1

    if-eq v0, v1, :cond_3c

    .line 278
    iget v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mLayoutGravity:I

    const/16 v1, 0x30

    if-ne v0, v1, :cond_39

    neg-float v0, v3

    .line 279
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->setTranslationX(F)V

    goto :goto_3c

    .line 281
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

    const v0, 0x7f0900c6

    .line 63
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mLayoutContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f0900c7

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

    const v0, 0x7f0900c8

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

    .line 187
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 188
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->updateRotation()V

    .line 192
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_28

    .line 193
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mLayoutContainer:Landroid/widget/LinearLayout;

    .line 194
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 195
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 196
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 199
    :cond_28
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mButton:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getVisibility()I

    move-result p1

    if-nez p1, :cond_4a

    .line 200
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getMeasuredHeight()I

    move-result p1

    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mButton:Landroid/widget/Button;

    invoke-virtual {p2}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result p2

    mul-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    .line 201
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mMessage:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getMaxWidth()I

    move-result p2

    if-le p2, p1, :cond_4a

    .line 202
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mMessage:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_4a
    return-void
.end method

.method public setContent(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)V
    .registers 3

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

    const/4 v0, -0x1

    if-ne p1, v0, :cond_2f

    const/4 p1, 0x2

    .line 97
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->setImportantForAccessibility(I)V

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

    :cond_3c
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

.method public setMoveFocusToMessage()V
    .registers 3

    .line 124
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mMessage:Landroid/widget/TextView;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_11

    .line 125
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mMessage:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    :cond_11
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
    .registers 9

    .line 209
    iput p4, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mOrientation:I

    .line 210
    iget v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mLayoutGravity:I

    const/4 v1, 0x1

    const/16 v2, 0x30

    if-ne v0, v2, :cond_41

    const v0, 0x7f0901e0

    if-ne p4, v1, :cond_24

    .line 212
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->findViewById(I)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700d6

    .line 213
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p4, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_39

    .line 215
    :cond_24
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->findViewById(I)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700d5

    .line 216
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 218
    :goto_39
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->findViewById(I)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->requestLayout()V

    goto :goto_59

    :cond_41
    const v0, 0x7f090044

    .line 220
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 221
    invoke-direct {p0, p4}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getBottomMarginPixelSize(I)I

    move-result p4

    iput p4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 222
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->findViewById(I)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->requestLayout()V

    .line 225
    :goto_59
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p4

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {p4, v0}, Ljava/lang/Math;->max(II)I

    move-result p4

    int-to-float p4, p4

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p4, v0

    .line 226
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f400000    # 0.75f

    div-float/2addr p1, p4

    cmpg-float p1, p1, v0

    const/4 v2, 0x0

    if-gez p1, :cond_97

    .line 228
    iget p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mOrientation:I

    if-ne p1, v1, :cond_97

    .line 233
    invoke-static {p2, v0, p3}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getSurfaceViewRect(Landroid/content/Context;FLcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;)Landroid/graphics/Rect;

    move-result-object p1

    float-to-int p2, p4

    .line 235
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    sub-int p1, p2, p1

    .line 240
    sget-object p2, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;->TWENTYONE_NINE:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    if-ne p3, p2, :cond_93

    move p1, v2

    .line 243
    :cond_93
    invoke-virtual {p0, v2, v2, v2, p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->setPadding(IIII)V

    goto :goto_9a

    .line 245
    :cond_97
    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->setPadding(IIII)V

    .line 247
    :goto_9a
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->updateRotation()V

    return-void
.end method

.method public setVisibility(I)V
    .registers 3

    .line 171
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_a

    if-nez p1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 173
    :goto_b
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-eqz v0, :cond_13

    .line 176
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->postAccessibilityEvent()V

    :cond_13
    return-void
.end method
