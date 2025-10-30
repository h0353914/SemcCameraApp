.class public Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;
.super Ljava/lang/Object;
.source "ContentsViewController.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/storage/Storage$StorageStateListener;
.implements Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$ContentCreationCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$UpdateContentTask;,
        Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$ClickListener;,
        Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$OnClickThumbnailProgressListener;
    }
.end annotation


# static fields
.field public static final MAX_CONTENT_NUMBER:I = 0x1

.field public static final TAG:Ljava/lang/String; = "ContentsViewController"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mClickListener:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$ClickListener;

.field private mClickThumbnailProgressListener:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$OnClickThumbnailProgressListener;

.field private mClickable:Z

.field private final mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

.field private mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

.field private mHandler:Landroid/os/Handler;

.field private mIsCameraPaused:Z

.field private mIsCoreCamera:Z

.field private mOrientation:I

.field private final mRequestIdGenerator:Lcom/sonyericsson/cameracommon/utility/IncrementalId;

.field private mSecurityLevel:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;

.field private mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

.field private mThumbnailStateListener:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailStateListener;

.field private final mUpdateContentTaskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$UpdateContentTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailStateListener;)V
    .registers 7

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 79
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mClickable:Z

    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mClickListener:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$ClickListener;

    .line 82
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mThumbnailStateListener:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailStateListener;

    .line 83
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mClickThumbnailProgressListener:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$OnClickThumbnailProgressListener;

    .line 97
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mHandler:Landroid/os/Handler;

    .line 99
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 100
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mUpdateContentTaskList:Ljava/util/List;

    const/4 v0, 0x0

    .line 102
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mIsCameraPaused:Z

    .line 118
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mActivity:Landroid/app/Activity;

    .line 119
    new-instance v0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    invoke-direct {v0, p2, p3, p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;-><init>(Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$ContentCreationCallback;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    const v0, 0x7f090089

    .line 120
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    .line 121
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/IncrementalId;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/utility/IncrementalId;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mRequestIdGenerator:Lcom/sonyericsson/cameracommon/utility/IncrementalId;

    .line 123
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    .line 125
    iput-object p4, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mThumbnailStateListener:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailStateListener;

    .line 127
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->isCoreCameraApp(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mIsCoreCamera:Z

    .line 129
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mSecurityLevel:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;)Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$OnClickThumbnailProgressListener;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mClickThumbnailProgressListener:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$OnClickThumbnailProgressListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;)Ljava/util/List;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mUpdateContentTaskList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;)Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;)Landroid/app/Activity;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method private clearTemporaryThumbnailClicked()V
    .registers 3

    const/4 v0, 0x0

    .line 580
    :goto_1
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 581
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    .line 582
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->clearTemporaryThumbnailClicked()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

.method private removeExcessiveView(I)V
    .registers 5

    const/4 v0, 0x0

    .line 229
    :goto_1
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 230
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    .line 231
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->hasContent()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->getRequestId()I

    move-result v2

    if-eq p1, v2, :cond_22

    .line 232
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->removeView(Landroid/view/View;)V

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_25
    return-void
.end method

.method private searchPallet(I)Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;
    .registers 7

    .line 409
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2c

    new-array v0, v1, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "searchPallet() has been called. requestId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", child = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    .line 410
    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->getChildCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 409
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2c
    move v0, v2

    .line 411
    :goto_2d
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_63

    .line 412
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v3, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    .line 413
    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->getRequestId()I

    move-result v4

    if-ne p1, v4, :cond_60

    .line 414
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_5f

    new-array p1, v1, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "searchPallet() pallet find. index = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v2

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_5f
    return-object v3

    :cond_60
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    :cond_63
    const/4 p1, 0x0

    return-object p1
.end method

.method private startAnimationInner(Landroid/view/animation/Animation;)V
    .registers 3

    if-eqz p1, :cond_17

    .line 376
    invoke-virtual {p1}, Landroid/view/animation/Animation;->reset()V

    .line 377
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->startAnimation(Landroid/view/animation/Animation;)V

    .line 378
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_17

    const-string p1, "Animation started."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_17
    return-void
.end method


# virtual methods
.method public addContent(ILandroid/net/Uri;)V
    .registers 7

    .line 261
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addContent() has been called. requestId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 264
    :cond_26
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    if-nez v0, :cond_2b

    return-void

    .line 268
    :cond_2b
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mSecurityLevel:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;

    sget-object v1, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;->NEWLY_ADDED_CONTENT_ONLY:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;

    if-ne v0, v1, :cond_36

    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mIsCameraPaused:Z

    if-eqz v0, :cond_36

    return-void

    .line 272
    :cond_36
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->searchPallet(I)Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    move-result-object v0

    if-nez v0, :cond_52

    .line 273
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mSecurityLevel:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;

    sget-object v1, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;->NEWLY_ADDED_CONTENT_ONLY:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;

    if-ne v0, v1, :cond_43

    goto :goto_52

    :cond_43
    const/4 p2, -0x1

    if-eq p1, p2, :cond_57

    .line 275
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    .line 276
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->getChildCount()I

    move-result p1

    if-nez p1, :cond_57

    .line 280
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->reload()V

    goto :goto_57

    .line 274
    :cond_52
    :goto_52
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->request(ILandroid/net/Uri;)V

    :cond_57
    :goto_57
    return-void
.end method

.method public clearContents()V
    .registers 2

    .line 502
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->pause()V

    .line 503
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->removeAllViews()V

    return-void
.end method

.method public createContentFrame()I
    .registers 2

    .line 171
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "createContentFrame() has been called."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 173
    :cond_d
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->createEmptyContentFrame()I

    move-result v0

    .line 174
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->showProgress(I)V

    return v0
.end method

.method public createEmptyContentFrame()I
    .registers 7

    .line 186
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "createEmptyContentFrame() has been called."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 188
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mActivity:Landroid/app/Activity;

    const/4 v1, -0x1

    if-nez v0, :cond_1c

    const-string v0, "Activity has already been released at createEmptyContentFrame."

    .line 189
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    return v1

    .line 194
    :cond_1c
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    if-nez v0, :cond_2c

    const-string v0, "could not get inflater."

    .line 196
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    return v1

    .line 200
    :cond_2c
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mRequestIdGenerator:Lcom/sonyericsson/cameracommon/utility/IncrementalId;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/utility/IncrementalId;->getNext()I

    move-result v1

    .line 201
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v2, :cond_50

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createEmptyContentFrame : create pallet. id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 204
    :cond_50
    iget-boolean v2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mIsCoreCamera:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_5f

    const v2, 0x7f0b0033

    .line 205
    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    goto :goto_68

    :cond_5f
    const v2, 0x7f0b0032

    .line 207
    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    .line 209
    :goto_68
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mThumbnailStateListener:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailStateListener;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->initialize(ILcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailStateListener;)V

    .line 211
    iget-boolean v2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mClickable:Z

    if-nez v2, :cond_74

    .line 212
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->disableClick()V

    .line 215
    :cond_74
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->addView(Landroid/view/View;)V

    .line 216
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    iget v2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mOrientation:I

    invoke-virtual {v0, v2}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->setSensorOrientation(I)V

    return v1
.end method

.method public createProvisionalContentFrame()I
    .registers 3

    .line 243
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->createEmptyContentFrame()I

    move-result v0

    .line 244
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->searchPallet(I)Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 246
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->setProvisionalContent()V

    .line 247
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->removeExcessiveView(I)V

    .line 249
    :cond_10
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->show()V

    return v0
.end method

.method public disableClick()V
    .registers 2

    .line 550
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "disableClick() has been called."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 551
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->disableClick()V

    const/4 v0, 0x0

    .line 552
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mClickable:Z

    return-void
.end method

.method public enableClick()V
    .registers 2

    .line 544
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "enableClick() has been called."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 545
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->enableClick()V

    const/4 v0, 0x1

    .line 546
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mClickable:Z

    return-void
.end method

.method public getCurrentContent()Lcom/sonyericsson/cameracommon/contentsview/contents/Content;
    .registers 4

    .line 639
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "getCurrentContent() has been called."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 640
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    const/4 v1, 0x0

    if-eqz v0, :cond_33

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->getChildCount()I

    move-result v0

    if-nez v0, :cond_19

    goto :goto_33

    .line 644
    :cond_19
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    if-nez v0, :cond_2e

    const-string v0, "getCurrentContent() pallet(0) is null."

    .line 646
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    return-object v1

    .line 649
    :cond_2e
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->getContent()Lcom/sonyericsson/cameracommon/contentsview/contents/Content;

    move-result-object v0

    return-object v0

    :cond_33
    :goto_33
    const-string v0, "getCurrentContent() mContentContainer has no content."

    .line 641
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    return-object v1
.end method

.method public getCurrentRequestId()I
    .registers 4

    .line 657
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "getCurrentRequestId() has been called."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 658
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    const/4 v1, -0x1

    if-eqz v0, :cond_33

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->getChildCount()I

    move-result v0

    if-nez v0, :cond_19

    goto :goto_33

    .line 662
    :cond_19
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    if-nez v0, :cond_2e

    const-string v0, "getCurrentRequestId() pallet(0) is null."

    .line 664
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    return v1

    .line 667
    :cond_2e
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->getRequestId()I

    move-result v0

    return v0

    :cond_33
    :goto_33
    const-string v0, "getCurrentRequestId() mContentContainer has no content."

    .line 659
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    return v1
.end method

.method public getLocalContentInfo()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;",
            ">;"
        }
    .end annotation

    .line 606
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->getLocalCache()Ljava/util/LinkedList;

    move-result-object v0

    return-object v0
.end method

.method public hide()V
    .registers 3

    .line 339
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "hide()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 340
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->setVisibility(I)V

    .line 341
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->clearTemporaryThumbnailClicked()V

    return-void
.end method

.method public isLoading()Z
    .registers 7

    .line 428
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_24

    new-array v0, v1, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasLoadingContent() has been called. child = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    .line 430
    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->getChildCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 428
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_24
    move v0, v2

    .line 431
    :goto_25
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_5b

    .line 432
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v3, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    .line 433
    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->hasContent()Z

    move-result v3

    if-nez v3, :cond_58

    .line 435
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v3, :cond_57

    new-array v3, v1, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isLoading() pallet is loading. index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_57
    return v1

    :cond_58
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    :cond_5b
    return v2
.end method

.method public isLoadingInProvisionalContent()Z
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    .line 449
    :goto_2
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 450
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    .line 451
    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->isProvisionalContent()Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v0, 0x1

    return v0

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1d
    return v0
.end method

.method public isTemporaryThumbnailClicked(I)Z
    .registers 2

    .line 575
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->searchPallet(I)Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 576
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->isTemporaryThumbnailClicked()Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public onContentCreated(ILcom/sonyericsson/cameracommon/contentsview/contents/Content;Landroid/graphics/Bitmap;)V
    .registers 8

    .line 463
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_23

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onContentCreated( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 465
    :cond_23
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_31

    const-string p1, "Activity has already been released."

    .line 466
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    return-void

    :cond_31
    const/4 v0, -0x1

    if-ne p1, v0, :cond_3e

    .line 474
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->isLoading()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 475
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->createEmptyContentFrame()I

    move-result p1

    .line 479
    :cond_3e
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->searchPallet(I)Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    move-result-object v0

    if-eqz v0, :cond_4a

    .line 481
    invoke-virtual {v0, p2, p3}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->set(Lcom/sonyericsson/cameracommon/contentsview/contents/Content;Landroid/graphics/Bitmap;)V

    .line 482
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->removeExcessiveView(I)V

    .line 485
    :cond_4a
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mThumbnailStateListener:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailStateListener;

    if-eqz p1, :cond_5e

    .line 486
    invoke-interface {p1, p2}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailStateListener;->onThumbnailCreated(Lcom/sonyericsson/cameracommon/contentsview/contents/Content;)V

    if-eqz v0, :cond_5e

    .line 487
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->isTemporaryThumbnailClicked()Z

    move-result p1

    if-eqz p1, :cond_5e

    .line 488
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mThumbnailStateListener:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailStateListener;

    invoke-interface {p1, p2}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailStateListener;->onThumbnailClicked(Lcom/sonyericsson/cameracommon/contentsview/contents/Content;)V

    :cond_5e
    return-void
.end method

.method public onNoContentLoaded()V
    .registers 1

    .line 498
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->remove()V

    return-void
.end method

.method public onStorageSizeChanged(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;J)V
    .registers 4

    return-void
.end method

.method public onStorageStateChanged(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;)V
    .registers 4

    .line 509
    sget-boolean p3, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p3, :cond_d

    const-string p3, "onStorageStateChanged"

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 510
    :cond_d
    new-instance p3, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$UpdateContentTask;

    invoke-direct {p3, p0, p1, p2}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$UpdateContentTask;-><init>(Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;)V

    .line 511
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mUpdateContentTaskList:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 512
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public pause()V
    .registers 2

    const/4 v0, 0x0

    .line 133
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->pause(Z)V

    return-void
.end method

.method public pause(Z)V
    .registers 3

    .line 137
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "pause() has been called."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 138
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    if-eqz v0, :cond_14

    .line 139
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->pause()V

    .line 141
    :cond_14
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->clearTemporaryThumbnailClicked()V

    .line 144
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mIsCameraPaused:Z

    return-void
.end method

.method public reconstructLocalCache()V
    .registers 3

    .line 610
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->loadLocalCache()V

    .line 611
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->clearLocalCacheBackup()V

    .line 612
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->removeInvalidLocalCache(Landroid/content/Context;)V

    return-void
.end method

.method public release()V
    .registers 5

    .line 148
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "release() has been called."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 149
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->clearLocalCacheBackup()V

    .line 151
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->release()V

    const/4 v0, 0x0

    .line 152
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    .line 154
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    invoke-interface {v1, p0}, Lcom/sonyericsson/cameracommon/storage/Storage;->removeStorageStateListener(Lcom/sonyericsson/cameracommon/storage/Storage$StorageStateListener;)V

    .line 156
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mUpdateContentTaskList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$UpdateContentTask;

    .line 157
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_25

    .line 159
    :cond_37
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mUpdateContentTaskList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 161
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public reload()V
    .registers 3

    .line 299
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "reload() has been called."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 301
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    if-eqz v0, :cond_15

    const/4 v1, 0x1

    .line 302
    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->reload(I)V

    .line 304
    :cond_15
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    invoke-interface {v0, p0}, Lcom/sonyericsson/cameracommon/storage/Storage;->addStorageStateListener(Lcom/sonyericsson/cameracommon/storage/Storage$StorageStateListener;)V

    return-void
.end method

.method public reloadPreviousContent()V
    .registers 3

    .line 624
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mSecurityLevel:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;

    sget-object v1, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;->NEWLY_ADDED_CONTENT_ONLY:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;

    if-ne v0, v1, :cond_1a

    .line 625
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->saveLocalCache()V

    .line 626
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->getCurrentRequestId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->removeContent(I)V

    .line 627
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->pause()V

    .line 628
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->reconstructLocalCache()V

    .line 629
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->remove()V

    goto :goto_20

    .line 631
    :cond_1a
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->pause()V

    .line 632
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->remove()V

    .line 635
    :goto_20
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->reload()V

    return-void
.end method

.method public reloadTopContent()V
    .registers 2

    .line 620
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->reloadTopContent()V

    return-void
.end method

.method public remove()V
    .registers 2

    .line 311
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->removeAllViews()V

    return-void
.end method

.method public removeContent(I)V
    .registers 3

    .line 320
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->searchPallet(I)Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 322
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->removeView(Landroid/view/View;)V

    :cond_b
    return-void
.end method

.method public requestCreateContentInfoSync(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 291
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->requestCreateContentInfoSync(Ljava/util/ArrayList;)V

    return-void
.end method

.method public requestLastContentLoading(I)V
    .registers 3

    .line 285
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    if-eqz v0, :cond_7

    .line 286
    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->requestLastDataLoad(I)V

    :cond_7
    return-void
.end method

.method public requestLayout()V
    .registers 2

    .line 90
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->requestLayout()V

    return-void
.end method

.method public saveLocalCache()V
    .registers 2

    .line 616
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->saveLocalCache()V

    return-void
.end method

.method public setClickThumbnailProgressListener(Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$OnClickThumbnailProgressListener;)V
    .registers 3

    .line 556
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "setClickThumbnailProgressListener"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 558
    :cond_d
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mClickThumbnailProgressListener:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$OnClickThumbnailProgressListener;

    const/4 v0, 0x0

    if-nez p1, :cond_15

    .line 561
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mClickListener:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$ClickListener;

    goto :goto_1c

    .line 563
    :cond_15
    new-instance p1, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$ClickListener;

    invoke-direct {p1, p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$ClickListener;-><init>(Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$1;)V

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mClickListener:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$ClickListener;

    :goto_1c
    return-void
.end method

.method public setSensorOrientation(I)V
    .registers 3

    .line 350
    iput p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mOrientation:I

    .line 352
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    if-eqz v0, :cond_9

    .line 353
    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->setSensorOrientation(I)V

    :cond_9
    return-void
.end method

.method public setTemporaryThumbnail(ILandroid/graphics/Bitmap;)V
    .registers 3

    .line 568
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->searchPallet(I)Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 570
    invoke-virtual {p1, p2}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->setTemporaryThumbnail(Landroid/graphics/Bitmap;)V

    :cond_9
    return-void
.end method

.method public show()V
    .registers 3

    .line 330
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "show()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 331
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->setVisibility(I)V

    .line 332
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->cancelRequestHide()V

    return-void
.end method

.method public showProgress(I)V
    .registers 7

    .line 527
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "showProgress() has been called."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 528
    :cond_d
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->searchPallet(I)Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    move-result-object p1

    if-eqz p1, :cond_4b

    const v0, 0x7f090084

    .line 530
    invoke-virtual {p1, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_25

    .line 533
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 534
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mClickListener:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$ClickListener;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 536
    :cond_25
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_4b

    const/4 v1, 0x2

    .line 537
    new-array v1, v1, [Ljava/lang/String;

    const-string v3, "ContentsViewController"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "progress = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    invoke-virtual {p1, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    .line 537
    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_4b
    return-void
.end method

.method public startHideAnimation(Landroid/view/animation/Animation;)V
    .registers 3

    .line 364
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->cancelRequestHide()V

    .line 365
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->startAnimationInner(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public stopAnimation(Z)V
    .registers 4

    .line 390
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_23

    const/4 v1, 0x0

    if-nez p1, :cond_e

    .line 393
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 395
    :cond_e
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 396
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_1e

    const-string p1, "Animation canceled."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 397
    :cond_1e
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {p1, v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_23
    return-void
.end method
