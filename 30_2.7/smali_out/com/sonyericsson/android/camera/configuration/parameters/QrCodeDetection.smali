.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;
.super Ljava/lang/Enum;
.source "QrCodeDetection.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingBooleanValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingBooleanValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;

.field public static final enum OFF:Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;

.field public static final enum ON:Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;

.field private static final sParameterTextId:I = 0x7f0f01e0


# instance fields
.field private final mIconId:I

.field private final mTextId:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 15
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;

    const-string v1, "ON"

    const/4 v2, -0x1

    const/4 v3, 0x0

    const v4, 0x7f0f0363

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;

    .line 18
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;

    const-string v1, "OFF"

    const/4 v4, 0x1

    const v5, 0x7f0f0362

    invoke-direct {v0, v1, v4, v2, v5}, Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;

    const/4 v0, 0x2

    .line 14
    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;->mIconId:I

    .line 40
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;->mTextId:I

    return-void
.end method

.method public static getDefaultValue()Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;
    .registers 1

    .line 116
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;

    return-object v0
.end method

.method public static getOptions()[Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;
    .registers 1

    .line 102
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;
    .registers 2

    .line 14
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;
    .registers 1

    .line 14
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V
    .registers 2

    .line 50
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;)V

    return-void
.end method

.method public getBooleanValue()Z
    .registers 2

    .line 93
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public getIconId()I
    .registers 2

    .line 68
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;->mIconId:I

    return v0
.end method

.method public getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
    .registers 2

    .line 58
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->QR_CODE_DETECTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-object v0
.end method

.method public getKeyTextId()I
    .registers 2

    const v0, 0x7f0f01e0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 107
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextId()I
    .registers 2

    .line 78
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;->mTextId:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .line 88
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
