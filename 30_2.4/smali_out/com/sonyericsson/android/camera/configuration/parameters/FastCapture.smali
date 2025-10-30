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

.field public static final enum LAUNCH_ONLY:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

.field public static final enum OFF:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

.field public static final TAG:Ljava/lang/String; = "FastCapture"

.field private static final sParameterTextId:I = 0x7f0e0179


# instance fields
.field private final mBooleanValue:Z

.field private final mIconId:I

.field private final mSecureValue:Ljava/lang/String;

.field private final mTextId:I

.field private final mType:I

.field private mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 17

    .line 22
    new-instance v8, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    const-string v1, "LAUNCH_AND_CAPTURE"

    const-string v6, "0"

    const/4 v2, 0x0

    const/4 v3, -0x1

    const v4, 0x7f0e0170

    const/4 v5, 0x1

    const/4 v7, 0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;-><init>(Ljava/lang/String;IIIILjava/lang/String;Z)V

    sput-object v8, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    .line 28
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    const-string v10, "LAUNCH_ONLY"

    const-string v15, "0"

    const/4 v11, 0x1

    const/4 v12, -0x1

    const v13, 0x7f0e0172

    const/4 v14, 0x1

    const/16 v16, 0x1

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;-><init>(Ljava/lang/String;IIIILjava/lang/String;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_ONLY:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    .line 34
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    const-string v2, "OFF"

    const-string v7, "1"

    const/4 v3, 0x2

    const/4 v4, -0x1

    const v5, 0x7f0e0312

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;-><init>(Ljava/lang/String;IIIILjava/lang/String;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    const/4 v0, 0x3

    .line 21
    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_ONLY:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

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

    .line 79
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 80
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->mIconId:I

    .line 81
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->mTextId:I

    .line 82
    iput p5, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->mType:I

    .line 83
    iput-object p6, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->mSecureValue:Ljava/lang/String;

    .line 84
    iput-boolean p7, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->mBooleanValue:Z

    return-void
.end method

.method public static getDefault()Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;
    .registers 1

    .line 189
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_ONLY:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    return-object v0
.end method

.method public static getOptions()[Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;
    .registers 2

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 173
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_ONLY:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 176
    new-array v1, v1, [Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

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

    .line 94
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;)V

    return-void
.end method

.method public getBooleanValue()Z
    .registers 2

    .line 158
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->mBooleanValue:Z

    return v0
.end method

.method public getCameraType()I
    .registers 2

    .line 131
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->mType:I

    return v0
.end method

.method public getIconId()I
    .registers 2

    .line 112
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->mIconId:I

    return v0
.end method

.method public getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
    .registers 2

    .line 102
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FAST_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-object v0
.end method

.method public getKeyTextId()I
    .registers 2

    const v0, 0x7f0e0179

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 163
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParameterkeyTitleTextId()I
    .registers 2

    const v0, 0x7f0e0178

    return v0
.end method

.method public getSecureValue()Ljava/lang/String;
    .registers 2

    .line 149
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->mSecureValue:Ljava/lang/String;

    return-object v0
.end method

.method public getTextId()I
    .registers 2

    .line 122
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->mTextId:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .line 141
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->mValue:Ljava/lang/String;

    return-object v0
.end method
