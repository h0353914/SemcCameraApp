.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/Ev;
.super Ljava/lang/Enum;
.source "Ev.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/Ev;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

.field public static final enum M1_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

.field public static final enum M2_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

.field public static final enum M3_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

.field public static final enum M4_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

.field public static final enum M5_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

.field public static final enum M6_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

.field public static final enum P1_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

.field public static final enum P2_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

.field public static final enum P3_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

.field public static final enum P4_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

.field public static final enum P5_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

.field public static final enum P6_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

.field public static final TAG:Ljava/lang/String; = "Ev"

.field public static final enum ZERO:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

.field private static final sParameterTextId:I = 0x7f0f0199


# instance fields
.field private final mIconId:I

.field private mIndex:I

.field private final mTextId:I

.field private final mValue:F


# direct methods
.method static constructor <clinit>()V
    .registers 26

    .line 22
    new-instance v6, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    const-string v1, "M6_3"

    const/4 v2, 0x0

    const v3, 0x7f080148

    const v4, 0x7f0f025e

    const/high16 v5, -0x40000000    # -2.0f

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;-><init>(Ljava/lang/String;IIIF)V

    sput-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->M6_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    .line 26
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    const-string v8, "M5_3"

    const/4 v9, 0x1

    const v10, 0x7f080148

    const v11, 0x7f0f025d

    const v12, -0x40266666    # -1.7f

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;-><init>(Ljava/lang/String;IIIF)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->M5_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    .line 30
    new-instance v1, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    const-string v14, "M4_3"

    const/4 v15, 0x2

    const v16, 0x7f080148

    const v17, 0x7f0f025c

    const v18, -0x4059999a    # -1.3f

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;-><init>(Ljava/lang/String;IIIF)V

    sput-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->M4_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    .line 34
    new-instance v2, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    const-string v8, "M3_3"

    const/4 v9, 0x3

    const v11, 0x7f0f025b

    const/high16 v12, -0x40800000    # -1.0f

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;-><init>(Ljava/lang/String;IIIF)V

    sput-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->M3_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    .line 38
    new-instance v3, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    const-string v14, "M2_3"

    const/4 v15, 0x4

    const v17, 0x7f0f025a

    const v18, -0x40cccccd    # -0.7f

    move-object v13, v3

    invoke-direct/range {v13 .. v18}, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;-><init>(Ljava/lang/String;IIIF)V

    sput-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->M2_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    .line 42
    new-instance v4, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    const-string v8, "M1_3"

    const/4 v9, 0x5

    const v11, 0x7f0f0259

    const v12, -0x41666666    # -0.3f

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;-><init>(Ljava/lang/String;IIIF)V

    sput-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->M1_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    .line 46
    new-instance v5, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    const-string v14, "ZERO"

    const/4 v15, 0x6

    const v16, 0x7f080147

    const v17, 0x7f0f0265

    const/16 v18, 0x0

    move-object v13, v5

    invoke-direct/range {v13 .. v18}, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;-><init>(Ljava/lang/String;IIIF)V

    sput-object v5, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->ZERO:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    .line 50
    new-instance v13, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    const-string v8, "P1_3"

    const/4 v9, 0x7

    const v11, 0x7f0f025f

    const v12, 0x3e99999a    # 0.3f

    move-object v7, v13

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;-><init>(Ljava/lang/String;IIIF)V

    sput-object v13, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->P1_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    .line 54
    new-instance v7, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    const-string v15, "P2_3"

    const/16 v16, 0x8

    const v17, 0x7f080148

    const v18, 0x7f0f0260

    const v19, 0x3f333333    # 0.7f

    move-object v14, v7

    invoke-direct/range {v14 .. v19}, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;-><init>(Ljava/lang/String;IIIF)V

    sput-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->P2_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    .line 58
    new-instance v8, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    const-string v21, "P3_3"

    const/16 v22, 0x9

    const v23, 0x7f080148

    const v24, 0x7f0f0261

    const/high16 v25, 0x3f800000    # 1.0f

    move-object/from16 v20, v8

    invoke-direct/range {v20 .. v25}, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;-><init>(Ljava/lang/String;IIIF)V

    sput-object v8, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->P3_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    .line 62
    new-instance v9, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    const-string v15, "P4_3"

    const/16 v16, 0xa

    const v18, 0x7f0f0262

    const v19, 0x3fa66666    # 1.3f

    move-object v14, v9

    invoke-direct/range {v14 .. v19}, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;-><init>(Ljava/lang/String;IIIF)V

    sput-object v9, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->P4_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    .line 66
    new-instance v10, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    const-string v21, "P5_3"

    const/16 v22, 0xb

    const v24, 0x7f0f0263

    const v25, 0x3fd9999a    # 1.7f

    move-object/from16 v20, v10

    invoke-direct/range {v20 .. v25}, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;-><init>(Ljava/lang/String;IIIF)V

    sput-object v10, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->P5_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    .line 70
    new-instance v11, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    const-string v15, "P6_3"

    const/16 v16, 0xc

    const v18, 0x7f0f0264

    const/high16 v19, 0x40000000    # 2.0f

    move-object v14, v11

    invoke-direct/range {v14 .. v19}, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;-><init>(Ljava/lang/String;IIIF)V

    sput-object v11, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->P6_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    const/16 v12, 0xd

    new-array v12, v12, [Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    const/4 v14, 0x0

    aput-object v6, v12, v14

    const/4 v6, 0x1

    aput-object v0, v12, v6

    const/4 v0, 0x2

    aput-object v1, v12, v0

    const/4 v0, 0x3

    aput-object v2, v12, v0

    const/4 v0, 0x4

    aput-object v3, v12, v0

    const/4 v0, 0x5

    aput-object v4, v12, v0

    const/4 v0, 0x6

    aput-object v5, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    const/16 v0, 0x8

    aput-object v7, v12, v0

    const/16 v0, 0x9

    aput-object v8, v12, v0

    const/16 v0, 0xa

    aput-object v9, v12, v0

    const/16 v0, 0xb

    aput-object v10, v12, v0

    const/16 v0, 0xc

    aput-object v11, v12, v0

    .line 21
    sput-object v12, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIF)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIF)V"
        }
    .end annotation

    .line 101
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 102
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->mIconId:I

    .line 103
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->mTextId:I

    .line 104
    iput p5, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->mValue:F

    return-void
.end method

.method public static getOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/Ev;
    .registers 16

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 180
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getCameraCapability(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    .line 181
    iget-object v1, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->EV_MAX:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 182
    iget-object v2, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->EV_MIN:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    if-nez v1, :cond_2b

    if-nez v2, :cond_2b

    goto :goto_62

    .line 188
    :cond_2b
    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->EV_STEP:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    .line 190
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    move-result-object v4

    array-length v5, v4

    move v6, v3

    :goto_3d
    if-ge v6, v5, :cond_62

    aget-object v7, v4, v6

    move v8, v2

    :goto_42
    if-gt v8, v1, :cond_5f

    int-to-float v9, v8

    mul-float/2addr v9, p0

    const/high16 v10, 0x41200000    # 10.0f

    mul-float/2addr v9, v10

    float-to-double v11, v9

    const-wide/high16 v13, 0x3fe0000000000000L    # 0.5

    add-double/2addr v11, v13

    double-to-int v9, v11

    .line 193
    iget v11, v7, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->mValue:F

    mul-float/2addr v11, v10

    float-to-double v10, v11

    add-double/2addr v10, v13

    double-to-int v10, v10

    if-ne v9, v10, :cond_5c

    .line 194
    iput v8, v7, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->mIndex:I

    .line 195
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5f

    :cond_5c
    add-int/lit8 v8, v8, 0x1

    goto :goto_42

    :cond_5f
    :goto_5f
    add-int/lit8 v6, v6, 0x1

    goto :goto_3d

    :cond_62
    :goto_62
    new-array p0, v3, [Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    .line 202
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/Ev;
    .registers 2

    .line 21
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/Ev;
    .registers 1

    .line 21
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V
    .registers 2

    .line 114
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/Ev;)V

    return-void
.end method

.method public getIconId()I
    .registers 1

    .line 132
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->mIconId:I

    return p0
.end method

.method public getIntValue()I
    .registers 1

    .line 162
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->mIndex:I

    return p0
.end method

.method public getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
    .registers 1

    .line 122
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->EV:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-object p0
.end method

.method public getKeyTextId()I
    .registers 1

    const p0, 0x7f0f0199

    return p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    .line 167
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTextId()I
    .registers 1

    .line 142
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->mTextId:I

    return p0
.end method

.method public getValue()Ljava/lang/String;
    .registers 1

    .line 152
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
