.class public Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;
.super Ljava/lang/Object;
.source "CapturingModeListLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$GetCapturingModeListTask;,
        Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;,
        Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$OnCapturingModeListChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CapturingModeListLoader"


# instance fields
.field private final mCaptureTypeList:[Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$InternalCaptureType;

.field private final mCapturingModeCollection:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeCollection;

.field private final mContentObserver:Landroid/database/ContentObserver;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private final mExecutor:Ljava/util/concurrent/ExecutorService;

.field private mLocalModeAttrsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;",
            ">;"
        }
    .end annotation
.end field

.field private mModeAttrsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;",
            ">;"
        }
    .end annotation
.end field

.field private mOnModeListChangedListener:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$OnCapturingModeListChangedListener;

.field private final mVisibilityType:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$VisibilityType;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$InternalCaptureType;Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$VisibilityType;Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$OnCapturingModeListChangedListener;Ljava/util/concurrent/ExecutorService;)V
    .registers 6

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;->mContext:Landroid/content/Context;

    .line 104
    invoke-virtual {p2}, [Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$InternalCaptureType;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$InternalCaptureType;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;->mCaptureTypeList:[Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$InternalCaptureType;

    .line 105
    iput-object p3, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;->mVisibilityType:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$VisibilityType;

    .line 107
    iput-object p4, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;->mOnModeListChangedListener:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$OnCapturingModeListChangedListener;

    .line 108
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;->mModeAttrsList:Ljava/util/List;

    .line 109
    iput-object p5, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 111
    new-instance p2, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$1;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$1;-><init>(Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;->mContentObserver:Landroid/database/ContentObserver;

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;->mContentResolver:Landroid/content/ContentResolver;

    .line 121
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;->mContentResolver:Landroid/content/ContentResolver;

    sget-object p2, Lcom/sonyericsson/android/camera/view/modeselector/CameraCommonProviderConstants;->CAPTURINGMODE_CONTENT_URI:Landroid/net/Uri;

    iget-object p3, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;->mContentObserver:Landroid/database/ContentObserver;

    const/4 p4, 0x1

    invoke-virtual {p1, p2, p4, p3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 123
    new-instance p1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeCollection;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {p1, p2}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeCollection;-><init>(Landroid/content/ContentResolver;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;->mCapturingModeCollection:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeCollection;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;)[Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$InternalCaptureType;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;->mCaptureTypeList:[Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$InternalCaptureType;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;)Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$VisibilityType;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;->mVisibilityType:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$VisibilityType;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;)Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeCollection;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;->mCapturingModeCollection:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeCollection;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .line 36
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;->filter(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;)Ljava/util/List;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;->mLocalModeAttrsList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;)Ljava/util/List;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;->mModeAttrsList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600(Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;)Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$OnCapturingModeListChangedListener;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;->mOnModeListChangedListener:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$OnCapturingModeListChangedListener;

    return-object p0
.end method

.method private filter(Ljava/util/List;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;",
            ">;"
        }
    .end annotation

    .line 243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 245
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 248
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_f
    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;

    .line 250
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 251
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->getSelectorIconId()I

    move-result v3

    const v4, 0x7f080085

    if-eq v3, v4, :cond_f

    const v4, 0x7f0800b5

    if-eq v3, v4, :cond_f

    :cond_39
    const/4 v3, 0x0

    .line 267
    :try_start_3a
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    .line 266
    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 270
    iget-boolean v3, v4, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_46
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3a .. :try_end_46} :catch_47

    goto :goto_65

    :catch_47
    move-exception v4

    const/4 v5, 0x1

    .line 273
    new-array v5, v5, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to check whether mode is enabled. Message : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v3

    .line 273
    invoke-static {v5}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :goto_65
    if-eqz v3, :cond_f

    .line 278
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 283
    :cond_6b
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;->mVisibilityType:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$VisibilityType;

    sget-object v1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$VisibilityType;->Oneshot:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$VisibilityType;

    if-ne p1, v1, :cond_76

    .line 284
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil;->sortOneshotCapturingMode(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_76
    return-object v0
.end method


# virtual methods
.method public getCapturingMode(Ljava/lang/String;Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;
    .registers 6

    .line 141
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;->mModeAttrsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;

    if-nez v1, :cond_15

    goto :goto_6

    .line 145
    :cond_15
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 146
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->getModeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    return-object v1

    :cond_2a
    const/4 p1, 0x0

    return-object p1
.end method

.method public release()V
    .registers 3

    .line 134
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 135
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;->mCapturingModeCollection:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeCollection;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeCollection;->release()V

    .line 136
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public setLocalCapturingMode(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;",
            ">;)V"
        }
    .end annotation

    .line 297
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;->mLocalModeAttrsList:Ljava/util/List;

    return-void
.end method

.method public startLoadTask()V
    .registers 4

    .line 127
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    const-string v0, "start GetTask."

    .line 128
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 130
    :cond_d
    new-instance v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$GetCapturingModeListTask;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$GetCapturingModeListTask;-><init>(Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;)V

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;->mExecutor:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$GetCapturingModeListTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
