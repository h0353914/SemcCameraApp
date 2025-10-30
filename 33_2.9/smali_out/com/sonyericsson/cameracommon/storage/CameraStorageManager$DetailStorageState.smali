.class public final enum Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;
.super Ljava/lang/Enum;
.source "CameraStorageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DetailStorageState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

.field public static final enum MEMORY_CHECKING:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

.field public static final enum MEMORY_ERR_ACCESS:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

.field public static final enum MEMORY_ERR_FORMAT:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

.field public static final enum MEMORY_ERR_FULL:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

.field public static final enum MEMORY_ERR_FULL_COUNT:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

.field public static final enum MEMORY_ERR_NO_MEMORY_CARD:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

.field public static final enum MEMORY_ERR_READ_ONLY:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

.field public static final enum MEMORY_ERR_SHARED:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

.field public static final enum MEMORY_ERR_TIMED_OUT:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

.field public static final enum MEMORY_READY:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

.field public static final enum MEMORY_READY_LOW:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 73
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    const-string v1, "MEMORY_READY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_READY:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    .line 74
    new-instance v1, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    const-string v3, "MEMORY_READY_LOW"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_READY_LOW:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    .line 75
    new-instance v3, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    const-string v5, "MEMORY_ERR_READ_ONLY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_READ_ONLY:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    .line 76
    new-instance v5, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    const-string v7, "MEMORY_ERR_SHARED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_SHARED:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    .line 77
    new-instance v7, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    const-string v9, "MEMORY_ERR_FORMAT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_FORMAT:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    .line 78
    new-instance v9, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    const-string v11, "MEMORY_ERR_NO_MEMORY_CARD"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_NO_MEMORY_CARD:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    .line 79
    new-instance v11, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    const-string v13, "MEMORY_ERR_ACCESS"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_ACCESS:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    .line 80
    new-instance v13, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    const-string v15, "MEMORY_ERR_FULL"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_FULL:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    .line 81
    new-instance v15, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    const-string v14, "MEMORY_ERR_TIMED_OUT"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_TIMED_OUT:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    .line 82
    new-instance v14, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    const-string v12, "MEMORY_ERR_FULL_COUNT"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_FULL_COUNT:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    .line 83
    new-instance v12, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    const-string v10, "MEMORY_CHECKING"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_CHECKING:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    const/16 v10, 0xb

    new-array v10, v10, [Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    const/4 v0, 0x3

    aput-object v5, v10, v0

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    const/16 v0, 0x8

    aput-object v15, v10, v0

    const/16 v0, 0x9

    aput-object v14, v10, v0

    aput-object v12, v10, v8

    .line 72
    sput-object v10, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->$VALUES:[Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;
    .registers 2

    .line 72
    const-class v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;
    .registers 1

    .line 72
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->$VALUES:[Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    return-object v0
.end method
