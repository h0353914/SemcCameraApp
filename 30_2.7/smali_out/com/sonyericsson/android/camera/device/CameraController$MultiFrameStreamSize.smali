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
    .registers 11

    .line 1809
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    const-string v1, "ASPECT_21_9"

    const/4 v2, 0x0

    const/16 v3, 0xdc8

    const/16 v4, 0x5e8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;->ASPECT_21_9:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    .line 1810
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    const-string v1, "ASPECT_21_9_SM23_DUAL"

    const/4 v3, 0x1

    const/16 v4, 0xe70

    const/16 v5, 0x630

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;->ASPECT_21_9_SM23_DUAL:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    .line 1811
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    const-string v1, "ASPECT_21_9_FRONT"

    const/16 v4, 0xcc0

    const/4 v5, 0x2

    const/16 v6, 0x578

    invoke-direct {v0, v1, v5, v4, v6}, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;->ASPECT_21_9_FRONT:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    .line 1812
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    const-string v1, "ASPECT_18_9"

    const/4 v6, 0x3

    const/16 v7, 0x660

    invoke-direct {v0, v1, v6, v4, v7}, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;->ASPECT_18_9:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    .line 1813
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    const-string v1, "ASPECT_16_9"

    const/4 v4, 0x4

    const/16 v7, 0xbe0

    const/16 v8, 0x6b0

    invoke-direct {v0, v1, v4, v7, v8}, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;->ASPECT_16_9:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    .line 1814
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    const-string v1, "ASPECT_16_9_SMX2"

    const/4 v7, 0x5

    const/16 v8, 0xc80

    const/16 v9, 0x710

    invoke-direct {v0, v1, v7, v8, v9}, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;->ASPECT_16_9_SMX2:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    .line 1815
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    const-string v1, "ASPECT_4_3"

    const/4 v8, 0x6

    const/16 v9, 0xa20

    const/16 v10, 0x798

    invoke-direct {v0, v1, v8, v9, v10}, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;->ASPECT_4_3:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    .line 1816
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    const-string v1, "ASPECT_1_1"

    const/16 v9, 0x8f0

    const/4 v10, 0x7

    invoke-direct {v0, v1, v10, v9, v9}, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;->ASPECT_1_1:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    const/16 v0, 0x8

    .line 1808
    new-array v0, v0, [Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;->ASPECT_21_9:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;->ASPECT_21_9_SM23_DUAL:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;->ASPECT_21_9_FRONT:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;->ASPECT_18_9:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;->ASPECT_16_9:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;->ASPECT_16_9_SMX2:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;->ASPECT_4_3:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    aput-object v1, v0, v8

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;->ASPECT_1_1:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    aput-object v1, v0, v10

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;->$VALUES:[Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 1821
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1822
    iput p3, p0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;->width:I

    .line 1823
    iput p4, p0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;->height:I

    return-void
.end method

.method public static get(Landroid/graphics/Rect;ZZ)Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;
    .registers 7

    .line 1841
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_23

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "CameraController"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " invoke isFront : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1842
    :cond_23
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->getAspectRatio(II)Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    move-result-object v0

    .line 1843
    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraController$22;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$AspectRatio:[I

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_6a

    .line 1862
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported picture size for multi-frame capture : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1860
    :pswitch_51
    sget-object p0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;->ASPECT_1_1:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    return-object p0

    .line 1858
    :pswitch_54
    sget-object p0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;->ASPECT_4_3:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    return-object p0

    .line 1856
    :pswitch_57
    sget-object p0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;->ASPECT_16_9:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    return-object p0

    .line 1854
    :pswitch_5a
    sget-object p0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;->ASPECT_18_9:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    return-object p0

    :pswitch_5d
    if-eqz p1, :cond_62

    .line 1846
    sget-object p0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;->ASPECT_21_9_FRONT:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    return-object p0

    :cond_62
    if-eqz p2, :cond_67

    .line 1849
    sget-object p0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;->ASPECT_21_9_SM23_DUAL:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    return-object p0

    .line 1851
    :cond_67
    sget-object p0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;->ASPECT_21_9:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    return-object p0

    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_5d
        :pswitch_5a
        :pswitch_57
        :pswitch_54
        :pswitch_51
    .end packed-switch
.end method

.method private getRect()Landroid/graphics/Rect;
    .registers 5

    .line 1827
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;->width:I

    iget v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;->height:I

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;
    .registers 2

    .line 1808
    const-class v0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;
    .registers 1

    .line 1808
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;->$VALUES:[Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    return-object v0
.end method
