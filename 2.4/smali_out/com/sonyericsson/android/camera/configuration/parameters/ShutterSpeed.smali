.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;
.super Ljava/lang/Enum;
.source "ShutterSpeed.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

.field public static final enum AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

.field public static final enum D1:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

.field public static final enum D1000:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

.field public static final enum D125:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

.field public static final enum D15:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

.field public static final enum D2:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

.field public static final enum D2000:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

.field public static final enum D250:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

.field public static final enum D30:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

.field public static final enum D4:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

.field public static final enum D4000:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

.field public static final enum D500:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

.field public static final enum D60:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

.field public static final enum D8:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

.field private static final INVALID_VALUE:I = -0x1

.field private static final LONG_EXPOSURE_THRESHOLD_NANOS:J = 0x77359400L

.field public static final enum N15:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

.field public static final enum N2:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

.field public static final enum N30:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

.field public static final enum N4:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

.field public static final enum N8:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

.field private static mIndexOfDefault:I


# instance fields
.field private final mAeMode:Ljava/lang/String;

.field private final mIconId:I

.field private final mIsDenominator:Z

.field private final mTextId:I

.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 17

    .line 20
    new-instance v8, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    const-string v1, "AUTO"

    const-string v5, "auto"

    const/4 v2, 0x0

    const/4 v3, -0x1

    const v4, 0x7f0e0214

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;-><init>(Ljava/lang/String;IIILjava/lang/String;IZ)V

    sput-object v8, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    .line 26
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    const-string v10, "N30"

    const-string v14, "shutter-prio"

    const/4 v11, 0x1

    const/4 v12, -0x1

    const v13, 0x7f0e0211

    const/16 v15, 0x1e

    const/16 v16, 0x0

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;-><init>(Ljava/lang/String;IIILjava/lang/String;IZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->N30:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    .line 32
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    const-string v2, "N15"

    const-string v6, "shutter-prio"

    const/4 v3, 0x2

    const/4 v4, -0x1

    const v5, 0x7f0e020e

    const/16 v7, 0xf

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;-><init>(Ljava/lang/String;IIILjava/lang/String;IZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->N15:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    .line 38
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    const-string v10, "N8"

    const-string v14, "shutter-prio"

    const/4 v11, 0x3

    const v13, 0x7f0e0213

    const/16 v15, 0x8

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;-><init>(Ljava/lang/String;IIILjava/lang/String;IZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->N8:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    .line 44
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    const-string v2, "N4"

    const-string v6, "shutter-prio"

    const/4 v3, 0x4

    const v5, 0x7f0e0212

    const/4 v7, 0x4

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;-><init>(Ljava/lang/String;IIILjava/lang/String;IZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->N4:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    .line 50
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    const-string v10, "N2"

    const-string v14, "shutter-prio"

    const/4 v11, 0x5

    const v13, 0x7f0e0210

    const/4 v15, 0x2

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;-><init>(Ljava/lang/String;IIILjava/lang/String;IZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->N2:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    .line 56
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    const-string v2, "D1"

    const-string v6, "shutter-prio"

    const/4 v3, 0x6

    const v5, 0x7f0e020f

    const/4 v7, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;-><init>(Ljava/lang/String;IIILjava/lang/String;IZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->D1:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    .line 62
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    const-string v10, "D2"

    const-string v14, "shutter-prio"

    const/4 v11, 0x7

    const v13, 0x7f0e020d

    const/16 v16, 0x1

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;-><init>(Ljava/lang/String;IIILjava/lang/String;IZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->D2:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    .line 68
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    const-string v2, "D4"

    const-string v6, "shutter-prio"

    const/16 v3, 0x8

    const v5, 0x7f0e021c

    const/4 v7, 0x4

    const/4 v8, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;-><init>(Ljava/lang/String;IIILjava/lang/String;IZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->D4:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    .line 74
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    const-string v10, "D8"

    const-string v14, "shutter-prio"

    const/16 v11, 0x9

    const v13, 0x7f0e021f

    const/16 v15, 0x8

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;-><init>(Ljava/lang/String;IIILjava/lang/String;IZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->D8:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    .line 80
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    const-string v2, "D15"

    const-string v6, "shutter-prio"

    const/16 v3, 0xa

    const v5, 0x7f0e0217

    const/16 v7, 0xf

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;-><init>(Ljava/lang/String;IIILjava/lang/String;IZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->D15:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    .line 86
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    const-string v10, "D30"

    const-string v14, "shutter-prio"

    const/16 v11, 0xb

    const v13, 0x7f0e021a

    const/16 v15, 0x1e

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;-><init>(Ljava/lang/String;IIILjava/lang/String;IZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->D30:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    .line 92
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    const-string v2, "D60"

    const-string v6, "shutter-prio"

    const/16 v3, 0xc

    const v5, 0x7f0e021e

    const/16 v7, 0x3c

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;-><init>(Ljava/lang/String;IIILjava/lang/String;IZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->D60:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    .line 98
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    const-string v10, "D125"

    const-string v14, "shutter-prio"

    const/16 v11, 0xd

    const v13, 0x7f0e0216

    const/16 v15, 0x7d

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;-><init>(Ljava/lang/String;IIILjava/lang/String;IZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->D125:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    .line 104
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    const-string v2, "D250"

    const-string v6, "shutter-prio"

    const/16 v3, 0xe

    const v5, 0x7f0e0219

    const/16 v7, 0xfa

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;-><init>(Ljava/lang/String;IIILjava/lang/String;IZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->D250:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    .line 110
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    const-string v10, "D500"

    const-string v14, "shutter-prio"

    const/16 v11, 0xf

    const v13, 0x7f0e021d

    const/16 v15, 0x1f4

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;-><init>(Ljava/lang/String;IIILjava/lang/String;IZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->D500:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    .line 116
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    const-string v2, "D1000"

    const-string v6, "shutter-prio"

    const/16 v3, 0x10

    const v5, 0x7f0e0215

    const/16 v7, 0x3e8

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;-><init>(Ljava/lang/String;IIILjava/lang/String;IZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->D1000:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    .line 122
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    const-string v10, "D2000"

    const-string v14, "shutter-prio"

    const/16 v11, 0x11

    const v13, 0x7f0e0218

    const/16 v15, 0x7d0

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;-><init>(Ljava/lang/String;IIILjava/lang/String;IZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->D2000:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    .line 128
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    const-string v2, "D4000"

    const-string v6, "shutter-prio"

    const/16 v3, 0x12

    const v5, 0x7f0e021b

    const/16 v7, 0xfa0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;-><init>(Ljava/lang/String;IIILjava/lang/String;IZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->D4000:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    const/16 v0, 0x13

    .line 19
    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->N30:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->N15:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->N8:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    const/4 v3, 0x3

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->N4:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    const/4 v3, 0x4

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->N2:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    const/4 v3, 0x5

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->D1:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    const/4 v3, 0x6

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->D2:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    const/4 v3, 0x7

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->D4:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    const/16 v3, 0x8

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->D8:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    const/16 v3, 0x9

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->D15:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    const/16 v3, 0xa

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->D30:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    const/16 v3, 0xb

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->D60:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    const/16 v3, 0xc

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->D125:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    const/16 v3, 0xd

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->D250:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    const/16 v3, 0xe

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->D500:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    const/16 v3, 0xf

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->D1000:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    const/16 v3, 0x10

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->D2000:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    const/16 v3, 0x11

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->D4000:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    const/16 v3, 0x12

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    .line 152
    sput v2, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->mIndexOfDefault:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILjava/lang/String;IZ)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "IZ)V"
        }
    .end annotation

    .line 168
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 169
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->mIconId:I

    .line 170
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->mTextId:I

    .line 171
    iput-object p5, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->mAeMode:Ljava/lang/String;

    .line 172
    iput p6, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->mValue:I

    .line 173
    iput-boolean p7, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->mIsDenominator:Z

    return-void
.end method

.method public static getIndexOfDefault()I
    .registers 1

    .line 227
    sget v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->mIndexOfDefault:I

    return v0
.end method

.method public static getOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;
    .registers 10

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 234
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getCameraCapability(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object v1

    .line 237
    iget-object v2, v1, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->AE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 238
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_25

    .line 239
    new-array p0, v4, [Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    return-object p0

    .line 240
    :cond_25
    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52

    .line 242
    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p0, v3, :cond_49

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p0, v3, :cond_49

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p0, v3, :cond_49

    .line 245
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getType()I

    move-result p0

    const/4 v3, 0x2

    if-ne p0, v3, :cond_52

    .line 247
    :cond_49
    new-array p0, v4, [Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    return-object p0

    :cond_52
    const-string p0, "shutter-prio"

    .line 252
    invoke-interface {v2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_63

    .line 253
    new-array p0, v4, [Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    return-object p0

    .line 257
    :cond_63
    iget-object p0, v1, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->SHUTTER_SPEED_VALUES:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 258
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    move-result-object v1

    array-length v2, v1

    move v3, v4

    :goto_71
    if-ge v3, v2, :cond_9f

    aget-object v5, v1, v3

    .line 260
    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->getShutterSpeedInNanos()J

    move-result-wide v6

    .line 259
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9c

    .line 261
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->getShutterSpeedInNanos()J

    move-result-wide v5

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->D125:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    invoke-virtual {v7}, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->getShutterSpeedInNanos()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-ltz v5, :cond_9c

    .line 266
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    sput v5, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->mIndexOfDefault:I

    :cond_9c
    add-int/lit8 v3, v3, 0x1

    goto :goto_71

    .line 271
    :cond_9f
    new-array p0, v4, [Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    return-object p0
.end method

.method public static isLongExposureSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z
    .registers 5

    .line 288
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getCameraCapability(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    .line 289
    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->MAX_SHUTTER_SPEED:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/32 v2, 0x77359400

    cmp-long p0, v0, v2

    if-ltz p0, :cond_19

    const/4 p0, 0x1

    return p0

    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;
    .registers 2

    .line 19
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;
    .registers 1

    .line 19
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V
    .registers 2

    .line 178
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;)V

    return-void
.end method

.method public getIconId()I
    .registers 2

    .line 183
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->mIconId:I

    return v0
.end method

.method public getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
    .registers 2

    .line 188
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_SPEED:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-object v0
.end method

.method public getKeyTextId()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 198
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShutterSpeedInNanos()J
    .registers 6

    .line 212
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->mIsDenominator:Z

    const-wide/32 v1, 0x3b9aca00

    if-eqz v0, :cond_c

    .line 213
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->mValue:I

    int-to-long v3, v0

    div-long/2addr v1, v3

    return-wide v1

    .line 215
    :cond_c
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->mValue:I

    int-to-long v3, v0

    mul-long/2addr v3, v1

    return-wide v3
.end method

.method public getTextId()I
    .registers 2

    .line 203
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->mTextId:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .line 208
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->mAeMode:Ljava/lang/String;

    return-object v0
.end method

.method public isLongExposure()Z
    .registers 5

    .line 275
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->getShutterSpeedInNanos()J

    move-result-wide v0

    const-wide/32 v2, 0x77359400

    cmp-long v0, v0, v2

    if-ltz v0, :cond_d

    const/4 v0, 0x1

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method
