.class Lcom/sonyericsson/android/camera/faultdetection/FaceStore;
.super Ljava/lang/Object;
.source "FaceStore.java"


# static fields
.field private static final MAX_FACE_ID_SIZE:I = 0xa

.field private static final MAX_QUEUE_SIZE:I = 0xa

.field private static final MAX_WINDOW_SIZE:I = 0xa


# instance fields
.field private mFaceBitmapQueueMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/LinkedList<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRotationQueueMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaceStore;->mFaceBitmapQueueMap:Ljava/util/Map;

    .line 33
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaceStore;->mRotationQueueMap:Landroid/util/SparseArray;

    return-void
.end method

.method private add(II)V
    .registers 5

    .line 123
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaceStore;->mRotationQueueMap:Landroid/util/SparseArray;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 124
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 125
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result p2

    const/16 v1, 0xa

    if-le p2, v1, :cond_1f

    .line 126
    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 128
    :cond_1f
    iget-object p2, p0, Lcom/sonyericsson/android/camera/faultdetection/FaceStore;->mRotationQueueMap:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private add(ILandroid/graphics/Bitmap;)V
    .registers 6

    .line 110
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaceStore;->mFaceBitmapQueueMap:Ljava/util/Map;

    .line 111
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 112
    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 113
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result p2

    const/16 v1, 0xa

    if-le p2, v1, :cond_2d

    .line 114
    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    if-eqz p2, :cond_2d

    .line 115
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2d

    .line 116
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 119
    :cond_2d
    iget-object p2, p0, Lcom/sonyericsson/android/camera/faultdetection/FaceStore;->mFaceBitmapQueueMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method declared-synchronized addAll(Ljava/util/List;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo;",
            ">;I)V"
        }
    .end annotation

    monitor-enter p0

    .line 87
    :try_start_1
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/faultdetection/FaceStore;->mFaceBitmapQueueMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 89
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo;

    .line 90
    iget v2, v1, Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo;->faceId:I

    iget-object v3, v1, Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo;->dest:Landroid/graphics/Bitmap;

    invoke-direct {p0, v2, v3}, Lcom/sonyericsson/android/camera/faultdetection/FaceStore;->add(ILandroid/graphics/Bitmap;)V

    .line 91
    iget v2, v1, Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo;->faceId:I

    invoke-direct {p0, v2, p2}, Lcom/sonyericsson/android/camera/faultdetection/FaceStore;->add(II)V

    .line 92
    iget v1, v1, Lcom/sonyericsson/android/camera/faultdetection/FaultDetector$CropInfo;->faceId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_10

    .line 96
    :cond_32
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_36
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_4f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v1, 0x0

    .line 97
    invoke-direct {p0, p2, v1}, Lcom/sonyericsson/android/camera/faultdetection/FaceStore;->add(ILandroid/graphics/Bitmap;)V

    .line 98
    invoke-direct {p0, p2, v0}, Lcom/sonyericsson/android/camera/faultdetection/FaceStore;->add(II)V

    goto :goto_36

    .line 101
    :cond_4f
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_a9

    .line 102
    iget-object p1, p0, Lcom/sonyericsson/android/camera/faultdetection/FaceStore;->mFaceBitmapQueueMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    const/4 v1, 0x1

    .line 103
    new-array v1, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/faultdetection/FaceStore;->mFaceBitmapQueueMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/faultdetection/FaceStore;->mFaceBitmapQueueMap:Ljava/util/Map;

    .line 104
    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/LinkedList;

    invoke-virtual {p2}, Ljava/util/LinkedList;->toArray()[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v0

    .line 103
    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V
    :try_end_a8
    .catchall {:try_start_1 .. :try_end_a8} :catchall_ab

    goto :goto_5d

    .line 107
    :cond_a9
    monitor-exit p0

    return-void

    :catchall_ab
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized clear()V
    .registers 4

    monitor-enter p0

    .line 36
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaceStore;->mFaceBitmapQueueMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    .line 37
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1b
    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1b

    .line 39
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1b

    .line 43
    :cond_2d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaceStore;->mFaceBitmapQueueMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 44
    iget-object v0, p0, Lcom/sonyericsson/android/camera/faultdetection/FaceStore;->mRotationQueueMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_39

    .line 45
    monitor-exit p0

    return-void

    :catchall_39
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getFaceList(I)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sonyericsson/android/camera/faultdetection/Face;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    .line 48
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    iget-object v1, p0, Lcom/sonyericsson/android/camera/faultdetection/FaceStore;->mFaceBitmapQueueMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    .line 50
    iget-object v2, p0, Lcom/sonyericsson/android/camera/faultdetection/FaceStore;->mRotationQueueMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedList;
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_87

    if-nez v1, :cond_1e

    .line 53
    monitor-exit p0

    return-object v0

    :cond_1e
    const/4 v3, 0x0

    move v4, v3

    .line 56
    :goto_20
    :try_start_20
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-ge v4, v5, :cond_5c

    .line 57
    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2d

    goto :goto_59

    .line 61
    :cond_2d
    new-instance v5, Lcom/sonyericsson/android/camera/faultdetection/Face;

    invoke-direct {v5}, Lcom/sonyericsson/android/camera/faultdetection/Face;-><init>()V

    .line 62
    iput p1, v5, Lcom/sonyericsson/android/camera/faultdetection/Face;->id:I

    .line 63
    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    iput-object v6, v5, Lcom/sonyericsson/android/camera/faultdetection/Face;->bitmap:Landroid/graphics/Bitmap;

    .line 64
    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v5, Lcom/sonyericsson/android/camera/faultdetection/Face;->rotation:I

    .line 65
    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/16 v6, 0xa

    if-lt v5, v6, :cond_59

    goto :goto_5c

    :cond_59
    :goto_59
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .line 78
    :cond_5c
    :goto_5c
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_85

    const/4 v1, 0x1

    .line 79
    new-array v1, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " face list size:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v3

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V
    :try_end_85
    .catchall {:try_start_20 .. :try_end_85} :catchall_87

    .line 82
    :cond_85
    monitor-exit p0

    return-object v0

    :catchall_87
    move-exception p1

    monitor-exit p0

    throw p1
.end method
