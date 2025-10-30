.class public Lcom/sonyericsson/cameracommon/focusview/SmileScore;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SmileScore.java"


# static fields
.field private static final GAUGE_BOTTOM_A:I = 0xb2

.field private static final GAUGE_BOTTOM_B:I = 0xe5

.field private static final GAUGE_BOTTOM_G:I = 0xb5

.field private static final GAUGE_BOTTOM_R:I = 0x33

.field private static final GAUGE_TOP_A:I = 0xb2

.field private static final GAUGE_TOP_B:I = 0xcc

.field private static final GAUGE_TOP_G:I = 0x99

.field private static final GAUGE_TOP_R:I = 0x0

.field public static final SMILE_MAX:I = 0x64

.field public static final SMILE_MIN:I = 0x0

.field private static final SMILE_UNIT:I = 0x64

.field public static final TAG:Ljava/lang/String; = "SmileScore"

.field private static final sColorPaints:[Landroid/graphics/Paint;


# instance fields
.field private mFrameHeight:I

.field private mIndicatorStep:F

.field private mIndicatorWidth:I

.field private mSmileScore:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/16 v0, 0x64

    .line 59
    new-array v1, v0, [Landroid/graphics/Paint;

    sput-object v1, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->sColorPaints:[Landroid/graphics/Paint;

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_35

    .line 61
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

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

    .line 62
    invoke-virtual {v2, v3, v5, v6, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 67
    sget-object v3, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->sColorPaints:[Landroid/graphics/Paint;

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 91
    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 100
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private getSmileScoreRect(FFFF)Landroid/graphics/RectF;
    .registers 8

    .line 208
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 210
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->isForLandscape()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 211
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_2a

    .line 213
    :cond_f
    invoke-virtual {v0, p2, p1, p4, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 216
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1e

    .line 217
    iput p4, v0, Landroid/graphics/RectF;->left:F

    .line 218
    iput p2, v0, Landroid/graphics/RectF;->right:F

    .line 221
    :cond_1e
    iget p2, v0, Landroid/graphics/RectF;->top:F

    iget p4, v0, Landroid/graphics/RectF;->bottom:F

    cmpl-float p2, p2, p4

    if-lez p2, :cond_2a

    .line 222
    iput p3, v0, Landroid/graphics/RectF;->top:F

    .line 223
    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    :cond_2a
    :goto_2a
    return-object v0
.end method

.method private isLayoutOrientationLandscape()Z
    .registers 2

    .line 238
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->isLayoutOrientationLandscape()Z

    move-result v0

    return v0
.end method

.method public static final preload()V
    .registers 0

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 14

    .line 138
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "draw() is called."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->v([Ljava/lang/String;)V

    .line 139
    :cond_d
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701e9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 141
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701e3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 143
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701e2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 145
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0701e4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 148
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->isLayoutOrientationLandscape()Z

    move-result v4

    const/16 v5, 0x64

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v4, :cond_c7

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->isForLandscape()Z

    move-result v4

    if-nez v4, :cond_c7

    add-int/2addr v0, v1

    int-to-float v0, v0

    int-to-float v1, v3

    .line 151
    iget v2, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mIndicatorWidth:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    move v4, v1

    move v1, v7

    :goto_52
    if-ge v1, v5, :cond_144

    .line 155
    iget v8, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mSmileScore:I

    if-ge v8, v1, :cond_5a

    goto/16 :goto_144

    .line 160
    :cond_5a
    iget v8, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mIndicatorStep:F

    add-float/2addr v8, v4

    .line 161
    iget v9, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mFrameHeight:I

    sub-int/2addr v9, v3

    int-to-float v9, v9

    cmpg-float v9, v8, v9

    if-gez v9, :cond_70

    .line 163
    invoke-direct {p0, v0, v4, v2, v8}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->getSmileScoreRect(FFFF)Landroid/graphics/RectF;

    move-result-object v9

    sget-object v10, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->sColorPaints:[Landroid/graphics/Paint;

    aget-object v10, v10, v1

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 166
    :cond_70
    sget-boolean v9, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v9, :cond_c1

    new-array v9, v6, [Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "draw: row: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ": drawRect("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->sColorPaints:[Landroid/graphics/Paint;

    aget-object v8, v8, v1

    .line 169
    invoke-virtual {v8}, Landroid/graphics/Paint;->getColor()I

    move-result v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v9, v7

    .line 166
    invoke-static {v9}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 171
    :cond_c1
    iget v8, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mIndicatorStep:F

    add-float/2addr v4, v8

    add-int/lit8 v1, v1, 0x1

    goto :goto_52

    :cond_c7
    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 176
    iget v1, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mFrameHeight:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 177
    iget v3, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mIndicatorWidth:I

    int-to-float v3, v3

    add-float/2addr v3, v0

    move v4, v1

    move v1, v7

    :goto_d3
    if-ge v1, v5, :cond_144

    .line 181
    iget v8, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mSmileScore:I

    if-ge v8, v1, :cond_da

    goto :goto_144

    .line 186
    :cond_da
    iget v8, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mIndicatorStep:F

    add-float/2addr v8, v4

    int-to-float v9, v2

    cmpl-float v9, v4, v9

    if-lez v9, :cond_ed

    .line 189
    invoke-direct {p0, v0, v4, v3, v8}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->getSmileScoreRect(FFFF)Landroid/graphics/RectF;

    move-result-object v9

    sget-object v10, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->sColorPaints:[Landroid/graphics/Paint;

    aget-object v10, v10, v1

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 192
    :cond_ed
    sget-boolean v9, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v9, :cond_13e

    new-array v9, v6, [Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "draw: row: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ": drawRect("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->sColorPaints:[Landroid/graphics/Paint;

    aget-object v8, v8, v1

    .line 195
    invoke-virtual {v8}, Landroid/graphics/Paint;->getColor()I

    move-result v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v9, v7

    .line 192
    invoke-static {v9}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 197
    :cond_13e
    iget v8, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mIndicatorStep:F

    sub-float/2addr v4, v8

    add-int/lit8 v1, v1, 0x1

    goto :goto_d3

    .line 200
    :cond_144
    :goto_144
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->draw(Landroid/graphics/Canvas;)V

    .line 201
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_165

    new-array p1, v6, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "draw end: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mSmileScore:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v7

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_165
    return-void
.end method

.method protected isForLandscape()Z
    .registers 2

    .line 234
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->isForLandscape()Z

    move-result v0

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 124
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 125
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_10

    const-string p1, "onDraw() is called."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->v([Ljava/lang/String;)V

    :cond_10
    return-void
.end method

.method public onFinishInflate()V
    .registers 6

    .line 105
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "onFinishInflate() is called."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->v([Ljava/lang/String;)V

    .line 106
    :cond_d
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->onFinishInflate()V

    const/4 v0, 0x0

    .line 108
    iput v0, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mSmileScore:I

    .line 110
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701e1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mFrameHeight:I

    .line 111
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_3f

    new-array v1, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onFinishInflate: Frame :height: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mFrameHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->v([Ljava/lang/String;)V

    .line 115
    :cond_3f
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0701e8

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mIndicatorWidth:I

    .line 117
    iget v1, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mFrameHeight:I

    int-to-float v1, v1

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v1, v3

    iput v1, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mIndicatorStep:F

    .line 118
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_72

    new-array v1, v2, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFinishInflate: Indicator step: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mIndicatorStep:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->v([Ljava/lang/String;)V

    :cond_72
    return-void
.end method

.method public setSmileScore(I)V
    .registers 6

    .line 129
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_23

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSmileScore("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->v([Ljava/lang/String;)V

    .line 130
    :cond_23
    iput p1, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mSmileScore:I

    return-void
.end method
