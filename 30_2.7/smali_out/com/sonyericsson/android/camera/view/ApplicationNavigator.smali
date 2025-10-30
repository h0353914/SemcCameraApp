.class public Lcom/sonyericsson/android/camera/view/ApplicationNavigator;
.super Landroid/widget/LinearLayout;
.source "ApplicationNavigator.java"


# static fields
.field public static final MODE_INDEX_UNSPECIFIED:I = -0x1

.field private static final TAG:Ljava/lang/String; = "ApplicationNavigator"


# instance fields
.field private mCaptureButtonAreaHeight:I

.field private mCurrentModeIndicatorView:Landroid/widget/ImageView;

.field private mDisplayHeight:I

.field private mIconSize:I

.field private mImageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mModeIconsView:Landroid/widget/FrameLayout;

.field private mModeSwitchAnimationContainer:Landroid/widget/FrameLayout;

.field private mModeSwitchImageView:Landroid/widget/ImageView;

.field private mModeSwitchNameView:Landroid/widget/TextView;

.field private mModeSwitchViewContainer:Landroid/widget/FrameLayout;

.field private mNavigationEnabled:Z

.field private mOrientation:I

.field private mRect:Landroid/graphics/Rect;

.field private mViewIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 95
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 87
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mNavigationEnabled:Z

    .line 96
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->setImportantForAccessibility(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 106
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 87
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mNavigationEnabled:Z

    .line 107
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->setImportantForAccessibility(I)V

    return-void
.end method

.method private calculateDraggingPosition(FI)I
    .registers 4

    .line 321
    iget v0, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mIconSize:I

    int-to-float v0, v0

    .line 322
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->calculateModeIndicatorPosition(I)I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p1, v0

    add-float/2addr p2, p1

    float-to-int p1, p2

    return p1
.end method

.method private calculateIconPosition(I)I
    .registers 4

    .line 272
    iget v0, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mDisplayHeight:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    add-int/lit8 p1, p1, -0x1

    .line 273
    iget v1, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mIconSize:I

    mul-int/2addr p1, v1

    int-to-float p1, p1

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private static computeReverseIndex(I)I
    .registers 2

    .line 146
    invoke-static {}, Lcom/sonyericsson/android/camera/NavigatorContents;->values()[Lcom/sonyericsson/android/camera/NavigatorContents;

    move-result-object v0

    array-length v0, v0

    sub-int/2addr v0, p0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private static computeViewIndex(Lcom/sonyericsson/android/camera/NavigatorContents;)I
    .registers 1

    .line 142
    invoke-static {p0}, Lcom/sonyericsson/android/camera/NavigatorContents;->indexOf(Lcom/sonyericsson/android/camera/NavigatorContents;)I

    move-result p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->computeReverseIndex(I)I

    move-result p0

    return p0
.end method

.method private createCurrentModeIndicator()V
    .registers 2

    const v0, 0x7f09008f

    .line 217
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mCurrentModeIndicatorView:Landroid/widget/ImageView;

    return-void
.end method

.method private createIcons()V
    .registers 8

    .line 186
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x1

    .line 188
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 190
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mImageList:Ljava/util/List;

    const v2, 0x7f0900f9

    .line 191
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mModeIconsView:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    move v3, v2

    .line 194
    :goto_1d
    invoke-static {}, Lcom/sonyericsson/android/camera/NavigatorContents;->values()[Lcom/sonyericsson/android/camera/NavigatorContents;

    move-result-object v4

    array-length v4, v4

    if-ge v3, v4, :cond_72

    .line 195
    invoke-static {}, Lcom/sonyericsson/android/camera/NavigatorContents;->values()[Lcom/sonyericsson/android/camera/NavigatorContents;

    move-result-object v4

    .line 196
    invoke-static {}, Lcom/sonyericsson/android/camera/NavigatorContents;->values()[Lcom/sonyericsson/android/camera/NavigatorContents;

    move-result-object v5

    array-length v5, v5

    sub-int/2addr v5, v3

    sub-int/2addr v5, v1

    aget-object v4, v4, v5

    .line 197
    new-instance v5, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 198
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 200
    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    const v6, 0x7f080075

    .line 201
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 202
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 203
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/NavigatorContents;->getIconId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 204
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/sonyericsson/android/camera/NavigatorContents;->getText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 205
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setSoundEffectsEnabled(Z)V

    .line 206
    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mImageList:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mModeIconsView:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 210
    :cond_72
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070127

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mIconSize:I

    const v0, 0x7f090024

    .line 213
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mImageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mIconSize:I

    mul-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    return-void
.end method

.method private createModeSwitchContainer()V
    .registers 4

    const v0, 0x7f0901a9

    .line 222
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mModeSwitchAnimationContainer:Landroid/widget/FrameLayout;

    .line 224
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mModeSwitchAnimationContainer:Landroid/widget/FrameLayout;

    const v1, 0x7f0900d7

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mModeSwitchViewContainer:Landroid/widget/FrameLayout;

    .line 227
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mModeSwitchAnimationContainer:Landroid/widget/FrameLayout;

    const v1, 0x7f0900fc

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mModeSwitchNameView:Landroid/widget/TextView;

    .line 229
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mModeSwitchNameView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 231
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mModeSwitchAnimationContainer:Landroid/widget/FrameLayout;

    const v2, 0x7f0900fb

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mModeSwitchImageView:Landroid/widget/ImageView;

    .line 233
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mModeSwitchImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 234
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mModeSwitchImageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method private getSelectedContents()Lcom/sonyericsson/android/camera/NavigatorContents;
    .registers 8

    .line 456
    sget-object v0, Lcom/sonyericsson/android/camera/NavigatorContents;->SUPERIOR_AUTO:Lcom/sonyericsson/android/camera/NavigatorContents;

    .line 458
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mCurrentModeIndicatorView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTranslationY()F

    move-result v1

    .line 459
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mCurrentModeIndicatorView:Landroid/widget/ImageView;

    .line 460
    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v1

    const/4 v3, 0x0

    .line 462
    :goto_11
    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mImageList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4c

    .line 463
    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mImageList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getTranslationY()F

    move-result v4

    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mImageList:Ljava/util/List;

    .line 464
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    cmpg-float v5, v1, v4

    if-gtz v5, :cond_49

    cmpg-float v4, v4, v2

    if-gtz v4, :cond_49

    .line 468
    invoke-static {}, Lcom/sonyericsson/android/camera/NavigatorContents;->values()[Lcom/sonyericsson/android/camera/NavigatorContents;

    move-result-object v0

    invoke-static {v3}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->computeReverseIndex(I)I

    move-result v1

    aget-object v0, v0, v1

    goto :goto_4c

    :cond_49
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_4c
    :goto_4c
    return-object v0
.end method

.method private sendAccessibilityEventForModeName()V
    .registers 4

    .line 161
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mModeSwitchNameView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_24

    .line 162
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mModeSwitchNameView:Landroid/widget/TextView;

    .line 163
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->getSelectedContents()Lcom/sonyericsson/android/camera/NavigatorContents;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/NavigatorContents;->getTextId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 162
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mModeSwitchNameView:Landroid/widget/TextView;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    :cond_24
    return-void
.end method

.method private setIconClickListener(Landroid/view/View$OnClickListener;)V
    .registers 4

    const/4 v0, 0x0

    .line 248
    :goto_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mImageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 249
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mImageList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

.method private setIconPositions()V
    .registers 4

    const/4 v0, 0x0

    .line 242
    :goto_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mImageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 243
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mImageList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->calculateIconPosition(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTranslationY(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1c
    return-void
.end method

.method private setModeIndicatorPosition(I)V
    .registers 3

    .line 238
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mCurrentModeIndicatorView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->calculateModeIndicatorPosition(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTranslationY(F)V

    return-void
.end method

.method private setupModeSwitchContainer()V
    .registers 1

    .line 515
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->createModeSwitchContainer()V

    .line 516
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->updateModeSwitchAnimationContainer()V

    return-void
.end method

.method private updateModeSwitchAnimationContainer()V
    .registers 6

    .line 378
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mModeSwitchAnimationContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_5

    return-void

    .line 381
    :cond_5
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 383
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/cameracommon/utility/ViewUtility;->getDisplayRectSize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v1

    .line 388
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 389
    iget v3, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mOrientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2b

    .line 390
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mModeSwitchAnimationContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    goto :goto_31

    .line 392
    :cond_2b
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mModeSwitchAnimationContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    :goto_31
    if-eq v3, v2, :cond_3c

    .line 398
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 399
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 400
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mModeSwitchAnimationContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 403
    :cond_3c
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 404
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07010a

    .line 405
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 406
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070127

    .line 407
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 408
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070120

    .line 409
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 411
    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mModeSwitchViewContainer:Landroid/widget/FrameLayout;

    .line 412
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    .line 414
    iget v1, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mCaptureButtonAreaHeight:I

    sub-int/2addr v0, v1

    sub-int/2addr v0, v3

    const/4 v1, 0x2

    div-int/2addr v0, v1

    .line 420
    iget v2, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mOrientation:I

    const/4 v3, 0x0

    if-ne v2, v1, :cond_93

    .line 421
    invoke-virtual {v4, v3, v3, v0, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    const v0, 0x800015

    .line 422
    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_9a

    .line 424
    :cond_93
    invoke-virtual {v4, v3, v3, v3, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    const/16 v0, 0x51

    .line 425
    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 427
    :goto_9a
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mModeSwitchViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 429
    iget v0, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mOrientation:I

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getAngle(I)F

    move-result v0

    .line 431
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mModeSwitchAnimationContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setRotation(F)V

    return-void
.end method

.method private updateNavigatorIcons()V
    .registers 6

    .line 347
    iget v0, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mOrientation:I

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getAngle(I)F

    move-result v0

    .line 348
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mImageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_61

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 349
    iget v3, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mOrientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_34

    .line 350
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v4, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mIconSize:I

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 351
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_4a

    .line 353
    :cond_34
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v4, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mIconSize:I

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 354
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 369
    :goto_4a
    iget v3, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mIconSize:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 370
    iget v3, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mIconSize:I

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setPivotY(F)V

    .line 371
    invoke-virtual {v2}, Landroid/widget/ImageView;->requestLayout()V

    .line 372
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setRotation(F)V

    goto :goto_c

    :cond_61
    return-void
.end method


# virtual methods
.method public calculateModeIndicatorPosition(I)I
    .registers 4

    .line 285
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->calculateIconPosition(I)I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mIconSize:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    add-float/2addr p1, v0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mCurrentModeIndicatorView:Landroid/widget/ImageView;

    .line 286
    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    sub-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public getCurrentModeIndicatorView()Landroid/widget/ImageView;
    .registers 2

    .line 452
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mCurrentModeIndicatorView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getModeIndexUnder(II)I
    .registers 7

    .line 487
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mModeIconsView:Landroid/widget/FrameLayout;

    const/4 v1, -0x1

    if-eqz v0, :cond_39

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mNavigationEnabled:Z

    if-nez v0, :cond_a

    goto :goto_39

    .line 491
    :cond_a
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mRect:Landroid/graphics/Rect;

    if-nez v0, :cond_15

    .line 492
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mRect:Landroid/graphics/Rect;

    :cond_15
    const/4 v0, 0x0

    .line 495
    :goto_16
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mModeIconsView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_38

    .line 496
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mModeIconsView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 497
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 498
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_35

    return v0

    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_38
    return v1

    :cond_39
    :goto_39
    return v1
.end method

.method public getModeSwitchImageView()Landroid/widget/ImageView;
    .registers 2

    .line 508
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mModeSwitchAnimationContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_7

    .line 509
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->setupModeSwitchContainer()V

    .line 511
    :cond_7
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mModeSwitchImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getModeSwitchNameView()Landroid/widget/TextView;
    .registers 2

    .line 440
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mModeSwitchAnimationContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_7

    .line 441
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->setupModeSwitchContainer()V

    .line 443
    :cond_7
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mModeSwitchNameView:Landroid/widget/TextView;

    return-object v0
.end method

.method public hide()V
    .registers 2

    const/4 v0, 0x4

    .line 154
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->setVisibility(I)V

    return-void
.end method

.method protected onFinishInflate()V
    .registers 1

    .line 112
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 113
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->createIcons()V

    .line 114
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->createCurrentModeIndicator()V

    .line 115
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->updateModeSwitchAnimationContainer()V

    return-void
.end method

.method public resetContentDescriptionForModeName()V
    .registers 3

    .line 476
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->getModeSwitchNameView()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public resume(Lcom/sonyericsson/android/camera/NavigatorContents;)V
    .registers 2

    .line 135
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->computeViewIndex(Lcom/sonyericsson/android/camera/NavigatorContents;)I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mViewIndex:I

    .line 136
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->setIconPositions()V

    .line 137
    iget p1, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mViewIndex:I

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->setModeIndicatorPosition(I)V

    const/4 p1, 0x0

    .line 138
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->setModeIconClickable(Z)V

    return-void
.end method

.method public setDraggingPosition(Lcom/sonyericsson/android/camera/NavigatorContents;F)V
    .registers 7

    .line 303
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDraggingPosition() draggingRate = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 305
    :cond_1e
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mNavigationEnabled:Z

    if-nez v0, :cond_23

    return-void

    .line 308
    :cond_23
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mCurrentModeIndicatorView:Landroid/widget/ImageView;

    .line 309
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->computeViewIndex(Lcom/sonyericsson/android/camera/NavigatorContents;)I

    move-result p1

    invoke-direct {p0, p2, p1}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->calculateDraggingPosition(FI)I

    move-result p1

    int-to-float p1, p1

    .line 308
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTranslationY(F)V

    return-void
.end method

.method public setModeIconClickable(Z)V
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    .line 254
    :goto_2
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mImageList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 255
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mImageList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 256
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    if-nez p1, :cond_1a

    .line 259
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1d
    return-void
.end method

.method public setNavigationEnabled(Z)V
    .registers 2

    .line 181
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mNavigationEnabled:Z

    .line 182
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mNavigationEnabled:Z

    if-eqz p1, :cond_8

    const/4 p1, 0x0

    goto :goto_9

    :cond_8
    const/4 p1, 0x4

    :goto_9
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->setVisibility(I)V

    return-void
.end method

.method public setOrientation(I)V
    .registers 6

    .line 330
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setOrientation() orientation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 332
    :cond_1e
    iget v0, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mOrientation:I

    .line 334
    iput p1, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mOrientation:I

    .line 336
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->isAttachedToWindow()Z

    move-result v1

    if-nez v1, :cond_29

    return-void

    :cond_29
    if-eq v0, p1, :cond_31

    .line 341
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->updateNavigatorIcons()V

    .line 342
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->updateModeSwitchAnimationContainer()V

    :cond_31
    return-void
.end method

.method public setVisibility(I)V
    .registers 3

    .line 170
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mNavigationEnabled:Z

    if-nez v0, :cond_5

    const/4 p1, 0x4

    .line 174
    :cond_5
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_e

    .line 175
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_e
    if-nez p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    .line 177
    :goto_13
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->setModeIconClickable(Z)V

    return-void
.end method

.method public setup(Lcom/sonyericsson/android/camera/NavigatorContents;Landroid/graphics/Rect;ILandroid/view/View$OnClickListener;)V
    .registers 5

    .line 125
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    iput p2, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mDisplayHeight:I

    .line 127
    iput p3, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mCaptureButtonAreaHeight:I

    .line 128
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->computeViewIndex(Lcom/sonyericsson/android/camera/NavigatorContents;)I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mViewIndex:I

    .line 129
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->setIconPositions()V

    .line 130
    invoke-direct {p0, p4}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->setIconClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget p1, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mViewIndex:I

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->setModeIndicatorPosition(I)V

    return-void
.end method

.method public show()V
    .registers 2

    const/4 v0, 0x0

    .line 150
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->setVisibility(I)V

    return-void
.end method

.method public updateModeSwitchViews()V
    .registers 4

    .line 291
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mModeSwitchImageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->getSelectedContents()Lcom/sonyericsson/android/camera/NavigatorContents;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/NavigatorContents;->getLargeIconId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 292
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->mModeSwitchNameView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->getSelectedContents()Lcom/sonyericsson/android/camera/NavigatorContents;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/NavigatorContents;->getText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->sendAccessibilityEventForModeName()V

    return-void
.end method
