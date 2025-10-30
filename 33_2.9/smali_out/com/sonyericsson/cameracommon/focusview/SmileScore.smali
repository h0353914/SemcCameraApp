.class public Lcom/sonyericsson/cameracommon/focusview/SmileScore;
.super Landroid/widget/ImageView;
.source "SmileScore.java"


# static fields
.field private static final GAUGE_BOTTOM_A:I = 0xb2

.field private static final GAUGE_BOTTOM_B:I = 0xe5

.field private static final GAUGE_BOTTOM_G:I = 0xb5

.field private static final GAUGE_BOTTOM_R:I = 0x33

.field private static final GAUGE_COLORS:[I

.field private static final GAUGE_TOP_A:I = 0xb2

.field private static final GAUGE_TOP_B:I = 0xcc

.field private static final GAUGE_TOP_G:I = 0x99

.field private static final GAUGE_TOP_R:I = 0x0

.field public static final SMILE_MAX:I = 0x64

.field public static final SMILE_MIN:I = 0x0

.field private static final SMILE_UNIT:I = 0x64

.field public static final TAG:Ljava/lang/String; = "SmileScore"

.field private static final sColorPaints:Landroid/graphics/Paint;


# instance fields
.field private mFrameHeight:I

.field private mIndicatorStep:F

.field private mIndicatorWidth:I

.field private mPaddingBottomFrame:I

.field private mPaddingLeft:I

.field private mPaddingLeftFrame:I

.field private mPaddingTopFrame:I

.field private mSmileScore:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/16 v0, 0x64

    new-array v1, v0, [I

    .line 47
    sput-object v1, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->GAUGE_COLORS:[I

    .line 61
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sput-object v1, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->sColorPaints:Landroid/graphics/Paint;

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_38

    .line 63
    sget-object v2, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->GAUGE_COLORS:[I

    const/high16 v3, 0x43320000    # 178.0f

    int-to-float v4, v1

    const/4 v5, 0x0

    mul-float v6, v4, v5

    add-float/2addr v6, v3

    float-to-int v3, v6

    const v6, 0x3f028f5c    # 0.51f

    mul-float/2addr v6, v4

    add-float/2addr v6, v5

    float-to-int v5, v6

    const/high16 v6, 0x43190000    # 153.0f

    const v7, 0x3e8f5c29    # 0.28f

    mul-float/2addr v7, v4

    add-float/2addr v7, v6

    float-to-int v6, v7

    const/high16 v7, 0x434c0000    # 204.0f

    const/high16 v8, 0x3e800000    # 0.25f

    mul-float/2addr v4, v8

    add-float/2addr v4, v7

    float-to-int v4, v4

    invoke-static {v3, v5, v6, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 90
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 98
    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 107
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private getSmileScoreRect(FFFF)Landroid/graphics/RectF;
    .registers 7

    .line 218
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 220
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->isForLandscape()Z

    move-result p0

    if-eqz p0, :cond_f

    .line 221
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_2a

    .line 223
    :cond_f
    invoke-virtual {v0, p2, p1, p4, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 226
    iget p0, v0, Landroid/graphics/RectF;->left:F

    iget v1, v0, Landroid/graphics/RectF;->right:F

    cmpl-float p0, p0, v1

    if-lez p0, :cond_1e

    .line 227
    iput p4, v0, Landroid/graphics/RectF;->left:F

    .line 228
    iput p2, v0, Landroid/graphics/RectF;->right:F

    .line 231
    :cond_1e
    iget p0, v0, Landroid/graphics/RectF;->top:F

    iget p2, v0, Landroid/graphics/RectF;->bottom:F

    cmpl-float p0, p0, p2

    if-lez p0, :cond_2a

    .line 232
    iput p3, v0, Landroid/graphics/RectF;->top:F

    .line 233
    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    :cond_2a
    :goto_2a
    return-object v0
.end method

.method private isLayoutOrientationLandscape()Z
    .registers 1

    .line 248
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->isLayoutOrientationLandscape()Z

    move-result p0

    return p0
.end method

.method public static final preload()V
    .registers 0

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 16

    .line 154
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "draw() is called."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->v([Ljava/lang/String;)V

    .line 156
    :cond_d
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->isLayoutOrientationLandscape()Z

    move-result v0

    const-string v1, ")"

    const-string v2, ": drawRect("

    const-string v3, "draw: row: "

    const/16 v4, 0x64

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v7, ", "

    if-nez v0, :cond_aa

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->isForLandscape()Z

    move-result v0

    if-nez v0, :cond_aa

    .line 157
    iget v0, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mPaddingLeft:I

    iget v8, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mPaddingLeftFrame:I

    add-int/2addr v0, v8

    int-to-float v0, v0

    .line 158
    iget v8, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mPaddingTopFrame:I

    int-to-float v8, v8

    .line 159
    iget v9, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mIndicatorWidth:I

    int-to-float v9, v9

    add-float/2addr v9, v0

    move v10, v6

    :goto_33
    if-ge v10, v4, :cond_12e

    .line 163
    iget v11, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mSmileScore:I

    if-ge v11, v10, :cond_3b

    goto/16 :goto_12e

    .line 168
    :cond_3b
    iget v11, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mIndicatorStep:F

    add-float/2addr v11, v8

    .line 169
    iget v12, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mFrameHeight:I

    iget v13, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mPaddingLeftFrame:I

    sub-int/2addr v12, v13

    int-to-float v12, v12

    cmpg-float v12, v11, v12

    if-gez v12, :cond_58

    .line 171
    sget-object v12, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->sColorPaints:Landroid/graphics/Paint;

    sget-object v13, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->GAUGE_COLORS:[I

    aget v13, v13, v10

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 172
    invoke-direct {p0, v0, v8, v9, v11}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->getSmileScoreRect(FFFF)Landroid/graphics/RectF;

    move-result-object v13

    invoke-virtual {p1, v13, v12}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 175
    :cond_58
    sget-boolean v12, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v12, :cond_a4

    new-array v12, v5, [Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v13, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->GAUGE_COLORS:[I

    aget v13, v13, v10

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v12, v6

    invoke-static {v12}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 180
    :cond_a4
    iget v11, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mIndicatorStep:F

    add-float/2addr v8, v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_33

    .line 184
    :cond_aa
    iget v0, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mPaddingLeft:I

    iget v8, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mPaddingLeftFrame:I

    add-int/2addr v0, v8

    int-to-float v0, v0

    .line 185
    iget v8, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mFrameHeight:I

    iget v9, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mPaddingBottomFrame:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    .line 186
    iget v9, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mIndicatorWidth:I

    int-to-float v9, v9

    add-float/2addr v9, v0

    move v10, v6

    :goto_bb
    if-ge v10, v4, :cond_12e

    .line 190
    iget v11, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mSmileScore:I

    if-ge v11, v10, :cond_c2

    goto :goto_12e

    .line 195
    :cond_c2
    iget v11, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mIndicatorStep:F

    add-float/2addr v11, v8

    .line 196
    iget v12, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mPaddingBottomFrame:I

    int-to-float v12, v12

    cmpl-float v12, v8, v12

    if-lez v12, :cond_dc

    .line 198
    sget-object v12, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->sColorPaints:Landroid/graphics/Paint;

    sget-object v13, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->GAUGE_COLORS:[I

    aget v13, v13, v10

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 199
    invoke-direct {p0, v0, v8, v9, v11}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->getSmileScoreRect(FFFF)Landroid/graphics/RectF;

    move-result-object v13

    invoke-virtual {p1, v13, v12}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 202
    :cond_dc
    sget-boolean v12, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v12, :cond_128

    new-array v12, v5, [Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v13, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->GAUGE_COLORS:[I

    aget v13, v13, v10

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v12, v6

    invoke-static {v12}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 207
    :cond_128
    iget v11, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mIndicatorStep:F

    sub-float/2addr v8, v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_bb

    .line 210
    :cond_12e
    :goto_12e
    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    .line 211
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_151

    new-array p1, v5, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "draw end: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mSmileScore:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v6

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_151
    return-void
.end method

.method protected isForLandscape()Z
    .registers 1

    .line 244
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->isForLandscape()Z

    move-result p0

    return p0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 140
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 141
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_10

    const-string p0, "onDraw() is called."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->v([Ljava/lang/String;)V

    :cond_10
    return-void
.end method

.method public onFinishInflate()V
    .registers 6

    .line 112
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "onFinishInflate() is called."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->v([Ljava/lang/String;)V

    .line 113
    :cond_d
    invoke-super {p0}, Landroid/widget/ImageView;->onFinishInflate()V

    const/4 v0, 0x0

    .line 115
    iput v0, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mSmileScore:I

    .line 117
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070211

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mFrameHeight:I

    .line 118
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_41

    new-array v1, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onFinishInflate: Frame :height: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mFrameHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->v([Ljava/lang/String;)V

    .line 122
    :cond_41
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070218

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mIndicatorWidth:I

    .line 124
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070219

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mPaddingLeft:I

    .line 126
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070213

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mPaddingLeftFrame:I

    .line 128
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070212

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mPaddingBottomFrame:I

    .line 130
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070214

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mPaddingTopFrame:I

    .line 133
    iget v3, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mFrameHeight:I

    sub-int/2addr v3, v1

    iget v1, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mPaddingBottomFrame:I

    sub-int/2addr v3, v1

    int-to-float v1, v3

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v1, v3

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v1, v3

    iput v1, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mIndicatorStep:F

    .line 134
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_b1

    new-array v1, v2, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFinishInflate: Indicator step: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget p0, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mIndicatorStep:F

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v0

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->v([Ljava/lang/String;)V

    :cond_b1
    return-void
.end method

.method public setSmileScore(I)V
    .registers 6

    .line 145
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSmileScore("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->v([Ljava/lang/String;)V

    .line 146
    :cond_26
    iput p1, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mSmileScore:I

    return-void
.end method
