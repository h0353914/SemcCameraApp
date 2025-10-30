.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;
.super Ljava/lang/Enum;
.source "FastCapture.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

.field public static final enum LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

.field public static final enum LAUNCH_AND_RECORDING:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

.field public static final enum LAUNCH_ONLY:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

.field public static final enum OFF:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

.field public static final TAG:Ljava/lang/String; = "FastCapture"

.field private static final sParameterTextId:I = 0x7f0f01ba


# instance fields
.field private final mBooleanValue:Z

.field private final mIconId:I

.field private final mSecureValue:Ljava/lang/String;

.field private final mTextId:I

.field private final mType:I

.field private mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 25

    .line 22
    new-instance v8, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    const-string v1, "LAUNCH_AND_CAPTURE"

    const/4 v2, 0x0

    const/4 v3, -0x1

    const v4, 0x7f0f01ae

    const/4 v5, 0x1

    const-string v6, "0"

    const/4 v7, 0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;-><init>(Ljava/lang/String;IIIILjava/lang/String;Z)V

    sput-object v8, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    .line 28
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    const-string v10, "LAUNCH_ONLY"

    const/4 v11, 0x1

    const/4 v12, -0x1

    const v13, 0x7f0f01b2

    const/4 v14, 0x1

    const-string v15, "0"

    const/16 v16, 0x1

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;-><init>(Ljava/lang/String;IIIILjava/lang/String;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_ONLY:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    .line 34
    new-instance v1, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    const-string v18, "LAUNCH_AND_RECORDING"

    const/16 v19, 0x2

    const/16 v20, -0x1

    const v21, 0x7f0f01af

    const/16 v22, 0x2

    const-string v23, "0"

    const/16 v24, 0x1

    move-object/from16 v17, v1

    invoke-direct/range {v17 .. v24}, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;-><init>(Ljava/lang/String;IIIILjava/lang/String;Z)V

    sput-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_AND_RECORDING:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    .line 40
    new-instance v2, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    const-string v10, "OFF"

    const/4 v11, 0x3

    const v13, 0x7f0f03b6

    const/4 v14, 0x0

    const-string v15, "1"

    const/16 v16, 0x0

    move-object v9, v2

    invoke-direct/range {v9 .. v16}, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;-><init>(Ljava/lang/String;IIIILjava/lang/String;Z)V

    sput-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    const/4 v3, 0x4

    new-array v3, v3, [Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    const/4 v4, 0x0

    aput-object v8, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v0, 0x2

    aput-object v1, v3, v0

    const/4 v0, 0x3

    aput-object v2, v3, v0

    .line 21
    sput-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIILjava/lang/String;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 86
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->mIconId:I

    .line 87
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->mTextId:I

    .line 88
    iput p5, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->mType:I

    .line 89
    iput-object p6, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->mSecureValue:Ljava/lang/String;

    .line 90
    iput-boolean p7, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->mBooleanValue:Z

    return-void
.end method

.method public static getDefault()Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;
    .registers 1

    .line 196
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_ONLY:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    return-object v0
.end method

.method public static getOptions()[Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;
    .registers 2

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 179
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_ONLY:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_AND_RECORDING:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    .line 183
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;
    .registers 2

    .line 21
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;
    .registers 1

    .line 21
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V
    .registers 2

    .line 100
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;)V

    return-void
.end method

.method public getBooleanValue()Z
    .registers 1

    .line 164
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->mBooleanValue:Z

    return p0
.end method

.method public getCameraType()I
    .registers 1

    .line 137
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->mType:I

    return p0
.end method

.method public getIconId()I
    .registers 1

    .line 118
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->mIconId:I

    return p0
.end method

.method public getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
    .registers 1

    .line 108
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FAST_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-object p0
.end method

.method public getKeyTextId()I
    .registers 1

    const p0, 0x7f0f01ba

    return p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    .line 169
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getParameterkeyTitleTextId()I
    .registers 1

    const p0, 0x7f0f01b9

    return p0
.end method

.method public getSecureValue()Ljava/lang/String;
    .registers 1

    .line 155
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->mSecureValue:Ljava/lang/String;

    return-object p0
.end method

.method public getTextId()I
    .registers 1

    .line 128
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->mTextId:I

    return p0
.end method

.method public getValue()Ljava/lang/String;
    .registers 1

    .line 147
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->mValue:Ljava/lang/String;

    return-object p0
.end method
