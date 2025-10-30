.class public Lcom/sonyericsson/android/camera/view/InstantViewer;
.super Landroid/widget/FrameLayout;
.source "InstantViewer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/InstantViewer$AlbumNotifyReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_FAST_VIEW_MODE_LAUNCHED:Ljava/lang/String; = "com.sonyericsson.album.intent.action.FAST_VIEW_MODE_LAUNCHED"

.field public static final TAG:Ljava/lang/String; = "InstantViewer"


# instance fields
.field private mAlbumBmp:Landroid/graphics/Bitmap;

.field private mAlbumNotifyReceiver:Lcom/sonyericsson/android/camera/view/InstantViewer$AlbumNotifyReceiver;

.field private mAlbumPreloader:Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;

.field private mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

.field private mIsOpened:Z

.field protected mKeyEventTranslator:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

.field private mListener:Lcom/sonyericsson/cameracommon/review/ReviewWindowListener;

.field private mOrientedPictureSize:Landroid/graphics/Rect;

.field protected mPictureImage:Landroid/widget/ImageView;

.field private mRequestId:I

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 82
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 59
    iput p1, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mRequestId:I

    const/4 p1, 0x0

    .line 63
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mIsOpened:Z

    const/4 p1, 0x0

    .line 65
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 67
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mAlbumBmp:Landroid/graphics/Bitmap;

    .line 71
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mOrientedPictureSize:Landroid/graphics/Rect;

    .line 74
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mAlbumNotifyReceiver:Lcom/sonyericsson/android/camera/view/InstantViewer$AlbumNotifyReceiver;

    .line 83
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/InstantViewer;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/CameraActivity;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 93
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 59
    iput p1, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mRequestId:I

    const/4 p1, 0x0

    .line 63
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mIsOpened:Z

    const/4 p1, 0x0

    .line 65
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 67
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mAlbumBmp:Landroid/graphics/Bitmap;

    .line 71
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mOrientedPictureSize:Landroid/graphics/Rect;

    .line 74
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mAlbumNotifyReceiver:Lcom/sonyericsson/android/camera/view/InstantViewer$AlbumNotifyReceiver;

    .line 94
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/InstantViewer;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/CameraActivity;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 105
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 59
    iput p1, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mRequestId:I

    const/4 p1, 0x0

    .line 63
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mIsOpened:Z

    const/4 p1, 0x0

    .line 65
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 67
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mAlbumBmp:Landroid/graphics/Bitmap;

    .line 71
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mOrientedPictureSize:Landroid/graphics/Rect;

    .line 74
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mAlbumNotifyReceiver:Lcom/sonyericsson/android/camera/view/InstantViewer$AlbumNotifyReceiver;

    .line 106
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/InstantViewer;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/CameraActivity;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    return-void
.end method

.method private backToViewFinder()V
    .registers 1

    .line 530
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/InstantViewer;->hide()V

    return-void
.end method

.method private hideScreen()V
    .registers 5

    .line 445
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hide: visibility: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/InstantViewer;->getVisibility()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 447
    :cond_22
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/view/InstantViewer;->setVisible(Z)V

    return-void
.end method

.method public static launchAlbum(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;ZLcom/sonyericsson/cameracommon/contentsview/PredictiveCaptureStoreInfo;)V
    .registers 12

    const/4 v3, -0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object v6, p4

    .line 180
    invoke-static/range {v0 .. v6}, Lcom/sonyericsson/android/camera/controller/album/AlbumLauncher;->launchAlbum(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;IZZLcom/sonyericsson/cameracommon/contentsview/PredictiveCaptureStoreInfo;)V

    return-void
.end method

.method public static launchAlbumSecure(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;Lcom/sonyericsson/cameracommon/contentsview/PredictiveCaptureStoreInfo;[J)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sonyericsson/cameracommon/contentsview/PredictiveCaptureStoreInfo;",
            "[J)V"
        }
    .end annotation

    .line 197
    invoke-static {p0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera/controller/album/AlbumLauncher;->launchAlbumSecure(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;Lcom/sonyericsson/cameracommon/contentsview/PredictiveCaptureStoreInfo;[J)V

    return-void
.end method

.method private registerAlbumNotifyReceiver()V
    .registers 5

    .line 549
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mAlbumNotifyReceiver:Lcom/sonyericsson/android/camera/view/InstantViewer$AlbumNotifyReceiver;

    if-eqz v0, :cond_7

    .line 550
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/InstantViewer;->unregisterAlbumNotifyReceiver()V

    .line 554
    :cond_7
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_14

    const-string v0, "register AlbumNotifyReceiver"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 555
    :cond_14
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    if-eqz v0, :cond_2f

    .line 556
    new-instance v0, Lcom/sonyericsson/android/camera/view/InstantViewer$AlbumNotifyReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/view/InstantViewer$AlbumNotifyReceiver;-><init>(Lcom/sonyericsson/android/camera/view/InstantViewer;Lcom/sonyericsson/android/camera/view/InstantViewer$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mAlbumNotifyReceiver:Lcom/sonyericsson/android/camera/view/InstantViewer$AlbumNotifyReceiver;

    .line 557
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mAlbumNotifyReceiver:Lcom/sonyericsson/android/camera/view/InstantViewer$AlbumNotifyReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.sonyericsson.album.intent.action.FAST_VIEW_MODE_LAUNCHED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/CameraActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    :cond_2f
    return-void
.end method

.method private setVisible(Z)V
    .registers 6

    .line 451
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVisible: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1e
    if-eqz p1, :cond_21

    goto :goto_22

    :cond_21
    const/4 v1, 0x4

    .line 459
    :goto_22
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/InstantViewer;->setVisibility(I)V

    return-void
.end method

.method private setup(Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;)V
    .registers 2

    .line 118
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mKeyEventTranslator:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

    return-void
.end method

.method private setupScreen(Landroid/app/Activity;Landroid/net/Uri;[BLjava/lang/String;IIZLandroid/graphics/Bitmap;)Z
    .registers 14

    .line 386
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5b

    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setupScreen() uri:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", picture imageData: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_1f

    const-string v4, "null"

    goto :goto_27

    .line 387
    :cond_1f
    invoke-static {p3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", picture mime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", reviewOrientation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, ", pictureOrientation: "

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, " ,isFront:"

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p5, " ,dispBmp:"

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    aput-object p5, v0, v1

    .line 386
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_5b
    const/4 p5, 0x0

    if-eqz p8, :cond_5f

    goto :goto_80

    :cond_5f
    if-eqz p2, :cond_6f

    .line 400
    new-instance p3, Lcom/sonyericsson/cameracommon/storage/ImageLoader;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/InstantViewer;->getContext()Landroid/content/Context;

    move-result-object p5

    invoke-direct {p3, p5, p2, p6}, Lcom/sonyericsson/cameracommon/storage/ImageLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;I)V

    invoke-virtual {p3}, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->load()Landroid/graphics/Bitmap;

    move-result-object p8

    goto :goto_80

    :cond_6f
    if-eqz p3, :cond_7f

    .line 402
    new-instance p5, Lcom/sonyericsson/cameracommon/storage/ImageLoader;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/InstantViewer;->getContext()Landroid/content/Context;

    move-result-object p7

    invoke-direct {p5, p7, p3, p6}, Lcom/sonyericsson/cameracommon/storage/ImageLoader;-><init>(Landroid/content/Context;[BI)V

    invoke-virtual {p5}, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->load()Landroid/graphics/Bitmap;

    move-result-object p8

    goto :goto_80

    :cond_7f
    move-object p8, p5

    :goto_80
    if-nez p8, :cond_8c

    const-string p1, "Cannot create the image."

    .line 406
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return v1

    .line 410
    :cond_8c
    invoke-virtual {p8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p5

    int-to-float p5, p5

    div-float/2addr p3, p5

    .line 411
    invoke-static {p1, p3}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getSurfaceRect(Landroid/content/Context;F)Landroid/graphics/Rect;

    move-result-object p1

    .line 412
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object p3, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mOrientedPictureSize:Landroid/graphics/Rect;

    const-string p1, "image/jpeg"

    .line 416
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b7

    .line 417
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mOrientedPictureSize:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    .line 418
    iget-object p3, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mOrientedPictureSize:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    goto :goto_bf

    .line 420
    :cond_b7
    invoke-virtual {p8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    .line 421
    invoke-virtual {p8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    .line 424
    :goto_bf
    invoke-static {p8, p1, p3, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 429
    iget-object p3, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mPictureImage:Landroid/widget/ImageView;

    sget-object p4, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p3, p4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 430
    iget-object p3, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mPictureImage:Landroid/widget/ImageView;

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 433
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mUri:Landroid/net/Uri;

    return v2
.end method

.method private showScreen()V
    .registers 6

    .line 439
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_22

    new-array v0, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "show: visibility: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/InstantViewer;->getVisibility()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 441
    :cond_22
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/view/InstantViewer;->setVisible(Z)V

    return-void
.end method

.method private unregisterAlbumNotifyReceiver()V
    .registers 3

    .line 563
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mAlbumNotifyReceiver:Lcom/sonyericsson/android/camera/view/InstantViewer$AlbumNotifyReceiver;

    if-eqz v0, :cond_1d

    .line 565
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_11

    const-string v0, "unregister AlbumNotifyReceiver"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 566
    :cond_11
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    if-eqz v0, :cond_1a

    .line 567
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mAlbumNotifyReceiver:Lcom/sonyericsson/android/camera/view/InstantViewer$AlbumNotifyReceiver;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1a
    const/4 v0, 0x0

    .line 569
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mAlbumNotifyReceiver:Lcom/sonyericsson/android/camera/view/InstantViewer$AlbumNotifyReceiver;

    :cond_1d
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    const/4 v0, 0x0

    .line 161
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mUri:Landroid/net/Uri;

    const/4 v1, -0x1

    .line 162
    iput v1, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mRequestId:I

    .line 164
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mAlbumBmp:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_f

    .line 165
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 166
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mAlbumBmp:Landroid/graphics/Bitmap;

    :cond_f
    return-void
.end method

.method public clearScreen()V
    .registers 3

    .line 519
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mPictureImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 520
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mAlbumBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_f

    .line 521
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 522
    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mAlbumBmp:Landroid/graphics/Bitmap;

    :cond_f
    return-void
.end method

.method public createAlbumPreloader()V
    .registers 3

    .line 594
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mAlbumPreloader:Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;

    if-nez v0, :cond_12

    .line 595
    new-instance v0, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mAlbumPreloader:Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;

    .line 596
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mAlbumPreloader:Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;->prewarmAlbum()V

    :cond_12
    return-void
.end method

.method public getRequestId()I
    .registers 2

    .line 154
    iget v0, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mRequestId:I

    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    .line 136
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public hide()V
    .registers 4

    .line 329
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "hide()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 330
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const/4 v1, 0x0

    if-eqz v0, :cond_31

    .line 331
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getRequestedOrientation()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_31

    .line 333
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getOrientation()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    if-ne v0, v2, :cond_2c

    .line 335
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/CameraActivity;->setRequestedOrientation(I)V

    goto :goto_31

    .line 338
    :cond_2c
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->setRequestedOrientation(I)V

    .line 344
    :cond_31
    :goto_31
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/InstantViewer;->clearFocus()V

    .line 345
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/InstantViewer;->hideScreen()V

    .line 346
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/InstantViewer;->clearScreen()V

    .line 347
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mIsOpened:Z

    .line 349
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mListener:Lcom/sonyericsson/cameracommon/review/ReviewWindowListener;

    if-eqz v0, :cond_43

    .line 350
    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/review/ReviewWindowListener;->onReviewWindowClose()V

    .line 353
    :cond_43
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/InstantViewer;->unregisterAlbumNotifyReceiver()V

    return-void
.end method

.method public isAlbumBitmapSetting()Z
    .registers 2

    .line 381
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mAlbumBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isOpened()Z
    .registers 2

    .line 539
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mIsOpened:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .line 203
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "onAttachedToWindow."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 204
    :cond_d
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/high16 v0, -0x1000000

    .line 208
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/InstantViewer;->setBackgroundColor(I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 213
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "onDetachedFromWindow."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_d
    const/4 v0, 0x0

    .line 215
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mListener:Lcom/sonyericsson/cameracommon/review/ReviewWindowListener;

    .line 217
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .line 123
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "onFinishInflate."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 124
    :cond_d
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f090028

    .line 127
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/InstantViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mPictureImage:Landroid/widget/ImageView;

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 8

    .line 464
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1e

    new-array v0, v1, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onKeyDown: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 466
    :cond_1e
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mKeyEventTranslator:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

    .line 467
    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;->translateKeyCode(I)Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    move-result-object p1

    .line 469
    sget-object v0, Lcom/sonyericsson/android/camera/view/InstantViewer$1;->$SwitchMap$com$sonyericsson$cameracommon$keytranslator$KeyEventTranslator$TranslatedKeyCode:[I

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_3c

    return v2

    :pswitch_30
    return v2

    .line 477
    :pswitch_31
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_3a

    .line 478
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/InstantViewer;->backToViewFinder()V

    :cond_3a
    :pswitch_3a
    return v1

    nop

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_30
        :pswitch_3a
        :pswitch_3a
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 7

    .line 499
    sget-boolean p2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1e

    new-array p2, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyUp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, v0

    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1e
    const/4 p2, 0x4

    if-eq p1, p2, :cond_26

    const/16 p2, 0x52

    if-eq p1, p2, :cond_26

    return v0

    .line 505
    :cond_26
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/InstantViewer;->backToViewFinder()V

    return v1
.end method

.method public open(Landroid/net/Uri;Ljava/lang/String;IIZLcom/sonyericsson/cameracommon/review/ReviewWindowListener;I)Z
    .registers 20

    move-object v9, p0

    .line 234
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v0, :cond_21

    new-array v0, v11, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "open() 1 mimetype:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_22

    :cond_21
    move-object v4, p2

    :goto_22
    move-object/from16 v0, p6

    .line 237
    iput-object v0, v9, Lcom/sonyericsson/android/camera/view/InstantViewer;->mListener:Lcom/sonyericsson/cameracommon/review/ReviewWindowListener;

    move/from16 v0, p7

    .line 239
    iput v0, v9, Lcom/sonyericsson/android/camera/view/InstantViewer;->mRequestId:I

    if-eqz p1, :cond_31

    .line 243
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_32

    :cond_31
    const/4 v0, 0x0

    :goto_32
    if-eqz v0, :cond_56

    .line 244
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingConstants;->EXTENDED_PHOTO_STORAGE_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 248
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingConstants;->EXTENDED_PHOTO_STORAGE_URI:Landroid/net/Uri;

    .line 249
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingConstants;->STANDARD_PHOTO_STORAGE_URI:Landroid/net/Uri;

    .line 250
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 248
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move-object v2, v0

    goto :goto_57

    :cond_56
    move-object v2, p1

    .line 253
    :goto_57
    iget-object v1, v9, Lcom/sonyericsson/android/camera/view/InstantViewer;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const/4 v3, 0x0

    iget-object v8, v9, Lcom/sonyericsson/android/camera/view/InstantViewer;->mAlbumBmp:Landroid/graphics/Bitmap;

    move-object v0, p0

    move-object v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-direct/range {v0 .. v8}, Lcom/sonyericsson/android/camera/view/InstantViewer;->setupScreen(Landroid/app/Activity;Landroid/net/Uri;[BLjava/lang/String;IIZLandroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 255
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/InstantViewer;->show()V

    .line 256
    iget-object v0, v9, Lcom/sonyericsson/android/camera/view/InstantViewer;->mListener:Lcom/sonyericsson/cameracommon/review/ReviewWindowListener;

    if-eqz v0, :cond_73

    .line 257
    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/review/ReviewWindowListener;->onReviewWindowOpen()V

    :cond_73
    return v11

    :cond_74
    return v10
.end method

.method public open([BLjava/lang/String;IIZLcom/sonyericsson/cameracommon/review/ReviewWindowListener;I)Z
    .registers 20

    move-object v9, p0

    .line 279
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v0, :cond_21

    new-array v0, v11, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "open() 2 mimetype:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_22

    :cond_21
    move-object v4, p2

    :goto_22
    move-object/from16 v0, p6

    .line 281
    iput-object v0, v9, Lcom/sonyericsson/android/camera/view/InstantViewer;->mListener:Lcom/sonyericsson/cameracommon/review/ReviewWindowListener;

    move/from16 v0, p7

    .line 283
    iput v0, v9, Lcom/sonyericsson/android/camera/view/InstantViewer;->mRequestId:I

    .line 285
    iget-object v1, v9, Lcom/sonyericsson/android/camera/view/InstantViewer;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const/4 v2, 0x0

    iget-object v8, v9, Lcom/sonyericsson/android/camera/view/InstantViewer;->mAlbumBmp:Landroid/graphics/Bitmap;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-direct/range {v0 .. v8}, Lcom/sonyericsson/android/camera/view/InstantViewer;->setupScreen(Landroid/app/Activity;Landroid/net/Uri;[BLjava/lang/String;IIZLandroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 287
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/InstantViewer;->show()V

    .line 288
    iget-object v0, v9, Lcom/sonyericsson/android/camera/view/InstantViewer;->mListener:Lcom/sonyericsson/cameracommon/review/ReviewWindowListener;

    if-eqz v0, :cond_47

    .line 289
    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/review/ReviewWindowListener;->onReviewWindowOpen()V

    :cond_47
    return v11

    :cond_48
    return v10
.end method

.method public prepareBitmap(Landroid/net/Uri;)V
    .registers 3

    .line 603
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mAlbumPreloader:Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;

    if-eqz v0, :cond_7

    .line 604
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;->prepareBitmap(Landroid/net/Uri;)V

    :cond_7
    return-void
.end method

.method public releaseAlbumPreloader()V
    .registers 2

    .line 614
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mAlbumPreloader:Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;

    if-eqz v0, :cond_a

    .line 615
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;->release()V

    const/4 v0, 0x0

    .line 616
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mAlbumPreloader:Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;

    :cond_a
    return-void
.end method

.method public setAlbumBitmap(Landroid/net/Uri;)Z
    .registers 4

    .line 362
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mAlbumBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_a

    .line 363
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 364
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mAlbumBmp:Landroid/graphics/Bitmap;

    .line 367
    :cond_a
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mAlbumPreloader:Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;

    const/4 v1, 0x0

    if-nez v0, :cond_10

    return v1

    .line 371
    :cond_10
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;->getBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mAlbumBmp:Landroid/graphics/Bitmap;

    .line 373
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mAlbumBmp:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_1b

    const/4 v1, 0x1

    :cond_1b
    return v1
.end method

.method public setUiOrientation(I)V
    .registers 6

    .line 544
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setUiOrientation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1e
    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .registers 2

    .line 145
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mUri:Landroid/net/Uri;

    return-void
.end method

.method public setup(Lcom/sonyericsson/android/camera/setting/UserSettings;)V
    .registers 3

    .line 114
    new-instance v0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

    invoke-direct {v0, p1}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;-><init>(Lcom/sonyericsson/android/camera/setting/UserSettings;)V

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/InstantViewer;->setup(Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;)V

    return-void
.end method

.method public show()V
    .registers 5

    .line 300
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "show()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 302
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x2

    .line 303
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 304
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 306
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getLayoutOrientation()Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    move-result-object v0

    .line 307
    sget-object v2, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->ReverseLandscape:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    const/4 v3, 0x1

    if-ne v2, v0, :cond_33

    .line 309
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera/CameraActivity;->setRequestedOrientation(I)V

    .line 312
    :cond_33
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->setRequestedOrientation(I)V

    .line 314
    iput-boolean v3, p0, Lcom/sonyericsson/android/camera/view/InstantViewer;->mIsOpened:Z

    .line 316
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/InstantViewer;->showScreen()V

    .line 317
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/InstantViewer;->requestFocus()Z

    .line 319
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setViewerLaunched()V

    .line 322
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/InstantViewer;->registerAlbumNotifyReceiver()V

    return-void
.end method
