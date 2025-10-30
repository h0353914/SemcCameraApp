.class public Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;
.super Ljava/lang/Object;
.source "DataCollectUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$InHouseResult;,
        Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$FaceResult;
    }
.end annotation


# static fields
.field private static final FORMAT_FILENAME_FACE_PREVIEW:Ljava/lang/String; = "face%d-p%03d-%s"

.field private static final FORMAT_FILENAME_FACE_SNAPSHOT:Ljava/lang/String; = "face%d-s-%s"

.field private static final FORMAT_FILENAME_IN_HOUSE_PREVIEW:Ljava/lang/String; = "i-p%03d-%s"

.field private static final FORMAT_FILENAME_IN_HOUSE_SNAPSHOT:Ljava/lang/String; = "i-s"

.field private static final IN_HOUSE_QUEUE_SIZE:I = 0xa

.field private static sInstance:Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;


# instance fields
.field private mCapturingModeName:Ljava/lang/String;

.field private mFaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$FaceResult;",
            ">;"
        }
    .end annotation
.end field

.field private mInHouseResultQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$InHouseResult;",
            ">;"
        }
    .end annotation
.end field

.field private mInHouseSnapshotDone:Z

.field private mInHouseSnapshotResult:Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$InHouseResult;

.field private mIsLocked:Z

.field private mJpegDone:Z

.field private mPreviewFaceDone:Z

.field private mSnapshotFaceDone:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 49
    new-instance v0, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;->sInstance:Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;->mIsLocked:Z

    .line 37
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;->mFaces:Ljava/util/List;

    .line 39
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;->mInHouseResultQueue:Ljava/util/LinkedList;

    const/4 v1, 0x0

    .line 40
    iput-object v1, p0, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;->mInHouseSnapshotResult:Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$InHouseResult;

    .line 42
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;->mPreviewFaceDone:Z

    .line 43
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;->mSnapshotFaceDone:Z

    .line 44
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;->mInHouseSnapshotDone:Z

    .line 45
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;->mJpegDone:Z

    return-void
.end method

.method static synthetic access$1000(Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;)Ljava/util/LinkedList;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;->mInHouseResultQueue:Ljava/util/LinkedList;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;)Ljava/lang/String;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;->mCapturingModeName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;)Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$InHouseResult;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;->mInHouseSnapshotResult:Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$InHouseResult;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;)Ljava/util/List;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;->mFaces:Ljava/util/List;

    return-object p0
.end method

.method private declared-synchronized check()V
    .registers 3

    monitor-enter p0

    .line 201
    :try_start_1
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;->mJpegDone:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_34

    if-nez v0, :cond_7

    .line 202
    monitor-exit p0

    return-void

    .line 205
    :cond_7
    :try_start_7
    sget-object v0, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->INSTANCE:Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;

    .line 206
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 205
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->isSaveEyeBlinkEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;->mPreviewFaceDone:Z

    if-eqz v0, :cond_1b

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;->mSnapshotFaceDone:Z
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_34

    if-nez v0, :cond_1d

    .line 207
    :cond_1b
    monitor-exit p0

    return-void

    .line 210
    :cond_1d
    :try_start_1d
    sget-object v0, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->INSTANCE:Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;

    .line 211
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->isSaveInHouseEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;->mInHouseSnapshotDone:Z
    :try_end_2b
    .catchall {:try_start_1d .. :try_end_2b} :catchall_34

    if-nez v0, :cond_2f

    .line 212
    monitor-exit p0

    return-void

    .line 215
    :cond_2f
    :try_start_2f
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;->save()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_34

    .line 216
    monitor-exit p0

    return-void

    :catchall_34
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static getInstance()Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;
    .registers 1

    .line 57
    sget-object v0, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;->sInstance:Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;

    return-object v0
.end method

.method private declared-synchronized isLocked()Z
    .registers 2

    monitor-enter p0

    .line 348
    :try_start_1
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;->mIsLocked:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private save()V
    .registers 3

    .line 219
    new-instance v0, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;->sInstance:Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;

    .line 220
    sget-object v0, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;->sInstance:Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;->mCapturingModeName:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;->setCapturingModeName(Ljava/lang/String;)V

    .line 222
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$1;-><init>(Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/4 v1, 0x5

    .line 335
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 336
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private setCapturingModeName(Ljava/lang/String;)V
    .registers 2

    .line 97
    iput-object p1, p0, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;->mCapturingModeName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addInHouseResult([FLandroid/graphics/Bitmap;Z)V
    .registers 6

    if-nez p3, :cond_9

    .line 165
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    if-nez p1, :cond_c

    return-void

    .line 172
    :cond_c
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 173
    new-instance v0, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$InHouseResult;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p1, v1}, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$InHouseResult;-><init>(Landroid/graphics/Bitmap;[FLcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$1;)V

    if-eqz p3, :cond_26

    .line 176
    iput-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;->mInHouseSnapshotResult:Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$InHouseResult;

    const/4 p1, 0x1

    .line 177
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;->mInHouseSnapshotDone:Z

    .line 178
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;->check()V

    goto :goto_55

    .line 180
    :cond_26
    iget-object p1, p0, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;->mInHouseResultQueue:Ljava/util/LinkedList;

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 181
    :cond_2b
    :goto_2b
    iget-object p1, p0, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;->mInHouseResultQueue:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/16 p2, 0xa

    if-le p1, p2, :cond_55

    .line 182
    iget-object p1, p0, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;->mInHouseResultQueue:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$InHouseResult;

    .line 183
    # getter for: Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$InHouseResult;->bitmap:Landroid/graphics/Bitmap;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$InHouseResult;->access$200(Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$InHouseResult;)Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_2b

    # getter for: Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$InHouseResult;->bitmap:Landroid/graphics/Bitmap;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$InHouseResult;->access$200(Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$InHouseResult;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_2b

    .line 184
    # getter for: Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$InHouseResult;->bitmap:Landroid/graphics/Bitmap;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$InHouseResult;->access$200(Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$InHouseResult;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_2b

    :cond_55
    :goto_55
    return-void
.end method

.method public addPreviewFace(IIFFFFLandroid/graphics/Bitmap;)V
    .registers 23

    move-object v0, p0

    .line 113
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "face%d-p%03d-%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 114
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    iget-object v4, v0, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;->mCapturingModeName:Ljava/lang/String;

    const/4 v6, 0x2

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 115
    iget-object v1, v0, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;->mFaces:Ljava/util/List;

    new-instance v2, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$FaceResult;

    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    move-object/from16 v4, p7

    invoke-virtual {v4, v3, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    const/4 v14, 0x0

    move-object v7, v2

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    move/from16 v13, p6

    invoke-direct/range {v7 .. v14}, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$FaceResult;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;FFFFLcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$1;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addSnapshotFace(IFFFFLandroid/graphics/Bitmap;)V
    .registers 22

    move-object v0, p0

    .line 141
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "face%d-s-%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 142
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, v0, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;->mCapturingModeName:Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 143
    iget-object v1, v0, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;->mFaces:Ljava/util/List;

    new-instance v2, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$FaceResult;

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    move-object/from16 v4, p6

    invoke-virtual {v4, v3, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    const/4 v14, 0x0

    move-object v7, v2

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move/from16 v13, p5

    invoke-direct/range {v7 .. v14}, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$FaceResult;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;FFFFLcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$1;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public declared-synchronized clear()V
    .registers 2

    monitor-enter p0

    .line 64
    :try_start_1
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_e

    const-string v0, "clear"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 65
    :cond_e
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;->mFaces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 66
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;->mInHouseResultQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;->mPreviewFaceDone:Z

    .line 69
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;->mSnapshotFaceDone:Z

    .line 70
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;->mInHouseSnapshotDone:Z

    .line 72
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;->mJpegDone:Z

    .line 74
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;->mIsLocked:Z
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_25

    .line 75
    monitor-exit p0

    return-void

    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized lock()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x1

    .line 344
    :try_start_2
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;->mIsLocked:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 345
    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onJpegPathFixed()V
    .registers 2

    .line 195
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "onJpegPathFixed"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_d
    const/4 v0, 0x1

    .line 196
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;->mJpegDone:Z

    .line 197
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;->check()V

    return-void
.end method

.method public onPreviewFaceDone()V
    .registers 2

    .line 123
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "onPreviewFaceDone"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_d
    const/4 v0, 0x1

    .line 125
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;->mPreviewFaceDone:Z

    .line 126
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;->check()V

    return-void
.end method

.method public onSnapshotFaceDone()V
    .registers 2

    .line 151
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "onSnapshotFaceDone"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_d
    const/4 v0, 0x1

    .line 153
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;->mSnapshotFaceDone:Z

    .line 154
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;->check()V

    return-void
.end method

.method public setCapturingModeName(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .registers 3

    .line 83
    sget-object v0, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil$2;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_1a

    const-string p1, "M"

    .line 92
    iput-object p1, p0, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;->mCapturingModeName:Ljava/lang/String;

    goto :goto_19

    :pswitch_10
    const-string p1, "F"

    .line 89
    iput-object p1, p0, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;->mCapturingModeName:Ljava/lang/String;

    goto :goto_19

    :pswitch_15
    const-string p1, "G"

    .line 85
    iput-object p1, p0, Lcom/sonyericsson/android/camera/faultdetection/DataCollectUtil;->mCapturingModeName:Ljava/lang/String;

    :goto_19
    return-void

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_15
        :pswitch_10
        :pswitch_10
    .end packed-switch
.end method
