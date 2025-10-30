.class public final enum Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;
.super Ljava/lang/Enum;
.source "PlatformCapability.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Product"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

.field public static final enum NONE:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

.field public static final enum SM12:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

.field public static final enum SM13:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

.field public static final enum SM22:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

.field public static final enum SM42:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;


# instance fields
.field private mMainSensorName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .line 90
    new-instance v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

    const-string v1, "SM12"

    const/4 v2, 0x0

    const-string v3, "IMX300PIONEER"

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;->SM12:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

    .line 91
    new-instance v1, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

    const-string v3, "SM22"

    const/4 v4, 0x1

    const-string v5, "IMX300DISCOVERY"

    invoke-direct {v1, v3, v4, v5}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;->SM22:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

    .line 92
    new-instance v3, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

    const-string v5, "SM42"

    const/4 v6, 0x2

    const-string v7, "IMX300VOYAGER"

    invoke-direct {v3, v5, v6, v7}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;->SM42:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

    .line 93
    new-instance v5, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

    const-string v7, "SM13"

    const/4 v8, 0x3

    const-string v9, "S5K3L6"

    invoke-direct {v5, v7, v8, v9}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;->SM13:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

    .line 94
    new-instance v7, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

    const-string v9, "NONE"

    const/4 v10, 0x4

    const-string v11, ""

    invoke-direct {v7, v9, v10, v11}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;->NONE:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 89
    sput-object v9, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;->$VALUES:[Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 98
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 99
    iput-object p3, p0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;->mMainSensorName:Ljava/lang/String;

    return-void
.end method

.method public static getProduct(Ljava/lang/String;)Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;
    .registers 5

    .line 103
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;->SM12:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

    iget-object v1, v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;->mMainSensorName:Ljava/lang/String;

    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 105
    :cond_b
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;->SM22:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

    iget-object v1, v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;->mMainSensorName:Ljava/lang/String;

    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    return-object v0

    .line 107
    :cond_16
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;->SM42:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

    iget-object v1, v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;->mMainSensorName:Ljava/lang/String;

    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_21

    return-object v0

    .line 109
    :cond_21
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;->SM13:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

    iget-object v1, v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;->mMainSensorName:Ljava/lang/String;

    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2c

    return-object v0

    .line 111
    :cond_2c
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;->NONE:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

    iget-object v1, v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;->mMainSensorName:Ljava/lang/String;

    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_40

    const-string p0, "Sensor name is empty."

    .line 112
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return-object v0

    :cond_40
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sensor name not match, mainSensorName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;
    .registers 2

    .line 89
    const-class v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;
    .registers 1

    .line 89
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;->$VALUES:[Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

    return-object v0
.end method
