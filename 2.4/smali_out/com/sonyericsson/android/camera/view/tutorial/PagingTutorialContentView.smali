.class public Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;
.super Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView;
.source "PagingTutorialContentView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$FeatureListContent;,
        Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$CommonTutorialContent;,
        Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$CustomTutorialContent;,
        Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;,
        Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PageContentsAdapter;,
        Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialController;,
        Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResource;,
        Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResourceType;,
        Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$TutorialNavigatorType;
    }
.end annotation


# static fields
.field private static final REVERSE_DEGREE:F = 180.0f

.field private static final TAG:Ljava/lang/String; = "PagingTutorialContentView"

.field private static final TRACE:Z = false

.field private static final VIDEO_ASPECT_RATIO_PORTRAIT:D = 0.816


# instance fields
.field private mIcon:Landroid/widget/ImageView;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mNavigator:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;

.field mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private final mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private mPager:Landroidx/viewpager/widget/ViewPager;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mVideo:Lcom/sonyericsson/android/camera/view/tutorial/TutorialVideoView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 146
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView;-><init>(Landroid/content/Context;)V

    .line 234
    new-instance p1, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$1;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$1;-><init>(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 470
    new-instance p1, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$4;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$4;-><init>(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 154
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 234
    new-instance p1, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$1;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$1;-><init>(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 470
    new-instance p1, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$4;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$4;-><init>(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 150
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 234
    new-instance p1, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$1;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$1;-><init>(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 470
    new-instance p1, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$4;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$4;-><init>(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;
    .registers 1

    .line 57
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->getContent()Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)Landroid/widget/ImageView;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)Landroid/media/MediaPlayer;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic access$102(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .registers 2

    .line 57
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mIcon:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)Landroidx/viewpager/widget/ViewPager;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mPager:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialVideoView;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mVideo:Lcom/sonyericsson/android/camera/view/tutorial/TutorialVideoView;

    return-object p0
.end method

.method static synthetic access$202(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;Lcom/sonyericsson/android/camera/view/tutorial/TutorialVideoView;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialVideoView;
    .registers 2

    .line 57
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mVideo:Lcom/sonyericsson/android/camera/view/tutorial/TutorialVideoView;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;Lcom/sonyericsson/android/camera/view/tutorial/TutorialVideoView;)V
    .registers 2

    .line 57
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->prepareTutorialVideoView(Lcom/sonyericsson/android/camera/view/tutorial/TutorialVideoView;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;I)Landroid/view/TextureView$SurfaceTextureListener;
    .registers 2

    .line 57
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->createSurfaceTextureListener(I)Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)V
    .registers 1

    .line 57
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->clearMediaPlayer()V

    return-void
.end method

.method static synthetic access$600(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)Landroid/graphics/SurfaceTexture;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p0
.end method

.method static synthetic access$602(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;
    .registers 2

    .line 57
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p1
.end method

.method static synthetic access$700(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;I)V
    .registers 2

    .line 57
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->createMediaPlayer(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)V
    .registers 1

    .line 57
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->resume()V

    return-void
.end method

.method static synthetic access$900(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)V
    .registers 1

    .line 57
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->suspend()V

    return-void
.end method

.method private clearMediaPlayer()V
    .registers 2

    .line 440
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_14

    .line 441
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 442
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 443
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 444
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_14
    return-void
.end method

.method private createMediaPlayer(I)V
    .registers 4

    .line 410
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->clearMediaPlayer()V

    .line 413
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->getContent()Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->mMediaContentsResourceId:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResource;

    .line 415
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResource;->getId()I

    move-result p1

    invoke-static {v0, p1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 416
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mVideo:Lcom/sonyericsson/android/camera/view/tutorial/TutorialVideoView;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 417
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 416
    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialVideoView;->setVideoAspectRatio(F)V

    .line 419
    new-instance p1, Landroid/view/Surface;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {p1, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 420
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 421
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 422
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 423
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$3;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$3;-><init>(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    return-void
.end method

.method private createSurfaceTextureListener(I)Landroid/view/TextureView$SurfaceTextureListener;
    .registers 3

    .line 345
    new-instance v0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$2;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$2;-><init>(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;I)V

    return-object v0
.end method

.method private getContent()Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;
    .registers 2

    .line 543
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mContent:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;

    check-cast v0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;

    return-object v0
.end method

.method private prepareTutorialVideoView(Lcom/sonyericsson/android/camera/view/tutorial/TutorialVideoView;)V
    .registers 7

    .line 382
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->getContent()Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->isPortrait()Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 386
    :cond_b
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 389
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getViewFinderSize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v0

    .line 390
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-double v1, v0

    const-wide v3, 0x3fea1cac083126e9L    # 0.816

    mul-double/2addr v1, v3

    double-to-int v1, v1

    .line 395
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialVideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 397
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 398
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 400
    invoke-virtual {p1, v2}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private resume()V
    .registers 2

    .line 453
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_7

    .line 454
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    :cond_7
    return-void
.end method

.method private suspend()V
    .registers 2

    .line 464
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 465
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    :cond_f
    return-void
.end method

.method private static trace(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    .line 61
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .registers 2

    .line 228
    invoke-super {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView;->onDetachedFromWindow()V

    .line 231
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->clearOnPageChangeListeners()V

    return-void
.end method

.method protected onUpdateViewContent()V
    .registers 12

    .line 159
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->getContent()Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const v1, 0x7f0901ef

    .line 165
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/viewpager/widget/ViewPager;

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mPager:Landroidx/viewpager/widget/ViewPager;

    .line 166
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v2, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PageContentsAdapter;

    invoke-direct {v2, v0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PageContentsAdapter;-><init>(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;)V

    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    const v1, 0x7f0901ee

    .line 168
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 170
    sget-object v2, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$5;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$PagingTutorialContentView$TutorialNavigatorType:[I

    iget-object v3, v0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->mNavigatorType:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$TutorialNavigatorType;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$TutorialNavigatorType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_f8

    .line 202
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v5, 0x7f0b0072

    invoke-static {v2, v5, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNormalNavigator;

    iput-object v2, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mNavigator:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;

    goto :goto_ab

    .line 176
    :pswitch_44
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    new-array v5, v3, [I

    const v6, 0x10102eb

    const/4 v7, 0x0

    aput v6, v5, v7

    .line 177
    invoke-virtual {v2, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    const/4 v5, 0x0

    .line 178
    invoke-virtual {v2, v7, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    .line 185
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "status_bar_height"

    const-string v8, "dimen"

    const-string v9, "android"

    .line 186
    invoke-virtual {v5, v6, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_76

    .line 188
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 191
    :cond_76
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 192
    iget v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v10, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v10, v2

    add-int/2addr v10, v7

    invoke-virtual {v5, v6, v8, v9, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 194
    invoke-virtual {p0, v5}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v5, 0x7f0b0042

    invoke-static {v2, v5, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/view/tutorial/FeatureListContentNavigator;

    iput-object v2, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mNavigator:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;

    goto :goto_ab

    .line 172
    :pswitch_9c
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v5, 0x7f0b006f

    invoke-static {v2, v5, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialConfirmNavigator;

    iput-object v2, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mNavigator:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;

    .line 206
    :goto_ab
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mNavigator:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 208
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mNavigator:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;

    new-instance v2, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialController;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialController;-><init>(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)V

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;->setViewController(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialController;)V

    .line 209
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mNavigator:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;

    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->mPageResources:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;->setPageSize(I)V

    .line 212
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    if-ne v1, v3, :cond_da

    .line 214
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mNavigator:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;

    const/high16 v2, 0x43340000    # 180.0f

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;->setRotationY(F)V

    .line 218
    :cond_da
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mNavigator:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;

    iget v2, v0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->mPageIndex:I

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;->onPageSelected(I)V

    .line 219
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mPager:Landroidx/viewpager/widget/ViewPager;

    iget v0, v0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->mPageIndex:I

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 222
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mNavigator:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialNavigator;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 223
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void

    nop

    :pswitch_data_f8
    .packed-switch 0x1
        :pswitch_9c
        :pswitch_44
    .end packed-switch
.end method
