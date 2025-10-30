.class final enum Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;
.super Ljava/lang/Enum;
.source "CameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "MultiFrameStreamSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

.field public static final enum ASPECT_16_9:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

.field public static final enum ASPECT_16_9_SMX2:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

.field public static final enum ASPECT_18_9:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

.field public static final enum ASPECT_1_1:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

.field public static final enum ASPECT_21_9:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

.field public static final enum ASPECT_21_9_FRONT:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

.field public static final enum ASPECT_21_9_SM23_DUAL:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

.field public static final enum ASPECT_4_3:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;


# instance fields
.field height:I

.field width:I


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 1892
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    const-string v1, "ASPECT_21_9"

    const/4 v2, 0x0

    const/16 v3, 0xdc8

    const/16 v4, 0x5e8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;->ASPECT_21_9:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    .line 1893
    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    const-string v3, "ASPECT_21_9_SM23_DUAL"

    const/4 v4, 0x1

    const/16 v5, 0xe70

    const/16 v6, 0x630

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;->ASPECT_21_9_SM23_DUAL:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    .line 1894
    new-instance v3, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    const-string v5, "ASPECT_21_9_FRONT"

    const/4 v6, 0x2

    const/16 v7, 0xcc0

    const/16 v8, 0x578

    invoke-direct {v3, v5, v6, v7, v8}, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;-><init>(Ljava/lang/String;III)V

    sput-object v3, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;->ASPECT_21_9_FRONT:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    .line 1895
    new-instance v5, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    const-string v8, "ASPECT_18_9"

    const/4 v9, 0x3

    const/16 v10, 0x660

    invoke-direct {v5, v8, v9, v7, v10}, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;-><init>(Ljava/lang/String;III)V

    sput-object v5, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;->ASPECT_18_9:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    .line 1896
    new-instance v7, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    const-string v8, "ASPECT_16_9"

    const/4 v10, 0x4

    const/16 v11, 0xbe0

    const/16 v12, 0x6b0

    invoke-direct {v7, v8, v10, v11, v12}, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;-><init>(Ljava/lang/String;III)V

    sput-object v7, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;->ASPECT_16_9:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    .line 1897
    new-instance v8, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    const-string v11, "ASPECT_16_9_SMX2"

    const/4 v12, 0x5

    const/16 v13, 0xc80

    const/16 v14, 0x710

    invoke-direct {v8, v11, v12, v13, v14}, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;-><init>(Ljava/lang/String;III)V

    sput-object v8, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;->ASPECT_16_9_SMX2:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    .line 1898
    new-instance v11, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    const-string v13, "ASPECT_4_3"

    const/4 v14, 0x6

    const/16 v15, 0xa20

    const/16 v12, 0x798

    invoke-direct {v11, v13, v14, v15, v12}, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;-><init>(Ljava/lang/String;III)V

    sput-object v11, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;->ASPECT_4_3:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    .line 1899
    new-instance v12, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    const-string v13, "ASPECT_1_1"

    const/4 v15, 0x7

    const/16 v14, 0x8f0

    invoke-direct {v12, v13, v15, v14, v14}, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;-><init>(Ljava/lang/String;III)V

    sput-object v12, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;->ASPECT_1_1:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    const/16 v13, 0x8

    new-array v13, v13, [Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v9

    aput-object v7, v13, v10

    const/4 v0, 0x5

    aput-object v8, v13, v0

    const/4 v0, 0x6

    aput-object v11, v13, v0

    aput-object v12, v13, v15

    .line 1891
    sput-object v13, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;->$VALUES:[Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 1904
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1905
    iput p3, p0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;->width:I

    .line 1906
    iput p4, p0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;->height:I

    return-void
.end method

.method public static get(Landroid/graphics/Rect;ZZ)Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;
    .registers 8

    .line 1924
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_25

    new-array v0, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "CameraController"

    aput-object v4, v0, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " invoke isFront : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1925
    :cond_25
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v0, v3}, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->getAspectRatio(II)Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    move-result-object v0

    .line 1926
    sget-object v3, Lcom/sonyericsson/android/camera/device/CameraController$22;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$AspectRatio:[I

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->ordinal()I

    move-result v0

    aget v0, v3, v0

    if-eq v0, v2, :cond_6b

    if-eq v0, v1, :cond_68

    const/4 p1, 0x3

    if-eq v0, p1, :cond_65

    const/4 p1, 0x4

    if-eq v0, p1, :cond_62

    const/4 p1, 0x5

    if-ne v0, p1, :cond_49

    .line 1943
    sget-object p0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;->ASPECT_1_1:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    return-object p0

    .line 1945
    :cond_49
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported picture size for multi-frame capture : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1941
    :cond_62
    sget-object p0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;->ASPECT_4_3:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    return-object p0

    .line 1939
    :cond_65
    sget-object p0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;->ASPECT_16_9:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    return-object p0

    .line 1937
    :cond_68
    sget-object p0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;->ASPECT_18_9:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    return-object p0

    :cond_6b
    if-eqz p1, :cond_70

    .line 1929
    sget-object p0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;->ASPECT_21_9_FRONT:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    return-object p0

    :cond_70
    if-eqz p2, :cond_75

    .line 1932
    sget-object p0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;->ASPECT_21_9_SM23_DUAL:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    return-object p0

    .line 1934
    :cond_75
    sget-object p0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;->ASPECT_21_9:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    return-object p0
.end method

.method private getRect()Landroid/graphics/Rect;
    .registers 4

    .line 1910
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;->width:I

    iget p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;->height:I

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;
    .registers 2

    .line 1891
    const-class v0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;
    .registers 1

    .line 1891
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;->$VALUES:[Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    return-object v0
.end method
