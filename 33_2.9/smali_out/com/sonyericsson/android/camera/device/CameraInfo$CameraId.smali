.class public final enum Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;
.super Ljava/lang/Enum;
.source "CameraInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CameraId"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

.field public static final enum BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

.field public static final enum BACK_DUAL:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum BOKEH:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

.field public static final enum FRONT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

.field public static final enum FRONT_2:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum INVALID:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

.field public static final enum SAT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

.field public static final enum SUB_BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum TELE:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

.field public static final enum U_WIDE:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

.field public static final enum WIDE:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private mIsFront:Z


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 38
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    const-string v1, "BACK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    .line 39
    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    const-string v3, "FRONT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->FRONT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    .line 40
    new-instance v3, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    const-string v5, "SUB_BACK"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v2}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->SUB_BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    .line 42
    new-instance v5, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    const-string v7, "U_WIDE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v2}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;-><init>(Ljava/lang/String;IZ)V

    sput-object v5, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->U_WIDE:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    .line 43
    new-instance v7, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    const-string v9, "TELE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v2}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;-><init>(Ljava/lang/String;IZ)V

    sput-object v7, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->TELE:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    .line 44
    new-instance v9, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    const-string v11, "INVALID"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v2}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;-><init>(Ljava/lang/String;IZ)V

    sput-object v9, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->INVALID:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    .line 45
    new-instance v11, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    const-string v13, "FRONT_2"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v4}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;-><init>(Ljava/lang/String;IZ)V

    sput-object v11, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->FRONT_2:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    .line 47
    new-instance v13, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    const-string v15, "BACK_DUAL"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v2}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;-><init>(Ljava/lang/String;IZ)V

    sput-object v13, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK_DUAL:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    .line 49
    new-instance v15, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    const-string v14, "WIDE"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v2}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;-><init>(Ljava/lang/String;IZ)V

    sput-object v15, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->WIDE:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    .line 51
    new-instance v14, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    const-string v12, "SAT"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v2}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;-><init>(Ljava/lang/String;IZ)V

    sput-object v14, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->SAT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    .line 52
    new-instance v12, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    const-string v10, "BOKEH"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v2}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;-><init>(Ljava/lang/String;IZ)V

    sput-object v12, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BOKEH:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    const/16 v10, 0xb

    new-array v10, v10, [Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

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

    .line 37
    sput-object v10, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->$VALUES:[Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 57
    iput-boolean p3, p0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->mIsFront:Z

    return-void
.end method

.method private getIdFromCameraIdsMap()Ljava/lang/String;
    .registers 2

    .line 77
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getAvailableCameraIdsMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;
    .registers 2

    .line 37
    const-class v0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;
    .registers 1

    .line 37
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->$VALUES:[Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    return-object v0
.end method


# virtual methods
.method public getCameraDeviceId()Ljava/lang/String;
    .registers 1

    .line 65
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->getIdFromCameraIdsMap()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCameraDeviceIdApi1()I
    .registers 1

    .line 69
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->getIdFromCameraIdsMap()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getFacingId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;
    .registers 1

    .line 73
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->mIsFront:Z

    if-eqz p0, :cond_7

    sget-object p0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->FRONT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    goto :goto_9

    :cond_7
    sget-object p0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    :goto_9
    return-object p0
.end method

.method public isFront()Z
    .registers 1

    .line 61
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->mIsFront:Z

    return p0
.end method
