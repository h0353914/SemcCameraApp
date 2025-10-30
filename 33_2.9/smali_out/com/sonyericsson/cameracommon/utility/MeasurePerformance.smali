.class public Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;
.super Ljava/lang/Object;
.source "MeasurePerformance.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$OutResultDelayTask;,
        Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureResource;,
        Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureAmountTime;,
        Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;,
        Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;,
        Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;
    }
.end annotation


# static fields
.field private static final DEBUG_PERFORM_FILE:Ljava/lang/String; = "camera_perform.csv"

.field private static final DEBUG_PERFORM_MEM:Z = false

.field private static final DEBUG_PERFORM_TIME_TAG:Ljava/lang/String; = "VERBOSE_PERFORM_TIME_TAG"

.field private static final FILE:Ljava/lang/String; = "camera_perform.csv"

.field public static final TAG:Ljava/lang/String; = "MeasurePerformance"

.field public static final TAG_DEVICE:Ljava/lang/String; = "[DEVICE]"

.field public static final TAG_SEQ:Ljava/lang/String; = "[SEQ]"

.field public static final TAG_SHOT:Ljava/lang/String; = "[SHOT]"

.field public static final TAG_STARTUP:Ljava/lang/String; = "[START UP]"

.field public static final TAG_SURFACE:Ljava/lang/String; = "[SURFACE]"

.field public static final TAG_TASK:Ljava/lang/String; = "[TASK]"

.field private static mResourceList:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureResource;",
            ">;"
        }
    .end annotation
.end field

.field private static mTimeList:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance; = null

.field private static sMemoryFlag:Z = false

.field private static sTimerFlag:Z = false


# instance fields
.field private originalTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 156
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->mTimeList:Ljava/util/List;

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 160
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->mResourceList:Ljava/util/List;

    .line 163
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;-><init>()V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->sInstance:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;

    return-void
.end method

.method protected constructor <init>()V
    .registers 3

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_10

    const-string v0, "MeasurePerformance() is called."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 203
    :cond_10
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->init()V

    .line 204
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->originalTime:J

    return-void
.end method

.method private static init()V
    .registers 1

    .line 209
    sget-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->mTimeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 210
    sget-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->mResourceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private static final isLastMeasuredTime(Ljava/util/List;I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;",
            ">;I)Z"
        }
    .end annotation

    .line 259
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;

    const/4 v1, 0x1

    add-int/2addr p1, v1

    .line 260
    :goto_8
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_25

    .line 261
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;

    .line 262
    iget-object v3, v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->kind:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;

    iget-object v4, v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->kind:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;

    if-ne v3, v4, :cond_22

    .line 263
    iget-object v2, v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->id:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    iget-object v3, v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->id:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    if-ne v2, v3, :cond_22

    const/4 p0, 0x0

    return p0

    :cond_22
    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    :cond_25
    return v1
.end method

.method public static final measureResource(I)V
    .registers 6

    .line 321
    sget-boolean p0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->sMemoryFlag:Z

    if-nez p0, :cond_5

    return-void

    .line 325
    :cond_5
    new-instance p0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureResource;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureResource;-><init>(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$1;)V

    .line 326
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    .line 327
    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v1

    .line 328
    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v3

    .line 331
    iput-wide v1, p0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureResource;->mTotalMemory:J

    .line 332
    iput-wide v3, p0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureResource;->mFreeMemory:J

    .line 333
    sget-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->mResourceList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static final measureResource(Ljava/lang/String;)V
    .registers 7

    .line 338
    sget-boolean v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->sMemoryFlag:Z

    if-nez v0, :cond_5

    return-void

    .line 342
    :cond_5
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureResource;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureResource;-><init>(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$1;)V

    .line 343
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    .line 344
    invoke-virtual {v1}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v2

    .line 345
    invoke-virtual {v1}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v4

    .line 347
    iput-object p0, v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureResource;->mTag:Ljava/lang/String;

    .line 348
    iput-wide v2, v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureResource;->mTotalMemory:J

    .line 349
    iput-wide v4, v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureResource;->mFreeMemory:J

    .line 350
    sget-object p0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->mResourceList:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static final measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;Ljava/lang/String;)V
    .registers 7

    .line 234
    sget-boolean v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->sTimerFlag:Z

    if-nez v0, :cond_5

    return-void

    .line 238
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 239
    new-instance v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;-><init>(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$1;)V

    .line 241
    iput-object p0, v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->id:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 242
    iput-object p2, v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->additionalInfo:Ljava/lang/String;

    .line 243
    iput-wide v0, v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->time:J

    .line 244
    iput-object p1, v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->kind:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;

    .line 245
    sget-object p0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->mTimeList:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static final measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Z)V
    .registers 3

    if-eqz p1, :cond_5

    .line 299
    sget-object p1, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;->MEASURE_START:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;

    goto :goto_7

    :cond_5
    sget-object p1, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;->MEASURE_END:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;

    :goto_7
    const-string v0, ""

    .line 297
    invoke-static {p0, p1, v0}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;Ljava/lang/String;)V

    return-void
.end method

.method public static final measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;ZLjava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_5

    .line 284
    sget-object p1, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;->MEASURE_START:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;

    goto :goto_7

    :cond_5
    sget-object p1, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;->MEASURE_END:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;

    .line 282
    :goto_7
    invoke-static {p0, p1, p2}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;Ljava/lang/String;)V

    return-void
.end method

.method public static final measureTimeOverwrite(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Z)V
    .registers 3

    if-eqz p1, :cond_5

    .line 316
    sget-object p1, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;->MEASURE_START_OVERWRITE:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;

    goto :goto_7

    :cond_5
    sget-object p1, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;->MEASURE_END:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;

    :goto_7
    const-string v0, ""

    .line 314
    invoke-static {p0, p1, v0}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;Ljava/lang/String;)V

    return-void
.end method

.method public static final outResult()V
    .registers 4

    .line 358
    sget-boolean v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->sTimerFlag:Z

    if-nez v0, :cond_9

    sget-boolean v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->sMemoryFlag:Z

    if-nez v0, :cond_9

    return-void

    .line 362
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->mTimeList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 363
    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->mResourceList:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v2, ""

    .line 366
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->init()V

    .line 368
    sget-boolean v3, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->sTimerFlag:Z

    if-eqz v3, :cond_35

    .line 369
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->setResultTime(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 371
    :cond_35
    sget-boolean v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->sMemoryFlag:Z

    if-eqz v0, :cond_4e

    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->setResultResource(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 374
    :cond_4e
    invoke-static {v2}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->writeFile(Ljava/lang/String;)V

    return-void
.end method

.method public static final outResultDelay(I)V
    .registers 1

    return-void
.end method

.method public static final setMemoryFlag(Z)V
    .registers 1

    .line 229
    sput-boolean p0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->sMemoryFlag:Z

    return-void
.end method

.method private static setResultResource(Ljava/util/List;)Ljava/lang/String;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureResource;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "---Measure Resource Start---\n"

    .line 480
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ID,Total,Used,free\n"

    .line 481
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 482
    :goto_10
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v1, :cond_63

    .line 484
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureResource;

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureResource;->mTag:Ljava/lang/String;

    .line 485
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureResource;

    iget-wide v3, v3, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureResource;->mTotalMemory:J

    .line 486
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureResource;

    iget-wide v5, v5, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureResource;->mFreeMemory:J

    sub-long v7, v3, v5

    .line 488
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, ","

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_63
    const-string p0, "---Measure Resource End---\n"

    .line 491
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static setResultTime(Ljava/util/List;)Ljava/lang/String;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 399
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->values()[Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;

    .line 400
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->values()[Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureAmountTime;

    const/4 v4, 0x0

    .line 401
    :goto_11
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->values()[Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    move-result-object v5

    array-length v5, v5

    const/4 v6, 0x0

    if-ge v4, v5, :cond_23

    .line 402
    new-instance v5, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureAmountTime;

    invoke-direct {v5, v6}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureAmountTime;-><init>(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$1;)V

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 404
    :cond_23
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "---Measure Time Start---\n"

    .line 405
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "VERBOSE_PERFORM_TIME_TAGID,Time[ms],Comment\n"

    .line 406
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    .line 407
    :goto_33
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v7

    const-string v8, "\n"

    const-string v9, ", "

    if-ge v5, v7, :cond_108

    .line 408
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;

    .line 409
    iget-object v10, v7, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->kind:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;

    sget-object v11, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;->MEASURE_START:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;

    if-ne v10, v11, :cond_5d

    .line 410
    iget-object v8, v7, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->id:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-virtual {v8}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ordinal()I

    move-result v8

    aget-object v8, v1, v8

    if-nez v8, :cond_104

    .line 412
    iget-object v8, v7, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->id:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-virtual {v8}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ordinal()I

    move-result v8

    aput-object v7, v1, v8

    goto/16 :goto_104

    .line 414
    :cond_5d
    iget-object v10, v7, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->kind:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;

    sget-object v11, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;->MEASURE_START_OVERWRITE:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;

    if-ne v10, v11, :cond_6d

    .line 416
    iget-object v8, v7, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->id:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-virtual {v8}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ordinal()I

    move-result v8

    aput-object v7, v1, v8

    goto/16 :goto_104

    .line 419
    :cond_6d
    iget-object v10, v7, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->id:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-virtual {v10}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ordinal()I

    move-result v10

    aget-object v10, v1, v10

    if-eqz v10, :cond_104

    .line 420
    iget-object v10, v7, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->id:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-virtual {v10}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ordinal()I

    move-result v10

    aget-object v10, v2, v10

    iget-object v11, v7, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->id:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    iput-object v11, v10, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureAmountTime;->id:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 421
    iget-object v10, v7, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->id:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-virtual {v10}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ordinal()I

    move-result v10

    aget-object v10, v2, v10

    iget-wide v11, v10, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureAmountTime;->total:J

    iget-wide v13, v7, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->time:J

    iget-object v15, v7, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->id:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 422
    invoke-virtual {v15}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ordinal()I

    move-result v15

    aget-object v15, v1, v15

    move-object/from16 v16, v4

    iget-wide v3, v15, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->time:J

    sub-long/2addr v13, v3

    add-long/2addr v11, v13

    iput-wide v11, v10, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureAmountTime;->total:J

    .line 423
    iget-object v3, v7, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->id:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ordinal()I

    move-result v3

    aget-object v3, v2, v3

    iget v4, v3, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureAmountTime;->count:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureAmountTime;->count:I

    .line 424
    invoke-static {v0, v5}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->isLastMeasuredTime(Ljava/util/List;I)Z

    move-result v3

    if-eqz v3, :cond_102

    const-string v3, "VERBOSE_PERFORM_TIME_TAG"

    move-object/from16 v4, v16

    .line 426
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    iget-object v3, v7, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->id:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    iget-object v3, v3, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->tag:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    iget-object v3, v7, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->id:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    iget-wide v10, v7, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->time:J

    iget-object v3, v7, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->id:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 432
    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ordinal()I

    move-result v3

    aget-object v3, v1, v3

    iget-wide v12, v3, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->time:J

    sub-long/2addr v10, v12

    .line 431
    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    .line 430
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    iget-object v3, v7, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->additionalInfo:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    iget-object v3, v7, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->id:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ordinal()I

    move-result v3

    aget-object v3, v1, v3

    iget-object v3, v3, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->additionalInfo:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    iget-object v3, v7, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->id:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ordinal()I

    move-result v3

    aput-object v6, v1, v3

    goto :goto_104

    :cond_102
    move-object/from16 v4, v16

    :cond_104
    :goto_104
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_33

    :cond_108
    const-string v1, "VERBOSE_PERFORM_TIME_TAG---Measure Time End---\n\n"

    .line 442
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "---Measure Time Dump Start---\n"

    .line 443
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ID,Type(1:Start/2:End),SytemTime,RelativeTime,Comment\n"

    .line 444
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 445
    :goto_118
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_160

    .line 446
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;

    .line 447
    iget-object v5, v3, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->id:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    iget-object v5, v3, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->kind:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 450
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    iget-wide v5, v3, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->time:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    iget-wide v5, v3, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->time:J

    sget-object v7, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->sInstance:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;

    iget-wide v10, v7, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->originalTime:J

    sub-long/2addr v5, v10

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    iget-object v3, v3, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->additionalInfo:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_118

    :cond_160
    const/4 v3, 0x0

    .line 459
    :goto_161
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->values()[Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    move-result-object v0

    array-length v0, v0

    if-ge v3, v0, :cond_1b1

    .line 460
    aget-object v0, v2, v3

    .line 461
    iget-object v1, v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureAmountTime;->id:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    if-eqz v1, :cond_1ae

    const-string v1, "AmountTime: "

    .line 462
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    iget-object v1, v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureAmountTime;->id:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " total: "

    .line 464
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    iget-wide v5, v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureAmountTime;->total:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", count: "

    .line 466
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    iget v1, v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureAmountTime;->count:I

    int-to-long v5, v1

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", avalage: "

    .line 468
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    iget-wide v5, v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureAmountTime;->total:J

    iget v0, v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureAmountTime;->count:I

    int-to-long v0, v0

    div-long/2addr v5, v0

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1ae
    add-int/lit8 v3, v3, 0x1

    goto :goto_161

    :cond_1b1
    const-string v0, "---Measure Time Dump End---\n"

    .line 473
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final setTimerFlag(Z)V
    .registers 1

    .line 220
    sput-boolean p0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->sTimerFlag:Z

    return-void
.end method

.method private static writeFile(Ljava/lang/String;)V
    .registers 11

    const-string v0, "[MeasurePerformance::writeFile]:Error = "

    .line 497
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "camera_perform.csv"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 498
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3d

    .line 500
    :try_start_2f
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_33

    goto :goto_3d

    :catch_33
    const-string p0, "Create output file failed"

    .line 502
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return-void

    :cond_3d
    :goto_3d
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 507
    :try_start_3f
    new-instance v6, Ljava/io/OutputStreamWriter;

    new-instance v7, Ljava/io/FileOutputStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 509
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v7, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_66
    .catch Ljava/io/FileNotFoundException; {:try_start_3f .. :try_end_66} :catch_91
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_66} :catch_77

    .line 510
    :try_start_66
    invoke-virtual {v6, p0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_6d

    .line 511
    :try_start_69
    invoke-virtual {v6}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_6c
    .catch Ljava/io/FileNotFoundException; {:try_start_69 .. :try_end_6c} :catch_91
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6c} :catch_77

    goto :goto_aa

    :catchall_6d
    move-exception p0

    .line 507
    :try_start_6e
    invoke-virtual {v6}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_71
    .catchall {:try_start_6e .. :try_end_71} :catchall_72

    goto :goto_76

    :catchall_72
    move-exception v3

    :try_start_73
    invoke-virtual {p0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_76
    throw p0
    :try_end_77
    .catch Ljava/io/FileNotFoundException; {:try_start_73 .. :try_end_77} :catch_91
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_77} :catch_77

    :catch_77
    move-exception p0

    new-array v2, v2, [Ljava/lang/String;

    .line 514
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v1

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto :goto_aa

    :catch_91
    move-exception p0

    new-array v2, v2, [Ljava/lang/String;

    .line 512
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v1

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :goto_aa
    return-void
.end method
