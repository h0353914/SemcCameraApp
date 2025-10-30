.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/Tagging;
.super Ljava/lang/Enum;
.source "Tagging.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingBooleanValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/Tagging;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingBooleanValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/Tagging;

.field public static final enum OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Tagging;

.field public static final enum ON:Lcom/sonyericsson/android/camera/configuration/parameters/Tagging;

.field public static final TAG:Ljava/lang/String; = "Tagging"

.field private static final sParameterTextId:I = 0x7f0e036a


# instance fields
.field private final mIconId:I

.field private final mTextId:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 16
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Tagging;

    const-string v1, "ON"

    const/4 v2, -0x1

    const/4 v3, 0x0

    const v4, 0x7f0e0313

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/sonyericsson/android/camera/configuration/parameters/Tagging;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Tagging;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Tagging;

    .line 19
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Tagging;

    const-string v1, "OFF"

    const/4 v4, 0x1

    const v5, 0x7f0e0312

    invoke-direct {v0, v1, v4, v2, v5}, Lcom/sonyericsson/android/camera/configuration/parameters/Tagging;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Tagging;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Tagging;

    const/4 v0, 0x2

    .line 15
    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/Tagging;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Tagging;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Tagging;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Tagging;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Tagging;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Tagging;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/Tagging;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Tagging;->mIconId:I

    .line 44
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Tagging;->mTextId:I

    return-void
.end method

.method public static getDefaultValue()Lcom/sonyericsson/android/camera/configuration/parameters/Tagging;
    .registers 1

    .line 122
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Tagging;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Tagging;

    return-object v0
.end method

.method public static getOptions()[Lcom/sonyericsson/android/camera/configuration/parameters/Tagging;
    .registers 1

    .line 105
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isTransferAndTaggingSupported()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 106
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/Tagging;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/Tagging;

    move-result-object v0

    return-object v0

    :cond_b
    const/4 v0, 0x0

    .line 108
    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/Tagging;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/Tagging;
    .registers 2

    .line 15
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/Tagging;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/Tagging;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/Tagging;
    .registers 1

    .line 15
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Tagging;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/Tagging;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/Tagging;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/Tagging;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V
    .registers 2

    .line 54
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/Tagging;)V

    return-void
.end method

.method public getBooleanValue()Z
    .registers 2

    .line 97
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Tagging;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Tagging;

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

    .line 72
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Tagging;->mIconId:I

    return v0
.end method

.method public getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
    .registers 2

    .line 62
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->TAGGING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-object v0
.end method

.method public getKeyTextId()I
    .registers 2

    const v0, 0x7f0e036a

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 113
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextId()I
    .registers 2

    .line 82
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Tagging;->mTextId:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .line 92
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/Tagging;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
