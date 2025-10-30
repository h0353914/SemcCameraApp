.class public final Lcom/sonyericsson/cameracommon/utility/IncrementalId;
.super Ljava/lang/Object;
.source "IncrementalId.java"


# static fields
.field public static final INCREMENTAL_INVALID:I = -0x1

.field private static final INCREMENTAL_MAX:I = 0x7ffffffe

.field private static final INCREMENTAL_MIN:I


# instance fields
.field private mId:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/sonyericsson/cameracommon/utility/IncrementalId;->mId:I

    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 76
    :try_start_2
    iput v0, p0, Lcom/sonyericsson/cameracommon/utility/IncrementalId;->mId:I
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 77
    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized generateNext()I
    .registers 5

    monitor-enter p0

    .line 63
    :try_start_1
    iget v0, p0, Lcom/sonyericsson/cameracommon/utility/IncrementalId;->mId:I

    const v1, 0x7ffffffe

    const/4 v2, 0x0

    if-lt v0, v1, :cond_b

    .line 64
    iput v2, p0, Lcom/sonyericsson/cameracommon/utility/IncrementalId;->mId:I

    .line 66
    :cond_b
    iget v0, p0, Lcom/sonyericsson/cameracommon/utility/IncrementalId;->mId:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sonyericsson/cameracommon/utility/IncrementalId;->mId:I

    .line 67
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_3c

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-class v3, Lcom/sonyericsson/cameracommon/utility/IncrementalId;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New ID :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sonyericsson/cameracommon/utility/IncrementalId;->mId:I

    .line 68
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 67
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 69
    :cond_3c
    iget v0, p0, Lcom/sonyericsson/cameracommon/utility/IncrementalId;->mId:I
    :try_end_3e
    .catchall {:try_start_1 .. :try_end_3e} :catchall_40

    monitor-exit p0

    return v0

    :catchall_40
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getNext()I
    .registers 2

    .line 54
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/utility/IncrementalId;->generateNext()I

    move-result v0

    return v0
.end method
