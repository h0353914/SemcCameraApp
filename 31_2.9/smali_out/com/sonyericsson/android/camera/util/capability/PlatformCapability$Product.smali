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
    .registers 8

    .line 88
    new-instance v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

    const-string v1, "SM12"

    const-string v2, "IMX300PIONEER"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;->SM12:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

    .line 89
    new-instance v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

    const-string v1, "SM22"

    const-string v2, "IMX300DISCOVERY"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;->SM22:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

    .line 90
    new-instance v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

    const-string v1, "SM42"

    const-string v2, "IMX300VOYAGER"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;->SM42:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

    .line 91
    new-instance v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

    const-string v1, "SM13"

    const-string v2, "S5K3L6"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;->SM13:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

    .line 92
    new-instance v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

    const-string v1, "NONE"

    const-string v2, ""

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;->NONE:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

    const/4 v0, 0x5

    .line 87
    new-array v0, v0, [Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

    sget-object v1, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;->SM12:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;->SM22:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;->SM42:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;->SM13:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;->NONE:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

    aput-object v1, v0, v7

    sput-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;->$VALUES:[Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

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

    .line 96
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 97
    iput-object p3, p0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;->mMainSensorName:Ljava/lang/String;

    return-void
.end method

.method public static getProduct(Ljava/lang/String;)Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;
    .registers 5

    .line 101
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;->SM12:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;->mMainSensorName:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 102
    sget-object p0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;->SM12:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

    return-object p0

    .line 103
    :cond_d
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;->SM22:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;->mMainSensorName:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 104
    sget-object p0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;->SM22:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

    return-object p0

    .line 105
    :cond_1a
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;->SM42:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;->mMainSensorName:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 106
    sget-object p0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;->SM42:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

    return-object p0

    .line 107
    :cond_27
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;->SM13:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;->mMainSensorName:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 108
    sget-object p0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;->SM13:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

    return-object p0

    .line 109
    :cond_34
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;->NONE:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;->mMainSensorName:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4a

    const-string p0, "Sensor name is empty."

    .line 110
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 111
    sget-object p0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;->NONE:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

    return-object p0

    :cond_4a
    const/4 v0, 0x1

    .line 113
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sensor name not match, mainSensorName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;
    .registers 2

    .line 87
    const-class v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;
    .registers 1

    .line 87
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;->$VALUES:[Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

    return-object v0
.end method
