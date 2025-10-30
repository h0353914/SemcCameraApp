.class public Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView;
.super Landroid/widget/RelativeLayout;
.source "MultiAutoFocusView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView$FocusState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MultiAutoFocusView"


# instance fields
.field private mBottomCenter:Landroid/widget/ImageView;

.field private mImageContainer:Landroid/view/ViewGroup;

.field private mLefTopCorner:Landroid/widget/ImageView;

.field private mLeftBottomCorner:Landroid/widget/ImageView;

.field private mLeftCenter:Landroid/widget/ImageView;

.field private mRightBottomCorner:Landroid/widget/ImageView;

.field private mRightCenter:Landroid/widget/ImageView;

.field private mRightTopCorner:Landroid/widget/ImageView;

.field private mTopCenter:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 37
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public prepare()V
    .registers 2

    const v0, 0x7f0900d4

    .line 49
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView;->mImageContainer:Landroid/view/ViewGroup;

    const v0, 0x7f09010a

    .line 50
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView;->mLefTopCorner:Landroid/widget/ImageView;

    const v0, 0x7f090108

    .line 51
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView;->mLeftBottomCorner:Landroid/widget/ImageView;

    const v0, 0x7f09010d

    .line 52
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView;->mRightTopCorner:Landroid/widget/ImageView;

    const v0, 0x7f09010b

    .line 53
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView;->mRightBottomCorner:Landroid/widget/ImageView;

    const v0, 0x7f09010e

    .line 54
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView;->mTopCenter:Landroid/widget/ImageView;

    const v0, 0x7f090107

    .line 55
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView;->mBottomCenter:Landroid/widget/ImageView;

    const v0, 0x7f090109

    .line 56
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView;->mLeftCenter:Landroid/widget/ImageView;

    const v0, 0x7f09010c

    .line 57
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView;->mRightCenter:Landroid/widget/ImageView;

    return-void
.end method

.method public resetFocusRectanlgeColor()V
    .registers 3

    .line 61
    sget-object v0, Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView$FocusState;->NORMAL:Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView$FocusState;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView;->setBacgroundResources(ZLcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView$FocusState;)V

    return-void
.end method

.method public setBacgroundResources(ZLcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView$FocusState;)V
    .registers 10

    .line 73
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2b

    .line 74
    new-array v0, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setBacgroundResources inZoom ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "] focus state ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2b
    const v0, 0x7f0800ab

    const v2, 0x7f0800a6

    const v3, 0x7f08009e

    const v4, 0x7f080095

    if-eqz p1, :cond_66

    .line 77
    sget-object p1, Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView$1;->$SwitchMap$com$sonyericsson$cameracommon$focusview$MultiAutoFocusView$FocusState:[I

    invoke-virtual {p2}, Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView$FocusState;->ordinal()I

    move-result p2

    aget p1, p1, p2

    if-eq p1, v1, :cond_53

    const p1, 0x7f0800a7

    const p2, 0x7f0800a4

    const v0, 0x7f0800a8

    const v1, 0x7f0800a5

    move v3, v2

    move v4, v3

    move v5, v4

    goto :goto_8f

    :cond_53
    const p1, 0x7f0800ac

    const p2, 0x7f0800a9

    const v1, 0x7f0800ad

    const v2, 0x7f0800aa

    move v3, v0

    move v4, v3

    move v5, v4

    move v0, v1

    move v1, v2

    move v2, v5

    goto :goto_8f

    .line 101
    :cond_66
    sget-object p1, Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView$1;->$SwitchMap$com$sonyericsson$cameracommon$focusview$MultiAutoFocusView$FocusState:[I

    invoke-virtual {p2}, Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView$FocusState;->ordinal()I

    move-result p2

    aget p1, p1, p2

    if-eq p1, v1, :cond_80

    const p1, 0x7f080098

    const p2, 0x7f080093

    const v0, 0x7f080099

    const v1, 0x7f080094

    move v2, v4

    move v3, v2

    move v5, v3

    goto :goto_8f

    :cond_80
    const p1, 0x7f08009f

    const p2, 0x7f08009c

    const v0, 0x7f0800a0

    const v1, 0x7f08009d

    move v2, v3

    move v4, v2

    move v5, v4

    .line 125
    :goto_8f
    iget-object v6, p0, Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView;->mLefTopCorner:Landroid/widget/ImageView;

    invoke-virtual {v6, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 126
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView;->mLeftBottomCorner:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 127
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView;->mRightTopCorner:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 128
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView;->mRightBottomCorner:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 129
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView;->mTopCenter:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 130
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView;->mBottomCenter:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 131
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView;->mBottomCenter:Landroid/widget/ImageView;

    const/high16 p2, 0x43340000    # 180.0f

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setRotation(F)V

    .line 132
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView;->mLeftCenter:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 133
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView;->mLeftCenter:Landroid/widget/ImageView;

    const/high16 p2, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setRotation(F)V

    .line 134
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView;->mRightCenter:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 135
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView;->mRightCenter:Landroid/widget/ImageView;

    const/high16 p2, 0x42b40000    # 90.0f

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setRotation(F)V

    return-void
.end method

.method public setRectCenter(Landroid/graphics/Rect;)V
    .registers 4

    .line 146
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 147
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr v1, p1

    .line 146
    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView;->scrollTo(II)V

    return-void
.end method

.method public setRectSize(II)V
    .registers 4

    .line 139
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView;->mImageContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 140
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 141
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 142
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/MultiAutoFocusView;->mImageContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
