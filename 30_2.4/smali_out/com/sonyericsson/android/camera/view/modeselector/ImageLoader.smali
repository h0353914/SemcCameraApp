.class public Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader$AsyncDrawable;,
        Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader$ImageLoaderTask;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final FADE_IN_TRANSITION_DURATION:I = 0xc8

.field private static final HARD_CACHE_SIZE:I = 0x5

.field private static final MAX_PERCENT_FOR_HARD_CACHE:F = 0.25f

.field private static final NETWORK_DOWNLOADER_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static final RESOURCE_DOWNLOADER_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static final TAG:Ljava/lang/String; = "ImageLoader"

.field private static final THREAD_NAME_NETWORK_DOWNLOADERS:Ljava/lang/String; = "AppsUi#Net"

.field private static final THREAD_NAME_RESOURCE_DOWNLOADERS:Ljava/lang/String; = "AppsUi#Res"

.field private static sImageLoader:Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader;

.field private static final sImageLoaderLock:Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mFadeInBitmap:Z

.field private final mImageCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadingBitmap:Landroid/graphics/Bitmap;

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "AppsUi#Net"

    const/4 v1, 0x3

    .line 60
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/util/ThreadUtil;->buildPoolExecutor(Ljava/lang/String;I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader;->NETWORK_DOWNLOADER_EXECUTOR:Ljava/util/concurrent/Executor;

    const-string v0, "AppsUi#Res"

    const/4 v1, 0x1

    .line 67
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/util/ThreadUtil;->buildPoolExecutor(Ljava/lang/String;I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader;->RESOURCE_DOWNLOADER_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader;->sImageLoaderLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "activity"

    .line 122
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 124
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x100000

    and-int/2addr v1, v2

    if-eqz v1, :cond_18

    const/4 v1, 0x1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    .line 125
    :goto_19
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v2

    if-eqz v1, :cond_23

    .line 127
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLargeMemoryClass()I

    move-result v2

    :cond_23
    int-to-float v0, v2

    const/high16 v1, 0x3e800000    # 0.25f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_2d

    const/high16 v0, 0x500000

    .line 137
    :cond_2d
    new-instance v1, Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader$1;

    invoke-direct {v1, p0, v0}, Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader$1;-><init>(Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader;I)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader;->mImageCache:Landroid/util/LruCache;

    .line 144
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader;->mContext:Landroid/content/Context;

    .line 145
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader;->mResources:Landroid/content/res/Resources;

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader;)Landroid/content/Context;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader;)Landroid/content/res/Resources;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader;->mResources:Landroid/content/res/Resources;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader;)Landroid/util/LruCache;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader;->mImageCache:Landroid/util/LruCache;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader;->setImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic access$500(Landroid/widget/ImageView;)Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader$ImageLoaderTask;
    .registers 1

    .line 45
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader;->getImageLoaderTask(Landroid/widget/ImageView;)Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader$ImageLoaderTask;

    move-result-object p0

    return-object p0
.end method

.method private static bitmap2File(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 489
    :try_start_2
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    .line 490
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_15
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_15} :catch_4e
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_15} :catch_34

    .line 491
    :try_start_15
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p0, p1, v3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_1c} :catch_22
    .catchall {:try_start_15 .. :try_end_1c} :catchall_20

    .line 492
    :try_start_1c
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1f
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_1f} :catch_4e
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_34

    goto :goto_67

    :catchall_20
    move-exception p0

    goto :goto_25

    :catch_22
    move-exception p0

    move-object v5, p0

    .line 489
    :try_start_24
    throw v5
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_20

    :goto_25
    if-eqz v5, :cond_30

    .line 492
    :try_start_27
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_2a} :catch_2b
    .catch Ljava/io/FileNotFoundException; {:try_start_27 .. :try_end_2a} :catch_4e
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_34

    goto :goto_33

    :catch_2b
    move-exception p1

    :try_start_2c
    invoke-virtual {v5, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_33

    :cond_30
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    :goto_33
    throw p0
    :try_end_34
    .catch Ljava/io/FileNotFoundException; {:try_start_2c .. :try_end_34} :catch_4e
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_34} :catch_34

    :catch_34
    move-exception p0

    .line 495
    new-array p1, v1, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeImage2File - io exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v0

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto :goto_67

    :catch_4e
    move-exception p0

    .line 493
    new-array p1, v1, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeImage2File - file not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v0

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :goto_67
    return-void
.end method

.method private static cancelPotentialTask(Ljava/lang/String;Landroid/widget/ImageView;)Z
    .registers 4

    .line 304
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader;->getImageLoaderTask(Landroid/widget/ImageView;)Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader$ImageLoaderTask;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_19

    .line 307
    # getter for: Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader$ImageLoaderTask;->imageUri:Ljava/lang/String;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader$ImageLoaderTask;->access$000(Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader$ImageLoaderTask;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 308
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_14

    goto :goto_16

    :cond_14
    const/4 p0, 0x0

    return p0

    .line 309
    :cond_16
    :goto_16
    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader$ImageLoaderTask;->cancel(Z)Z

    :cond_19
    return v0
.end method

.method private static getImageLoaderTask(Landroid/widget/ImageView;)Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader$ImageLoaderTask;
    .registers 2

    if-eqz p0, :cond_11

    .line 331
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 332
    instance-of v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader$AsyncDrawable;

    if-eqz v0, :cond_11

    .line 333
    check-cast p0, Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader$AsyncDrawable;

    .line 334
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader$AsyncDrawable;->getImageLoaderTask()Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader$ImageLoaderTask;

    move-result-object p0

    return-object p0

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader;
    .registers 3

    .line 105
    sget-object v0, Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader;->sImageLoader:Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader;

    if-nez v0, :cond_17

    .line 106
    sget-object v0, Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader;->sImageLoaderLock:Ljava/lang/Object;

    monitor-enter v0

    .line 107
    :try_start_7
    sget-object v1, Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader;->sImageLoader:Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader;

    if-nez v1, :cond_12

    .line 108
    new-instance v1, Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader;->sImageLoader:Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader;

    .line 110
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    .line 112
    :cond_17
    :goto_17
    sget-object p0, Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader;->sImageLoader:Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader;

    return-object p0
.end method

.method private static scheduleTask(Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader$ImageLoaderTask;)V
    .registers 4

    .line 230
    # getter for: Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader$ImageLoaderTask;->imageUri:Ljava/lang/String;
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader$ImageLoaderTask;->access$000(Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader$ImageLoaderTask;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "resource"

    .line 231
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1d

    .line 235
    sget-object v0, Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader;->RESOURCE_DOWNLOADER_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader$ImageLoaderTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_3c

    :cond_1d
    const-string v1, "http"

    .line 236
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 240
    sget-object v0, Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader;->NETWORK_DOWNLOADER_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader$ImageLoaderTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_3c

    :cond_2d
    const-string v1, "https"

    .line 241
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 245
    sget-object v0, Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader;->NETWORK_DOWNLOADER_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader$ImageLoaderTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_3c
    :goto_3c
    return-void
.end method

.method private setImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .registers 9

    .line 279
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader;->mFadeInBitmap:Z

    if-eqz v0, :cond_27

    .line 281
    new-instance v0, Landroid/graphics/drawable/TransitionDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader;->mResources:Landroid/content/res/Resources;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader;->mLoadingBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-direct {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 285
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 286
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 p1, 0xc8

    .line 287
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    goto :goto_2a

    .line 289
    :cond_27
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_2a
    return-void
.end method


# virtual methods
.method public release()V
    .registers 2

    .line 356
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader;->mImageCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    return-void
.end method

.method public removeCache(Ljava/lang/String;)V
    .registers 3

    .line 346
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader;->mImageCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_f

    .line 348
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader;->mImageCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    return-void
.end method

.method public requestLoad(Ljava/lang/String;IILandroid/widget/ImageView;)V
    .registers 12

    if-eqz p1, :cond_44

    .line 181
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_44

    :cond_9
    if-lez p2, :cond_43

    if-gtz p3, :cond_e

    goto :goto_43

    :cond_e
    if-nez p4, :cond_11

    return-void

    :cond_11
    const/4 v0, 0x0

    .line 204
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader;->mImageCache:Landroid/util/LruCache;

    if-eqz v1, :cond_1c

    .line 205
    invoke-virtual {v1, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    :cond_1c
    if-eqz v0, :cond_22

    .line 212
    invoke-virtual {p4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_42

    .line 213
    :cond_22
    invoke-static {p1, p4}, Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader;->cancelPotentialTask(Ljava/lang/String;Landroid/widget/ImageView;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 214
    new-instance v0, Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader$ImageLoaderTask;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader$ImageLoaderTask;-><init>(Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader;Ljava/lang/String;IILandroid/widget/ImageView;)V

    .line 215
    new-instance p1, Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader$AsyncDrawable;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader;->mResources:Landroid/content/res/Resources;

    iget-object p3, p0, Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader;->mLoadingBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p1, p2, p3, v0}, Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader$AsyncDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader$ImageLoaderTask;)V

    .line 216
    invoke-virtual {p4, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 217
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader;->scheduleTask(Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader$ImageLoaderTask;)V

    :cond_42
    :goto_42
    return-void

    :cond_43
    :goto_43
    return-void

    :cond_44
    :goto_44
    return-void
.end method

.method public requestLoad(Ljava/lang/String;Lcom/sonyericsson/android/camera/view/modeselector/view/AbsPanelView;)V
    .registers 5

    if-nez p2, :cond_3

    return-void

    .line 162
    :cond_3
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/view/modeselector/view/AbsPanelView;->getAppIconView()Landroid/widget/ImageView;

    move-result-object v0

    .line 163
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/view/modeselector/view/AbsPanelView;->getAppIconWidth()I

    move-result v1

    .line 164
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/view/modeselector/view/AbsPanelView;->getAppIconHeight()I

    move-result p2

    .line 166
    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader;->requestLoad(Ljava/lang/String;IILandroid/widget/ImageView;)V

    return-void
.end method

.method public setImageFadeIn(Z)V
    .registers 2

    .line 268
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader;->mFadeInBitmap:Z

    return-void
.end method

.method public setLoadingImage(I)V
    .registers 3

    .line 259
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader;->mResources:Landroid/content/res/Resources;

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader;->mLoadingBitmap:Landroid/graphics/Bitmap;

    return-void
.end method
