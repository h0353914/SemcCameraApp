.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/AIClearFace;
.super Ljava/lang/Enum;
.source "AIClearFace.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingBooleanValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/AIClearFace;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingBooleanValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/AIClearFace;

.field public static final enum OFF:Lcom/sonyericsson/android/camera/configuration/parameters/AIClearFace;

.field public static final enum ON:Lcom/sonyericsson/android/camera/configuration/parameters/AIClearFace;

.field private static final sParameterTextId:I = 0x7f0f009a


# instance fields
.field private final mIconId:I

.field private final mTextId:I

.field private final mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .line 20
    new-instance v6, Lcom/sonyericsson/android/camera/configuration/parameters/AIClearFace;

    const-string v1, "ON"

    const-string v5, "on"

    const/4 v2, 0x0

    const/4 v3, -0x1

    const v4, 0x7f0f03b7

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/configuration/parameters/AIClearFace;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/AIClearFace;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/AIClearFace;

    .line 24
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/AIClearFace;

    const-string v8, "OFF"

    const-string v12, "off"

    const/4 v9, 0x1

    const/4 v10, -0x1

    const v11, 0x7f0f03b6

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/configuration/parameters/AIClearFace;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/AIClearFace;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/AIClearFace;

    const/4 v0, 0x2

    .line 19
    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/AIClearFace;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/AIClearFace;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/AIClearFace;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/AIClearFace;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/AIClearFace;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/AIClearFace;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/AIClearFace;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 49
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/AIClearFace;->mIconId:I

    .line 50
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/AIClearFace;->mTextId:I

    .line 51
    iput-object p5, p0, Lcom/sonyericsson/android/camera/configuration/parameters/AIClearFace;->mValue:Ljava/lang/String;

    return-void
.end method

.method public static getDefault(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/AIClearFace;
    .registers 2

    .line 114
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p0, v0, :cond_7

    .line 115
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/AIClearFace;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/AIClearFace;

    return-object p0

    .line 117
    :cond_7
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/AIClearFace;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/AIClearFace;

    return-object p0
.end method

.method public static getOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/AIClearFace;
    .registers 1

    .line 110
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/AIClearFace;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/AIClearFace;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/AIClearFace;
    .registers 2

    .line 19
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/AIClearFace;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/AIClearFace;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/AIClearFace;
    .registers 1

    .line 19
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/AIClearFace;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/AIClearFace;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/AIClearFace;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/AIClearFace;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V
    .registers 2

    .line 56
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/AIClearFace;)V

    return-void
.end method

.method public getBooleanValue()Z
    .registers 2

    .line 106
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/AIClearFace;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/AIClearFace;

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

    .line 81
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/AIClearFace;->mIconId:I

    return v0
.end method

.method public getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
    .registers 2

    .line 61
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SKIN_NR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-object v0
.end method

.method public getKeyTextId()I
    .registers 2

    const v0, 0x7f0f009a

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 71
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextId()I
    .registers 2

    .line 91
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/AIClearFace;->mTextId:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .line 101
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/AIClearFace;->mValue:Ljava/lang/String;

    return-object v0
.end method
