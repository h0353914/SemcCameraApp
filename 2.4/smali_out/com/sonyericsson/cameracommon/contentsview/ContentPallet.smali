.class public Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;
.super Landroid/widget/RelativeLayout;
.source "ContentPallet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ClickListener;,
        Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailStateListener;
    }
.end annotation


# static fields
.field private static final SWITCH_ANIMATION_ALPHA_END:F = 1.0f

.field private static final SWITCH_ANIMATION_ALPHA_START:F = 0.0f

.field private static final SWITCH_ANIMATION_DURATION:I = 0x1f4

.field public static final TAG:Ljava/lang/String; = "ContentPallet"


# instance fields
.field private final mClickListener:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ClickListener;

.field private mContent:Lcom/sonyericsson/cameracommon/contentsview/contents/Content;

.field private mIsRequestHide:Z

.field private mIsTemporaryThumbnailClicked:Z

.field private mRequestId:I

.field private mTemporaryThumbnail:Landroid/graphics/Bitmap;

.field private mThumbnail:Landroid/graphics/Bitmap;

.field private mThumbnailStateListener:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailStateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 79
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 60
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mTemporaryThumbnail:Landroid/graphics/Bitmap;

    .line 62
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mThumbnail:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mIsTemporaryThumbnailClicked:Z

    .line 71
    new-instance v0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ClickListener;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ClickListener;-><init>(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$1;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mClickListener:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 89
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 60
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mTemporaryThumbnail:Landroid/graphics/Bitmap;

    .line 62
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mThumbnail:Landroid/graphics/Bitmap;

    const/4 p2, 0x0

    .line 64
    iput-boolean p2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mIsTemporaryThumbnailClicked:Z

    .line 71
    new-instance p2, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ClickListener;

    invoke-direct {p2, p0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ClickListener;-><init>(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$1;)V

    iput-object p2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mClickListener:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ClickListener;

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;)Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailStateListener;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mThumbnailStateListener:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailStateListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;)Lcom/sonyericsson/cameracommon/contentsview/contents/Content;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mContent:Lcom/sonyericsson/cameracommon/contentsview/contents/Content;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;)Landroid/graphics/Bitmap;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mTemporaryThumbnail:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$402(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;Z)Z
    .registers 2

    .line 34
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mIsTemporaryThumbnailClicked:Z

    return p1
.end method


# virtual methods
.method public cancelRequestHide()V
    .registers 2

    const/4 v0, 0x0

    .line 254
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mIsRequestHide:Z

    return-void
.end method

.method public clearTemporaryThumbnailClicked()V
    .registers 2

    const/4 v0, 0x0

    .line 293
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mIsTemporaryThumbnailClicked:Z

    return-void
.end method

.method disableClick()V
    .registers 3

    const v0, 0x7f090086

    .line 227
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090084

    .line 228
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method enableClick()V
    .registers 3

    const v0, 0x7f090086

    .line 222
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mClickListener:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090084

    .line 223
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method public getContent()Lcom/sonyericsson/cameracommon/contentsview/contents/Content;
    .registers 2

    .line 246
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mContent:Lcom/sonyericsson/cameracommon/contentsview/contents/Content;

    return-object v0
.end method

.method public getRequestId()I
    .registers 2

    .line 122
    iget v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mRequestId:I

    return v0
.end method

.method public hasContent()Z
    .registers 2

    .line 237
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mContent:Lcom/sonyericsson/cameracommon/contentsview/contents/Content;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method initialize(ILcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailStateListener;)V
    .registers 7

    .line 98
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    .line 99
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRequestId() has been called. id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 100
    :cond_1e
    iput p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mRequestId:I

    .line 101
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mThumbnailStateListener:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailStateListener;

    const p1, 0x7f090086

    .line 102
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mClickListener:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public isProvisionalContent()Z
    .registers 3

    const v0, 0x7f090085

    .line 263
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 264
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->hasContent()Z

    move-result v1

    if-nez v1, :cond_17

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    return v0
.end method

.method public isTemporaryThumbnailClicked()Z
    .registers 2

    .line 289
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mIsTemporaryThumbnailClicked:Z

    return v0
.end method

.method release()V
    .registers 3

    .line 106
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mContent:Lcom/sonyericsson/cameracommon/contentsview/contents/Content;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 107
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mThumbnail:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_16

    .line 108
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 109
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mThumbnail:Landroid/graphics/Bitmap;

    .line 111
    :cond_16
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mContent:Lcom/sonyericsson/cameracommon/contentsview/contents/Content;

    :cond_18
    const v0, 0x7f090086

    .line 113
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method set(Lcom/sonyericsson/cameracommon/contentsview/contents/Content;Landroid/graphics/Bitmap;)V
    .registers 9

    .line 132
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "set() has been called."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 134
    :cond_d
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mContent:Lcom/sonyericsson/cameracommon/contentsview/contents/Content;

    const v0, 0x7f090084

    .line 137
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    .line 138
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/4 v2, 0x0

    .line 139
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090085

    .line 142
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 143
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mThumbnail:Landroid/graphics/Bitmap;

    .line 144
    iget-object p2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mThumbnail:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/16 v3, 0xd

    if-eqz p2, :cond_55

    .line 145
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 146
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getThumbnailStatus()Z

    move-result p2

    if-eqz p2, :cond_76

    .line 147
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setThumbnailTransitionEnd()V

    .line 148
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendThumbnailTransitionEvent()V

    .line 149
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setThumbnailStatus(Z)V

    goto :goto_76

    .line 152
    :cond_55
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 153
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-direct {p2, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    invoke-virtual {p2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 156
    new-instance v4, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 157
    invoke-virtual {v4, p2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    invoke-virtual {p0, v4}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->addView(Landroid/view/View;)V

    const p2, 0x7f080264

    .line 159
    invoke-virtual {v4, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 163
    :cond_76
    :goto_76
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->shouldShowPlayableIcon()Z

    move-result p2

    if-eqz p2, :cond_a5

    .line 164
    new-instance p2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p2, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 165
    invoke-virtual {p0, p2}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->addView(Landroid/view/View;)V

    .line 166
    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    const/4 v5, -0x2

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 167
    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 168
    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 169
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->getPlayIconResourceId()I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 173
    :cond_a5
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->shouldShowExtraIcon()Z

    move-result p2

    if-eqz p2, :cond_ec

    .line 174
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->getContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    if-eqz p2, :cond_e3

    .line 177
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-static {v3}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->isCoreCameraApp(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_cb

    const v3, 0x7f0b0031

    .line 178
    invoke-virtual {p2, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_d2

    :cond_cb
    const v3, 0x7f0b0030

    .line 180
    invoke-virtual {p2, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :goto_d2
    const v3, 0x7f090081

    .line 182
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 183
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->getExtraIconResourceId()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_ec

    :cond_e3
    const-string p1, "could not get inflater."

    .line 185
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    :cond_ec
    :goto_ec
    const p1, 0x7f090086

    .line 190
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 193
    iget-boolean p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mIsRequestHide:Z

    if-eqz p1, :cond_fd

    .line 194
    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->setVisibility(I)V

    .line 197
    :cond_fd
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mTemporaryThumbnail:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_111

    .line 199
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    const/4 p2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p1, p2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x1f4

    .line 201
    invoke-virtual {p1, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 202
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_111
    return-void
.end method

.method public setProvisionalContent()V
    .registers 5

    const v0, 0x7f090085

    .line 214
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 215
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .line 216
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f060096

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 215
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f090086

    .line 218
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setTemporaryThumbnail(Landroid/graphics/Bitmap;)V
    .registers 4

    .line 273
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->hasContent()Z

    move-result v0

    if-eqz v0, :cond_10

    const-string p1, "There is content already; No need to show temporary thumbnail."

    .line 274
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->v([Ljava/lang/String;)V

    return-void

    :cond_10
    const v0, 0x7f090087

    .line 277
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 278
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const v0, 0x7f090086

    .line 281
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 283
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mTemporaryThumbnail:Landroid/graphics/Bitmap;

    .line 284
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setThumbnailTransitionStart()V

    .line 285
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setThumbnailStatus(Z)V

    return-void
.end method
