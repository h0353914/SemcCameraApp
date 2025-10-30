.class public final enum Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;
.super Ljava/lang/Enum;
.source "Storage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/storage/Storage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StorageState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

.field public static final enum AVAILABLE:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

.field public static final enum AVAILABLE_NEAR_FULL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

.field public static final enum CORRUPT:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

.field public static final enum FULL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

.field public static final enum READ_ONLY:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

.field public static final enum REMOVED:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

.field public static final enum UNAVAILABLE:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;


# instance fields
.field private final mDetailStateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 42
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    sget-object v3, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_NO_MEMORY_CARD:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "REMOVED"

    invoke-direct {v0, v3, v4, v2}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;-><init>(Ljava/lang/String;I[Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->REMOVED:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    .line 43
    new-instance v2, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    new-array v3, v1, [Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    sget-object v5, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_READY:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    aput-object v5, v3, v4

    const-string v5, "AVAILABLE"

    invoke-direct {v2, v5, v1, v3}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;-><init>(Ljava/lang/String;I[Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;)V

    sput-object v2, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->AVAILABLE:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    .line 44
    new-instance v3, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    new-array v5, v1, [Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    sget-object v6, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_READY_LOW:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    aput-object v6, v5, v4

    const-string v6, "AVAILABLE_NEAR_FULL"

    const/4 v7, 0x2

    invoke-direct {v3, v6, v7, v5}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;-><init>(Ljava/lang/String;I[Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;)V

    sput-object v3, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->AVAILABLE_NEAR_FULL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    .line 45
    new-instance v5, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    const/4 v6, 0x3

    new-array v8, v6, [Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    sget-object v9, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_ACCESS:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    aput-object v9, v8, v4

    sget-object v9, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_FORMAT:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    aput-object v9, v8, v1

    sget-object v9, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_SHARED:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    aput-object v9, v8, v7

    const-string v9, "UNAVAILABLE"

    invoke-direct {v5, v9, v6, v8}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;-><init>(Ljava/lang/String;I[Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;)V

    sput-object v5, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->UNAVAILABLE:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    .line 47
    new-instance v8, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    new-array v9, v1, [Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    sget-object v10, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_READ_ONLY:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    aput-object v10, v9, v4

    const-string v10, "READ_ONLY"

    const/4 v11, 0x4

    invoke-direct {v8, v10, v11, v9}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;-><init>(Ljava/lang/String;I[Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;)V

    sput-object v8, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->READ_ONLY:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    .line 48
    new-instance v9, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    new-array v10, v7, [Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    sget-object v12, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_FULL:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    aput-object v12, v10, v4

    sget-object v12, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_FULL_COUNT:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    aput-object v12, v10, v1

    const-string v12, "FULL"

    const/4 v13, 0x5

    invoke-direct {v9, v12, v13, v10}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;-><init>(Ljava/lang/String;I[Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;)V

    sput-object v9, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->FULL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    .line 49
    new-instance v10, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    new-array v12, v1, [Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    sget-object v14, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_TIMED_OUT:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    aput-object v14, v12, v4

    const-string v14, "CORRUPT"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v12}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;-><init>(Ljava/lang/String;I[Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;)V

    sput-object v10, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->CORRUPT:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    const/4 v12, 0x7

    new-array v12, v12, [Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    aput-object v0, v12, v4

    aput-object v2, v12, v1

    aput-object v3, v12, v7

    aput-object v5, v12, v6

    aput-object v8, v12, v11

    aput-object v9, v12, v13

    aput-object v10, v12, v15

    .line 41
    sput-object v12, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->$VALUES:[Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;I[Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;",
            ")V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 52
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->mDetailStateList:Ljava/util/List;

    return-void
.end method

.method public static getState(Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;
    .registers 7

    .line 63
    invoke-static {}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->values()[Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_26

    aget-object v3, v0, v2

    .line 64
    iget-object v4, v3, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->mDetailStateList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_23

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    .line 65
    invoke-virtual {p0, v5}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    return-object v3

    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 70
    :cond_26
    sget-object p0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->UNAVAILABLE:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;
    .registers 2

    .line 41
    const-class v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;
    .registers 1

    .line 41
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->$VALUES:[Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    return-object v0
.end method


# virtual methods
.method public isWritable()Z
    .registers 2

    .line 79
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->AVAILABLE:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    if-eq p0, v0, :cond_b

    sget-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->AVAILABLE_NEAR_FULL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method
