.class public Lcom/sonyericsson/android/camera/view/hint/HintTextView;
.super Landroid/widget/FrameLayout;
.source "HintTextView.java"


# instance fields
.field private mLayoutContainer:Landroid/widget/LinearLayout;

.field private mLayoutGravity:I

.field private mLeftButton:Landroid/widget/Button;

.field private mMessage:Landroid/widget/TextView;

.field private mMessageBackground:Landroid/view/View;

.field protected mMessageContent:Ljava/lang/String;

.field protected mMessageWrapType:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$MessageWrapType;

.field private mOrientation:I

.field private mRightButton:Landroid/widget/Button;

.field private mSendAccessibilityEventTask:Ljava/lang/Runnable;

.field private mTransparentBackground:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 53
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mTransparentBackground:Z

    .line 61
    new-instance p1, Lcom/sonyericsson/android/camera/view/hint/HintTextView$1;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView$1;-><init>(Lcom/sonyericsson/android/camera/view/hint/HintTextView;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mSendAccessibilityEventTask:Ljava/lang/Runnable;

    return-void
.end method

.method private getBottomMarginPixelSize(I)I
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_f

    .line 326
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0700c7

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1

    .line 328
    :cond_f
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0700c6

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1
.end method

.method public static inflate(Landroid/content/Context;)Lcom/sonyericsson/android/camera/view/hint/HintTextView;
    .registers 3

    const v0, 0x7f0c0052

    const/4 v1, 0x0

    .line 69
    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;

    return-object p0
.end method

.method private postAccessibilityEvent()V
    .registers 2

    .line 283
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mSendAccessibilityEventTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 284
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mSendAccessibilityEventTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setLeftButtonContent(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)V
    .registers 8

    const v0, 0x7f0901d7

    .line 201
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090045

    .line 202
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 204
    iget v2, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mLayoutGravity:I

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/16 v5, 0x30

    if-ne v2, v5, :cond_1e

    .line 205
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 206
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_24

    .line 208
    :cond_1e
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 209
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 212
    :goto_24
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getLeftButtonResourceId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3a

    .line 213
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getLeftButtonResourceId()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 214
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_3f

    .line 216
    :cond_3a
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setVisibility(I)V

    :goto_3f
    return-void
.end method

.method private setLeftButtonDescription(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)V
    .registers 3

    .line 251
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getLeftButtonDescriptionResourceId()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_f

    .line 253
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mLeftButton:Landroid/widget/Button;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    .line 257
    :cond_f
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 258
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setMessageContent(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)V
    .registers 4

    .line 147
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getMessageString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_60

    .line 148
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getMessageWrapType()Lcom/sonyericsson/android/camera/view/hint/HintTextContent$MessageWrapType;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mMessageWrapType:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$MessageWrapType;

    .line 149
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getMessageString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mMessageContent:Ljava/lang/String;

    .line 150
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mMessage:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getMessageLines()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 151
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mMessageWrapType:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$MessageWrapType;

    sget-object v1, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$MessageWrapType;->FORCE_WRAP:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$MessageWrapType;

    if-ne v0, v1, :cond_33

    .line 152
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mMessage:Landroid/widget/TextView;

    const v1, 0x800013

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 154
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mMessage:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getMessageString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_43

    .line 156
    :cond_33
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mMessage:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 157
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mMessage:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getMessageString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    :goto_43
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mMessage:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getMessageListener()Landroid/view/View$OnClickListener;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mMessage:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_5f

    .line 168
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mMessage:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 169
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mMessageBackground:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_5f
    return-void

    :cond_60
    const/4 p1, 0x0

    .line 161
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mMessageContent:Ljava/lang/String;

    .line 162
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mMessage:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 163
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mMessageBackground:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setMessageDescription(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)V
    .registers 3

    .line 241
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getMessageDescriptionResourceId()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_8

    return-void

    .line 246
    :cond_8
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 247
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setRightButtonContent(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)V
    .registers 8

    const v0, 0x7f0901d7

    .line 221
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090045

    .line 222
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 224
    iget v2, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mLayoutGravity:I

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/16 v5, 0x30

    if-ne v2, v5, :cond_1e

    .line 225
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 226
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_24

    .line 228
    :cond_1e
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 229
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 232
    :goto_24
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getRightButtonResourceId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3a

    .line 233
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mRightButton:Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getRightButtonResourceId()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 234
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mRightButton:Landroid/widget/Button;

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_3f

    .line 236
    :cond_3a
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mRightButton:Landroid/widget/Button;

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setVisibility(I)V

    :goto_3f
    return-void
.end method

.method private setRightButtonDescription(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)V
    .registers 3

    .line 262
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getRightButtonDescriptionResourceId()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_f

    .line 264
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mRightButton:Landroid/widget/Button;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    .line 268
    :cond_f
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 269
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setTransparentBackground(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)V
    .registers 3

    .line 366
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->isTransparentBackground()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mTransparentBackground:Z

    .line 367
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mMessage:Landroid/widget/TextView;

    if-eqz p1, :cond_15

    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mTransparentBackground:Z

    if-eqz p1, :cond_15

    .line 368
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mMessageBackground:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1d

    .line 370
    :cond_15
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mMessageBackground:Landroid/view/View;

    const v0, 0x7f08022f

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_1d
    return-void
.end method

.method private updateRotation()V
    .registers 5

    .line 334
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getMeasuredWidth()I

    move-result v0

    .line 335
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getMeasuredHeight()I

    move-result v1

    .line 336
    iget v2, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mOrientation:I

    invoke-static {v2}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getAngle(I)F

    move-result v2

    .line 338
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getRotation()F

    move-result v3

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_19

    .line 339
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

    .line 351
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getTranslationX()F

    move-result v1

    float-to-int v1, v1

    if-eq v0, v1, :cond_3c

    .line 352
    iget v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mLayoutGravity:I

    const/16 v1, 0x30

    if-ne v0, v1, :cond_39

    neg-float v0, v3

    .line 353
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->setTranslationX(F)V

    goto :goto_3c

    .line 355
    :cond_39
    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->setTranslationX(F)V

    :cond_3c
    :goto_3c
    return-void
.end method

.method private wrapText(Landroid/widget/TextView;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .line 174
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {p1}, Landroid/widget/TextView;->getMaxWidth()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1a

    .line 179
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_49

    :cond_1a
    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v3

    .line 185
    :goto_1d
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_49

    .line 186
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 187
    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    add-float/2addr v4, v6

    .line 188
    invoke-virtual {p1}, Landroid/widget/TextView;->getMaxWidth()I

    move-result v6

    int-to-float v6, v6

    cmpg-float v6, v4, v6

    if-gtz v6, :cond_3d

    .line 189
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_46

    :cond_3d
    const-string v4, "\n"

    .line 192
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v4, v3

    :goto_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 197
    :cond_49
    :goto_49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public onFinishInflate()V
    .registers 3

    .line 75
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0900be

    .line 77
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mLayoutContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f0900c0

    .line 78
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mMessage:Landroid/widget/TextView;

    const v0, 0x7f0900bf

    .line 79
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mLeftButton:Landroid/widget/Button;

    const v0, 0x7f0900c2

    .line 80
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mRightButton:Landroid/widget/Button;

    const v0, 0x7f0900c1

    .line 81
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mMessageBackground:Landroid/view/View;

    .line 83
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mMessage:Landroid/widget/TextView;

    sget-object v1, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->MEDIUM:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/font/FontUtil;->setRobotoFont(Landroid/widget/TextView;Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;)Z

    .line 84
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mLeftButton:Landroid/widget/Button;

    sget-object v1, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->MEDIUM:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/font/FontUtil;->setRobotoFont(Landroid/widget/Button;Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;)Z

    .line 85
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mRightButton:Landroid/widget/Button;

    sget-object v1, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->MEDIUM:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/font/FontUtil;->setRobotoFont(Landroid/widget/Button;Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;)Z

    return-void
.end method

.method protected onMeasure(II)V
    .registers 5

    .line 289
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 290
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->updateRotation()V

    .line 294
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_28

    .line 295
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mLayoutContainer:Landroid/widget/LinearLayout;

    .line 296
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 297
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 298
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 299
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :cond_28
    return-void
.end method

.method public setContent(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)V
    .registers 4

    .line 115
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->setMessageContent(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)V

    .line 116
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->setLeftButtonContent(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)V

    .line 117
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->setRightButtonContent(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)V

    .line 118
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->setMessageDescription(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)V

    .line 119
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->setLeftButtonDescription(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)V

    .line 120
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->setRightButtonDescription(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)V

    .line 121
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->setTransparentBackground(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)V

    .line 123
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getMessageDescriptionResourceId()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, -0x1

    if-ne p1, v1, :cond_21

    .line 124
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->setImportantForAccessibility(I)V

    goto :goto_25

    :cond_21
    const/4 p1, 0x1

    .line 126
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->setImportantForAccessibility(I)V

    .line 129
    :goto_25
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2e

    .line 130
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->postAccessibilityEvent()V

    .line 133
    :cond_2e
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getHeight()I

    move-result p1

    .line 134
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I

    move-result v1

    if-nez v1, :cond_42

    .line 135
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getWidth()I

    move-result v1

    mul-int/2addr v1, v0

    sub-int/2addr p1, v1

    .line 137
    :cond_42
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I

    move-result v1

    if-nez v1, :cond_52

    .line 138
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getWidth()I

    move-result v1

    mul-int/2addr v1, v0

    sub-int/2addr p1, v1

    .line 141
    :cond_52
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMaxWidth()I

    move-result v0

    if-le v0, p1, :cond_65

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getHeight()I

    move-result v0

    if-eqz v0, :cond_65

    .line 142
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_65
    return-void
.end method

.method public setLayoutGravity(I)V
    .registers 3

    .line 107
    iput p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mLayoutGravity:I

    .line 108
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mLayoutContainer:Landroid/widget/LinearLayout;

    .line 109
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 110
    iget v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mLayoutGravity:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 111
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setOnLeftButtonClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3

    .line 89
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnRightButtonClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3

    .line 93
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setTouchable(Z)V
    .registers 3

    .line 97
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setClickable(Z)V

    .line 98
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setClickable(Z)V

    return-void
.end method

.method public setUiOrientation(Landroid/graphics/Rect;Landroid/content/Context;Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;I)V
    .registers 5

    .line 305
    iput p4, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mOrientation:I

    .line 306
    iget p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->mLayoutGravity:I

    const/16 p2, 0x30

    if-ne p1, p2, :cond_41

    const/4 p1, 0x1

    const p2, 0x7f0901d7

    if-ne p4, p1, :cond_24

    .line 308
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f0700d0

    .line 309
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_39

    .line 311
    :cond_24
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f0700cf

    .line 312
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 314
    :goto_39
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    goto :goto_59

    :cond_41
    const p1, 0x7f090045

    .line 316
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 317
    invoke-direct {p0, p4}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getBottomMarginPixelSize(I)I

    move-result p3

    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 318
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 321
    :goto_59
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->updateRotation()V

    return-void
.end method

.method public setVisibility(I)V
    .registers 3

    .line 273
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_a

    if-nez p1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 275
    :goto_b
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-eqz v0, :cond_13

    .line 278
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->postAccessibilityEvent()V

    :cond_13
    return-void
.end method
